# Agda ledger

## Building the derivations

Run `nix-build` with the desired derivation, for example:

```
nix-build -A agda
nix-build -A agdaLedger
nix-build -A ledger.executableSpec
nix-build -A ledger.docs
nix-build -A midnight.executableSpec
nix-build -A midnight.docs
```
## How to run the ledger in ghci

```
nix-shell --command "cabal repl --build-depends 'agda-ledger-executable-spec, agda-ledger-executable-spec-midnight'"
λ> :m HSLedgerTest
λ> main
```

## Setup with emacs

We rely on a patched Agda and stdlib, which makes setup more difficult. You can also install it using `nix-env -iA agda -f .`, but this is a global install, which you may not want if you also have other Agda projects.

To install it locally and use that install with emacs, you can do the following:

- Put the version of Agda specified in the nix file somewhere: `nix-build -A agda -o ~/IOHK/ledger-agda`.
- Put the following into your init file (highlight and `M-x eval-region` to load it without restarting emacs):
```
(setq my/ledger-agda-name "~/IOHK/ledger-agda")
(defun my/toggle-ledger-agda ()
  (interactive)
  (if (string-equal agda2-program-name "agda")
      (setq agda2-program-name (concat my/ledger-agda-name "/bin/agda"))
    (setq agda2-program-name "agda"))
  (agda2-restart))
(with-eval-after-load 'agda2-mode (define-key agda2-mode-map (kbd "C-c C-x C-t") 'my/toggle-ledger-agda))
```
You can then use `M-x my/toggle-ledger-agda` or `C-c C-x C-t` to switch between your regular install of Agda and the locally installed version.

There are other options as well, but this should work with all kinds of custom emacs setups or distributions (assuming there isn't already some other stuff going on with your Agda setup).

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
`niv update nixpkgs -r 4e329926df7ee5fa49929a83d31ee7d541f8b45c`
`niv update nixpkgs -v 21.11.337905.902d91def1e`