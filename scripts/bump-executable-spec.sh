#!/usr/bin/env bash
set -e

EXEC_SPEC_REPO_DIR=$1
if [ ! $EXEC_SPEC_REPO_DIR ]; then
  echo "No repository path provided."
  echo "Usage: ./bump-executable-spec.sh EXEC_SPEC_REPO_DIR [LEDGER_REPO_DIR]"
  exit 1
fi

AGDA_COMMIT=$(git rev-parse HEAD)
echo "Building executable spec.."
nix-build -A ledger.hsSrc
EXEC_SPEC_OUT=$(readlink -f result/haskell/Ledger)

echo "Entering executable spec repo.."
chmod 755 -R $EXEC_SPEC_REPO_DIR
pushd $EXEC_SPEC_REPO_DIR

echo "Removing old files.."
FILES_TO_RM=$(git ls-tree -r master --name-only | grep -vE "flake.lock|flake.nix|CHANGELOG.md|.gitignore")
for f in $FILES_TO_RM; do
  rm -rf $f
done

echo "Copying generated files to repo.."
cp -r $EXEC_SPEC_OUT/* .

git add .
git commit -m "formal-ledger-specification commit $AGDA_COMMIT" || true
popd

echo ""
echo ""
echo "Created a commit in the executable spec repo for rev $AGDA_COMMIT"

pushd $EXEC_SPEC_REPO_DIR
git push
EXEC_SPEC_COMMIT=$(git rev-parse HEAD)
popd

LEDGER_REPO_DIR=$2
if [ $LEDGER_REPO_DIR ]; then
  pushd $LEDGER_REPO_DIR
  sed -i "s/tag: .*/tag: $EXEC_SPEC_COMMIT/" cabal.project
  sed -i "s/--sha256: .*/--sha256: sha256-0000000000000000000000000000000000000000000=/" cabal.project
  sed -i "s/[^-]subdir/ --subdir/" cabal.project
  sed -i 's/location: .*$/location: https:\/\/github.com\/Soupstraw\/exec-spec-temporary\.git/' cabal.project
  #COMMIT_SHA=$(nix run nix-prefetch-git -- https://github.com/Soupstraw/exec-spec-temporary --rev $EXEC_SPEC_COMMIT | jq .hash)
  #sed -i "s/--sha256 .*$/--sha256 $COMMIT_SHA/"
  popd
fi
echo "Done!"
