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
[🔁 CI/CD Workflow][]  
[🎛️️ Setup Without Nix][]  
[🕵️‍♀️ Conformance Testing][]  
[🗃️ Miscellanea][]  
[👷 Maintainers][]


---

<a id="style-guidelines"></a>
## 🖊️️ Style Guidelines

We adhere to the [Agda standard library style guide][] where practical.
However, because we use [literate][] Agda to produce html documentation, readability
of the latter takes precedence over code formatting.

---

<a id="project-overview"></a>
## 🗺️ Project Overview

This repository uses [Nix][] and [Shake][] to provide a reproducible, declarative,
and portable development environment.


### Nix and Flakes

We use Nix to manage dependencies, build processes, and development shells.
Using [Nix flakes][] is the recommended way to interact with the project, but we also
support the use of `nix-shell`.


### Dependency Management

All external Nix dependencies (like `nixpkgs`) and Agda libraries are pinned to
specific versions (e.g., Git commits) using [niv](https://github.com/nmattia/niv).
The pinned versions are stored in
[`build-tools/nix/sources.json`][build-tools/nix/sources.json], which guarantees
reproducible builds.

The core Agda dependencies include:

+ [agda-stdlib][]: standard library;
+ [agda-stdlib-classes][]: type-class extensions for the standard library;
+ [agda-stdlib-meta][]: meta-programming utilities;
+ [agda-sets][]: abstract set theory library;
+ [iog-agda-prelude][]: supplementary prelude.


### Directory Structure

The main directories and files involved in the build process are as follows. (A more
detailed version of this annotated tree can be found at the bottom of this page.)

```
├── default.nix                # Definitions of Nix derivations
├── flake.nix                  # Nix flake interface
├── TROUBLESHOOTING.md         # Guide for resolving common build issues
├── TEX2MD_MIGRATION.md        # Guide for LaTeX to Markdown migration process
└── build-tools/
    ├── agda/
    │   ├── data/
    │   │   ├── Agda.css       # for styling Agda HTML output
    │   │   └── AgdaKaTeX.js   # for integrating Agda's HTML with KaTeX
    │   ├── fls-agda.cabal     # for building fls-agda Haskell package
    │   ├── nix/
    │   │   └── fls-agda.nix   # Nix derivation for fls-agda package
    │   └── src/
    │       └── Main.hs        # Main entry point for fls-agda executable
    └── shake/
        ├── fls-shake.cabal    # for building fls-shake Haskell package
        ├── nix/
        │   └── fls-shake.nix  # Nix derivation for fls-shake package
        └── src/
            └── Main.hs        # Main entry point for fls-shake build system
```

---

<a id="development-environment-setup"></a>
## 💻 Development Environment Setup

We provide several development shells tailored for different tasks. You can enter them using `nix develop`.


+  🐚 **Default Shell**

    This is the primary environment for Agda development. It includes Agda, all required libraries, and the `fls-shake` build tool.

    ```bash
    # Enter the default development shell
    nix develop
    ```

    ⚒️ **Available Tools**

    + [`agda`][Agda] (with all project libraries)
    + `fls-shake` (our custom build tool)
    + [`python311`][python311] (Python version 3.11)
    + [`hpack`][hpack] (the Haskell package helper)


+  🐚 **CI Shell**

    A minimal environment designed for automated builds, containing only the `fls-shake` build tool and its runtime dependencies.

    ```bash
    # Enter the CI shell
    nix develop .#ci
    ```

+  🐚 **Documentation Shell**

    A comprehensive environment for working on documentation, including the full documentation generation pipeline.

    ```bash
    # Enter the documentation shell
    nix develop .#docs
    ```

    ⚒️ **Available Tools**

    Everything from the default shell plus

    + [`pandoc`][pandoc] (the document conversion tool)
    + [`latex`][latex] (the typesetting language)
    + [`mkdocs`][mkdocs] (with Python dependencies)
    + [`mdbook`][mdbook] (with Rust dependencies)


---


<a id="building-project-artifacts"></a>
## 🏗️ Building Project Artifacts

You can build project artifacts in several ways. The recommended method is using `nix build`.

### Using Nix Flakes (Recommended)

The `flake.nix` file exposes all buildable artifacts as packages.

(How to view or use what these commands build is explained below; see
[Building and viewing the formal specification][] and [Browsing the source code][].)

```bash
# Type-check the Agda specification (default package)
nix build .#formal-ledger
# or simply:
nix build

# Generate the (HTML version of the) formal specification
nix build .#mkdocs

# Generate browseable HTML version of Agda code
nix build .#html

# Generate Haskell source code for conformance testing
nix build .#hs-src
```

Build outputs are symlinked in the `result/` directory.

### Using `nix-build`

If you don't want to use Flakes, the following legacy `nix-build` commands are available:

```bash
# Type-check the Agda specification
nix-build -A formal-ledger

# Generate the html version of the Agda specification
nix-build -A mkdocs

# Generate browsable HTML version of Agda code
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
fls-shake html                # Build HTML docs
fls-shake hs                  # Build Haskell source

# See all available targets
fls-shake --help
```

---

<a id="html-documentation"></a>
## 📖 HTML Documentation

### Building and viewing the formal specification

There are two ways to do this.

1.  **With Nix**

    Enter the command `nix build .#mkdocs` (or `nix-build -A mkdocs`) then open the
    file `result/site/index.html` in a browser.

    **Note**. This currently works in Chrome but may not work in Brave or
    Firefox.  If you want to use one of those browsers to view the generated
    documentation, you can run a local server on the result,
    `cd result/site; python3 -m http.server`, and then point your browser
    to <http://127.0.0.1:8000/>.

2.  **Manually**

    ```bash
    nix develop .#docs
    python build-tools/scripts/md/build.py --run-agda
    cd _build/md/mkdocs
    mkdocs serve
    ```

    Then point your browser to  <http://127.0.0.1:8000/>.

### Browsing the source code

After generating the HTML version of the source code with `nix build .#html` (or `nix-build -A html`), you can
view the result by pointing your (Chrome) browser to `result/html/index.html`.  If
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
    + Once configured, use `M-x my/switch-agda` (or `C-c C-x C-t`) to switch between Agda versions.
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

### Checking how your code looks on the site

An important step in contributing any code to the repository is to check how it will
appear when run through our custom mkdocs site generator and rendered on our website.
This section explains how to use the tools we have created to monitor the effects
your changes to the code will have on the appearance of the corresponding web pages.

1.  First, generate the mkdocs site **Manually** (as described in option 2 of the
    [Building and viewing the formal specification][] section):

    ```bash
    nix develop .#docs
    python build-tools/scripts/md/build.py --run-agda
    cd _build/md/mkdocs
    mkdocs serve
    ```
2.  In another terminal window, enter the default Nix shell with `nix develop` and then
    run `fls-shake --watch`.

3.  Now, instead of directly editing a file (or creating a new file) under the main `src`
    directory, make your changes to (or create) `.lagda.md` files under `_build/md/md.in/src`.

4.  Check your work by viewing the corresponding page at <http://127.0.0.1:8000/>.

5.  Once you are satisfied with your changes.  Replace the corresponding file under
    `src` with your new version from `_build/md/md.in/src`.

**How this works**.  The `fls-shake --watch` command watches for changes to files in
`_build/md/md.in/src` and, whenever a change occurs, generates a new corresponding page
in the mkdocs site directory.  Since the mkdocs server is listening for changes to
files in the mkdocs site directory, you will see the effect of your changes in the
browser.

---

<a id="cicd-workflow"></a>
## 🔁 CI/CD Workflow

Our CI/CD pipeline, defined in `.github/workflows/`, automates the building and publishing of artifacts. Here are some key details:

+ **Caching**

   The initial `formal-ledger-agda` job type-checks the code and uploads the resulting `_build` directory as a GitHub artifact. Subsequent jobs download this artifact to avoid re-compiling Agda code.

+ **Artifact Branches**

   For every push to `master` or a pull request branch, the CI creates a corresponding `<branch-name>-artifacts` branch. This branch stores the generated artifacts (PDFs, HTML, Haskell code).

+ **PDF Generation Note**

   The CI workflow **does not** build PDFs from the current source. Instead, it checks out the `legacy-latex-artifacts` branch and copies the PDFs from there. This is a temporary measure to ensure the stability of the published documents. You can still build PDFs locally from source using the commands described above.

---

<a id="setup-without-nix"></a>
## 🎛️️ Setup Without Nix

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

<a id="conformance-testing"></a>
## 🕵️‍♀️ Conformance Testing

After producing the Agda-generated Haskell code with `nix build .#hs-src`
(or `nix-build -A hs-src`), you can run the conformance tests.

See [the `conformance-example` directory][conformance-example].

---

<a id="miscellanea"></a>
## 🗃️ Miscellanea


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

### Build-tools

Here is the complete annotated subtree of the `build-tools` directory.


```
├── build-tools/                                     # All build-related utilities and static assets
│   ├── agda/                                        # Source for the custom `fls-agda` Agda backend
│   │   ├── data/                                    # Static assets used by the fls-agda backend
│   │   │   ├── Agda.css                             # Base CSS for styling Agda HTML output
│   │   │   └── AgdaKaTeX.js                         # JS for integrating Agda's HTML with KaTeX
│   │   ├── fls-agda.cabal                           # Cabal file for building the fls-agda Haskell package
│   │   ├── nix/                                     # Nix-specific build files for fls-agda
│   │   │   └── fls-agda.nix                         # Nix derivation for the fls-agda package
│   │   ├── src/                                     # Haskell source code for the fls-agda backend
│   │   │   └── Main.hs                              # Main entry point for the fls-agda executable
│   │   └── test/                                    # Test files for the fls-agda backend
│   │       └── Test0.agda                           # Agda file for testing the backend's functionality
│   ├── nix/                                         # General Nix configuration for the project
│   │   ├── sources.json                             # Niv-managed file pinning exact dependency versions
│   │   └── sources.nix                              # Niv-generated file to load pinned dependencies
│   ├── scripts/                                     # Various utility scripts for building and processing
│   │   ├── agda2vec.py                              # Python script for post-processing Agda-generated LaTeX
│   │   ├── checkTypeChecked.sh                      # Shell script to verify Agda type-checking success
│   │   ├── hldiff.py                                # Python script for highlighting differences in LaTeX
│   │   ├── md/                                      # Scripts for the Markdown documentation pipeline
│   │   │   ├── agda-filter.lua                      # Pandoc Lua filter for processing Agda code blocks
│   │   │   ├── build.py                             # Main entry point for the Markdown build script
│   │   │   ├── config/                              # Configuration modules for the build script
│   │   │   │   └── build_config.py                  # Defines dataclasses for build paths and settings
│   │   │   ├── modules/                             # Core logic modules for the build script
│   │   │   │   ├── agda_processing.py               # Handles interaction with the Agda compiler
│   │   │   │   ├── bibtex_processor.py              # Processes BibTeX citations
│   │   │   │   ├── content_staging.py               # Manages intermediate build files
│   │   │   │   ├── latex_pipeline.py                # Orchestrates LaTeX-to-Markdown conversion
│   │   │   │   ├── latex_preprocessor.py            # Pre-processes LaTeX files before conversion
│   │   │   │   └── site_assembly.py                 # Assembles the final MkDocs/MdBook site
│   │   │   ├── test/                                # Tests for the Markdown build pipeline
│   │   │   │   └── test_bibtex_processor.py         # Unit tests for the BibTeX processor
│   │   │   └── utils/                               # Utility functions used by the build script
│   │   │       ├── command_runner.py                # Helper for running external commands
│   │   │       ├── file_ops.py                      # Helpers for file system operations
│   │   │       ├── pipeline_types.py                # Defines custom types used in the pipeline
│   │   │       └── text_processing.py               # Helpers for text manipulation
│   │   ├── plot_typecheck_time.py                   # Script to plot Agda type-checking performance
│   │   └── prepare-conf-test.sh                     # Script to prepare for conformance testing
│   ├── shake/                                       # Source for the `fls-shake` build tool
│   │   ├── fls-shake.cabal                          # Cabal file for building the fls-shake Haskell package
│   │   ├── nix/                                     # Nix-specific build files for fls-shake
│   │   │   └── fls-shake.nix                        # Nix derivation for the fls-shake package
│   │   └── src/                                     # Haskell source code for fls-shake
│   │       └── Main.hs                              # Main entry point for the fls-shake build system
│   └── static/                                      # Static assets copied into builds
│       ├── hs-src/                                  # Template for the extracted Haskell source code
│       │   ├── package.yaml                         # hpack file to generate the .cabal file
│       │   └── src/MAlonzo/Code/Ledger/Foreign/API.hs # Manual Haskell FFI to Agda code
│       ├── latex/                                   # Static LaTeX files for (legacy) PDF generation
│       │   ├── cardano-ledger.tex                   # Main TeX file for the full specification PDF
│       │   ├── ...                                  # Other TeX includes, diagrams, fonts, etc.
│       │   └── references.bib                       # BibTeX file for all citations
│       └── md/                                      # Static assets for Markdown documentation sites
│           ├── common/                              # Assets shared between MkDocs and MdBook
│           │   ├── nav.yml                          # Template for the MkDocs navigation structure
│           │   └── src/                             # Source assets (CSS, JS, images, etc.)
│           │       ├── css/custom.css               # Custom stylesheet for documentation sites
│           │       └── js/custom.js                 # Custom JavaScript for documentation sites
│           ├── mdbook/                              # Configuration and templates for MdBook
│           │   ├── book.toml                        # Main configuration file for MdBook
│           │   └── src/SUMMARY.md                   # Defines the navigation for the MdBook site
│           └── mkdocs/                              # Configuration and templates for MkDocs
│               ├── docs/index.md                    # Homepage/landing page for the MkDocs site
│               ├── includes/links.md                # Common Markdown link references
│               └── mkdocs.yml                       # Main configuration file for the MkDocs site
├── TEX2MD_MIGRATION.md                              # Guide for the LaTeX to Markdown migration process
└── TROUBLESHOOTING.md                               # Guide for resolving common build issues
```


---

<a id="maintainers"></a>
## 🧑‍🔧 Maintainers

This repository is maintained by [@carlostome][], [@WhatisRT][], and [@williamdemeo][].

**If you encounter any problems, please open a [New Issue][]**.

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
[binary]: https://github.com/haskell/binary
[build-tools/nix/sources.json]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/nix/sources.json
[conformance-example]: https://github.com/IntersectMBO/formal-ledger-specifications/tree/master/conformance-example
[deepseq]: https://github.com/haskell/deepseq
[default.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/default.nix
[Emacs init file]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html
[flake.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/flake.nix
[fls-agda.cabal]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/agda/fls-agda.cabal
[fls-agda.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/agda/nix/fls-agda.nix
[fls-shake.cabal]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/shake/fls-shake.cabal
[fls-shake.nix]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/shake/nix/fls-shake.nix
[formal-ledger-specifications]: https://github.com/IntersectMBO/formal-ledger-specifications
[hashable]: https://github.com/haskell-unordered-containers/hashable
[Haskell]: https://www.haskell.org/downloads/
[hpack]: https://hackage.haskell.org/package/hpack
[iog-agda-prelude]: https://github.com/input-output-hk/iog-agda-prelude
[latex]: https://www.latex-project.org/get/
[latexmk]: https://ctan.org/pkg/latexmk
[literate]: https://en.wikipedia.org/wiki/Literate_programming
[Main.hs]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/build-tools/shake/src/Main.hs
[mdbook]: https://rust-lang.github.io/mdBook/
[mkdocs]: https://www.mkdocs.org/
[New Issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[niv]: https://github.com/nmattia/niv
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
[Browsing the source code]: #browsing-the-source-code
[🧑‍🔧 Working on the Agda source code]: #working-on-the-agda-source-code
[🕵️‍♀️ Conformance Testing]: #conformance-testing
[🖥️ IDE Integration]: #ide-integration
[🔁 CI/CD Workflow]: #cicd-workflow
[🎛️️ Setup Without Nix]: #setup-without-nix
[🗃️ Miscellanea]: #miscellanea
[👷 Maintainers]: #maintainers


[^1]: However, our custom mkdocs configuration provides a toggle button that allows the reader to view hidden code blocks if desired.)
