#!/usr/bin/env bash
set -euo pipefail
repo_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)
build_dir=${FLS_RUNTIME_BUILD_DIR:-$(mktemp -d "${TMPDIR:-/tmp}/formal-ledger-receiving.XXXXXX")}
mkdir -p -- "$build_dir"
"${FLS_GHC:-ghc}" --make -O0 -XDeriveGeneric -package-env - \
  -i"$repo_dir/dist/hs/src" -odir "$build_dir" -hidir "$build_dir" \
  "$repo_dir/formal-ledger-test/runtime/Receiving.hs" -o "$build_dir/receiving"
"$build_dir/receiving"
