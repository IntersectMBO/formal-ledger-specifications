#!/usr/bin/env bash
#
# Prefetch the Nix dev shell into the local /nix/store.
#
# Intended to run as a Claude Code (web) *setup script* — see
# build-tools/nix/README-prefetch.md. Setup-script output is snapshotted and
# reused by later sessions, so realising the dev shell here means subsequent
# `nix develop` invocations find every path already on disk and perform no
# network fetches at all.
#
# It is also safe to run by hand on any machine: it only populates the store
# and a gc-root, and re-runs are fast once the store is warm.
set -euo pipefail

# Resolve the repo root from this script's location so the setup script can
# invoke it from anywhere.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$REPO_ROOT"

export NIX_CONFIG="experimental-features = nix-command flakes"

if ! command -v nix >/dev/null 2>&1; then
  echo "prefetch-devshell: 'nix' not found on PATH; nothing to do." >&2
  exit 0
fi

# Keep a gc-root outside the working tree so the realised paths survive a
# garbage collection between setup and the interactive session, and so the
# git tree stays clean.
GCROOT_DIR="${FLS_DEVSHELL_GCROOT:-$HOME/.cache/fls/devshell-profile}"
mkdir -p "$(dirname "$GCROOT_DIR")"

echo "prefetch-devshell: realising dev shell into the store (gc-root: $GCROOT_DIR)"

# `--profile` doubles as a persistent gc-root. `--command true` builds the
# shell environment and exits without dropping into an interactive shell.
nix develop --profile "$GCROOT_DIR" --command true

echo "prefetch-devshell: done. Verifying Agda is available:"
nix develop --profile "$GCROOT_DIR" --command agda --version
