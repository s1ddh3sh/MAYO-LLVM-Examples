#!/usr/bin/env bash
#
# run_faults.sh
#
# Usage:
#   ./run_faults.sh mat_add.json sub_f.json ...
#
# For each entry in each JSON file:
#   - type == "CallInst"  -> ./loop_fn_Fault <ir_file> 1 <basename> <callee>
#   - type == "BinOp"     -> ./binOpFault <ir_file> <basename> <line_no>
#   - anything else       -> skipped (with a warning)
#
# Requires: jq

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <json_file> [<json_file> ...]" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "Error: jq is required but not installed." >&2
  exit 1
fi

IR_FILE="../../mayo_IR/mayo1.ll"

# Resolve all json file paths to absolute *before* we cd into build,
# since relative paths on the command line are relative to the caller's cwd.
declare -a JSON_FILES=()
for f in "$@"; do
  if [ ! -f "$f" ]; then
    echo "Warning: file not found, skipping: $f" >&2
    continue
  fi
  JSON_FILES+=("$(realpath "$f")")
done

if [ ${#JSON_FILES[@]} -eq 0 ]; then
  echo "Error: no valid JSON files given." >&2
  exit 1
fi

cd build || { echo "Error: could not cd into build" >&2; exit 1; }

for jsonfile in "${JSON_FILES[@]}"; do
  filename="$(basename "$jsonfile" .json)"

  echo "=== Processing $filename ($jsonfile) ==="

  # Get all top-level keys (line numbers) in the JSON object
  mapfile -t keys < <(jq -r 'keys[]' "$jsonfile")

  for line_no in "${keys[@]}"; do
    type=$(jq -r --arg k "$line_no" '.[$k].type' "$jsonfile")

    case "$type" in
      CallInst)
        callee=$(jq -r --arg k "$line_no" '.[$k].callee' "$jsonfile")
        if [ -z "$callee" ] || [ "$callee" = "null" ]; then
          echo "  [skip] line $line_no: CallInst with no resolvable callee (indirect call)" >&2
          continue
        fi
        echo "  [run] ./loop_fn_Fault $IR_FILE 1 $filename $callee"
        ./loop_fn_Fault "$IR_FILE" 1 "$filename" "$callee"
        ;;

      BinOp)
        echo "  [run] ./binOpFault $IR_FILE $filename $line_no"
        ./binOpFault "$IR_FILE" "$filename" "$line_no"
        ;;

      *)
        echo "  [skip] line $line_no: type=$type has no matching fault binary" >&2
        ;;
    esac
  done
done