# Contributing to the Formal Ledger Specifications


<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Style Guidelines](#style-guidelines)
- [Quick Start](#quick-start)
- [Overview](#overview)
- [Architecture](#architecture)
  - [Directory Structure](#directory-structure)
  - [Dependency Management](#dependency-management)
- [Alternative Agda Installation Methods](#alternative-agda-installation-methods)
  - [Global Installation](#global-installation)
- [Available Packages and Derivations](#available-packages-and-derivations)
  - [Core Packages](#core-packages)
  - [Generated Outputs](#generated-outputs)
  - [Development Environments](#development-environments)
- [Usage Instructions](#usage-instructions)
  - [Building Everything](#building-everything)
  - [Building Specific Targets](#building-specific-targets)
  - [Using Nix Flakes](#using-nix-flakes)
  - [Development Workflow](#development-workflow)
  - [Updating Dependencies](#updating-dependencies)
- [Key Features](#key-features)
  - [Reproducibility](#reproducibility)
  - [Multi-format Output](#multi-format-output)
  - [Incremental Development](#incremental-development)
- [Troubleshooting](#troubleshooting)
  - [Common Issues](#common-issues)
  - [Getting Help](#getting-help)
- [Integration with IDEs](#integration-with-ides)
  - [Emacs](#emacs)
  - [VS Code](#vs-code)
- [Performance Notes](#performance-notes)
- [Setup Without Nix](#setup-without-nix)
  - [Installing Agda and Dependencies Manually](#installing-agda-and-dependencies-manually)
  - [Building fls-shake Without Nix](#building-fls-shake-without-nix)
  - [Required System Dependencies](#required-system-dependencies)
- [Miscellanea](#miscellanea)
  - [Plotting typechecking times](#plotting-typechecking-times)
- [Maintainers](#maintainers)

<!-- markdown-toc end -->


## Style Guidelines

We follow the [Agda standard library style guide][] as much as reasonable. Since some of our code is rendered into PDF, the formatting of the PDF takes priority over code formatting, so deviations are expected.

We also have a separate style guide for formatting the PDF: [PDF style guide](PDF-style-guide.md).

## Quick Start

Here are several ways to get started with the formal ledger specifications. All examples assume you have cloned the repository:

```bash
git clone https://github.com/IntersectMBO/formal-ledger-specifications.git
cd formal-ledger-specifications
```

**Quick examples:**

+  **Open Nix shell and launch your editor**.

   ```bash
   nix-shell -A devShells.mkDocs
   emacs src/Ledger.*       # using wildcard here since filename extension will change soon
   # Type-check everything with C-c C-l
   ```

+  **Type-check from command line**.

   ```bash
   nix-shell -A devShells.mkDocs
   agda src/Ledger.*
   ```

+  **Build pdf documentation**.

   ```bash
   nix-shell -A devShells.ci --run 'fls-shake cardano-ledger.pdf'
   ```

+  **Build everything with Nix flakes:**

   ```bash
   nix build
   # Then use the built tools, e.g.,
   ./result/bin/fls-shake cardano-ledger.pdf
   ```

**If you encounter any problems, please read the rest of these instructions and open a [New Issue](https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose) if necessary**.

## Overview

This repository uses a sophisticated Nix configuration to manage dependencies, build processes, and development environments for formal ledger specifications written in Agda. The setup provides reproducible builds, pinned dependencies, and multiple output formats including HTML documentation, PDF specifications, and Haskell code generation.

## Architecture

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

### Dependency Management

We use `niv` to manage external dependencies, which provides

+ *reproducible builds*: all dependencies pinned to specific commits/versions;
+ *easy updates*: `niv update <package>` updates individual dependencies;
+ *declarative dependencies*: all versions stored in `sources.json`.

#### Current Dependencies

+ `nixpkgs`: base Nix packages collection;
+ `agda-stdlib`: standard Agda library (v2.2);
+ `agda-stdlib-classes`: type-class extensions for Agda stdlib;
+ `agda-stdlib-meta`: meta-programming utilities for Agda;
+ `agda-sets`: abstract set theory library;
+ `iog-agda-prelude`: supplementary prelude for Agda.

#### Modifying the Agda Libraries

To work simultaneously on the ledger and one of its dependencies:

1. Remove the library from the ledger's `.agda-lib` file.
2. Add its path to the `include:` section.
3. When finished, push changes to the library and update `default.nix` to point to your new commit.

**Warning:** Don't forget to update the SHA when updating `default.nix`. Nix will fail silently on your local machine if you do that. Change a few characters, run `nix-build -A formalLedger` and Nix will tell you the correct hash.

---

## Alternative Agda Installation Methods

### Global Installation

For a global installation of the project's Agda setup, run

```bash
nix-env -iA agdaWithPackages -f .
```

**Note:** This is a global install, which you may not want if you have other Agda projects.

---

## Available Packages and Derivations

### Core Packages

#### `agdaWithPackages`

Pre-configured Agda environment with all required libraries installed and properly configured.

```bash
nix-build -A agdaWithPackages
./result/bin/agda --version
```

#### `formalLedger`

Main Agda project that type-checks the formal ledger specification.

```bash
nix-build -A formalLedger
```

#### `fls-shake`

Custom Shake-based build system for generating various outputs from Agda sources.

```bash
nix-build -A fls-shake
./result/bin/fls-shake --help
```

### Generated Outputs

#### `html`

Generates HTML documentation from Agda sources.

```bash
nix-build -A html
# Output available in ./result/html/
```

#### `hsSrc`

Generates Haskell source code from Agda specifications.

```bash
nix-build -A hsSrc
# Output available in ./result/hs/
```

#### `docs.conway.fullspec`

Generates complete PDF specification document.

```bash
nix-build -A docs.conway.fullspec
# PDF available at ./result/cardano-ledger.pdf
```

#### `docs.conway.diffspec`

Generates Conway-specific differential PDF specification.

```bash
nix-build -A docs.conway.diffspec
# PDF available at ./result/conway-ledger.pdf
```

### Development Environments

#### `devShells.ci`: a minimal environment for CI/CD builds

**Includes**

+ `fls-shake` build system.

**Commands**

```bash
nix-shell -A devShells.ci
fls-shake --help  # available for building outputs
```

#### `devShells.mkDocs`: dev environment focused on Agda development and documentation.

**Includes**

+ `agdaWithPackages` (Agda 2.7.0.1 + all libraries);
+ `pandoc` for document conversion;
+ `python311` with MkDocs, Material theme, and extensions;
+ `coreutils` for basic shell utilities.

**Commands**

```bash
nix-shell -A devShells.mkDocs
agda --version     # available for Agda development
mkdocs --version   # available for documentation
# Note: fls-shake is NOT available in this shell
```

---

## Usage Instructions

### Building Everything

```bash
# Build all derivations
nix-build

# Check it completed successfully
ls -la result*
```

### Building Specific Targets

```bash
# Type-check the formal ledger:
nix-build -A formalLedger

# Generate HTML documentation:
nix-build -A html

# Generate Haskell code:
nix-build -A hsSrc

# Build PDF documentation:
nix-build -A docs.conway.fullspec
```

### Using Nix Flakes

If you prefer the modern flakes interface, proceed as follows:

```bash
# Build all packages:
nix build

# Enter development shell:
nix develop

# Build a specific package:
nix build .#formalLedger
nix build .#html
```

### Development Workflow

#### Agda Development with Documentation Tools

```bash
# Enter development environment with Agda + documentation tools:
nix-shell -A devShells.mkDocs

# Work on Agda files in src/ directory:
agda src/Ledger.agda
```

#### Build System and Output Generation

```bash
# Enter CI environment (includes fls-shake):
nix-shell -A devShells.ci

# Generate outputs using fls-shake:
fls-shake html                     # generate html docs
fls-shake hs                       # generate Haskell code
fls-shake cardano-ledger.pdf       # generate pdf
```

#### Alternative: Build Outputs with Nix

```bash
# Build specific outputs without entering shell:
nix-build -A html                  # generate html docs
nix-build -A hsSrc                 # generate Haskell code
nix-build -A docs.conway.fullspec  # generate full spec pdf
nix-build -A docs.conway.diffspec  # generate Conway diff spec pdf

# Results available in ./result/
```

#### Combined Workflow

```bash
# Option 1. Build fls-shake once, then use it:
nix-build -A fls-shake
./result/bin/fls-shake cardano-ledger.pdf

# Option 2. Use different shells for different tasks:
nix-shell -A devShells.mkDocs      # for Agda development
nix-shell -A devShells.ci          # for fls-shake build tasks
```

### Updating Dependencies

To update pinned dependencies managed by niv, do the following:

```bash
# Update all dependencies:
niv update

# Update specific dependency:
niv update nixpkgs
niv update agda-stdlib

# Optionally, update to specific version/revision:
niv update nixpkgs -r 4e329926df7ee5fa49929a83d31ee7d541f8b45c
niv update nixpkgs -v 21.11.337905.902d91def1e

# Add new dependency:
niv add owner/repo -v tag-or-branch
```

---

## Key Features

### Reproducibility

+ All dependencies pinned to specific versions.
+ Builds are completely reproducible across machines.
+ No dependency on system-installed packages.

### Multi-format Output

+ Html documentation for web viewing.
+ Pdf specifications for formal documentation.
+ Haskell code generation for executable specifications.

### Incremental Development

+ Fast development shells with pre-built dependencies.
+ Cached builds of Agda libraries.
+ Modular build system using [Shake][].

---

## Troubleshooting

### Common Issues

1.  **`fls-shake: command not found`** (e.g., in mkDocs shell)

    - The `fls-shake` tool is only available in the `ci` shell, not `mkDocs`.
    - Use `nix-shell -A devShells.ci` or build it separately with `nix-build -A fls-shake`.

2.  **LaTeX/latexmk errors when building PDFs**
   
    **Error** `latexmk: createProcess: exec: invalid argument (Bad file descriptor)`
   
    **Causes and Solutions**

    +  **Missing latexmk**
    
       Install latexmk and LaTeX

       ```bash
       # Ubuntu/Debian
       sudo apt update
       sudo apt install latexmk texlive-full
       # Or minimal: sudo apt install latexmk texlive-latex-extra
       ```

    +  **PATH issues**
    
       Ensure latexmk is in your PATH

    +  **Nix users**
    
       This should be handled automatically

3.  **Unicode/encoding errors**
   
    **Error**
    
    `commitBuffer: invalid argument (cannot encode character '\8474')`
   
    **Cause**
    
    Agda trying to write Unicode characters with wrong encoding.
   
    **Solutions**

    ```bash
    # Option 1: Set locale for single command
    LC_ALL=en_US.UTF-8 fls-shake cardano-ledger.pdf
   
    # Option 2: Set globally in shell
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    ```

4.  **Build failures due to locale issues**

    - The configuration sets proper UTF-8 locales automatically.
    - If issues persist, ensure your system has UTF-8 locales available.

5.  **Agda library conflicts**

    - All libraries are pre-configured with correct versions.
    - Avoid installing Agda libraries system-wide when using this setup.

6.  **Memory issues during builds**

    **Problem** 
    
    Agda compilation is memory-intensive for large projects.

    **Solutions**
    
    +  **Agda-specific**
    
       Increase GHC heap size using RTS options.

       ```bash
       # Set environment variable to give Agda more memory
       export AGDA_RTS_OPTIONS="+RTS -M8G -A128M -RTS"
       nix-build -A formalLedger
       ```

    +  **Nix build options**
    
       Reduce parallel builds to lower memory pressure.

       ```bash
       nix-build --max-jobs 1 --cores 1  # Build sequentially
       ```

    +  **System-level**
    
       Add swap space if you have limited RAM.

       ```bash
       # Check current memory/swap
       free -h
       # Consider adding swap if needed (system-dependent)
       ```
    +  **Monitor usage**
    
       Use `htop` or `nix-top` during builds to identify bottlenecks.

### Getting Help

+ Check build logs for specific error messages.
+ Ensure you're using a supported platform (x86_64-Linux).
+ Verify that Nix is properly installed and configured.

---

## Integration with IDEs

### Emacs

#### Quick Setup (Simple)

For basic Agda development with the project's Agda environment, launch Emacs as follows:

```bash
nix-shell -A devShells.mkDocs
emacs src/YourFile.agda
# Use agda-mode commands as normal (C-c C-l to load, etc.)
```

#### Advanced Setup (Multiple Agda Versions)

For a setup that allows switching between different Agda versions, do the following:

1.  **Build and symlink the project's Agda**.

    ```bash
    nix-build -A agdaWithPackages -o ~/ledger-agda
    ```
   
    **Notes**

    - Replace `~/ledger-agda` with your preferred path.
    - This creates a persistent symlink to the project's Agda with all libraries.
    - You can verify with: `~/ledger-agda/bin/agda --version`.

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

3.  **Usage**.

    -  Open any Agda file in Emacs.
    -  Use `C-c C-x C-t` to switch to the ledger Agda version.
    -  Use standard agda-mode commands (`C-c C-l` to load, `C-c C-c` to case split, etc.).
    -  The project's libraries will be automatically available.

#### Troubleshooting Emacs Setup

+  **agda-mode not found**

   Install agda-mode with `M-x package-install RET agda2-mode`.

+  **Wrong Agda version**

   Check `agda2-program-name` variable with `C-h v agda2-program-name`.

+  **Library not found**

   Ensure you're using the project's Agda (`~/ledger-agda/bin/agda`).


### VS Code

#### Installation and Configuration

1.  **Install the Agda Language Server extension**.

    + Open VS Code.
    + Go to Extensions (`Ctrl+Shift+X`).
    + Search for "agda-mode".
    + Install the official Agda extension.

2.  **Build the project's Agda binary**.

    ```bash
    nix-build -A agdaWithPackages
    # Note the output path, e.g., /nix/store/r7qslc6myc3s2l1482vahqddv2lhzndp-agdaWithPackages-2.7.0.1
    ```

3.  **Configure VS Code to use the project's Agda**.

    **Method 1: Via Settings UI**

    + Open VS Code Settings (`Ctrl+,`).
    + Search for "agda".
    + Find "Agda Mode › Connection: Paths".
    + Click "Add Item".
    + Add the path to your built Agda binary; e.g.,

      ```
      /nix/store/r7qslc6myc3s2l1482vahqddv2lhzndp-agdaWithPackages-2.7.0.1/bin/agda
      ```

    **Method 2: Via settings.json**

    + Open Command Palette (`Ctrl+Shift+P`).
    + Type "Preferences: Open Settings (JSON)".
    + Add or modify the "agdaMode.connection.paths" setting; e.g.,

      ```json
      {
        "agdaMode.connection.paths": [
          "/nix/store/r7qslc6myc3s2l1482vahqddv2lhzndp-agdaWithPackages-2.7.0.1/bin/agda",
          "agda"
        ]
      }
      ```

4.  **Create a persistent symlink (recommended)**.
   
    To avoid updating the path every time you rebuild:

    ```bash
    nix-build -A agdaWithPackages -o ~/ledger-agda
    ```

    Then use in VS Code settings:
    ```json
    {
      "agdaMode.connection.paths": [
        "~/ledger-agda/bin/agda",
        "agda"
      ]
    }
    ```

5.  **Switch between Agda versions**.

    + Use `Ctrl+C Ctrl+R` to switch between configured Agda executables.
    + The first path in the list is the default.


#### VS Code Usage

+  Open any Agda file.
+  The file name extension (`.agda`, `.lagda`, `.lagda.md`, etc) should automatically start the Agda Language Server.
+  Use `Ctrl+C Ctrl+L` to type-check/load the current file.
+  Hover over definitions to see types.
+  Use `Ctrl+C Ctrl+R` to switch Agda versions if you have multiple configured.

#### Troubleshooting VS Code Setup

+  **"Cannot find agda"**

   Ensure the path in settings points to the actual binary.

+  **Libraries not found**

   Make sure you're using the project's Agda with libraries (`agdaWithPackages`).

+  **Extension not working**

   Check VS Code's Output panel for error messages.

+  **Performance issues**

   The Agda Language Server can be memory-intensive; close other applications if needed..

---

## Performance Notes

- Initial builds may take significant time due to Agda library compilation
- Subsequent builds are faster due to Nix caching
- Consider using a Nix binary cache for faster builds in CI environments

---

## Setup Without Nix

While we recommend using Nix for the best experience, it's possible to work with this repository without Nix. Those making nontrivial contributions are advised to use the Nix-based approach, but these instructions are provided for those who prefer not to use Nix.

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
[agda-stdlib v2.2]: https://github.com/agda/agda-stdlib/tree/v2.2-release
[agda-stdlib-classes]: https://github.com/agda/agda-stdlib-classes
[agda-stdlib-classes v2.2]: https://github.com/agda/agda-stdlib-classes/releases/tag/v2.2
[agda-stdlib-meta]: https://github.com/agda/agda-stdlib-meta
[agda-stdlib-meta v2.2]: https://github.com/agda/agda-stdlib-meta/releases/tag/v2.2
[agda-sets]: https://github.com/input-output-hk/agda-sets
[agda-sets f517d0d]: https://github.com/input-output-hk/agda-sets/tree/f517d0d0c1ff1fd6dbac8b34309dea0e1aea6fc6
[binary]: https://github.com/haskell/binary
[deepseq]: https://github.com/haskell/deepseq
[Emacs init file]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html
[formal-ledger-specifications]: https://github.com/IntersectMBO/formal-ledger-specifications
[hashable]: https://github.com/haskell-unordered-containers/hashable
[Haskell]: https://www.haskell.org/downloads/
[latex]: https://www.latex-project.org/get/
[latexmk]: https://ctan.org/pkg/latexmk
[Nix download instructions]: https://nixos.org/download/
[New Issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[shake]: https://shakebuild.com/
[Shake]: https://shakebuild.com/

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
[Troubleshooting]: #troubleshooting
[Maintainers]: #maintainers
[Miscellanea]: #miscellanea
