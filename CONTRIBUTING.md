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


### Nix Flakes

We use Nix Flakes to manage dependencies, build processes, and development shells.


### Dependency Management

All external Nix dependencies (like `nixpkgs`) and Agda libraries are pinned to
specific versions (e.g., Git commits).

The core Agda dependencies include:

+ [agda-stdlib][]: standard library;
+ [agda-stdlib-classes][]: type-class extensions for the standard library;
+ [agda-stdlib-meta][]: meta-programming utilities;
+ [agda-sets][]: abstract set theory library;
+ [iog-agda-prelude][]: supplementary prelude.


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
    │   ├── flake.nix          # Auxiliary Nix flake file.
    │   ├── fls-agda.cabal     # For building fls-agda Haskell package.
    │   ├── nix/
    │   │   └── fls-agda.nix   # Nix derivation for fls-agda package.
    │   └── src/
    │       └── Main.hs        # Main entry point for fls-agda executable.
    │
    ├── nix/                   # Nix derivations for exported packages.
    │   ├── formal-ledger.nix
    │   ├── hs-src.nix
    │   ├── html.nix
    │   └── mkdocs.nix
    │
    └── shake/
        ├── flake.nix          # Auxiliary Nix flake file.
        ├── fls-shake.cabal    # For building fls-shake Haskell package.
        ├── nix/
        │   └── fls-shake.nix  # Nix derivation for fls-shake package.
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
    nix develop .#mkdocs
    ```

    ⚒️ **Available Tools**

    Everything from the default shell plus

    + [`pandoc`][pandoc] (the document conversion tool)
    + [`latex`][latex] (the typesetting language)
    + [`mkdocs`][mkdocs] (with Python dependencies)


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

# Generate the (HTML version of the) formal specification
nix build .#mkdocs

# Generate browseable HTML version of Agda code
nix build .#html

# Generate Haskell source code for conformance testing
nix build .#hs-src
```

Build outputs are symlinked in the `result/` directory.


### Using the `fls-shake` Build Tool

For more granular control, you can use our Shake-based build tool, `fls-shake`, from within a development shell.

```bash
# Enter the default development shell
nix develop

# Build specific artifacts using fls-shake
fls-shake html                # Build HTML docs
rm -rf _build dist/hs; fls-shake hs   # Build Haskell source

# See all available targets
fls-shake --help
```

---

<a id="html-documentation"></a>
## 📖 HTML Documentation

### Building and viewing the formal specification

There are two ways to do this.

1.  **With Nix**

    Enter the command `nix build .#mkdocs` then open the
    file `result/site/index.html` in a browser. This type-checks the
    Agda code, and generates the HTML documentation from scratch.

    **Note**. This currently works in Chrome but may not work in Brave or
    Firefox.  If you want to use one of those browsers to view the generated
    documentation, you can run a local server on the result,
    `cd result/site; python3 -m http.server`, and then point your browser
    to <http://127.0.0.1:8000/>.

2.  **Manually**

    This method only type-checks the Agda code that has changed since last time and
    then generates the HTML documentation.

    ```bash
    nix develop .#mkdocs
    python build-tools/scripts/md/build.py --run-agda
    cd _build/md/mkdocs
    mkdocs serve
    ```

    Then point your browser to  <http://127.0.0.1:8000/>.


### Generating images

The diagrams in our documentation come from legacy tikz source code files that live
in the `build-tools/static/latex/Diagrams` directory.  To generate svg images from a tikz
source code file, we create a standalone LaTeX document for it (e.g.,
`build-tools/static/latex/STS-Diagram.tex`) and

1.  run the following commands:

    ```
    lualatex -halt-on-error -interaction=batchmode STS-Diagram.tex
    dvisvgm --pdf --page=1 -n -a -o STS-Diagram.svg STS-Diagram.pdf
    ```

2.  copy the resulting `.svg` file into the `build-tools/static/md/common/src/img/` directory.

To include the diagram in the markdown documentation, we add it to a
`.lagda.md` file as follows: `![STS-Diagram](img/STS-Diagram.svg)`.

