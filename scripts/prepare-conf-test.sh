#!/bin/sh
# prepare cardano-ledger repo for conformance testing
# usage: sh prepare-conf-test cardano_ledger_repo_dir malonzo_code_dir
# adds the malonzo_code_dir to the cabal.project file of cardano_ledger_repo_dir
# both are given as absolute paths

set -o errexit
set -o nounset
set -o noglob
set -o pipefail

usage() {
  script_name="$(basename "$0")"
  printf "%s : ERROR: %s\n" "$script_name" "$@"
  printf "usage: %s cardano_ledger_repo_dir malonzo_code_dir\n" "$script_name"
  exit 1
}

main () {
  cardano_ledger_repo_dir="$1"
  malonzo_code_dir="$2"

  # this operation is idempotent
  # TODO: Remove this if we get rid of SRP in cardano-ledger
  printf "Commenting out SRP from cabal.project...\n"
  sed -i                                        \
      -e 's/^source-repository-package/ -- \0/' \
      -e 's/^[[:blank:]]*type/ -- \0/'          \
      -e 's/^[[:blank:]]*subdir/ -- \0/'        \
      -e 's/^[[:blank:]]*tag/ -- \0/'           \
      "$cardano_ledger_repo_dir/cabal.project"

  # this operation is idempotent
  # if a package with dirname malonzo_code_dir replace it (maybe its a nix store
  # path) if not add it
  printf "Adding folder %s to cabal.project packages...\n" "$malonzo_code_dir"
  if grep -q -F "$(dirname "$malonzo_code_dir")" "$cardano_ledger_repo_dir/cabal.project";
  then
    printf "A folder with dirname %s already exists in cabal.project packages.\n" "$(dirname "$malonzo_code_dir")"
    printf "Replacing it with: %s\n" "$malonzo_code_dir"

    malonzo_code_dirname_escaped=$(printf "%s" "$(dirname "$malonzo_code_dir")" | sed 's/\//\\\//g')
    malonzo_code_dir_escaped=$(printf "%s" "$malonzo_code_dir" | sed 's/\//\\\//g')
    sed -i                                                                   \
        -e "s/$malonzo_code_dirname_escaped.*\\$/$malonzo_code_dir_escaped/" \
        "$cardano_ledger_repo_dir/cabal.project"
  else
    sed -i                                       \
        -e "/packages:/  a\  $malonzo_code_dir"  \
        "$cardano_ledger_repo_dir/cabal.project"
    printf "Folder %s added to cabal.project packages.\n" "$malonzo_code_dir"
  fi

  printf "Done.\n"
  exit 0
}

case $# in
  1) main "$1" "$(cat)";;
  2) main "$1" "$2";;
  *) usage "Wrong number of arguments"
esac
