#!/usr/bin/env sh
# prepare cardano-ledger repo for conformance testing
# usage: sh prepare-conf-test cardano_ledger_repo_dir nix_store_path
# adds the nix_store_path/haskell/Ledger to the cabal.project file of cardano_ledger_repo_dir

set -o errexit
set -o nounset
set -o noglob

usage() {
  script_name="$(basename "$0")"
  printf "%s : ERROR: %s\n" "$script_name" "$@"
  printf "usage: %s cardano_ledger_repo_dir nix_store_path\n" "$script_name"
  exit 1
}

main () {
  cardano_ledger_repo_dir="$1"
  malonzo_code_dir="$2"

  printf "Commenting out SRP from cabal.project...\n"
  sed -i                                        \
      -e 's/^source-repository-package/ -- \0/' \
      -e 's/^[[:blank:]]*type/ -- \0/'          \
      -e 's/^[[:blank:]]*location/ -- \0/'      \
      -e 's/^[[:blank:]]*subdir/ -- \0/'        \
      -e 's/^[[:blank:]]*tag/ -- \0/'           \
      "$cardano_ledger_repo_dir/cabal.project"

  # if a package with /nix/store/* exists in the cabal.project file, remove it
  # then add the requested one
  printf "Removing /nix/store* package from cabal.project\n"
  sed -i                      \
      -e '/\/nix\/store\//d' \
      "$cardano_ledger_repo_dir/cabal.project"

  printf "Adding %s to cabal.project packages.\n" "$malonzo_code_dir"
    sed -i                                       \
        -e "/packages:/  a\  $malonzo_code_dir"  \
        "$cardano_ledger_repo_dir/cabal.project"

  printf "Done.\n"
  exit 0
}

case $# in
  1) main "$1" "$(cat)";;
  2) main "$1" "$2";;
  *) usage "Wrong number of arguments"
esac
