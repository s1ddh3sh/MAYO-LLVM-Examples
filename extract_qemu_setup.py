#!/usr/bin/env python3
"""
extract_qemu_witness.py — derive a layout-only qemu_witness.json for a
function-under-test directly from its generated main()-driver .ll file.
No SMT/solver dependency.

All auxiliary paths are derived purely from the .ll filename:
    <function_name>.ll
      -> function name   := <function_name>          (from the filename)
      -> inputs json      := function_inputs/<function_name>.json
      -> output witness   := results/<function_name>/qemu_witness.json

Buffer lengths are ALWAYS taken from the raw `alloca [N x i8]` size in the
.ll -- never inferred from scalar call arguments (e.g. m/n parameters),
since those aren't guaranteed to represent a length at all (could be a
flag, index, repeat count, etc.). The alloca size is the one unambiguous
ground truth: it's exactly how much memory the compiler reserved.

Handles two output conventions:
  - buffer output: the FUT writes its result into a pointer argument
    (e.g. mat_add's "s") -- output_key maps 1:1 onto one of the call's
    pointer arguments.
  - scalar output: the FUT returns its result by value (e.g. lincomb's
    "ret") -- output_key does NOT correspond to any call argument; the
    value is captured via the __mbc_ret_anchor_<fn> volatile-store
    global instead. Detected when function_inputs has exactly one more
    non-"output" key than the call has arguments, and that extra key
    equals output_key.

Usage:
    python3 extract_qemu_witness.py mat_add.ll
    python3 extract_qemu_witness.py lincomb.ll
"""

import argparse
import json
import re
import sys
from pathlib import Path
from typing import Dict, List, Tuple


# =======================================================================
# .ll parsing
# =======================================================================

# Matches: %Name = alloca [N x i8] ... !llvmbmc.var !NNN
ALLOCA_RE = re.compile(
    r'%(?P<name>\w+)\s*=\s*alloca\s*\[\s*(?P<size>\d+)\s*x\s*i8\s*\]'
    r'[^\n]*?!llvmbmc\.var'
)

def extract_allocas(ll_text: str) -> Dict[str, int]:
    """{var_name: raw alloca byte size}, in first-appearance order.
    This is the ONLY source of truth for buffer lengths."""
    return {m.group("name"): int(m.group("size"))
            for m in ALLOCA_RE.finditer(ll_text)}


def find_main_body(ll_text: str) -> str:
    """Extract the brace-balanced body of `define ... @main(...) { ... }`."""
    m = re.search(r'define[^\n]*@main\s*\([^)]*\)[^\{]*\{', ll_text)
    if not m:
        raise ValueError("Could not find @main definition in .ll file")
    start = m.end()
    depth, i = 1, m.end()
    while i < len(ll_text) and depth > 0:
        if ll_text[i] == '{':
            depth += 1
        elif ll_text[i] == '}':
            depth -= 1
        i += 1
    return ll_text[start:i - 1]


def find_fut_call(main_body: str, fn_name: str) -> List[Tuple[str, str]]:
    """
    Locate `call [fastcc] <ty> @<fn_name>(...)` inside main() and parse
    its argument list, in order, into:
      ("ptr", "<alloca var name>")  for pointer arguments (buffers)
      ("imm", "<literal string>")   for integer immediates (scalars)

    Note: scalar arguments are still recorded (kept in `call_args` and
    surfaced via key_to_arg) purely for input-seeding/debug purposes --
    they are NOT used to derive any buffer's length.
    """
    call_re = re.compile(
        r'call\s+(?:fastcc\s+)?[\w%]+\s+@' + re.escape(fn_name) +
        r'\s*\((?P<args>.*?)\)',
        re.DOTALL,
    )
    m = call_re.search(main_body)
    if not m:
        raise ValueError(f"Could not find call to @{fn_name} inside main()")

    args: List[Tuple[str, str]] = []
    for raw in m.group("args").split(","):
        raw = raw.strip()
        if not raw:
            continue
        pm = re.match(r'ptr\s+%(?P<ptr>\w+)', raw)
        if pm:
            args.append(("ptr", pm.group("ptr")))
            continue
        im = re.match(r'i\d+\s+(?P<imm>-?\d+)', raw)
        if im:
            args.append(("imm", im.group("imm")))
            continue
        raise ValueError(f"Unrecognized call argument form: '{raw}'")
    return args


def find_ret_anchor(ll_text: str, fn_name: str) -> str:
    """
    Confirm the __mbc_ret_anchor_<fn> global exists and is written via
    `store volatile ... ptr @__mbc_ret_anchor_<fn>` inside main(), and
    return its symbol name. Raises if not found -- a scalar-output
    function without this anchor means the driver has no way to read
    the return value back, which is worth failing loudly on rather than
    silently omitting.
    """
    anchor_name = f"__mbc_ret_anchor_{fn_name}"
    pattern = re.compile(
        r'store\s+volatile\s+i(?P<bits>\d+)[^\n]*?@' + re.escape(anchor_name)
    )
    m = pattern.search(ll_text)
    if not m:
        raise ValueError(
            f"Expected a 'store volatile ... @{anchor_name}' anchor write "
            f"in main() for scalar-output function '{fn_name}', found none."
        )
    return anchor_name


# =======================================================================
# function_inputs/<fn>.json parsing
# =======================================================================

