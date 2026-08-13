#!/usr/bin/env bash
#
# Update the Nix flake inputs, keeping every flake.lock entry on the git
# fetcher. The inputs use git+https URLs because some sandboxed environments
# block the GitHub tarball endpoints behind the github: shorthand (see the
# note in flake.nix). A plain `nix flake update` re-reads transitive inputs
# from their upstream flakes, which still declare github:, so this script
# updates and then converts any github:-typed lock entries back to git+https,
# repeating until the lock is clean.
#
# Usage: ./build-tools/nix/update-flake-inputs.sh [--convert-only]
#   (default)        update all inputs, then convert
#   --convert-only   skip the update; only convert github:-typed entries in
#                    the current flake.lock (use after re-locking a single
#                    input, which can regress its siblings)
# Requires nix and jq. Run on a network with unrestricted GitHub access.

set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/../.."

command -v jq >/dev/null 2>&1 || { echo "error: jq is required" >&2; exit 1; }

convert_only=0
case "${1:-}" in
  --convert-only) convert_only=1 ;;
  "") ;;
  *) echo "usage: $0 [--convert-only]" >&2; exit 2 ;;
esac

if [ "$convert_only" -eq 0 ]; then
  echo "==> nix flake update"
  nix flake update
fi

# Print "input/path<TAB>node-key" for every lock node reachable from the
# root via real edges. Follows edges (arrays) name other paths and have no
# node of their own, so they are skipped.
paths() {
  local key="$1" prefix="$2" name child
  while IFS=$'\t' read -r name child; do
    printf '%s%s\t%s\n' "$prefix" "$name" "$child"
    paths "$child" "$prefix$name/"
  done < <(jq -r --arg k "$key" \
    '.nodes[$k].inputs // {} | to_entries[]
     | select(.value | type == "string") | "\(.key)\t\(.value)"' flake.lock)
}

# For every github:-typed node, emit "--override-input <path> <git+https url>"
# as tab-separated fields, preserving a declared branch or subdirectory.
overrides() {
  local path key
  while IFS=$'\t' read -r path key; do
    jq -r --arg k "$key" --arg p "$path" '
      .nodes[$k]
      | select(.locked.type == "github")
      | (if .original.type == "github" then .original else .locked end) as $o
      | ([$o.ref // empty | "ref=\(.)"] + [$o.dir // empty | "dir=\(.)"]) as $q
      | "--override-input\t\($p)\tgit+https://github.com/\($o.owner)/\($o.repo)"
        + (if ($q | length) > 0 then "?" + ($q | join("&")) else "" end)
    ' flake.lock
  done
}

root_key="$(jq -r '.root' flake.lock)"

for pass in 1 2 3 4 5; do
  args=()
  while IFS=$'\t' read -r flag path url; do
    args+=("$flag" "$path" "$url")
  done < <(paths "$root_key" "" | sort -u | overrides)
  if [ "${#args[@]}" -eq 0 ]; then
    break
  fi
  echo "==> pass $pass: converting $((${#args[@]} / 3)) github:-typed input(s) to git+https"
  nix flake lock "${args[@]}"
done

if jq -e '[.nodes[] | select(.locked.type == "github")] | length == 0' flake.lock >/dev/null; then
  echo "OK: flake.lock is clean; every entry uses the git fetcher."
else
  echo "error: github:-typed entries remain in flake.lock:" >&2
  jq -r '.nodes | to_entries[] | select(.value.locked.type == "github") | "  \(.key)"' flake.lock >&2
  exit 1
fi
