# Build tools

This directory holds what turns the Agda sources into the project's artifacts:
the Nix expressions that pin the toolchain, our build of Agda (`fls-agda`), and
the build driver (`fls-shake`).  This page explains how the pieces fit together,
where each version comes from, and how to change one.  For day-to-day use
(entering a shell, building the site) see [CONTRIBUTING.md][].

```
build-tools/
├── agda/       fls-agda: Agda's command line plus the FLS HTML backend (Haskell)
├── shake/      fls-shake: the Shake build driver (Haskell)
├── nix/        one Nix expression per package the flake exports
├── scripts/    helper scripts (typecheck check, conformance setup, property tracking)
└── static/     files copied into artifacts (mkdocs site, Haskell package skeleton)
```


## The stack at a glance

From the bottom up, as follows:

1.  **nixpkgs** provides GHC, the Haskell library `Agda` (the type checker
    itself), nixpkgs' Agda package machinery (`agdaPackages.mkDerivation`,
    `agda.withPackages`), Python and mkdocs.
2.  **fls-agda** (`build-tools/agda`) is compiled against that `Agda` library.  It
    is Agda's own command line (`Agda.Main.runAgda`) with one extra backend, so
    without the `--fls` flag it behaves exactly like `agda`.
3.  **The Agda libraries** are built and type-checked by fls-agda, because the
    flake replaces the Agda of nixpkgs' `agdaPackages` with fls-agda.  They are
    the following:
    +  `standard-library` ([agda-stdlib][]);
    +  `standard-library-classes` ([agda-stdlib-classes][]);
    +  `standard-library-meta` ([agda-stdlib-meta][]);
    +  `abstract-set-theory` ([agda-sets][]);
    +  `iog-prelude` ([iog-agda-prelude][]).
4.  **The specification** is two Agda libraries of its own: `formal-ledger`
    (`src/` and `src-lib-exts/`, see `formal-ledger.agda-lib`) and
    `formal-ledger-test` (`formal-ledger-test/`, which depends on
    `formal-ledger`).
5.  **fls-shake** (`build-tools/shake`) runs fls-agda over the checked sources to
    produce the website, the browsable HTML, and the Haskell code for
    conformance testing.

The four libraries other than the standard library are not in nixpkgs.  They
come from [agda.nix][], IOG's flake of Nix overlays that adds them to
`agdaPackages`; other IOG Agda projects use it too.


## Where each version is pinned

| Component | Pinned by | Defined in |
|---|---|---|
| nixpkgs (hence GHC and the `Agda` library) | `flake.lock`, input `nixpkgs` | `flake.nix` |
| fls-agda's Agda version | `build-tools/agda/fls-agda.cabal` (`Agda == …`), which must match nixpkgs' `Agda` | `build-tools/nix/fls-agda.nix` |
| `standard-library` | `flake.lock`, input `agda-stdlib` (a release tag in `flake.nix`) | overlay in `flake.nix` |
| agda.nix (its Nix code) | `flake.lock`, input `agda-nix` | `flake.nix` |
| `standard-library-classes`, `standard-library-meta` | `flake.lock`, inputs `agda-nix/standard-library-classes` and `agda-nix/standard-library-meta` (release tags in `flake.nix`) | agda.nix |
| `abstract-set-theory`, `iog-prelude` | `flake.lock`, inputs `agda-nix/abstract-set-theory` and `agda-nix/iog-prelude` | agda.nix |
| Patches to a library | `build-tools/nix/patches/` | overlay in `flake.nix` |

The inputs named `agda-nix/…` are agda.nix's own flake inputs.  This
repository's `flake.lock` records them too, so a commit here can move one
library without touching agda.nix.

To see what is pinned right now, run the following:

```bash
nix flake metadata                     # every locked input, with its date
nix eval --raw .#fls-agda.version      # our Agda
cat "$(nix eval --raw .#fls-agdaWithPackages.libraryFile)"
                                       # the .agda-lib of every library, by store path
```

The last command prints the libraries file that the `agda` of every dev shell
passes to Agda, so it answers "which library does my editor's Agda load".  It
needs the libraries built (`nix build .#fls-agdaWithPackages`).


## fls-agda

fls-agda is an executable named `agda`, built from `build-tools/agda/src/Main.hs`.
It adds one backend, FLS, to Agda's command line, with the following flags:

+  `--fls` writes highlighted, hyperlinked HTML (for `.agda` sources) or
   Markdown (for `.lagda.md` sources), in which `⟦ … ⟧` record syntax is typeset
   as a KaTeX matrix (`data/AgdaKaTeX.js`, styled by `data/Agda.css`);
+  `--fls-html-dir=DIR` names the output directory (default `html`);
+  `--fls-main-only` writes only the module named on the command line.

Its version number follows Agda's.  Every `agda` in this repository's shells is
fls-agda, wrapped with the libraries above.  To work on the backend itself,
`nix develop .#fls-agda` gives a shell with cabal and the Haskell language
server.  A change to anything under `build-tools/agda/` changes fls-agda, and so
rebuilds every Agda library in the closure, the standard library included.


## fls-shake

fls-shake is a [Shake][] program, `build-tools/shake/src/Main.hs`.  Its Nix
wrapper puts fls-agda, hpack, and a Python with mkdocs-material on its `PATH`.
It has the following targets:

+  `html`: copies every module into `_build/html/html.pp/` (Markdown modules
   reduced to their code blocks), writes an `index.agda` that imports them all,
   and runs `agda --fls` on it; output in `dist/html`.
