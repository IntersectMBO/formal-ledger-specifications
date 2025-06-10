# Contributing to the formal ledger specifications

## Style guidelines

We are currently aspiring to follow the [Agda standard library style guide][] as much as reasonable. Since some of our code will be rendered into a PDF, the formatting of the PDF takes priority over formatting of the code, so deviations are to be expected.

We also have a separate style guide for formatting the PDF: [PDF style guide](PDF-style-guide.md).

---

## Quick Start

`nix-shell` provides Agda with the correct dependencies.
You should be able to run your preferred editor within `nix-shell` and it should see
the required `agda` executable.

Here are some examples of *alternative* ways to interact with the code in this
repository.  (You will probably use some but not all of these.)

All of these assume you have at least cloned this repository to your local machine:

```
git clone https://github.com/IntersectMBO/formal-ledger-specifications.git
cd formal-ledger-specifications
```

+  Open a Nix shell (in which the correct version of Agda will be available) and
   launch your favorite editor:

   ```bash
   nix-shell
   emacs src/Everything.agda
   ```

   Type-check everything inside Emacs with `C-c C-l`.
   (You may need to do `M-x my/toggle-ledger-agda` first.)

+  Type-check the formal ledger Agda code from the command line,

   ```bash
   agda src/Everything.agda
   ```

+  Type-check the formal ledger Agda code and generate the `cardano-ledger.pdf` document,

   ```bash
   nix-shell --run 'fls-shake cardano-ledger.pdf'
   ```

+  Use Nix flakes to build everything,

   ```bash
   nix build
   ```

   and then compile `cardano-ledger.pdf`:

   ```bash
   ./result/bin/fls-shake cardano-ledger.pdf
   ```

**If you encounter any problems, please read the rest of these instructions and open
a [New Issue][] if necessary**.

---

## Working on the ledger spec from inside a Nix shell

For Nix users, the `nix-shell` command will provide Agda along with the required
dependencies.

Entering the commands

```
git clone https://github.com/IntersectMBO/formal-ledger-specifications.git
cd formal-ledger-specifications
nix-shell
```

drops you into a shell in which you could, for example, typecheck the Agda formal
specification by running

```
agda src/Everything.agda
```

You should also be able to launch your preferred editor within `nix-shell` and it should
see the required `agda` executable.

