#!/bin/sh

echo "Checking that all Agda files have been typechecked..."
for agdaFn in $(find . -name '*.*agda'); do
  agdaiFn="${agdaFn%.*agda}.agdai"
  if [ "$(( $(stat -c "%Y" $agdaiFn) - $(stat -c "%Y" $agdaFn) ))" -lt "0" ]; then
    echo "        FAIL: $agdaiFn is not up-to-date"
    exit 1
  fi
done
echo "        PASS: all Agda files have been typechecked"
