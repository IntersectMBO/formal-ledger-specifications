#!/bin/sh

AGDA_VER=$(agda --numeric-version)

echo "Checking that all Agda files have been typechecked..."
for agdaFn in $(find src -name '*.*agda'); do
  agdaiFn="_build/$AGDA_VER/agda/${agdaFn%.*agda}.agdai"
  if [ "$(( $(stat -c "%Y" $agdaiFn) - $(stat -c "%Y" $agdaFn) ))" -lt "0" ]; then
    if [ "$1" = "-m" ]; then
      echo "        FAIL: $agdaiFn does not exist. Please remove the corresponding agda file or import it somewhere, e.g. from the Everything module."
    fi
    exit 1
  fi
done
echo "        PASS: all Agda files have been typechecked."
