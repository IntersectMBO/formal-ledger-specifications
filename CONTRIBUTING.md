# Contributing to the Formal Ledger Specifications

**Brief Contents**

<!-- DO NOT REMOVE TRAILING WHITE SPACE FROM TOC LIST -->

[Style Guidelines][]  
[Project Overview][]  
[Development Environment Setup][]  
[Building Project Artifacts][]  
[HTML Documentation][]  
[IDE Integration][]  
[Working on the Agda source code][]  
[Tracking Properties of the Ledger][]  
[CI/CD Workflow][]  
[Conformance Testing][]  
[Miscellanea][]  
[Maintainers][]  
[Build Toolchain Reference][]


---

<a id="style-guidelines"></a>
## Style Guidelines

We adhere to the [Agda standard library style guide][] where practical.
However, because we use [literate][] Agda to produce html documentation, readability
of the latter takes precedence over code formatting.


### Miscellaneous conventions

1.  Type classes for accessing fields of records should be named after the *type* of
    the field and not the name of the field.  For example, suppose
    ```agda
    Fees : Type
    Fees = ℕ
    ```
    and suppose we have a record type `A` with a field called `fee`:
    ```agda
    record A : Type where
      field
        fee : Fees
        ...
    ```
    Then we would make a type class called `HasFees` (since the **type** is called `Fees`)
    ```agda
    record HasFees {a} (A : Type a) : Type a where
      field FeesOf : A → Fees
    open HasFees ⦃...⦄ public
    ```
    and define the following instance of the `HasFees` type class for the type `A`:
    ```agda
      instance
        HasFees-A : HasFees A
        HasFees-A .FeesOf = A.fee
    ```
    then, if `a : A`, we can access the `fee` field of `a` via `FeesOf a`.  From this
    contrived example, you might think type classes are overkill here, and you're not
    all wrong.  However, they can come in handy in practice, expecially when we have
    many different types that have, say, fees or donations associated with them, and
    we want to be able to access those values in a consistent way.  Moreover, we have
    many examples of nested records that contain fees or donations, and the "getter type
    class" instances allow us to access those values without having to remember the
    specific paths to the field names of those record types.  Another example of the
    [getter type class pattern](#example-getter-type-class) is given in the
    [Miscellanea][] section below.

2.  Use camel case for field names (e.g., `txNetworkId` instead of `txnetworkid`).

---

<a id="project-overview"></a>
## Project Overview

This repository uses [Nix][] and [Shake][] to provide a reproducible, declarative,
and portable development environment.


### Nix Flakes and the Build Stack

We use Nix Flakes to pin dependencies and define builds and development shells.
The stack has the following layers:

1.  [nixpkgs][] provides GHC, the Haskell `Agda` library (the type checker),
    Nix's Agda package machinery, Python, and mkdocs.
2.  `fls-agda`: custom Agda backend for generating html documentation.  The flake
    uses it to build the Agda libraries as well as the specification.
3.  `fls-shake` drives `fls-agda` to produce the website, browsable source, and
    Haskell code for conformance testing.
4.  `formal-ledger` is the specification library, with sources in `src/` and
    `src-lib-exts/`.  The separate `formal-ledger-test` library in
    `formal-ledger-test/` depends on it.
5.  The five Agda dependencies are [agda-stdlib][] (the standard library),
    [agda-stdlib-classes][] (type classes), [agda-stdlib-meta][] (metaprogramming),
    [agda-sets][] (abstract set theory), and [iog-agda-prelude][] (supplementary
    definitions).  nixpkgs and the [agda.nix][] overlay supply these libraries;
    their locked revisions determine the sources used.

All dependencies are pinned through `flake.lock`, either directly or through
the package definitions in its locked nixpkgs and agda.nix revisions.  See
[Build Toolchain Reference](#build-toolchain-reference) for the pin locations,
backend flags, and procedures for changing versions.


### Directory Structure

The main directories and files involved in the build process are as follows.

```
├── flake.nix                  # The main Nix flake file.
│
└── build-tools
    ├── agda/
    │   ├── data/
    │   │   ├── Agda.css       # For styling Agda HTML output.
    │   │   └── AgdaKaTeX.js   # For integrating Agda's HTML with KaTeX.
    │   ├── fls-agda.cabal     # For building fls-agda Haskell package.
    │   └── src/
    │       └── Main.hs        # Main entry point for fls-agda executable.
    │
    ├── nix/                   # Nix derivations for exported packages.
    │   ├── fls-agda.nix
    │   ├── fls-shake.nix
    │   ├── formal-ledger.nix
    │   ├── formal-ledger-lib.nix
    │   ├── hs-src.nix
    │   ├── html.nix
    │   └── mkdocs.nix
    │
    ├── scripts/                # Checks, conformance setup, and property tracking.
    ├── static/                 # MkDocs files and the Haskell package skeleton.
    └── shake/
        ├── fls-shake.cabal    # For building fls-shake Haskell package.
        └── src/
            └── Main.hs        # Main entry point for fls-shake build system.
```

---

<a id="development-environment-setup"></a>
## Development Environment Setup

We provide several development shells tailored for different tasks. You can
enter them using `nix develop`.

+  **Default Shell**

    Use this shell for the specification and build tools.

    ```bash
    # Enter the default development shell
    nix develop
    ```

    **Available Tools**

    + [`agda`][Agda] (`fls-agda` with the five dependency libraries)
    + `fls-shake` (our custom build tool)
    + [`mkdocs`][mkdocs] (with Python dependencies)
    + [`hpack`][hpack] (the Haskell package helper)

+  **Test Library Shell**

    This shell registers a built snapshot of `formal-ledger` alongside the
    five dependency libraries.  Re-enter it to pick up subsequent changes
    to the specification.  Use the default shell for `fls-shake` and
    `mkdocs`.

    ```bash
    nix develop .#formal-ledger-test
    cd formal-ledger-test
    agda src/Test/Prelude.lagda.md
    ```

For work on the Haskell tools, `nix develop .#fls-agda` and
`nix develop .#fls-shake` provide cabal and the Haskell language server.  The
`fls-shake-agdaWithPackages` shell provides the build driver with Agda and the
dependency libraries.

---


<a id="building-project-artifacts"></a>
## Building Project Artifacts

You can build project artifacts in several ways. The recommended method is using `nix build`.

The `flake.nix` file exposes all buildable artifacts as packages.

(How to view or use what these commands build is explained below; see
[Building and viewing the formal specification][] and [Browsing the source code][].)

```bash
# Type-check the Agda specification (default package)
nix build .#formal-ledger
# or simply:
nix build

# Type-check the separate test library
nix build .#formal-ledger-test

# Generate the (HTML version of the) formal specification
nix build .#mkdocs

# Generate browseable HTML version of Agda code
nix build .#html

# Generate Haskell source code for conformance testing
nix build .#hs-src
```

Build outputs are symlinked at `result`.  The packages are as follows:

| Package | Build and output |
|---|---|
| `formal-ledger` (default) | Checks `src/Ledger.lagda.md` with module profiling and import tracing, then runs `build-tools/scripts/checkTypeChecked.sh` to check coverage of `src/Ledger`; keeps `_build` and `typecheck.time`. |
| `formal-ledger-test` | Runs `agda --build-library` in `formal-ledger-test/`. |
| `hs-src`, `html`, `mkdocs` | Run the corresponding `fls-shake` targets, reusing `formal-ledger`'s `_build`. |
| `fls-agda`, `fls-shake` | Build the two Haskell tools. |
| `fls-agdaWithPackages` | Wraps `fls-agda` with a libraries file naming the five Agda dependencies. |
| `fls-shake-agdaWithPackages` | Wraps `fls-shake` with `fls-agdaWithPackages` as its `agda`. |


### Using the `fls-shake` Build Tool

For more granular control, you can use our Shake-based build tool, `fls-shake`, from within a development shell.

```bash
# Enter the default development shell
nix develop

# Build specific artifacts using fls-shake
fls-shake html                # Build browsable source
fls-shake mkdocs              # Build the formal specification website
fls-shake hs                  # Build Haskell source

# See all available targets
fls-shake --help
```

Run it from the repository root.  Its Nix wrapper puts `fls-agda`, hpack, and
Python with mkdocs-material on `PATH`.  It has the following targets:

+  `html` copies `.agda` modules and extracts the code from `.lagda.md` modules
   into `_build/html/html.pp/`, generates an `index.agda` importing every source
   module, and runs `agda --fls` on it.  The output is in `dist/html`.
+  `mkdocs` runs `agda --fls --fls-html-dir=_build/mkdocs/docs` on
   `src/Ledger.lagda.md`, producing one Markdown page per imported module.  It
   adds `build-tools/static/mkdocs/` and `README.md` (the home page), then runs
   `mkdocs build` in strict mode.  The output is in `dist/mkdocs`.
+  `hs` compiles `src/Ledger/Conway/Foreign.agda` and
   `src/Ledger/Dijkstra/Foreign.agda` with `agda -c --ghc-dont-call-ghc`, copies
   the generated `MAlonzo` modules and `build-tools/static/hs-src/` into
   `dist/hs`, and runs hpack.  The resulting package,
   `cardano-ledger-executable-spec`, is used by cardano-ledger's conformance
   tests.
+  `--watch`, used alone, watches `src/` and regenerates a module's Markdown
   page when it changes.

Interfaces and intermediate files go to `_build/`; artifacts go to `dist/`.
After renaming or deleting modules, remove `_build/MAlonzo` and `dist/hs`
before rebuilding the Haskell package to clear stale generated modules.
Use `fls-shake --trace mkdocs`, for example, to trace a build.

---

<a id="html-documentation"></a>
## HTML Documentation

### Building and viewing the formal specification

There are two ways to do this.

1.  **With Nix**

    Enter the command `nix build .#mkdocs` then open the
    file `result/mkdocs/index.html` in a browser. This type-checks the
    Agda code, and generates the HTML documentation from scratch.

    **Note**. This currently works in Chrome but may not work in Brave or
    Firefox.  If you want to use one of those browsers to view the generated
    documentation, you can run a local server on the result,
    `cd result/mkdocs; python3 -m http.server`, and then point your browser
    to <http://127.0.0.1:8000/>.

2.  **Manually**

    This method only type-checks the Agda code that has changed since last time and
    then generates the HTML documentation.

    ```bash
    nix develop
    fls-shake mkdocs
    cd _build/mkdocs
    mkdocs serve
    ```

    Then point your browser to  <http://127.0.0.1:8000/>.

### Browsing the source code

After generating the HTML version of the source code with `nix build .#html`, you can
view the result by pointing your browser to `result/html/index.html`.  If
this fails, then you may have to run a local server, as follows:

```
cd result/html
python3 -m http.server
```

Then point your browser to <http://127.0.0.1:8000>.

---

<a id="ide-integration"></a>
## IDE Integration

Start Emacs from the development shell of the library you are editing, so that
agda-mode runs the project's Agda:

```bash
nix develop                     # or: nix develop .#formal-ledger-test
emacs src/Ledger.lagda.md
```

Run `agda --emacs-mode setup` once from the shell.  It adds code to your
[Emacs init file][] that loads the agda-mode of the `agda` on `PATH`, so the
mode matches the shell's Agda.

---

<a id="working-on-the-agda-source-code"></a>
## Working on the Agda source code

### Editing the source files

The source files under `src` are plain Agda (`.agda`) and Markdown-based literate
Agda (`.lagda.md`); eventually all of them will be of the Markdown flavor.

Markdown-flavored literate Agda files contain English prose, formatted using Markdown
syntax, along with code blocks each of which is delimited by an Agda code fence. For
example,

````markdown
```agda
-- Agda code goes here
```
````

We also use "hidden" code blocks, inside of which is code that is type-checked by
Agda but does not (by default) appear on web pages generated by from the `.lagda.md`
source file.[^1]  A normal Agda code block is hidden by simply surrounding a normal
code block with the standard HTML comment delimiters.  For example,

````markdown
<!--
```agda
-- Agda code here will be type-checked but not shown on the web page by default.
```
-->
````

See also: [the Agda documentation section on literate markdown][Agda literate markdown].

### Type-checking while you work

The specification is type-checked through the Nix flake, which pins the Agda version
and all required libraries. For day-to-day work, enter the Nix development shell once and
run Agda from there, so the toolchain is on your `PATH` for your editor and any other
tooling.

```bash
nix develop                                              # Agda + libraries on PATH
agda src/Ledger/Dijkstra/Specification/Ledger.lagda.md   # type-check one module
```

Type-checking a single module is much faster than `nix build` (which checks the whole
specification) and, apart from type-checking directly inside Emacs, it is the quickest
way to iterate on a proof.

Launching your editor (and any agent tooling, such as Claude Code)
from inside the Nix shell makes Agda available to all of it, which is cheaper than
re-entering `nix develop` for each invocation.  However, it is possible to type-check
a module without staying in the shell with the command

```bash
nix develop --command agda src/Path/To/Module.lagda.md
```

### Checking how your code looks on the site

An important step in contributing any code to the repository is to check how it will
appear when run through our custom mkdocs site generator and rendered on our website.
This section explains how to use the tools we have created to monitor the effects
your changes to the code will have on the appearance of the corresponding web pages.

1.  First, generate the mkdocs site **Manually** (as described in option 2 of the
    [Building and viewing the formal specification][] section):

    ```bash
    nix develop
    fls-shake mkdocs
    cd _build/mkdocs
    mkdocs serve
    ```
2.  In another terminal window, enter the default Nix shell with `nix develop` and then
    run `fls-shake --watch`.

3.  Edit the `.lagda.md` files directly under `src`.

4.  Check your work by viewing the corresponding page at <http://127.0.0.1:8000/>.

The `fls-shake --watch` command watches `src` for file modifications and
regenerates the corresponding pages under `_build/mkdocs/docs`.  The mkdocs
server notices those generated pages and refreshes the browser.  After adding
modules or changing imports, rerun `fls-shake mkdocs` to rebuild the site.

---

<a id="tracking-properties-of-the-ledger"></a>
## Tracking Properties of the Ledger

Ledger properties (preservation of value, governance invariants, and so on) are
tracked across eras by the following three artifacts, each the single source of
truth for one concern:

+  **the Agda** under `src/**/Properties/` decides whether a property is *proved*;
+  **the catalog** (`build-tools/scripts/property-tracking/properties.yaml`), curated by hand, records each
   property's identity: era, STS, Agda module, key definitions, and tracking
   issue; it does NOT declare a property's status;
+  **GitHub issues** carry the coordination: discussion, assignment, open/closed.

### The scanner script: `scan_properties.py`

A property's status is *derived*, never asserted.

`build-tools/scripts/property-tracking/scan_properties.py` resolves each catalog entry's `module`
against the Agda on disk and classifies the entry as one of the following:

+  `idea`: no module named (nothing in Agda yet);
+  `planned`: module named, but the file is not on this branch;
+  `stated`: the file contains a `coming soon` marker (statement present, proof pending);
+  `proved`: the file is present with no pending marker.

The scanner regenerates the dashboard
(`build-tools/static/mkdocs/docs/ledger-properties-dashboard.md`, published on
the documentation site as the **Properties Dashboard** page), and
`scan_properties.py --check` fails when the committed dashboard is stale or the
catalog is malformed.  The check runs in CI
(`.github/workflows/properties-check.yml`), so a proof that lands without a
regenerated dashboard fails the pull request; the Agda `--safe` typecheck in the
main CI is what makes `proved` mean proved.

Run the scanner from the default development shell, which provides `python3`
with PyYAML:

```bash
python3 build-tools/scripts/property-tracking/scan_properties.py          # regenerate the dashboard
python3 build-tools/scripts/property-tracking/scan_properties.py --check  # what CI runs: fail on drift
```

### Conventions for property modules

+  One focused module per property, in the `X/Properties/` subdirectory of the
   relevant module `X`.  For example, `Chain/Properties/EpochStep.lagda.md` holds
   a property concerning `Chain`.  An aggregator module, `X/Properties.lagda.md`,
   lists (and imports) every property submodule in `X/Properties/`.

+  While unproved, the module states the proposition (as a type) and ends with
   `*Proof*. (coming soon)`.  When proved, the proof replaces that line.  The
   `coming soon` string is the machine-readable pending signal which
   **must be present in every module with an unproved property**.

+  Headings carry a stable anchor: `## Claim: … {#clm:Foo}` or
   `## Theorem: … {#thm:Foo}`.

+  The catalog records the dotted `module`, the `anchor`, the key `defs`, and
   the tracking `issues`; this is where the property↔issue link lives, in-repo
   and machine-checkable.

### Typical workflows

**Note**: you never set the property status yourself.

1.  **Add a property**.  Add a catalog entry to the `build-tools/scripts/property-tracking/properties.yaml`
    file.  (Property status: `idea`.)

2.  **Create a new Agda module** for the property and encode the property as a type.
    **Important**: add `*Proof*. (coming soon)` after the property type definition.
    (Property status: `stated`.)

3.  **Run the scanner** and commit the catalog together with the regenerated dashboard.

    ```bash
    python3 build-tools/scripts/property-tracking/scan_properties.py          # regenerate the dashboard
    git add build-tools/static/mkdocs/docs/ledger-properties-dashboard.md
    git commit -m "added new property" && git push
    ```

4.  **Prove the property**.  Replace `coming soon` with a formal proof, an inhabitant
    of the property type definition. (Property status: `proved`.)

    Repeat step 3 (run the scanner and commit the regenerated dashboard).

    Close the GitHub issue associated with the property.

### Syncing with GitHub property issues

Two companion scripts keep the catalog and the GitHub issues aligned.  Both are
run locally by maintainers and are documented in `build-tools/scripts/property-tracking/README.md`;
they need the [GitHub CLI](https://cli.github.com/) (`gh`), authenticated (the
Nix shell does not provide `gh`).

+  `gh_project_populate.py` (catalog → GitHub) creates labels, the per-era
   umbrella issues, and one tracking issue per catalog entry that has none,
   writing the new issue numbers back into the catalog; for already-tracked issues
   it reconciles the derived `status:*`  label.  Run it, with `--dry-run` first,
   after adding catalog entries that need issues.

+  `gh_project_render.py` (GitHub → repo) regenerates the issues view
   (`build-tools/static/mkdocs/docs/ledger-properties-issues.md`) with live
   open/closed/assignee state.  Run it to refresh that coordination view; formal
   status never comes from issues, since closing an issue by hand does not make a
   proof exist.

---

<a id="cicd-workflow"></a>
## CI/CD Workflow

GitHub Actions and IOG's Hydra build the flake.  The Actions pipeline in
`.github/workflows/` builds and publishes artifacts, with the following details:

+ **Branches Covered by CI**

   The full pipeline runs on every push to `master`, `leios-main`, or `legacy-latex`, and on every
   pull request targeting `master` or `leios-main`. For other branches without an open
   PR, the workflow can be triggered manually from the Actions tab
   (`workflow_dispatch`).

+ **Caching**

   The initial `formal-ledger-agda` job builds `formal-ledger` and uploads its
   `_build` directory.  The `hs` and `mkdocs` jobs download those interfaces and
   run `fls-shake` to generate the Haskell package and website.

+ **Artifact Branches**

   Automatic runs on the covered branches and pull requests from this
   repository push the generated artifacts to a corresponding
   `<branch-name>-artifacts` branch.  Manual runs and fork pull requests do not
   publish an artifacts branch.

+ **PDF Generation Note**

   The CI workflow **does not** build PDFs from the current source. Instead, it
   checks out the `legacy-latex-artifacts` branch and copies the PDFs from
   there.

### Nightly builds and Hydra

The nightly Actions workflow builds every package on `x86_64-linux` and runs
cardano-ledger's conformance tests against `hs-src`.

IOG's Hydra builds every package and shell for `x86_64-linux` and
`aarch64-darwin`, as defined by `hydraJobs` in `flake.nix`.  It fills the binary
cache at `cache.iog.io`, which Actions also uses.  In particular, Hydra checks
`formal-ledger-test`; the regular PR pipeline's `formal-ledger-agda` job checks
only `formal-ledger`.  Check both systems when assessing a PR.  Inspect the
jobs actually run on a feature-base PR; if the full Actions pipeline is absent,
use its manual trigger or check Hydra's results.

### Leios development workflow

Formalization of the ledger changes required by Ouroboros Leios is staged on the `leios-main` branch, which evolves in parallel to `master`:

+ To work on Leios, branch off of `leios-main` and open a pull request targeting
   `leios-main`. Such PRs run the same CI as PRs targeting `master`.

+ Changes required but independent of Leios (e.g. `Ledger.Core`, `Ledger.Prelude`, the STS
   machinery) should be made first on a PR to `master` and then merged into `leios-main`.

---

<a id="conformance-testing"></a>
## Conformance Testing

After producing the Agda-generated Haskell code with `nix build .#hs-src`, you
can run the conformance tests.

See [the `conformance-example` directory][conformance-example].

---

<a id="miscellanea"></a>
## Miscellanea


### Plotting typechecking times

The script `build-tools/scripts/plot_typecheck_time.py` can be used to generate an `html`
file that plots the typechecking times as recorded in the `master-artifacts`
branch.

The script uses `python` and `pandas`, and the generated `html` uses `chart.js`
for plotting.

Frome the git repository, run,
```bash
python build-tools/scripts/plot_typecheck_time.py > index.html
```
and open `index.html` in your browser.

---

<a id="example-getter-type-class"></a>
### Another Example of the Getter Type Class Pattern

Here's a more realistic example of how we use type classes to make accessing fields
of records easier and more consistent.

Let

```agda
VoteDelegs : Type
VoteDelegs = Credential ⇀ VDeleg

record HasVoteDelegs {a} (A : Type a) : Type a where
  field VoteDelegsOf : A → VoteDelegs
open HasVoteDelegs ⦃...⦄ public

record DState : Type where
  field
    voteDelegs   : VoteDelegs
    ...

record HasDState {a} (A : Type a) : Type a where
  field DStateOf : A → DState
open HasDState ⦃...⦄ public

record CertState : Type where
  field
    dState : DState
    ...

instance
  HasVoteDelegs-DState : HasVoteDelegs DState
  HasVoteDelegs-DState .VoteDelegsOf = DState.voteDelegs

  HasDState-CertState : HasDState CertState
  HasDState-CertState .DStateOf = CertState.dState

  HasVoteDelegs-CertState : HasVoteDelegs CertState
  HasVoteDelegs-CertState .VoteDelegsOf = VoteDelegsOf ∘ DStateOf
```

Now, if we have `cs : CertState`, we can fetch the `voteDelegs` field of (the
`dState` of) `cs` as follows: `VoteDelegsOf cs`.

Without type classes we would have to `open DState` and `open CertState` and then
write `cs .dState .voteDelegs`, or, if we want to avoid `open` clutter, `DState.voteDelegs CertState.dState cs`.


---

<a id="maintainers"></a>
## Maintainers

This repository is maintained by [@carlostome][], [@WhatisRT][], and [@williamdemeo][].

**If you encounter any problems, please open a [New Issue][]**.

---

<a id="build-toolchain-reference"></a>
## Build Toolchain Reference

This section covers the details needed to inspect or change the toolchain.
For routine builds, see [Building Project Artifacts](#building-project-artifacts).

### Where each version is pinned

| Component | Pinned by | Build definition |
|---|---|---|
| nixpkgs, including GHC and the Haskell `Agda` library | `flake.lock`, input `nixpkgs` | `flake.nix` |
| `fls-agda`'s Agda version | `build-tools/agda/fls-agda.cabal` (`Agda == …`), which must match nixpkgs' `Agda` | `build-tools/nix/fls-agda.nix` |
| `standard-library`, `standard-library-classes`, `standard-library-meta` | Package versions and source hashes in locked nixpkgs | nixpkgs' `pkgs/development/libraries/agda/` |
| agda.nix | `flake.lock`, input `agda-nix` | `flake.nix` |
| `abstract-set-theory`, `iog-prelude` | Source revisions and hashes in locked agda.nix | agda.nix's `agda-packages.nix` |

Inspect the locked agda.nix overlay to see which libraries it supplies and
whether their sources are flake inputs or package definitions.  To see
the inputs and Agda version, run the following:

```bash
nix flake metadata
nix eval --raw .#fls-agda.version
```

To see which libraries the wrapped Agda loads, build the environment and read
its libraries file, as follows:

```bash
nix build .#fls-agdaWithPackages
cat "$(nix eval --raw .#fls-agdaWithPackages.libraryFile)"
```

The file lists the libraries' `.agda-lib` files by store path.  Depending on
the pinned nixpkgs revision, the wrapper selects this registry with
`--library-file` or a default `AGDA_DIR`.  In the latter case an existing
`AGDA_DIR` takes precedence; unset it if Agda cannot find the project libraries.
An explicit `--library-file` works with either wrapper.

### The fls-agda backend

`fls-agda` builds an executable named `agda` from
`build-tools/agda/src/Main.hs`.  It calls `Agda.Main.runAgda` with the FLS
backend added.  Without `--fls` it behaves like Agda's ordinary command line.
The backend accepts the following flags:

+  `--fls` writes highlighted, hyperlinked HTML for `.agda` sources and
   Markdown for `.lagda.md` sources.  It typesets `⟦ … ⟧` record syntax as a
   KaTeX matrix, using `build-tools/agda/data/AgdaKaTeX.js` and `Agda.css`.
+  `--fls-html-dir=DIR` selects the output directory (default `html`).
+  `--fls-main-only` writes only the module named on the command line.

Its version follows Agda's.  The flake replaces the Agda used by nixpkgs'
`agdaPackages` with `fls-agda`, so a change under `build-tools/agda/` rebuilds
the tool and every Agda library in the closure, including the standard library.
Use `nix develop .#fls-agda` when working on the backend itself.

### Changing versions

**Agda libraries**.  Each library is an ordinary nixpkgs Agda package; agda.nix
adds the two that nixpkgs lacks.  The [nixpkgs Agda documentation][] explains
how to update or override one.

**nixpkgs**.  `nix flake update nixpkgs` can move GHC, Python, mkdocs, Agda, and
the libraries supplied by nixpkgs together.  The input follows nixpkgs' `master`
branch, so a new revision may not yet have cached builds.  Read the lock diff
before committing it.

**Agda**.  A new Agda version requires checking the following layers:

1.  The Haskell `Agda` library from nixpkgs.  Before nixpkgs packages a new
    release, this needs an override of `haskellPackages.Agda` or Agda's own
    flake.
2.  `build-tools/agda/fls-agda.cabal`: its `Agda ==` bound and package version,
    together with the version in `build-tools/nix/fls-agda.nix`.
3.  Compatible versions of agda-stdlib, classes, meta, agda-sets, and
    iog-agda-prelude.  Their READMEs describe supported combinations.
4.  The specification, checked against Agda's breaking changes in its
    `CHANGELOG.md`.

Build `formal-ledger`, `formal-ledger-test`, and `hs-src` after changing the
stack.  Compare warnings with master and address new ones before merging.

---


[Agda]: https://wiki.portal.chalmers.se/agda/pmwiki.php
[Agda literate markdown]: https://agda.readthedocs.io/en/v2.8.0/tools/literate-programming.html#literate-markdown-and-typst
[Agda standard library style guide]: https://github.com/agda/agda-stdlib/blob/master/doc/style-guide.md
[Agda.css]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/agda/data/Agda.css
[AgdaKaTeX.js]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/agda/data/AgdaKaTeX.js
[agda-stdlib]: https://github.com/agda/agda-stdlib
[agda-stdlib-classes]: https://github.com/agda/agda-stdlib-classes
[agda-stdlib-meta]: https://github.com/agda/agda-stdlib-meta
[agda-sets]: https://github.com/input-output-hk/agda-sets
[agda.nix]: https://github.com/carlostome/agda.nix
[binary]: https://github.com/haskell/binary
[conformance-example]: https://github.com/IntersectMBO/formal-ledger-specifications/tree/master/conformance-example
[deepseq]: https://github.com/haskell/deepseq
[default.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/default.nix
[Emacs init file]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html
[flake.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/flake.nix
[fls-agda.cabal]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/agda/fls-agda.cabal
[fls-agda.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/nix/fls-agda.nix
[fls-shake.cabal]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/shake/fls-shake.cabal
[fls-shake.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/nix/fls-shake.nix
[formal-ledger-specifications]: https://github.com/IntersectMBO/formal-ledger-specifications
[hashable]: https://github.com/haskell-unordered-containers/hashable
[Haskell]: https://www.haskell.org/downloads/
[hpack]: https://hackage.haskell.org/package/hpack
[iog-agda-prelude]: https://github.com/input-output-hk/iog-agda-prelude
[latex]: https://www.latex-project.org/get/
[latexmk]: https://ctan.org/pkg/latexmk
[literate]: https://en.wikipedia.org/wiki/Literate_programming
[Main.hs]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/shake/src/Main.hs
[mkdocs]: https://www.mkdocs.org/
[New Issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[niv]: https://github.com/nmattia/niv
[nixpkgs]: https://github.com/NixOS/nixpkgs
[Nix]: https://nixos.org/
[Nix flakes]: https://nixos.wiki/wiki/Flakes
[Nix download instructions]: https://nixos.org/download/
[nixpkgs Agda documentation]: https://nixos.org/manual/nixpkgs/stable/#how-to-use-agda
[pandoc]: https://pandoc.org/
[python311]: https://www.python.org/downloads/release/python-3110/
[Shake]: https://shakebuild.com/
[TEX2MD_MIGRATION.md]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/TEX2MD_MIGRATION.md
[Troubleshooting Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/TROUBLESHOOTING.md
[TROUBLESHOOTING.md]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/TROUBLESHOOTING.md

[@WhatisRT]: https://github.com/whatisrt
[@carlostome]: https://github.com/carlostome
[@williamdemeo]: https://github.com/williamdemeo

<!-- Links to sections of this document (copied from `markdown-toc-generate-toc` output) -->
<!-- These links will probably need to be updated by hand whenever -->
<!-- `markdown-toc-generate-toc` is used to update the toc. -->
<!-- TODO: find or make a script/utility that generates all the links from the toc -->

[Style Guidelines]: #style-guidelines
[Project Overview]: #project-overview
[Development Environment Setup]: #development-environment-setup
[Building Project Artifacts]: #building-project-artifacts
[HTML Documentation]: #html-documentation
[Building and viewing the formal specification]: #building-and-viewing-the-formal-specification
[Browsing the source code]: #browsing-the-source-code
[Working on the Agda source code]: #working-on-the-agda-source-code
[Tracking Properties of the Ledger]: #tracking-properties-of-the-ledger
[Conformance Testing]: #conformance-testing
[IDE Integration]: #ide-integration
[CI/CD Workflow]: #cicd-workflow
[Miscellanea]: #miscellanea
[Maintainers]: #maintainers
[Build Toolchain Reference]: #build-toolchain-reference


[^1]: However, our custom mkdocs configuration provides a toggle button that allows the reader to view hidden code blocks if desired.)
