# Contributing to the formal ledger specifications

## Style guidelines

We are currently aspiring to follow the [Agda standard library style guide][] as much as reasonable. Since some of our code will be rendered into a PDF, the formatting of the PDF takes priority over formatting of the code, so deviations are to be expected.

We also have a separate style guide for formatting the PDF: [PDF style guide](PDF-style-guide.md).

## Setup with emacs

We use Agda version 2.7 and various dependencies. You can install the correct version of Agda and the dependencies using `nix-env -iA agda -f .`, but this is a global install which you may not want if you also have other Agda projects.

To install Agda locally and use that install with emacs, you can do the following:

-  Build `agda` and `agda-mode` binaries by invoking the following: `nix-build -A agdaWithDeps -o ~/IOHK/ledger-agda`. You can replace `~/IOHK/ledger-agda` with whatever path you like, just make sure to replace it in `my/agda-versions` below as well.

   *Note*. You need not have built/installed Agda prior to invoking this `nix-build` command (though it's okay if you have).

   *Note*. To instruct the `Makefile` to use this local Agda binary, invoke it like so: `AGDA=~/IOHK/ledger-agda make -C src/`

-  Put the following into your init file (highlight and `M-x eval-region` to load it without restarting emacs).

   ```
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

   *Note*. This assumes that your regular install of Agda is in your path with the name `agda` and version `2.6.4`, otherwise you'll have to edit `my/agda-versions`.

   You can then use `M-x my/toggle-ledger-agda`, or `C-c C-x C-t`, to switch between your regular install of Agda and the locally installed version.

   There are other options as well, but this should work with all kinds of custom emacs setups or distributions (assuming there isn't already some other stuff going on with your Agda setup).

## Working on the formal ledger specification

For nix users, `nix-shell` provides Agda with the correct dependencies. You
should be able to run your preferred editor within `nix-shell` and it should see
the required `agda` executable.

For instructions to setup Agda without nix, check [Setup without
nix](#setup-without-nix).

To typecheck the formal specification, run:

```
agda src/Everything.agda
```

### Modifying the Agda libraries

To work simultaneously on the ledger and one of its dependencies, the easiest
way to do this is to remove the library from the ledger's `.agda-lib` file and
add its path to the `include:` section. 

When finished, push the changes to the library and update `default.nix` to point
to your new commit.

*Warning:* Don't forget to update the SHA when updating `default.nix`. Nix will
fail silently on your local machine if you do that. Just change a few
characters, run `nix-build -A ledger` and nix will tell you the correct hash to
put there.

## Working on the artifacts

The artifacts that `formal-ledger-specifications` provides are built using a
custom system written in the Haskell DSL [Shake](https://shakebuild.com/). The
file [`Shakefile.hs`](Shakefile.hs) contains the source code of the build
system. We refer to the build-system binary as `fls-shake`.

Depending on whether one uses nix or not, the commands given in the rest of this
instructions are to be run differently:

- For nix users, the commands should be executed using nix shell via:

    ```
    nix-shell --run COMMAND
    ```

    This ensures that the correct dependencies are in scope.

    As an example, the instructions to build the [html](#html)-hyperlinked Agda
    code specify to run the command:

    ```
    fls-shake html
    ```

    Using nix, the following should be run instead:
    ```
    nix-shell --run 'fls-shake html'
    ```

- For non nix users, the commands are to be executed verbatim, assuming
`fls-shake` and Agda and its dependencies are setup. For instructions on how to
compile `fls-shake` and set up Agda and its dependencies see [Setup without
nix](#setup-without-nix).

`fls-shake` uses three top level directories:

- `_build` to store intermediate build objects
- `.shake` to store build information
- `dist` to store built artifacts

### Building the artifacts

#### PDF

`fls-shake` provides two targets, `conway-ledger.pdf` and `cardano-ledger.pdf`,
to build the respective pdfs. For example:

```
fls-shake conway-ledger.pdf
```

produces the output `dist/conway-ledger.pdf`

In addition, `fls-shake` has internal rules to generate intermediate files.

Agda-generated `tex` files from literate Agda source code are stored in
`_build/latex.gen`. This are shared between pdf artifacts.

Pdf-artifact specific files are stored under `_build/target` (where e.g., the
target is `conway-ledger.pdf`, `_build/conway-ledger.pdf`).

The structure of `_build/target` is the following:

- `latex.in`: For verbatim latex related files copied from the top level `latex`
directory
- `latex.pp`: For post processed `tex` files from Agda-generated `tex` (e.g.,
applying [`agda2vec.py`](agda2vec.py))
- `latex.out`: For latex intermediate build files.

#### Haskell code (for conformance testing)

`fls-shake` provides a target to build the Haskell code:

```
fls-shake hs
```

this produces the output `dist/hs`

#### Html-hyperlinked Agda code

`fls-shake` provides a target to build the html:

```
fls-shake html
```

This produces the output `dist/html`

In addition, `fls-shake` has internal rules to generate intermediate files. This
are stored under `_build/html`. The structure of `_build/html` is as follows:

- `html.in` contains the Agda source code. Agda files are copied verbatim,
literate Agda files are `illiterated`
- `html.out` contains the output html

---

## Setup without nix

### Agda and its dependencies

+  Install Agda version `2.7.0` (e.g. follow the instructions in
   <https://agda.readthedocs.io/en/v2.7.0/getting-started/installation.html#step-1-install-agda>).

+  In a folder `LIB`, clone the dependencies
   + [agda-stdlib](https://github.com/agda/agda-stdlib)
   + [agda-stdlib-classes](https://github.com/agda/agda-stdlib-classes)
   + [agda-stdlib-meta](https://github.com/agda/agda-stdlib-meta)
   + [agda-sets](https://github.com/input-output-hk/agda-sets)

   ```
   mkdir -p LIB; cd LIB
   git clone --config advice.detachedHead=false --single-branch \
     -b "v2.2" https://github.com/agda/agda-stdlib.git
   git clone --config advice.detachedHead=false --single-branch \
     -b "v2.0" https://github.com/agda/agda-stdlib-classes.git
   git clone --config advice.detachedHead=false --single-branch \
     -b "v2.1.1" https://github.com/agda/agda-stdlib-meta.git
   git clone --config advice.detachedHead=false --single-branch \
     -b "master" https://github.com/input-output-hk/agda-sets.git
   ```

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

       ```
       AGDA_DIR=LIB agda src/Everything.agda
       ```

    +  To build the `conway-ledger.pdf` artifact, run:

       ```
       AGDA_DIR=LIB fls-shake conway-ledger.pdf
       ```

---

### `fls-shake`

`fls-shake` can be compiled from the file [`Shakefile.hs`](Shakefile.hs) using GHC.

For this, do the same as the derivation `fls-shake` in [default.nix](default.nix):

+  Install the packages it depends upon, which are listed under `nativeBuildInputs`

   haskellPackages.ghcWithPackages (ps: with ps;
                            ([ shake binary deepseq hashable ]))) ];
    buildPhase = ''
      ghc -o fls-shake Shakefile.hs -threaded
    '';
    installPhase = ''
      mkdir -p "$out/bin"
      cp fls-shake "$out/bin/"
    '';
  };


- Compile using the command under `buildPhase`

## Updating nixpkgs

To update the default nixpkgs used to build the derivations, run
```
niv update nixpkgs -r <revision>
```

or
```
niv update nixpkgs -v <version>
```

For example:
```
niv update nixpkgs -r 4e329926df7ee5fa49929a83d31ee7d541f8b45c
niv update nixpkgs -v 21.11.337905.902d91def1e
```


## Maintainer

This repository is maintained by @WhatisRT.


[Agda]: https://wiki.portal.chalmers.se/agda/pmwiki.php
[Agda standard library style guide]: https://github.com/agda/agda-stdlib/blob/master/notes/style-guide.md
