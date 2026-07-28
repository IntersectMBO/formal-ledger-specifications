# Prefetching the Nix dev shell (Claude Code on the web)

`build-tools/nix/prefetch-devshell.sh` realises this project's `nix develop`
shell into the local `/nix/store`. Its purpose is to move the (potentially
slow) first `nix develop` out of the interactive session and into the cloud
environment's **setup-script** phase, whose filesystem output is cached and
reused by every later session.

This complements the `git+https` flake inputs (see the note at the top of
`flake.nix`): the flake change makes resolution *possible* behind the sandbox
proxy; the prefetch makes it *instant* for subsequent sessions.

## Where to put it / how to run it

The script itself lives in the repo (version-controlled and reviewable). You
wire it into the environment via the Claude Code web UI:

1. Open the environment selector (cloud icon) → your environment → **Edit**.
2. In the **Setup script** field, make sure **Nix is installed first**, then
   run the prefetch:

   ```bash
   # 1. Install Nix if the base image doesn't provide it (the prefetch script
   #    deliberately no-ops when `nix` is absent, so ordering matters).
   command -v nix >/dev/null || sh <(curl -L https://nixos.org/nix/install) --no-daemon
   # 2. Prefetch the dev shell into the snapshot.
   ./build-tools/nix/prefetch-devshell.sh
   ```

   (Keep any existing setup-script lines.)  If you install Nix by hand as
   root in single-user mode instead of via the official installer, builds
   additionally need `build-users-group =` and `sandbox = false` in the Nix
   configuration; the official installer takes care of this.
3. Ensure **Network access** is **Trusted** (or a **Custom** list that keeps
   the defaults plus `cache.nixos.org`, `cache.iog.io`, and `github.com`).
   `None` will make the prefetch fail.
4. Save. The next *new* session rebuilds the environment cache and runs the
   prefetch once.

## When it runs

| Trigger | Prefetch runs? |
|---|---|
| First session in the environment | Yes (populates the cache) |
| Later *new* sessions | No — served from the cached snapshot |
| **Resuming** an existing session | No |
| You change the setup script or the allowed-hosts list | Yes (cache rebuilds) |
| Cache expiry (~7 days) | Yes (cache rebuilds) |

Reference: <https://code.claude.com/docs/en/claude-code-on-the-web> (Setup
scripts, Environment caching, Network access).

## Notes

- **Idempotent.** Once the store is warm the script finishes in seconds, so
  it is harmless to run repeatedly or by hand on any machine with Nix.
- **gc-root.** It pins the realised shell via a `nix develop --profile`
  gc-root at `$HOME/.cache/fls/devshell-profile` (override with
  `FLS_DEVSHELL_GCROOT`) so the paths are not garbage-collected before the
  session starts. The path is outside the working tree, so `git status` stays
  clean.
- **Setup script vs. SessionStart hook.** This is deliberately a *setup
  script*, not a `.claude` SessionStart hook: only the setup-script phase is
  cached. A SessionStart hook would re-realise the shell on every session
  start/resume and add latency for no caching benefit.
- **No `nix`?** The script exits 0 with a message, so it is safe in
  environments where Nix is not installed.
- **Shallow clones.** Claude Code web checkouts are *shallow* git clones, and
  Nix's git fetcher fails on shallow repositories while walking parent
  commits (`error: getting parent of Git commit '…': object not found`). The
  script therefore references the flake as `path:$REPO_ROOT`, which hashes
  the working tree directly. If you run `nix develop` by hand in a web
  session, do the same (`nix develop path:.`) or unshallow the clone first
  (`git fetch --unshallow`).
- **Companion (out of scope here).** The dev shell provides the *compiler*
  in seconds, but first-typecheck latency is dominated by the `_build`
  `.agdai` interface cache, which this script does not populate. A setup
  script can additionally restore the latest CI `_build` artifact to make
  single-module typechecks fast from the first session.
