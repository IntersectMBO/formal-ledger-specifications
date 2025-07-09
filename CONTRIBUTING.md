# Contributing to the Formal Ledger Specifications

**Brief Contents**

- [Style Guidelines](#style-guidelines)
- [Project Overview](#project-overview)
- [Development Environment Setup](#development-environment-setup)
- [Building Project Artifacts](#building-project-artifacts)
- [IDE Integration](#ide-integration)
- [CI/CD Workflow](#cicd-workflow)
- [Setup Without Nix (Advanced)](#setup-without-nix-advanced)
- [Miscellanea](#miscellanea)
- [Maintainers](#maintainers)

---

## Style Guidelines

We adhere to the [Agda standard library style
guide](https://github.com/agda/agda-stdlib/blob/master/notes/style-guide.md) where
practical. However, because our code is *literate* Agda which is used to produce html
documentation, readability of the latter takes precedence over code formatting, so
deviations are expected.

---

## Project Overview

This repository uses [Nix](https://nixos.org/) to provide a reproducible, declarative, and portable development environment.

### Nix and Flakes

We use Nix to manage all dependencies, build processes, and development shells. The modern [Flakes](https://nixos.wiki/wiki/Flakes) feature is the recommended interface for interacting with the project.

### Dependency Management

All external Nix dependencies (like `nixpkgs`) and Agda libraries are pinned to specific versions or Git commits using [niv](https://github.com/nmattia/niv). The pinned versions are stored in `build-tools/nix/sources.json`, which guarantees reproducible builds.

The core Agda dependencies include:

+ [agda-stdlib][]: standard library;
+ [agda-stdlib-classes][]: type-class extensions for the standard library;
+ [agda-stdlib-meta][]: meta-programming utilities;
+ [agda-sets][]: abstract set theory library;
+ [iog-agda-prelude][]: supplementary prelude.

### Directory Structure

```
./
├── default.nix                             # Main package definitions
├── flake.nix                               # Flake interface
└── build-tools/
    ├── nix/
    │   ├── sources.nix                     # Niv-generated dependency fetcher
    │   ├── sources.json                    # Pinned dependency versions
    │   ├── agda/default.nix                # Agda package scope
    │   └── build-support/agda/default.nix  # Low-level Agda build functions
    └── agda/
        ├── default.nix                     # Agda environment wrapper
        └── nix/fls-agda.nix                # Custom FLS Agda derivation
```

---

## Development Environment Setup

We provide several development shells tailored for different tasks. You can enter them using `nix develop`.

### Default Shell

This is the primary environment for Agda development. It includes Agda, all required libraries, and the `fls-shake` build tool.

```bash
# Enter the default development shell
nix develop
```

**Available Tools**

+ `agda` (with all project libraries)
+ `fls-shake` (custom build tool)
+ `python311`
+ `hpack`

### CI Shell

A minimal environment designed for automated builds, containing only the `fls-shake` build tool and its runtime dependencies.

```bash
# Enter the CI shell
nix develop .#ci
```

### Documentation Shell

A comprehensive environment for working on documentation, including the full documentation generation pipeline.

```bash
# Enter the documentation shell
nix develop .#docs
```

**Available Tools:**

* Everything from the default shell.
* `pandoc`, a full `latex` distribution.
* `mkdocs` and its Python dependencies.
* `mdbook`, `cargo`, and related tools.

-----

## Building Project Artifacts

You can build project artifacts in several ways. The recommended method is using `nix build`.

### Using Nix Flakes (Recommended)

The `flake.nix` file exposes all buildable artifacts as packages.

```bash
# Type-check the Agda specification (default package)
nix build .#formal-ledger
# or simply:
nix build

# Build the full PDF specification (deprecated)
# nix build .#docs.conway.fullspec

# Build the Conway-era differential PDF (deprecated)
# nix build .#docs.conway.diffspec

# Generate browseable HTML documentation
nix build .#html

# Generate Haskell source code for conformance testing
nix build .#hs-src

# Build the mkdocs site
nix build .#mkdocs
```

Build outputs are symlinked in the `result/` directory.

### Using Legacy `nix-build`

If you do not use Flakes, you can use the legacy `nix-build` commands.

```bash
# Type-check the Agda specification
nix-build -A formal-ledger

# Build the full PDF specification (deprecated)
# nix-build -A docs.conway.fullspec

# Generate HTML documentation
nix-build -A html

# Generate Haskell source code
nix-build -A hs-src
```

### Using the `fls-shake` Build Tool

For more granular control, you can use our Shake-based build tool, `fls-shake`, from within a development shell.

```bash
# Enter the default development shell
nix develop

# Build specific artifacts using fls-shake
# fls-shake cardano-ledger.pdf  # Build the full PDF (deprecated)
fls-shake html                # Build HTML docs
fls-shake hs                  # Build Haskell source

# See all available targets
fls-shake --help
```

-----

## IDE Integration

For the best development experience, you should configure your IDE to use the Agda executable provided by this project's Nix environment.

First, build `agdaWithPackages` and create a stable symlink to it in your home directory. This prevents you from having to update your IDE settings every time the project's dependencies change.

```bash
nix-build -A agdaWithPackages -o ~/ledger-agda
```

### Emacs

1.  **Configure Emacs for version switching**.

    Add the following to your [Emacs init file][] (highlight and `M-x eval-region` to load without restarting):

    ```elisp
    ;; Defines a function `my/switch-agda' that switches between different
    ;; `agda' executables defined in `my/agda-versions'. The first entry of
    ;; `my/agda-versions' is assumed to be the default Agda.
    ;;
    ;; If there are two entries in `my/agda-versions', `my/switch-agda' toggles
    ;; between the two. If there are more entries, it will ask which one
    ;; to choose.
    (setq my/agda-versions `(("System Agda"  "2.6.4" "agda")  ; Adjust version as needed
                             ("Ledger Agda"  "2.7.0.1" "~/ledger-agda/bin/agda")))
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
    + Once configured, use `C-c C-x C-t` to switch between Agda versions.
    + This works with most Emacs distributions (Doom, Spacemacs, vanilla, etc.).


2.  Launch Emacs from within the project's Nix shell to make it aware of the environment:
    ```bash
    nix develop
    emacs src/Ledger.agda
    ```
3.  Use standard `agda-mode` commands (e.g., `C-c C-l` to load a file).

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

-----

## CI/CD Workflow

Our CI/CD pipeline, defined in `.github/workflows/`, automates the building and publishing of artifacts. Here are some key details:

  * **Caching:** The initial `formal-ledger-agda` job type-checks the code and uploads the resulting `_build` directory as a GitHub artifact. Subsequent jobs download this artifact to avoid re-compiling Agda code.
  * **Artifact Branches:** For every push to `master` or a pull request branch, the CI creates a corresponding `<branch-name>-artifacts` branch. This branch stores the generated artifacts (PDFs, HTML, Haskell code).
  * **PDF Generation Note:** The CI workflow **does not** build PDFs from the current source. Instead, it checks out the `legacy-latex-artifacts` branch and copies the PDFs from there. This is a temporary measure to ensure the stability of the published documents. You can still build PDFs locally from source using the commands described above.

-----

## Setup Without Nix (Advanced)

While we recommend using Nix for the best experience, it's possible to work with
this repository without Nix. Those making nontrivial contributions are advised
to use the Nix-based approach, but these instructions are provided for those who
prefer not to use Nix.

### Installing Agda and Dependencies Manually

1.  **Install Agda 2.7.0.1**.

    Follow the instructions at https://agda.readthedocs.io/en/v2.7.0/getting-started/installation.html#step-1-install-agda

2.  **Clone the required Agda libraries**.

    ```bash
    mkdir -p LIB && cd LIB

    # Clone exact versions used by the project
    git clone --config advice.detachedHead=false --single-branch -b "v2.2" \
      https://github.com/agda/agda-stdlib.git
    git clone --config advice.detachedHead=false --single-branch \
      https://github.com/agda/agda-stdlib-classes.git
    git clone --config advice.detachedHead=false --single-branch \
      https://github.com/agda/agda-stdlib-meta.git
    git clone --config advice.detachedHead=false --single-branch -b "master" \
      https://github.com/input-output-hk/agda-sets.git
    git clone --config advice.detachedHead=false --single-branch -b "main" \
      https://github.com/input-output-hk/iog-agda-prelude.git

    # Checkout specific commits (check sources.json for exact versions)
    cd agda-stdlib-classes && git checkout aa62ce6348d39c554ef89487079871d5590e155e && cd ..
    cd agda-stdlib-meta && git checkout 5ff853375180ef69f243ce72f2d3f6294bdb6aff && cd ..
    cd agda-sets && git checkout f517d0d0c1ff1fd6dbac8b34309dea0e1aea6fc6 && cd ..
    cd iog-agda-prelude && git checkout 20e4ab42fd6a980233053c8c3b1b8b2ab42946c9 && cd ..
    ```

3.  **Create library configuration**.

    Create a file `LIB/libraries` with the following content:

    ```
    LIB/agda-stdlib/standard-library.agda-lib
    LIB/agda-stdlib-classes/agda-stdlib-classes.agda-lib
    LIB/agda-stdlib-meta/agda-stdlib-meta.agda-lib
    LIB/agda-sets/abstract-set-theory.agda-lib
    LIB/iog-agda-prelude/iog-prelude.agda-lib
    ```

4.  **Use Agda with the libraries**.

    ```bash
    # Type-check the formal specification
    AGDA_DIR=LIB agda src/Everything.agda

    # Build artifacts (requires fls-shake, see below)
    AGDA_DIR=LIB fls-shake cardano-ledger.pdf
    ```

### Building fls-shake Without Nix

The build system `fls-shake` can be compiled manually by following the steps
described in this subsection.

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
    # Build PDF documents
    cabal run fls-shake -- -C '../..' cardano-ledger.pdf
    cabal run fls-shake -- -C '../..' conway-ledger.pdf

    # Build HTML and Haskell outputs
    cabal run fls-shake -- -C '../..' html
    cabal run fls-shake -- -C '../..' hs
    ```

    Note: The `-C '../..'` option makes fls-shake run from the repository's main directory.


### Required System Dependencies

For non-Nix users, you'll also need to install the following:

+  **LaTeX** (for PDF generation)

   ```bash
   # Ubuntu/Debian
   sudo apt install texlive-full latexmk

   # Or minimal installation
   sudo apt install texlive-latex-extra latexmk
   ```

+  **Python and dependencies** (for documentation tools)

   ```bash
   pip install mkdocs mkdocs-material pymdown-extensions pyyaml
   ```

+  **Other tools**

   pandoc, basic utilities (cp, mkdir, etc.)

---

## Miscellanea

### Plotting typechecking times

The script `scripts/plot_typecheck_time.py` can be used to generate an `html`
file that plots the typechecking times as recorded in the `master-artifacts`
branch.

The script uses `python` and `pandas`, and the generated `html` uses `chart.js`
for plotting.

Frome the git repository, run,
```bash
python scripts/plot_typecheck_time.py > index.html
```
and open `index.html` in your browser.

---

## Maintainers

This repository is maintained by [@carlostome][], [@WhatisRT][], and [@williamdemeo][].

**If you encounter any problems, please open a [New Issue][]**.

---

[Agda]: https://wiki.portal.chalmers.se/agda/pmwiki.php
[Agda standard library style guide]: https://github.com/agda/agda-stdlib/blob/master/notes/style-guide.md
[agda-stdlib]: https://github.com/agda/agda-stdlib
[agda-stdlib-classes]: https://github.com/agda/agda-stdlib-classes
[agda-stdlib-meta]: https://github.com/agda/agda-stdlib-meta
[agda-sets]: https://github.com/input-output-hk/agda-sets
[iog-agda-prelude]: https://github.com/input-output-hk/iog-agda-prelude
[binary]: https://github.com/haskell/binary
[deepseq]: https://github.com/haskell/deepseq
[Emacs init file]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html
[formal-ledger-specifications]: https://github.com/IntersectMBO/formal-ledger-specifications
[hashable]: https://github.com/haskell-unordered-containers/hashable
[Haskell]: https://www.haskell.org/downloads/
[latex]: https://www.latex-project.org/get/
[latexmk]: https://ctan.org/pkg/latexmk
[Nix]: https://nixos.org/
[Nix download instructions]: https://nixos.org/download/
[niv]: https://github.com/nmattia/niv
[New Issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[Shake]: https://shakebuild.com/
[official Haskell instructions]: https://www.haskell.org/downloads/

[@WhatisRT]: https://github.com/whatisrt
[@carlostome]: https://github.com/carlostome
[@williamdemeo]: https://github.com/williamdemeo

<!-- Links to sections of this document (copied from `markdown-toc-generate-toc` output) -->
<!-- These links will probably need to be updated by hand whenever -->
<!-- `markdown-toc-generate-toc` is used to update the toc. -->
<!-- TODO: find or make a script/utility that generates all the links from the toc -->
[Style guidelines]: #style-guidelines
[Quick Start]: #quick-start
[Working on the ledger spec from inside a Nix shell]: #working-on-the-ledger-spec-from-inside-a-nix-shell
[Dependencies]: #dependencies
[Nix Dependencies]: #nix-dependencies
[Agda Dependencies]: #agda-dependencies
[Agda Setup]: #agda-setup
[Global `ledger-agda` installation]: #global-ledger-agda-installation
[Local `ledger-agda`installation]: #local-ledger-agdainstallation
[Working on the artifacts]: #working-on-the-artifacts
[Building the artifacts]: #building-the-artifacts
[PDF]: #pdf
[Haskell code (for conformance testing)]: #haskell-code-for-conformance-testing
[Html-hyperlinked Agda code]: #html-hyperlinked-agda-code
[fls-shake intermediate outputs]: #fls-shake-intermediate-outputs
[Modifying the Agda libraries]: #modifying-the-agda-libraries
[Setup Without Nix]: #setup-without-nix
[Agda and its dependencies]: #agda-and-its-dependencies
[`fls-shake`]: #fls-shake
[Building `fls-shake` manually]: #building-fls-shake-manually
[Updating nixpkgs]: #updating-nixpkgs
[Maintainers]: #maintainers
[Miscellanea]: #miscellanea
[Troubleshooting Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/TROUBLESHOOTING.md
