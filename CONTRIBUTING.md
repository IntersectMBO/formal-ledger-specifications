# Contributing to the formal ledger specifications

## Style guidelines

We are currently aspiring to follow the [Agda standard library style guide][] as much as reasonable. Since some of our code will be rendered into a PDF, the formatting of the PDF takes priority over formatting of the code, so deviations are to be expected.

## Setup with emacs

We use Agda version 2.6.3 and a patched version of the Agda Standard Library; this makes setup more difficult. You can install the correct version of Agda and the stdlib using `nix-env -iA agda -f .`, but this is a global install which you may not want if you also have other Agda projects.

To install Agda locally and use that install with emacs, you can do the following:

-  Build `agda` and `agda-mode` binaries by invoking the following: `nix-build -A agda -o ~/IOHK/ledger-agda`

   *Note*. You need not have built/installed Agda prior to invoking this `nix-build` command (though it's okay if you have).

-  Put the following into your init file (highlight and `M-x eval-region` to load it without restarting emacs).

   ```
   (setq my/ledger-agda-name "~/IOHK/ledger-agda")
   (defun my/toggle-ledger-agda ()
     (interactive)
     (if (string-equal agda2-program-name "agda")
         (setq agda2-version      "2.6.3"
               agda2-program-name (concat my/ledger-agda-name "/bin/agda"))
       (setq agda2-version      "2.6.2.2"
             agda2-program-name "agda"))
     (agda2-restart))
   (with-eval-after-load 'agda2-mode (define-key agda2-mode-map (kbd "C-c C-x C-t") 'my/toggle-ledger-agda))
   ```

   *Note*. This assumes that your regular install of Agda is in your path with the name `agda` and version `2.6.2.2`, otherwise you'll have to edit these variables.

   You can then use `M-x my/toggle-ledger-agda`, or `C-c C-x C-t`, to switch between your regular install of Agda and the locally installed version.

   There are other options as well, but this should work with all kinds of custom emacs setups or distributions (assuming there isn't already some other stuff going on with your Agda setup).


## Setup with nix-shell

`nix-shell` provides Agda complete with the correct dependencies. So you should be able to run your preferred editor within `nix-shell` and it should see the required `agda` executable.

## Building the PDF quickly

The Makefile can be used to build the PDF without having to build everything else. Either run `make` from within `nix-shell`, or use
```
nix-shell --command make
```
to run `make` without launching an interactive shell.

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
