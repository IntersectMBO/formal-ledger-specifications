# Contributing to the Formal Ledger Specifications

**Brief Contents**

<!-- DO NOT REMOVE TRAILING WHITE SPACE FROM TOC LIST -->

[🖊️️ Style Guidelines][]  
[🗺️ Project Overview][]  
[💻 Development Environment Setup][]  
[🏗️ Building Project Artifacts][]  
[📖 HTML Documentation][]  
[🖥️ IDE Integration][]  
[🧑‍🔧 Working on the Agda source code][]  
[📋 Tracking Properties of the Ledger][]  
[🔁 CI/CD Workflow][]  
[🎛️️ Setup Without Nix][]  
[🕵️‍♀️ Conformance Testing][]  
[🗃️ Miscellanea][]  
[👷 Maintainers][]  
[🔧 Build Toolchain Reference][]


---

<a id="style-guidelines"></a>
## 🖊️️ Style Guidelines

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
    [🗃️ Miscellanea][] section below.

2.  Use camel case for field names (e.g., `txNetworkId` instead of `txnetworkid`).

---

<a id="project-overview"></a>
## 🗺️ Project Overview

This repository uses [Nix][] and [Shake][] to provide a reproducible, declarative,
and portable development environment.


### Nix Flakes and the Build Stack

We use Nix Flakes to pin dependencies and define builds and development shells.
The stack has the following layers:

1.  [nixpkgs][] provides GHC, the Haskell `Agda` library (the type checker),
    Nix's Agda package machinery, Python, and mkdocs.
2.  `fls-agda` is Agda's command line with the FLS HTML backend added.  The flake
    uses it to build the Agda libraries as well as the specification.
3.  The five Agda dependencies are [agda-stdlib][] (the standard library),
    [agda-stdlib-classes][] (type classes), [agda-stdlib-meta][] (metaprogramming),
    [agda-sets][] (abstract set theory), and [iog-agda-prelude][] (supplementary
    definitions).  nixpkgs and the [agda.nix][] overlay supply these libraries;
    their locked revisions determine the sources used.
4.  The specification consists of `formal-ledger` (`src/` and `src-lib-exts/`,
    configured by `formal-ledger.agda-lib`) and `formal-ledger-test`
    (`formal-ledger-test/`), which depends on `formal-ledger`.
5.  `fls-shake` drives `fls-agda` to produce the website, browsable source, and
    Haskell code for conformance testing.

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
## 💻 Development Environment Setup

We provide several development shells tailored for different tasks. You can
enter them using `nix develop`.

+  🐚 **Default Shell**

    This is the primary environment for Agda development. It includes Agda, all required libraries, and the `fls-shake` build tool.

    ```bash
    # Enter the default development shell
    nix develop
    ```

    ⚒️ **Available Tools**

    + [`agda`][Agda] (`fls-agda` with the five dependency libraries)
    + `fls-shake` (our custom build tool)
    + [`mkdocs`][mkdocs] (with Python dependencies)
    + [`hpack`][hpack] (the Haskell package helper)

+  🧪 **Test Library Shell**

    The Agda code under `formal-ledger-test` is a *separate* Agda library that depends
    on the main one, and the default shell cannot type-check it.  Use this shell for
    that library instead; see [The two Agda libraries][] below.

    ```bash
    # Enter the shell that can type-check the test library
    nix develop .#formal-ledger-test
    ```

For work on the Haskell tools, `nix develop .#fls-agda` and
`nix develop .#fls-shake` provide cabal and the Haskell language server.  The
`fls-shake-agdaWithPackages` shell provides the build driver with Agda and the
dependency libraries.

---


<a id="building-project-artifacts"></a>
## 🏗️ Building Project Artifacts

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
Use `fls-shake --trace mkdocs`, for example, to trace a build.

---

<a id="html-documentation"></a>
## 📖 HTML Documentation

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
## 🖥️ IDE Integration