(The Python pipeline for markdown migration and mkdocs site generation
can now handle steps 1 and 2 above.  Specifically, when you build the html
documentation site using the second ("manual") method above, the program looks in the
`build-tools/static/latex/` directory for LaTeX files with names matching the pattern
`*-Diagram.tex`; it processes each such file with the `lualatex` and `dvisvgm`
commands shown above and then copies the resulting `.svg` image file into the
`build-tools/static/md/common/src/img` directory.)

**Important Notes**

+  For each tikz source file in `build-tools/static/latex/Diagrams`, to generate the
   corresponding svg image file, we must create a standalone LaTeX file
   `*-Diagram.tex` file that `\include`s the tikz source file.  Also, we need to
   include the svg image in the appropriate `.lagda.md` file by hand, either

    +  using the standard Markdown syntax for including images, that is, `![...](...)`; e.g.,

        `![Rewards flowchart](img/Rewards-Diagram.svg "Rewards flowchart")`

        OR

    +  using our custom `svg-card` css class; e.g.,

        ````html
        <figure class="svg-card">
          <img src="img/RewardsTiming-Diagram.svg" alt="Rewards timeline">
        </figure>
        ````

+  Each `.tex` file in the `build-tools/static/latex/` directory that should not be
   converted to Markdown by the pipeline must be added to the `excluded_prefixes`
   list in the `convert_all_static_tex` function of the Python script
   `build-tools/scripts/md/modules/static_tex_processor.py`.


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

---

### Setting up multiple versions with `update-alternatives` (OPTIONAL)

**For Linux users**.

If you have `update-alternatives` installed, then, instead of creating a symlink from
your home directory (or some other directory that's in your `PATH`) to our version of
agda in `~/ledger-agda/bin/agda`, you can configure multiple versions of `agda` and
`agda-mode` as follows:

```bash
sudo update-alternatives --install /usr/bin/agda agda ~/ledger-agda/bin/agda 1
```

Do the same for any other versions of Agda that you have installed, and want to make
available, on your system.

For example,

```bash
sudo update-alternatives --install /usr/bin/agda agda ~/.cabal/bin/agda-2.8.0 10
```

Now, install the associated version of `agda-mode`, which is required for using Agda
(versions < 2.8.0) in Emacs:

```bash
sudo update-alternatives --install /usr/bin/agda-mode agda-mode ~/ledger-agda/bin/agda-mode 1
```

Finally, choose which Agda version you want to use:

```bash
sudo update-alternatives --config agda
```

and, if you choose a version below 2.8.0, be sure to select the appropriate
`agda-mode` version to accompany it!

```bash
sudo update-alternatives --config agda-mode
```

---

### Emacs

(This section does not assume you followed the optional `update-alternative`
setup instructions above.  However, even if you did, you can still carry out
the customization instructions in the present section, which do not conflict with
the `update-alternatives` approach.)

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
    (setq my/agda-versions `(("System Agda"  "2.8.0" "agda")  ; Adjust version as needed
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
    emacs src/Ledger.lagda.md
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
    nix develop .#mkdocs
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

After producing the Agda-generated Haskell code with `nix build .#hs-src`, you
can run the conformance tests.

See [the `conformance-example` directory][conformance-example].

---

<a id="miscellanea"></a>
## 🗃️ Miscellanea


### Updating Agda dependencies in the Nix configuration

The following example ilustrates the procedure

```
nix flake update agda-nix/abstract-set-theory \
  --override-input agda-nix/abstract-set-theory \
  github:input-output-hk/agda-sets/bbaa00abc4aef061896ae5d3cdec148bfbf5029f
nix build ./#fls-agdaWithPackages -o ~/ledger-agda
```

The first line updates the commit hash to use for a dependency. In the example,
it updates the dependency `agda-nix/abstract-set-theory` to point at the commit
`bbaa00abc4aef061896ae5d3cdec148bfbf5029f` or the repository
`github:input-output-hk/agda-sets`.

The second line rebuilds the Agda mode to use with emacs. This step is necessary
for emacs to use the new version of the dependency when loading Agda code. This
assumes that `~/ledger-agda/bin` is in your `PATH`.


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
