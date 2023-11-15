#!/bin/sh

echo "Checking that all Agda files have been typechecked..."
for agdaFn in $(find . -name '*.*agda'); do
  agdaiFn="${agdaFn%.*agda}.agdai"
  if ! [ -f $agdaiFn ]; then
    echo "        FAIL: $agdaiFn doesn't exist"
    exit 1
  fi
done
echo "        PASS: all Agda files have been typechecked"