For the best development experience, you should configure your IDE to use the Agda executable provided by this project's Nix environment.

First, build `fls-agdaWithPackages` and create a stable symlink to it in your home directory. This prevents you from having to update your IDE settings every time the project's dependencies change.

```bash
nix build ./#fls-agdaWithPackages -o ~/ledger-agda
```

Then make sure that the `~/ledger-agda/bin` directory is in your `PATH` when starting your editor.

**Tip**. You can manage multiple versions of Agda with `update-alternatives`.  See [Using `update-alternatives`](#using-update-alternatives-to-manage-agda-versions).

---

### Emacs

1.  **Match your `agda2-mode` elisp to the project's Agda**.

    `agda2-mode` refuses to talk to an Agda whose version differs from its own, and
    reports, for example,

    ```
    The Agda mode's version (2.6.4.1) does not match that of agda (2.8.0).
    ```

    This project's Agda is version 2.8.0, and it carries the Emacs mode of that same
    release.  From inside the Nix shell, print the path of the matching elisp with

    ```bash
    agda --emacs-mode locate
    ```

    and load that file from your [Emacs init file][] with `(load-file "…/agda2.el")`.
    Alternatively, `agda --emacs-mode setup` adds the setup code to your `~/.emacs`
    (useful only if that is the init file you actually use), and
    `agda --emacs-mode compile` byte-compiles the mode.  The separate `agda-mode`
    executable is deprecated as of Agda 2.8.0, and ours does not provide one;
    `agda --emacs-mode` replaces it.

2.  **Configure Emacs for version switching**.

    Add the following to your [Emacs init file][] (highlight and `M-x eval-region` to load without restarting):

    ```elisp
    ;; Defines a function `my/switch-agda' that switches between different
    ;; `agda' executables defined in `my/agda-versions'. The first entry of
    ;; `my/agda-versions' is assumed to be the default Agda.
    ;;
    ;; If there are two entries in `my/agda-versions', `my/switch-agda' toggles
    ;; between the two. If there are more entries, it will ask which one
    ;; to choose.
    (setq my/agda-versions `(("System Agda"  "2.8.0" "agda")  ; Adjust version as needed
                             ("Ledger Agda"  "2.8.0" "~/ledger-agda/bin/agda")))
    (setq my/selected-agda (caar my/agda-versions))

    (defun my/switch-agda (name version path)
      (interactive
       (cond ((> (length my/agda-versions) 2)
              (assoc (completing-read "Agda: " my/agda-versions '(lambda (x) 't) 't) my/agda-versions))
             ((= (length my/agda-versions) 2)
              (car (seq-filter '(lambda (x) (not (string= my/selected-agda (car x)))) my/agda-versions)))
             (t (error "my/agda-versions needs to have at least two elements!"))))
      (message "Selecting %s, version %s" name version)
      (setq my/selected-agda   name
            agda2-version      version
            agda2-program-name path)
      (agda2-restart))

    ;; Bind the switch function to C-c C-x C-t in agda2-mode
    (with-eval-after-load 'agda2-mode
      (define-key agda2-mode-map (kbd "C-c C-x C-t") 'my/switch-agda))
    ```

    **Notes**

    + Update the system Agda version in `my/agda-versions` to match your installation.
    + Check your system Agda with `which agda && agda --version`.
    + Once configured, use `M-x my/switch-agda` (or `C-c C-x C-t`) to switch between Agda versions.
    + This works with most Emacs distributions (Doom, Spacemacs, vanilla, etc.).
    + `my/switch-agda` sets `agda2-version`, which satisfies the version check described
      in step 1 when you switch executables; it cannot make one release's elisp speak
      another release's protocol, so the elisp still has to come from a matching Agda.

3.  Launch Emacs from within the project's Nix shell so that it inherits the
    environment.  Which shell you want depends on the library you are editing; see
    [The two Agda libraries][].

    ```bash
    nix develop                     # or: nix develop .#formal-ledger-test
    emacs src/Ledger.lagda.md
    ```

4.  Use standard `agda-mode` commands (e.g., `C-c C-l` to load a file).


### Visual Studio Code

1.  Install the official **Agda Language Server** extension from the marketplace.

2.  Configure the extension to use the project's Agda executable. Open your `settings.json` (`Ctrl+Shift+P` \> "Preferences: Open User Settings (JSON)") and add the path to the symlink:
    ```json
    {
      "agdaMode.connection.paths": [
        "~/ledger-agda/bin/agda",
        "agda"
      ]
    }
    ```
    *(Note: VS Code may not expand `~`, so you might need to use the full path, e.g., `/home/user/ledger-agda/bin/agda`)*.

3.  Use `Ctrl+C Ctrl+R` to switch between Agda versions if you have multiple configured.

---

<a id="working-on-the-agda-source-code"></a>
## 🧑‍🔧 Working on the Agda source code

### Editing the source files

You can use either Emacs or VSCode to edit the source code files under the main `src`
directory.  Currently, we have a mixture of plain Agda (`.agda`), LaTeX-based
literate Agda (`.lagda`), and Markdown-based literate Agda (`.lagda.md`), but
eventually all Agda files under `src` will be of the Markdown flavor and as such will
have the `.lagda.md` extension.

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

### The two Agda libraries

The main specification and test suite declare two Agda libraries, and each has its own development shell, as
follows:

+  `formal-ledger`, declared by `formal-ledger.agda-lib` in the repository root, whose
   sources are `src` and `src-lib-exts`.  The default shell serves this library.
+  `formal-ledger-test`, declared by `formal-ledger-test/formal-ledger-test.agda-lib`,
   whose sources are under `formal-ledger-test/src`.  This library depends on
   `formal-ledger`, which the default shell does not register, so a module under
   `formal-ledger-test` fails there with

   ```
   error: [LibraryError]
   Library 'formal-ledger' not found.
   ```

Type-check the test library from that package's own environment, as follows:

```bash
nix develop .#formal-ledger-test
cd formal-ledger-test
agda src/Test/Prelude.lagda.md
```

Entering that shell the first time fetches the type-checked ledger from the binary cache
(about 130 MiB), after which a single test module type-checks in seconds.  The shell
resolves modules under `src` as well, so it is the one to launch an editor from when
your work spans both libraries.  Two things to keep in mind: the ledger it registers is
the *built* library, so local edits under `src` are invisible to it; and it provides
neither `fls-shake` nor `mkdocs`, so keep the default shell for build-tool work.
Type-check the whole test library with `nix build .#formal-ledger-test`.

**The current directory matters**.  Agda finds the `.agda-lib` file that governs a
module by searching the current directory and its parents, not the directory of the file
named on the command line.  Type-check the test library from inside
`formal-ledger-test`, as above; from the repository root the *root* library governs, and
Agda reports `ModuleNameDoesntMatchFileName` instead.  Emacs is unaffected, since
`agda-mode` runs Agda in the directory of the file being loaded.

To type-check the test library against your **working copy** of `src`, give Agda a
library file that names the repository's own `formal-ledger.agda-lib`.  Create it at the
repository root, then change directory, as follows:

```bash
nix develop
FLS_LIBS="$(mktemp)"
{ cat "$(nix eval --raw .#fls-agdaWithPackages.libraryFile)"
  printf '%s\n' "$PWD/formal-ledger.agda-lib"; } > "$FLS_LIBS"
cd formal-ledger-test
agda --library-file="$FLS_LIBS" src/Test/Prelude.lagda.md
```

A `--library-file` given on the command line overrides the registry the shell's
`agda` wrapper supplies.  The wrapper also means that adding a line to
`~/.config/agda/libraries` has no effect in these shells.  In Emacs, pass the same flag
with `(setq agda2-program-args '("--library-file" "/path/to/fls-libraries"))`.  Expect a
long first run, since the ledger is then type-checked from source rather than taken from
the cache.

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
## 📋 Tracking Properties of the Ledger

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

Run the scanner from the default development shell (`nix develop` provides
`python3` with PyYAML; without Nix, any Python 3.8+ with the `pyyaml` package
works):

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
## 🔁 CI/CD Workflow

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

<a id="setup-without-nix"></a>
## 🎛️️ Setup Without Nix

While we recommend using Nix for the best experience, it's possible to work with
this repository without Nix. Those making nontrivial contributions are advised
to use the Nix-based approach, but these instructions are provided for those who
prefer not to use Nix.

### Installing Agda and Dependencies Manually

1.  **Install Agda 2.8.0**.

    Follow the [Agda installation instructions][].  The version must match the
    `Agda ==` bound in `build-tools/agda/fls-agda.cabal`.

2.  **Find the pinned library revisions**.

    Read the GitHub inputs from `flake.lock` without Nix, as follows:

    ```bash
    jq -r '.nodes | to_entries[]
           | select(.value.locked.type == "github")
           | "\(.key): \(.value.locked.owner)/\(.value.locked.repo) \(.value.locked.rev)"' \
      flake.lock
    ```

    A library may be a separate input or come from a package definition in the
    locked nixpkgs or agda.nix revision.  If it is absent from the output, read
    that revision's package definitions, as described in
    [Build Toolchain Reference](#build-toolchain-reference).  Record a tag or
    commit for each of the five libraries before continuing.

3.  **Clone the required Agda libraries**.

    Run the following from the repository root:

    ```bash
    mkdir -p LIB
    git clone https://github.com/agda/agda-stdlib.git LIB/agda-stdlib
    git clone https://github.com/agda/agda-stdlib-classes.git LIB/agda-stdlib-classes
    git clone https://github.com/agda/agda-stdlib-meta.git LIB/agda-stdlib-meta
    git clone https://github.com/input-output-hk/agda-sets.git LIB/agda-sets
    git clone https://github.com/input-output-hk/iog-agda-prelude.git LIB/iog-agda-prelude
    ```

    Check out each recorded tag or commit with `git -C LIB/<directory> checkout
    <revision>`, replacing both placeholders.  The default branches may have
    incompatible APIs; use the pinned sources.

4.  **Create a library configuration**.

    From the repository root, create `LIB/libraries` with absolute paths, as
    follows:

    ```bash
    cat > LIB/libraries <<EOF
    $PWD/LIB/agda-stdlib/standard-library.agda-lib
    $PWD/LIB/agda-stdlib-classes/agda-stdlib-classes.agda-lib
    $PWD/LIB/agda-stdlib-meta/agda-stdlib-meta.agda-lib
    $PWD/LIB/agda-sets/abstract-set-theory.agda-lib
    $PWD/LIB/iog-agda-prelude/iog-prelude.agda-lib
    EOF
    ```

    Add a line naming this repository's own `formal-ledger.agda-lib` if you also
    want to work on the test library; see [The two Agda libraries][].

5.  **Use Agda with the libraries**.

    ```bash
    agda --library-file=LIB/libraries src/Ledger.lagda.md
    ```

### Building fls-shake Without Nix

The build system `fls-shake` can be compiled manually by following the steps
below.  The artifact targets also need the `fls-agda` backend: build it with
Cabal in `build-tools/agda/` and put its `agda` executable on `PATH`, with the
library configuration above.  Install hpack too; the `hs` target uses it to
generate the Haskell package description.

From the repository root, make the library configuration available to every
Agda invocation launched by Shake, as follows:

```bash
export AGDA_DIR="$PWD/LIB"
```

1.  **Install GHC and Cabal**.

    Follow the [official Haskell instructions][].

    Verify installation and update:

    ```bash
    ghc --version
    cabal --version
    cabal update
    ```

2.  **Compile fls-shake**.

    ```bash
    cd build-tools/shake
    cabal build fls-shake
    ```

3.  **Run fls-shake:**

    ```bash
    # Build HTML and Haskell outputs
    cabal run fls-shake -- -C '../..' mkdocs
    cabal run fls-shake -- -C '../..' html
    cabal run fls-shake -- -C '../..' hs
    ```

    Note: The `-C '../..'` option makes fls-shake run from the repository's main directory.


### Required System Dependencies

For non-Nix users, you'll also need to install the following:

+  **Python and dependencies** (for documentation tools)

   ```bash
   pip install mkdocs mkdocs-material pymdown-extensions pyyaml pybtex
   ```

---

<a id="conformance-testing"></a>
## 🕵️‍♀️ Conformance Testing

After producing the Agda-generated Haskell code with `nix build .#hs-src`, you
can run the conformance tests.

See [the `conformance-example` directory][conformance-example].

---

<a id="miscellanea"></a>
## 🗃️ Miscellanea


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

<a id="using-update-alternatives-to-manage-agda-versions"></a>
### Using `update-alternatives` to manage Agda versions

If you have the `update-alternatives` program installed, then instead of creating a
symlink from your home directory to our version of Agda in `~/ledger-agda/bin/agda`,
you can configure multiple versions of `agda` as follows:

```bash
sudo update-alternatives --install /usr/bin/agda agda ~/ledger-agda/bin/agda 1
```

Do the same for any other versions of Agda that you have installed, and want to make
available, on your system. For example,

```bash
sudo update-alternatives --install /usr/bin/agda agda ~/.cabal/bin/agda-2.8.0 10
```

Then choose which Agda version you want to use.

```bash
sudo update-alternatives --config agda
```

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
## 🧑‍🔧 Maintainers

This repository is maintained by [@carlostome][], [@WhatisRT][], and [@williamdemeo][].

**If you encounter any problems, please open a [New Issue][]**.

---

<a id="build-toolchain-reference"></a>
## 🔧 Build Toolchain Reference

This section covers the details needed to inspect or change the toolchain.
For routine builds, see [Building Project Artifacts](#building-project-artifacts).

### Where each version is pinned

| Component | Pinned by | Build definition |
|---|---|---|
| nixpkgs, including GHC and the Haskell `Agda` library | `flake.lock`, input `nixpkgs` | `flake.nix` |
| `fls-agda`'s Agda version | `build-tools/agda/fls-agda.cabal` (`Agda == …`), which must match nixpkgs' `Agda` | `build-tools/nix/fls-agda.nix` |
| `standard-library` | Package version and source hash in the locked nixpkgs revision | nixpkgs' `pkgs/development/libraries/agda/` |
| agda.nix | `flake.lock`, input `agda-nix` | `flake.nix` |
| `standard-library-classes`, `standard-library-meta`, `abstract-set-theory`, `iog-prelude` | Separate library inputs in `flake.lock`, or package sources in the locked nixpkgs and agda.nix revisions | agda.nix's `flake.nix` and `agda-packages.nix`; nixpkgs' Agda package definitions |

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
An explicit `--library-file` works with either wrapper; see
[The two Agda libraries][] for a registry that checks the working copy.

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

**Agda libraries**.  Update the input or package definition that supplies the
library.  For a separate flake input, update its locked revision.  For a
source defined in agda.nix, change its revision and hash there, then point the
`agda-nix` input here at that revision and run `nix flake lock`.
`nix flake update agda-nix` instead takes the latest revision of the configured
agda.nix repository.  Inspect its overlay and the lock diff: updating agda.nix
can move several libraries together.

For a library supplied by nixpkgs, update `nixpkgs` to a revision with the
desired version, or add a local package overlay in `flake.nix` to override the
library's source, version, and hash.  The configured agda.nix repository is
named in `flake.nix`; its locked revision is in `flake.lock`.

To try a local agda.nix checkout without changing the committed lock, use the
following:

```bash
nix build .#fls-agdaWithPackages \
  --override-input agda-nix path:/absolute/path/to/agda.nix \
  --no-write-lock-file
```

A library whose `.agda-lib` depends on an exact version, such as
`standard-library-2.3`, stops resolving when that dependency moves.  Use a
compatible library release; a version-independent `standard-library`
dependency avoids the name mismatch but does not establish API compatibility.

**nixpkgs**.  `nix flake update nixpkgs` can move GHC, Python, mkdocs, Agda, and
the libraries supplied by nixpkgs together.  The input follows nixpkgs' `master`
branch, so a new revision may not yet have cached builds.  Read the lock diff
before committing it.

**Agda**.  A new Agda requires checking the following layers:

1.  The Haskell `Agda` library from nixpkgs.  Before nixpkgs packages a new
    release, this needs an override of `haskellPackages.Agda` or Agda's own
    flake.
2.  `build-tools/agda/fls-agda.cabal`: its `Agda ==` bound and package version,
    together with the version in `build-tools/nix/fls-agda.nix`.
3.  Compatible versions of agda-stdlib, classes, meta, agda-sets, and
    iog-agda-prelude.  Their READMEs describe supported combinations.
4.  The specification, checked against Agda's breaking changes in its
    `CHANGELOG.md`.
5.  The versions in [Setup Without Nix](#setup-without-nix).

Build `formal-ledger`, `formal-ledger-test`, and `hs-src` after changing the
stack.  Compare warnings with master and address new ones before merging.

Rebuild an editor's Agda after changing the pins, as follows:

```bash
nix build .#fls-agdaWithPackages -o ~/ledger-agda
```

Keep `~/ledger-agda/bin` on the editor's `PATH`.  A symlink built once does not
update when another checkout's `flake.lock` changes; rebuild it from the
checkout being edited.

### UTF-8 locales

Every build that runs Agda needs a UTF-8 locale: a warning containing a
non-ASCII identifier can otherwise fail with "cannot encode character".
nixpkgs' Agda `mkDerivation` supplies `C.UTF-8` on Linux for the library
builds, including `formal-ledger` and `formal-ledger-test`.  The artifact
derivations use `stdenv.mkDerivation` instead; `html` and `mkdocs` set
`LANG`, `LC_ALL`, and the Linux `LOCALE_ARCHIVE` explicitly.  Use the same
setup for any other artifact build that needs it.

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
[agda.nix]: https://github.com/input-output-hk/agda.nix
[Agda installation instructions]: https://agda.readthedocs.io/en/v2.8.0/getting-started/installation.html
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
[official Haskell instructions]: https://www.haskell.org/downloads/
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

[🖊️️ Style Guidelines]: #style-guidelines
[🗺️ Project Overview]: #project-overview
[💻 Development Environment Setup]: #development-environment-setup
[🏗️ Building Project Artifacts]: #building-project-artifacts
[📖 HTML Documentation]: #html-documentation
[Building and viewing the formal specification]: #building-and-viewing-the-formal-specification
[The two Agda libraries]: #the-two-agda-libraries
[Browsing the source code]: #browsing-the-source-code
[🧑‍🔧 Working on the Agda source code]: #working-on-the-agda-source-code
[📋 Tracking Properties of the Ledger]: #tracking-properties-of-the-ledger
[🕵️‍♀️ Conformance Testing]: #conformance-testing
[🖥️ IDE Integration]: #ide-integration
[🔁 CI/CD Workflow]: #cicd-workflow
[🎛️️ Setup Without Nix]: #setup-without-nix
[🗃️ Miscellanea]: #miscellanea
[👷 Maintainers]: #maintainers
[🔧 Build Toolchain Reference]: #build-toolchain-reference


[^1]: However, our custom mkdocs configuration provides a toggle button that allows the reader to view hidden code blocks if desired.)
