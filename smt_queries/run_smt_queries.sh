#!/usr/bin/env bash
#
# run_smt_queries.sh -- SMT counterpart of
# test_qemu/dist_tests/mayo/run_combined_unicorn.sh: runs the ineffective
# and the correction query for one MAYO function against every faulty
# trace under test_mayo/<func>/{loopOrFuncSkip,binOpFault,loadStoreSkip}/.
#
# Parameters are taken from the same files as the simulation:
#   ../test_qemu/mayo.json                 secret-buf, eph_secret, fixed-scalars
#   test_mayo/<func>/qemu_witness.json     argument layout
#   test_mayo/<func>/active_lengths.json   active bytes per input
#
# Results land next to the simulation's, per fault:
#   test_mayo/<func>/<category>/<fault>/{ineffective,correction}_smt_result.txt
#
# Usage:
#   ./smt_queries/run_smt_queries.sh <func_name> [query options]
#   e.g. ./smt_queries/run_smt_queries.sh mat_add
#        ./smt_queries/run_smt_queries.sh mat_mul --jobs 4 --timeout 120000
# Query options (passed to both): --secret-buf NAME --secret-pos POS
#   --out-buf NAME --fault SUBSTR --positions N --field-mod N --jobs N
#   --timeout MS --verbose

set -euo pipefail

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <func_name> [query options]" >&2
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

cmake -S "$SCRIPT_DIR" -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE=Release > /dev/null
cmake --build "$BUILD_DIR" -j > /dev/null

ARGS=("$@" --test-dir "${REPO_DIR}/test_mayo"
      --mayo-json "${REPO_DIR}/../test_qemu/mayo.json")

STATUS=0
echo "########## [1/2] ineffective SMT query ##########"
"${BUILD_DIR}/ineffective_query" "${ARGS[@]}" || STATUS=1
echo ""
echo "########## [2/2] correction SMT query ##########"
"${BUILD_DIR}/correction_query" "${ARGS[@]}" || STATUS=1
exit "$STATUS"