def load_first_sample(json_path: Path) -> Dict[str, object]:
    """
    function_inputs/<fn>.json is JSON-lines (one sample per line). We only
    need the KEYS and their ORDER -- to align positionally with the FUT
    call's argument list -- plus the 'output' key's value (which names
    the output parameter). The concrete numeric sample values aren't
    needed for a layout-only witness.
    """
    with open(json_path) as f:
        for line in f:
            line = line.strip()
            if line:
                return json.loads(line)  # dict preserves key order (py3.7+)
    raise ValueError(f"No JSON objects found in {json_path}")


# =======================================================================
# Layout derivation
# =======================================================================

def derive_layout(ll_text: str, fn_name: str, sample: Dict[str, object]) -> Dict[str, dict]:
    allocas = extract_allocas(ll_text)
    call_args = find_fut_call(find_main_body(ll_text), fn_name)

    if "output" not in sample:
        raise ValueError(f"function_inputs sample for '{fn_name}' has no 'output' key")
    output_key = sample["output"]

    all_param_keys = [k for k in sample.keys() if k != "output"]

    # ---- Detect scalar-return vs. buffer-output convention ----
    # Buffer case (e.g. mat_add): output_key names one of the call's
    #   pointer arguments -- param key count == call arg count exactly.
    # Scalar case (e.g. lincomb): output_key names the return VALUE
    #   itself, which is not passed as a call argument at all -- so the
    #   sample has exactly one extra key (output_key) beyond the true
    #   argument list.
    is_scalar_return = False
    if len(all_param_keys) == len(call_args):
        param_keys = all_param_keys
    elif (len(all_param_keys) == len(call_args) + 1
          and output_key in all_param_keys):
        is_scalar_return = True
        param_keys = [k for k in all_param_keys if k != output_key]
    else:
        raise ValueError(
            f"Mismatch: function_inputs has {len(all_param_keys)} params "
            f"{all_param_keys}, call to @{fn_name} has {len(call_args)} "
            f"arguments {call_args}. Neither the buffer-output convention "
            f"(counts equal) nor the scalar-return convention (params == "
            f"args + 1, with the extra key equal to output_key='{output_key}') "
            f"applies here -- needs manual inspection."
        )

    # positional zip: json key <-> call argument, in declaration order
    key_to_arg = dict(zip(param_keys, call_args))

    buffer_keys = [k for k, (kind, _) in key_to_arg.items() if kind == "ptr"]

    if not is_scalar_return and output_key not in buffer_keys:
        raise ValueError(
            f"'output' key '{output_key}' does not map to a pointer "
            f"argument, and this wasn't detected as the scalar-return "
            f"case either -- check function_inputs/{fn_name}.json."
        )

    layout = {}
    for key in buffer_keys:
        _, var_name = key_to_arg[key]
        if var_name not in allocas:
            raise ValueError(
                f"Call argument %{var_name} (json key '{key}') has no "
                f"matching alloca with !llvmbmc.var in main()"
            )
        # Length is ALWAYS the raw alloca size -- never derived from
        # scalar call arguments, since those aren't guaranteed to mean
        # "length" at all.
        length = allocas[var_name]
        role = "output" if (not is_scalar_return and key == output_key) else "input"
        layout[var_name] = {"role": role, "length": length}

    if is_scalar_return:
        anchor = find_ret_anchor(ll_text, fn_name)
        layout[output_key] = {
            "role": "output",
            "length": 1,
            "type": "scalar",
            "anchor": anchor,
        }

    return layout


def build_qemu_witness(fn_name: str, layout: Dict[str, dict]) -> Dict[str, object]:
    return {"function": fn_name, "layout": layout}


# =======================================================================
# CLI
# =======================================================================

def main():
    ap = argparse.ArgumentParser(
        description="Derive a layout-only qemu_witness.json purely from a "
                     "<function_name>.ll file. Function name, inputs json "
                     "path, and output path are all derived from the .ll "
                     "filename -- no other arguments needed, no SMT/solver "
                     "dependency."
    )
    ap.add_argument("ll_file", type=Path, help="path to <function_name>.ll")
    args = ap.parse_args()

    ll_path = args.ll_file
    if not ll_path.exists():
        print(f"[!] .ll file not found: {ll_path}", file=sys.stderr)
        sys.exit(1)
    if ll_path.suffix != ".ll":
        print(f"[!] expected a .ll file, got: {ll_path}", file=sys.stderr)
        sys.exit(1)

    fn_name = ll_path.stem  # "<function_name>.ll" -> "<function_name>"

    inputs_json = Path("function_inputs") / f"{fn_name}.json"
    if not inputs_json.exists():
        print(f"[!] function_inputs file not found: {inputs_json}", file=sys.stderr)
        sys.exit(1)

    ll_text = ll_path.read_text()
    sample = load_first_sample(inputs_json)

    layout = derive_layout(ll_text, fn_name, sample)
    witness = build_qemu_witness(fn_name, layout)

    out_dir = Path("results") / fn_name
    out_dir.mkdir(parents=True, exist_ok=True)
    out_path = out_dir / "qemu_witness.json"
    with open(out_path, "w") as f:
        json.dump(witness, f, indent=2)
        f.write("\n")

    print(f"[+] wrote {out_path}")
    print(json.dumps(witness, indent=2))


if __name__ == "__main__":
    main()