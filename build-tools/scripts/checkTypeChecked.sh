#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o noglob
set -o pipefail

AGDA_VER="$(agda --numeric-version)"

# read all agda source files
readarray -d '' allAgdaFiles < <(find src/Ledger -name "*.*agda" -print0)

# temporary variables
unusedAgdaFiles=() # files without a corresponding iface file
uncheckedAgdaFiles=() # files whose corresponding iface file is older

printf "Checking that all Agda files have been typechecked.\n"

for agdaFn in "${allAgdaFiles[@]}"; do
  agdaiFn="_build/$AGDA_VER/agda/${agdaFn%.*agda}.agdai"
  # check if the corresponding iface file exists
  if [ -f "${agdaiFn}" ]; then
    # check if the iface file is older than the src file
    if [ "$(( $(stat -c "%Y" "${agdaiFn}") - $(stat -c "%Y" "${agdaFn}") ))" -lt "0" ]; then
      uncheckedAgdaFiles+=("${agdaFn}")
    fi
  else
    unusedAgdaFiles+=("${agdaFn}")
  fi
done

if [ ${#unusedAgdaFiles[*]} -ne 0 ] || [ ${#uncheckedAgdaFiles[*]} -ne 0 ]; then
  printf "Agda files without corresponding interface file:\n"
  for agdaFn in "${unusedAgdaFiles[@]}"; do
    printf "  %s\n" "${agdaFn}"
  done

  printf "Agda files whose interface file is older:\n"
  for agdaFn in "${uncheckedAgdaFiles[@]}"; do
    printf "  %s\n" "${agdaFn}"
  done

  printf "Please remove the corresponding agda file or import it somewhere, e.g. from the Everything module.\n"
  exit 1
fi

printf "PASS: all Agda files have been typechecked.\n"
