#!/usr/bin/env python3
"""
Drive fuseback_gated over a tree of faulted variants.

Layout expected:
    test_mayo/<function>/**/<something>.ll      # faulted variants
    test_mayo/<function>/function.ll            # the CORRECT version (skipped)

For each faulted .ll found (recursively, excluding the correct-version file),
run fuseback_gated to produce a gated whole-program module and collect it under
--out, mirroring the <function>/ structure.

If --slice slice.json is given, a function whose LLVM name is NOT in the slice's
relevant_functions is skipped entirely (its faults cannot reach sigma). Pass
--no-prune to build everything regardless.

The LLVM function name is derived from the directory name via --func-template
(default identity). If your functions are mangled, e.g. the folder is `mat_add`
but the symbol is `pqmayo_MAYO_1_ref_mat_add`, pass:
    --func-template 'pqmayo_MAYO_1_ref_{}'
"""

import argparse, json, os, shutil, subprocess, sys
from pathlib import Path

def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument("--base", required=True, help="full-mayo base .ll")
    p.add_argument("--tests", required=True, help="test_mayo directory")
    p.add_argument("--tool", default="./build/fuse_back")
    p.add_argument("--out", required=True, help="output directory")
    p.add_argument("--entry", default="pqmayo_MAYO_1_ref_mayo_sign_signature")
    p.add_argument("--slice", default=None, help="slice.json for pruning")
    p.add_argument("--no-prune", action="store_true")
    p.add_argument("--correct-name", default="function.ll",
                   help="filename of the correct version to skip")
    p.add_argument("--func-template", default="{}",
                   help="map folder name -> LLVM symbol, e.g. 'prefix_{}'")
    p.add_argument("--target-occ", default="1",
                   help="dynamic call occurrence to fault (passed through)")
    p.add_argument("--dry-run", action="store_true")
    return p.parse_args()

def load_slice(path):
    with open(path) as f:
        j = json.load(f)
    return set(j.get("relevant_functions", []))

def main():
    a = parse_args()
    tests = Path(a.tests)
    out = Path(a.out)
    out.mkdir(parents=True, exist_ok=True)

    relevant = None
    if a.slice and not a.no_prune:
        relevant = load_slice(a.slice)
        print(f"[prune] {len(relevant)} relevant functions loaded")

    func_dirs = sorted(d for d in tests.iterdir() if d.is_dir())
    built, skipped_fn, failed = 0, [], []
    summary = []

    for fdir in func_dirs:
        folder = fdir.name
        symbol = a.func_template.format(folder)

        if relevant is not None and symbol not in relevant:
            skipped_fn.append(folder)
            print(f"[skip] {folder} (symbol '{symbol}' not in slice)")
            continue

        faulted = [p for p in fdir.rglob("*.ll")
                   if p.name != a.correct_name]
        if not faulted:
            print(f"[warn] {folder}: no faulted variants found")
            continue

        dest_dir = out / folder
        dest_dir.mkdir(parents=True, exist_ok=True)

        for fll in sorted(faulted):
            stem = fll.stem
            cmd = [a.tool, a.base, str(fll), symbol, a.entry, a.target_occ]
            print(f"[run ] {folder}/{fll.name} -> symbol {symbol}")
            if a.dry_run:
                built += 1
                continue
            r = subprocess.run(cmd, capture_output=True, text=True)
            if r.returncode != 0:
                failed.append((str(fll), r.stderr.strip()))
                print(f"[FAIL] {fll}: {r.stderr.strip().splitlines()[-1:]}")
                continue

            # fuseback_gated writes <parent>/full_mayo_gated/gated_<stem>.ll
            produced = fll.parent / "full_mayo_gated" / f"gated_{stem}.ll"
            if not produced.exists():
                failed.append((str(fll), "expected output not found"))
                print(f"[FAIL] {fll}: output {produced} missing")
                continue
            final = dest_dir / f"gated_{stem}.ll"
            shutil.move(str(produced), str(final))
            summary.append({"function": symbol, "variant": stem,
                            "input": str(fll), "output": str(final)})
            built += 1

    # tidy stray full_mayo_gated dirs left empty
    for stray in tests.rglob("full_mayo_gated"):
        try:
            if stray.is_dir() and not any(stray.iterdir()):
                stray.rmdir()
        except OSError:
            pass

    manifest = out / "gated_manifest.json"
    with open(manifest, "w") as f:
        json.dump({"built": summary,
                   "skipped_functions": skipped_fn,
                   "failed": failed}, f, indent=2)

    print(f"\n[done] built {built}, skipped {len(skipped_fn)} functions, "
          f"{len(failed)} failures")
    print(f"[done] manifest: {manifest}")
    if failed:
        sys.exit(1)

if __name__ == "__main__":
    main()