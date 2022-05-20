# Agda ledger

## How to run the ledger in ghci

```
nix-shell --command "cabal repl --build-depends 'agda-ledger-executable-spec'"
λ> :m HSLedgerTest
λ> main
```