+  `mkdocs`: runs `agda --fls --fls-html-dir=_build/mkdocs/docs` on
   `src/Ledger.lagda.md`, which writes one Markdown page per module, adds
   `build-tools/static/mkdocs/` and `README.md` (as the home page), and runs
   `mkdocs build`; output in `dist/mkdocs`.
+  `hs`: compiles `src/Ledger/Conway/Foreign.agda` and
   `src/Ledger/Dijkstra/Foreign.agda` with Agda's GHC backend
   (`agda -c --ghc-dont-call-ghc`), copies the generated `MAlonzo` modules and
   `build-tools/static/hs-src/` into `dist/hs`, and runs hpack, giving the
   Haskell package `cardano-ledger-executable-spec` that cardano-ledger's
   conformance tests build against.
+  `--watch` (alone): watches `src/` and regenerates a module's Markdown page
   whenever it changes.

Interfaces and intermediate files go to `_build/`, artifacts to `dist/`.  Run it
from the repository root in the default shell, for instance `fls-shake --trace
mkdocs`.


## Packages, shells and CI

The flake (`flake.nix`, with flake-parts) exports the following packages:

| Package | What it is |
|---|---|
| `formal-ledger` (default) | type-checks `src/Ledger.lagda.md` with `--profile=modules`, then checks that every module under `src/Ledger` was type-checked (`scripts/checkTypeChecked.sh`); keeps `_build` and `typecheck.time` |
| `formal-ledger-test` | `agda --build-library` in `formal-ledger-test/` |
| `hs-src`, `html`, `mkdocs` | the fls-shake targets above, starting from `formal-ledger`'s `_build` |
| `fls-agda`, `fls-shake` | the two tools |
| `fls-agdaWithPackages` | fls-agda wrapped with a libraries file naming the five libraries |
| `fls-shake-agdaWithPackages` | fls-shake whose `agda` is `fls-agdaWithPackages` |

The shells are as follows: `default` (Agda with the libraries, fls-shake,
mkdocs, hpack), `fls-agda` and `fls-shake` (for hacking on the tools), and
`fls-shake-agdaWithPackages`.

Two CI systems build the flake.  GitHub Actions (`.github/workflows/`) builds
`formal-ledger` on every pull request, then `hs` and `mkdocs` from its `_build`,
and pushes the results to a `<branch>-artifacts` branch; a nightly job builds
every package and runs cardano-ledger's conformance tests against `hs-src`.
IOG's Hydra builds every package and shell for `x86_64-linux` and
`aarch64-darwin` (`hydraJobs` in `flake.nix`) and fills the binary cache
`cache.iog.io`, which the Actions jobs read.


## Changing a version

**One Agda library**.  Point its input at a tag or commit and relock, for
example:

```bash
nix flake lock --override-input agda-nix/abstract-set-theory \
  github:input-output-hk/agda-sets/<commit>
```

or edit its `url` in `flake.nix` where it is pinned there, and run
`nix flake lock`.  To try a local checkout, override the input with
`path:/absolute/path/to/checkout` (not for committing).

**agda.nix itself**.  `nix flake update agda-nix` moves agda.nix *and resets the
four `agda-nix/…` library pins to the ones agda.nix's own lock names*, except
those pinned by URL in `flake.nix`.  Read the lock diff before committing it.

**The standard library**.  Change the tag of the `agda-stdlib` input.  A
library whose `.agda-lib` names an exact version (`standard-library-2.3`) stops
resolving when the standard library moves; the fix is to depend on
`standard-library`, as the other libraries do.

**nixpkgs**.  `nix flake update nixpkgs` moves GHC, Python and mkdocs, and
nixpkgs' `Agda`.  If nixpkgs' Agda version changes, `fls-agda.cabal` must
change with it.

**Agda**.  A new Agda touches every layer, as follows:

1.  the source of the `Agda` library (nixpkgs, once it packages the release;
    before that, an override of `haskellPackages.Agda` or Agda's own flake);
2.  `fls-agda.cabal`: the `Agda ==` bound, and `version`;
3.  a standard library release that supports the new Agda, and releases of
    agda-stdlib-classes, agda-stdlib-meta, agda-sets and iog-agda-prelude that
    build against it (their READMEs list which versions go together);
4.  the specification itself, against the new Agda's list of breaking changes
    (its `CHANGELOG.md`);
5.  the "Setup Without Nix" instructions in CONTRIBUTING.md, which name versions.

Then build `formal-ledger`, `formal-ledger-test` and `hs-src`, and compare the
warnings with master's; a new Agda brings new warnings, and the specification
keeps none.


## Known sharp edges

+  The `nixpkgs` input follows nixpkgs' `master` branch, not a channel, so
   `nix flake update` can land on a revision Hydra has not built yet.
+  Every derivation that runs Agda on the sources needs a UTF-8 locale
   (`hs-src`, `html` and `mkdocs` set one): without it, a warning that prints
   a non-ASCII name stops Agda with "cannot encode character".
+  A personal pin of the toolchain outside the flake (an `agda` built once and
   linked from `$HOME`) goes stale silently when `flake.lock` moves; build it
   from the checkout you are working in instead.


[agda-sets]: https://github.com/input-output-hk/agda-sets
[agda-stdlib]: https://github.com/agda/agda-stdlib
[agda-stdlib-classes]: https://github.com/agda/agda-stdlib-classes
[agda-stdlib-meta]: https://github.com/agda/agda-stdlib-meta
[agda.nix]: https://github.com/input-output-hk/agda.nix
[CONTRIBUTING.md]: ../CONTRIBUTING.md
[iog-agda-prelude]: https://github.com/input-output-hk/iog-agda-prelude
[Shake]: https://shakebuild.com/
