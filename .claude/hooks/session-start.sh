#!/bin/bash
# SessionStart hook: provision the Nix toolchain so Agda typechecking works in
# Claude Code on the web sessions.
#
# The project typechecks only through its Nix flake (flake.nix pins Agda and the
# Agda libraries via github:input-output-hk/agda.nix); there is no system `agda`.
# This hook installs nix (if absent), enables flakes, points at the binary caches
# the flake needs, and pre-warms `nix develop` so the dev shell is cached for the
# rest of this session (and, since container state is cached after the hook
# completes, for future sessions too).
#
# NETWORK REQUIREMENT: needs the policy to allow `nixos.org` (installer),
# `cache.nixos.org` and `cache.iog.io` (substituters), and `github.com` (flake
# inputs). As of 2026-06-16 the default policy returns 403 for nixos.org and
# cache.iog.io, so this hook logs the problem and exits 0 (non-fatal) rather than
# blocking session startup. Once the policy permits those hosts it works as-is.
set -uo pipefail

log() { printf '[session-start] %s\n' "$*"; }

# Only run in the remote (web) environment.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  log "not a remote session; skipping nix provisioning."
  exit 0
fi

# 1. Install nix (single-user, daemonless) if not already present.
if ! command -v nix >/dev/null 2>&1; then
  # Make any already-installed profile visible first.
  if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
    # shellcheck disable=SC1091
    . "$HOME/.nix-profile/etc/profile.d/nix.sh"
  fi
fi

if ! command -v nix >/dev/null 2>&1; then
  log "installing nix (single-user)..."
  if curl -fsSL -m 30 -o /tmp/nix-install https://nixos.org/nix/install; then
    sh /tmp/nix-install --no-daemon --yes 2>&1 | sed 's/^/[nix-install] /' || \
      log "nix installer exited non-zero (continuing)."
    if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
      # shellcheck disable=SC1091
      . "$HOME/.nix-profile/etc/profile.d/nix.sh"
    fi
  else
    log "ERROR: cannot fetch https://nixos.org/nix/install (network policy likely blocks nixos.org)."
    log "       Allow nixos.org + cache.nixos.org + cache.iog.io + github.com in the environment's"
    log "       network policy, then this hook will install and warm the toolchain. Skipping for now."
    exit 0
  fi
fi

if ! command -v nix >/dev/null 2>&1; then
  log "ERROR: nix still not on PATH after install attempt; skipping."
  exit 0
fi
log "nix present: $(nix --version 2>/dev/null || echo unknown)"

# 2. Enable flakes and configure the binary caches the flake expects (from ci.yml).
mkdir -p "$HOME/.config/nix"
NIX_CONF="$HOME/.config/nix/nix.conf"
grep -q 'experimental-features' "$NIX_CONF" 2>/dev/null || \
  echo 'experimental-features = nix-command flakes' >> "$NIX_CONF"
grep -q 'cache.iog.io' "$NIX_CONF" 2>/dev/null || cat >> "$NIX_CONF" <<'CONF'
substituters = https://cache.iog.io https://cache.nixos.org/
trusted-public-keys = hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=
CONF

# 3. Persist nix on PATH for the rest of the session.
if [ -n "${CLAUDE_ENV_FILE:-}" ] && [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  echo ". \"$HOME/.nix-profile/etc/profile.d/nix.sh\"" >> "$CLAUDE_ENV_FILE"
fi

# 4. Pre-warm the dev shell so `nix develop --command agda <file>` is fast.
#    Best-effort: a failure here (e.g. blocked cache.iog.io) must not block startup.
cd "${CLAUDE_PROJECT_DIR:-.}" || exit 0
log "pre-warming 'nix develop' (this can take a while on a cold cache)..."
if nix develop --command agda --version 2>&1 | sed 's/^/[nix-develop] /'; then
  log "toolchain ready: 'nix develop --command agda <file>' works."
else
  log "WARNING: 'nix develop' did not complete (often a blocked cache.iog.io). Typechecking"
  log "         may be unavailable until the network policy allows the IOG cache. Non-fatal."
fi

exit 0