For instructions on setting up Agda without Nix, check [Setup without nix](#setup-without-nix).

---

## Dependencies

### Nix Dependencies

We use Nix to set up an environment with all dependencies installed correctly.

While it is possible to work with this repository without using Nix
(instructions for doing so are included [below][Setup without nix]) those wishing to
make nontrivial contributions to this repository are advised to follow the Nix-based
approach described here. This doesn't require running NixOS, but does require
the Nix package manager which can be installed by following the official
[Nix download instructions][].

### Agda Dependencies

This project depends on the following libraries: [agda-sets][], [agda-stdlib][],
[agda-stdlib-classes][], and [agda-stdlib-meta][]. At the time of this writing, the
specific versions of these that we use are as follows:

   + [agda-sets f517d0d](https://github.com/input-output-hk/agda-sets/tree/f517d0d0c1ff1fd6dbac8b34309dea0e1aea6fc6)
   + [agda-stdlib v2.2](https://github.com/agda/agda-stdlib/tree/v2.2-release)
   + [agda-stdlib-classes v2.2](https://github.com/agda/agda-stdlib-classes/releases/tag/v2.2)
   + [agda-stdlib-meta v2.2](https://github.com/agda/agda-stdlib-meta/releases/tag/v2.2)

**Note**. These versions may change. The authoritative source for the commits/tags
of the versions we currently use is the `default.nix` file (e.g. `v2.2` for `agda-stdlib-meta`).


#### Modifying the Agda libraries

To work simultaneously on the ledger and one of its dependencies, the easiest
way to do this is to remove the library from the ledger's `.agda-lib` file and
add its path to the `include:` section.

When finished, push the changes to the library and update `default.nix` to point
to your new commit.

*Warning:* Don't forget to update the SHA when updating `default.nix`. Nix will
fail silently on your local machine if you do that. Just change a few
characters, run `nix-build -A ledger` and nix will tell you the correct hash to
put there.

---

## Agda Setup

We use Agda version 2.7.0.1 and various dependencies.  For the purposes of this
documentation, we call our custom setup `ledger-agda`.

### Global `ledger-agda` installation

After cloning this repository, the single command `nix-env -iA agda -f .` will
install `ledger-agda`.  This is a *global install*, which you may not want if you
also have other Agda projects.

### Local `ledger-agda`installation

To install a local version of `ledger-agda`,

1.  Build `agda` and `agda-mode` binaries.

    ```
    nix-build -A agdaWithDeps -o ~/IOHK/ledger-agda
    ```

    **Notes**

    *  Replace `~/IOHK/ledger-agda` with whatever path you like; make sure to replace
       it in `my/agda-versions` below as well.

    *  It is not necessary to have built/installed Agda prior to invoking this
       `nix-build` command (though it's okay if you have).

    *  Check which Agda is the default with `which agda` and `agda --version`.

    *  To ensure the commands described below use the `ledger-agda` version of Agda,
       invoke them like so: `AGDA=~/IOHK/ledger-agda COMMAND`.

2.  Put the following in your [Emacs init file][]
    (highlight and `M-x eval-region` to load it without restarting emacs):

    ```lisp
    ;; Defines a function `my/switch-agda' that switches between different
    ;; `agda' executables defined in `my/agda-versions'. The first entry of
    ;; `my/agda-versions' is assumed to be the default Agda.
    ;;
    ;; If there are two entries in `my/agda-versions', `my/switch-agda' toggles
    ;; between the two. If there are more entries, it will ask which one
    ;; to choose.

    (setq my/agda-versions `(("Agda"        "2.6.4" "agda")
                             ("Ledger Agda" "2.7.0" "~/IOHK/ledger-agda/bin/agda")))

    (setq my/selected-agda (caar my/agda-versions))

    (defun my/switch-agda (name version path)
      (interactive
       (cond ((> (length my/agda-versions) 2)
              (assoc (completing-read "Agda" my/agda-versions '(lambda (x) 't) 't) my/agda-versions))
             ((= (length my/agda-versions) 2)
              (car (seq-filter '(lambda (x) (not (string= my/selected-agda (car x)))) my/agda-versions)))
             (t (error "my/agda-versions needs to have at least two elements!"))))
      (message "Selecting %s, version %s" name version)
      (setq my/selected-agda   name
            agda2-version      version
            agda2-program-name path)
      (agda2-restart))

    (with-eval-after-load 'agda2-mode (define-key agda2-mode-map (kbd "C-c C-x C-t") 'my/switch-agda))
    ```

    **Notes**

    *  This assumes that your regular install of Agda is in your path with the name
       `agda` and version `2.6.4`, otherwise edit `my/agda-versions` to match your
       existing Agda installation.

    *  Once you make these changes, the Emacs command `M-x my/toggle-ledger-agda`
       (or `C-c C-x C-t`) will switch between your regular Agda and the IOHK version.

    *  There are other options as well, but this should work with all kinds of custom
       emacs setups or distributions (assuming there isn't already some other stuff
       going on with your Agda setup).

**If you encounter any problems, please read the rest of these instructions and open
a [New Issue][] if necessary**.

---

## Working on the artifacts

The artifacts that `formal-ledger-specifications` provides are built using a
custom system written in a Haskell DSL called [Shake](https://shakebuild.com/).
The Haskell project [`fls-shake`](fls-shake) contains the source code of the build
system. We refer to the build-system binary as `fls-shake`.

Depending on whether you use Nix or not, the commands given in the rest of this
instructions are to be run differently.

+  For Nix users, the commands should be executed as follows:

   ```bash
   nix-shell --run COMMAND
   ```

   This ensures that the correct dependencies are in scope.

   As an example, the instructions to build the [html](#html)-hyperlinked Agda
   code specify to run the command `fls-shake html`, but using Nix you would enter
   this command as follows:

   ```bash
   nix-shell --run 'fls-shake html'
   ```

+  For non-Nix users, the commands are to be executed verbatim, assuming 
   `fls-shake` and Agda and their dependencies are installed.
   Instructions for compiling `fls-shake` and setting up Agda and its dependencies
   are provided in the section [Setup without Nix](#setup-without-nix) below.


`fls-shake` uses three top level directories:

+ `_build` to store intermediate build objects;
+ `.shake` to store build information;
+ `dist` to store built artifacts.

**If you encounter any problems, please read the rest of these instructions
(especially the [Troubleshooting][] section) and open a [New Issue][] if necessary**. 

---

## Building the artifacts

### PDF

`fls-shake` provides two targets, `conway-ledger.pdf` and `cardano-ledger.pdf`,
to build the respective pdfs.  For example, the command

```bash
nix-shell --run 'fls-shake cardano-ledger.pdf'
```

produces the output `dist/cardano-ledger.pdf`.

In addition, `fls-shake` has internal rules to generate 
[intermediate outputs][fls-shake intermediate outputs].


### Haskell code (for conformance testing)

`fls-shake` provides a target to build the Haskell code:

```bash
nix-shell --run 'fls-shake hs'
```

this produces the output `dist/hs`


### Html-hyperlinked Agda code

`fls-shake` provides a target to build the html:

```bash
nix-shell --run 'fls-shake html'
```

This produces the output `dist/html`

In addition, `fls-shake` has internal rules to generate 
[intermediate outputs][fls-shake intermediate outputs].


### fls-shake intermediate outputs

+  **Agda-generated `tex` files** from literate Agda source code are stored in
   `_build/latex.gen`. This are shared between pdf artifacts.

+  **Pdf-artifact specific files** are stored under `_build/target` (where e.g.,
   the target is `cardano-ledger.pdf`, `_build/cardano-ledger.pdf`).

   The structure of `_build/target` is the following:

   +  `latex.in` for verbatim latex related files copied from the top level `latex`
      directory.
   +  `latex.pp` for post processed `tex` files from Agda-generated `tex`
      (e.g., applying [`agda2vec.py`](agda2vec.py)).
   +  `latex.out` for latex intermediate build files.

+  **Html files**s are stored under `_build/html`.

   The structure of `_build/html` is as follows:

   +  `html.in` contains the Agda source code.  Agda files are copied verbatim,
      literate Agda files are `illiterated`.
   +  `html.out` contains the output html.


**If you encounter any problems, please read the rest of these instructions
(especially the [Troubleshooting][] section) and open a [New Issue][] if necessary**.

---

## Setup Without Nix

### Agda and its dependencies

+  Install Agda version `2.7.0.1` (e.g. follow the instructions in
   <https://agda.readthedocs.io/en/v2.7.0/getting-started/installation.html#step-1-install-agda>).

+  In a folder `LIB`, clone the [Agda Dependencies][]:

   ```bash
   mkdir -p LIB; cd LIB
   git clone --config advice.detachedHead=false --single-branch -b "v2.2" https://github.com/agda/agda-stdlib.git
   git clone --config advice.detachedHead=false --single-branch -b "v2.0" https://github.com/agda/agda-stdlib-classes.git
   git clone --config advice.detachedHead=false --single-branch -b "v2.1.1" https://github.com/agda/agda-stdlib-meta.git
   git clone --config advice.detachedHead=false --single-branch -b "master" https://github.com/input-output-hk/agda-sets.git
   ```
and checkout the commits/tags found in `default.nix` (e.g. `v2.1.1` for `agda-stdlib-meta`).


+  Create a file `LIB/libraries` with the following content:

   ```
   LIB/agda-stdlib/standard-library.agda-lib
   LIB/agda-stdlib-classes/agda-stdlib-classes.agda-lib
   LIB/agda-stdlib-meta/agda-stdlib-meta.agda-lib
   LIB/agda-sets/abstract-set-theory.agda-lib
   ```

+  Use `AGDA_DIR=LIB agda` instead of `agda`.

   For example:

    +  To typecheck the formal specification, run:

       ```bash
       AGDA_DIR=LIB agda src/Everything.agda
       ```

    +  To build the `conway-ledger.pdf` artifact, run:

       ```bash
       AGDA_DIR=LIB fls-shake conway-ledger.pdf
       ```

### `fls-shake`

When making nontrivial changes to the Agda code or its documentation,
it's advisable to use `fls-shake`, our build system (a `make` alternative that
handles type-checking the Agda code, generating  html, recompiling pdfs, etc.).

The easiest way to build `fls-shake` is to simply type `nix-build -A fls-shake`.

If that doesn't work, you can try to build `fls-shake` from scratch.

### Building `fls-shake` manually

For users not using Nix, compile `fls-shake` by taking the following steps:

1.  **Install** GHC and Cabal.

    Follow the [official instructions][Haskell].

    Verify the installation.

    ```bash
    ghc --version
    cabal --version
    ```

    Update Cabal package database.

    ```bash
    cabal update
    ```

2.  **Compile** `fls-shake`.

    In the folder `fls-shake`, run

    ```bash
    cabal build fls-shake
    ```

3.  **Run** it.

    Once built, run `fls-shake` on one of the build targets
    (e.g., `cardano-ledger.pdf`) as follows:

    ```bash
    cabal run fls-shake -- -C '..' cardano-ledger.pdf
    ```

    Note that we pass the option `-C '..'` so that `fls-shake` runs from
    the repository's main directory.

    Here is a list of commands for the various targets that `fls-shake` can build:

    ```bash
    cabal run fls-shake -- -C '..' cardano-ledger.pdf
    cabal run fls-shake -- -C '..' conway-ledger.pdf
    cabal run fls-shake -- -C '..' html
    cabal run fls-shake -- -C '..' hs
    ```

**If you encounter any problems, please read the rest of these instructions
(especially the [Troubleshooting][] section) and open a [New Issue][] if necessary**.

---

## Updating nixpkgs

To update the default nixpkgs used to build the derivations, run

```bash
niv update nixpkgs -r <revision>
```

or

```bash
niv update nixpkgs -v <version>
```

For example:

```bash
niv update nixpkgs -r 4e329926df7ee5fa49929a83d31ee7d541f8b45c
niv update nixpkgs -v 21.11.337905.902d91def1e
```

---

## Troubleshooting

+  **Problem**. After installing `fls-shake` as described above, the command 

   ```bash
   ./result/bin/fls-shake -- cardano-ledger.pdf
   ```

   produces error messages ending with the line

   ```bash
   latexmk: createProcess: exec: invalid argument (Bad file descriptor)
   ```


   **Root Causes**.  Most likely either `latexmk` is not installed or the `texlive` installation
   is missing some required components.


   1.  **`latexmk` is not installed**.

       Shake tried to run `latexmk`, but the command doesn't exist in the system's `PATH`.
       On Nix this gets injected via dependencies, but in a `cabal`-based setup, you
       need to manually install it.

       **Solution**

       +  Install `latexmk`.

          Follow the [official instructions][latexmk].

          For example, on Ubuntu,
          ```bash
          sudo apt update
          sudo apt install latexmk
          ```

       +  Install `latex`.

          Follow [the official instructions][latex].

          For example, on Ubuntu, `sudo apt install texlive-full` (or, for a minimal
          alternative, `sudo apt install texlive-latex-extra`).

       Once these dependencies are installed, verify with `latexmk --version`,
       and then re-run the command that failed (e.g., `cabal run fls-shake -- cardano-ledger.pdf`.)


   2.  `PATH` issues inside `cabal run`.

       If you have `latexmk` installed but it's still not found, you may need to make
       sure it's in your shell `PATH`.


+  **Problem**. After installing `fls-shake` as described above, the command 

   ```bash
   ./result/bin/fls-shake -- cardano-ledger.pdf
   ```

   produces error messages containing the line

   ```bash
   commitBuffer: invalid argument (cannot encode character '\8474')
   ```

   +  **Root Cause**.  Most likely Agda is trying to write a character (Ⅎ, U+2112)
      into a file or stdout using the wrong encoding — probably ASCII or Latin-1.

   +  **Solution**: Ensure Agda runs in a UTF-8 locale.

      Option 1: Set `LANG/LC_ALL` manually when running

      ```bash
      LC_ALL=en_US.UTF-8 ./result/bin/fls-shake -- cardano-ledger.pdf
      ```

      Option 2: Add locale settings globally in your shell:

      ```bash
      export LANG=en_US.UTF-8
      export LC_ALL=en_US.UTF-8
      ```

      Then try the `fls-shake` command again.

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
