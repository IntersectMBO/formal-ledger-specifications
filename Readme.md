# Agda ledger

## How to run the ledger in ghci

```
nix-shell --command "cabal repl --build-depends 'agda-ledger-executable-spec'"
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
(define-key agda2-mode-map (kbd "C-c C-x C-t") 'my/toggle-ledger-agda)
```
You can then use `M-x my/toggle-ledger-agda` or `C-c C-x C-t` to switch between your regular install of Agda and the locally installed version.

There are other options as well, but this should work with all kinds of custom emacs setups or distributions (assuming there isn't already some other stuff going on with your Agda setup).
