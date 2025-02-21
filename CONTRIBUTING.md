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


## Setup with nix-shell

`nix-shell` provides Agda complete with the correct dependencies. So you should be able to run your preferred editor within `nix-shell` and it should see the required `agda` executable.

For instructions _not using_ `nix-shell`, check [Setup without nix-shell](setup-without-nix-shell).

## Working on libraries

To work simultaneously on the ledger and one of its dependencies, the easiest way to do this is to remove the library from the ledger's `.agda-lib` file and add its path to the `include:` section. Then, when finished, push the changes to the library, then update `default.nix` to point to your new commit.

Warning: Don't forget to update the SHA when updating `default.nix`. Nix will fail silently on your local machine if you do that. Just change a few characters, run `nix-build -A ledger` and nix will tell you the correct hash to put there.

## Building the PDF quickly

The Makefile can be used to build the PDF without having to build everything else. Either run `make` from within `nix-shell`, or use
```
nix-shell --command 'make docs'
```
to run `make` without launching an interactive shell.

This combines well with the ability to invoke the TeX backend of Agda within Emacs,
which is much faster when you have already loaded an Agda file/interface.

## Building other artifacts

Apart from the PDF specification, the `Makefile` can be used to also generate the following:
- `make html`: generate HTML under `dist/html/`
- `make hs`: generate Haskell code under `dist/MAlonzo/`
- `make hsTest`: run the Haskell tests of each Agda formalisation
- `make staticWebsite`: gather all resources above in a central webpage `dist/index.html`

If you only want to command to affect a single project, prefix with `<project>.`, e.g.
```
$ make ledger.html
$ make midnight.hs
```

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

## Setup without nix-shell

- Install Agda version `2.7.0` (e.g. follow the instructions in <https://agda.readthedocs.io/en/v2.7.0/getting-started/installation.html#step-1-install-agda>
).
- In a folder `LIB`, clone the dependencies
    + [agda-stdlib](https://github.com/agda/agda-stdlib)
    + [agda-stdlib-classes](https://github.com/agda/agda-stdlib-classes)
    + [agda-stdlib-meta](https://github.com/agda/agda-stdlib-meta)
    + [agda-sets](https://github.com/input-output-hk/agda-sets)
and checkout the commits/tags found in `default.nix` (e.g. `v2.1.1` for `agda-stdlib-meta`).
- Create a file `LIB/libraries` with the following content:
```
LIB/agda-stdlib/standard-library.agda-lib
LIB/agda-stdlib-classes/agda-stdlib-classes.agda-lib
LIB/agda-stdlib-meta/agda-stdlib-meta.agda-lib
LIB/agda-sets/abstract-set-theory.agda-lib
```
- Instead of `agda` use `agda --library-file LIB/libraries`. For example, to typecheck `Everything.agda`:
  ```
  cd src/
  agda --library-file LIB/libraries Everything.agda
  ```

  To build targets from the Makefile (e.g. see [Building other artifacts](building-other-artifacts)), use:
  ```
  AGDA="agda --library-file LIB/libraries" make html
  ```

## Maintainer

This repository is maintained by @WhatisRT.


[Agda]: https://wiki.portal.chalmers.se/agda/pmwiki.php
[Agda standard library style guide]: https://github.com/agda/agda-stdlib/blob/master/notes/style-guide.md
