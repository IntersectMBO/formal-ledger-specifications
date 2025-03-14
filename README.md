# Formal ledger specifications

This repository contains the formal ledger specifications that are intended to eventually replace the existing formal specifications of the Cardano ledger found [here](https://github.com/IntersectMBO/cardano-ledger). This project is currently incomplete and work in progress.

This repository currently contains the work-in-progress specification for Cardano (up to and including the Conway era). The specification is executable and contains some documentation in the form of a PDF document. It can be built by following the steps below.

Formal Specification | HTML Version | Haskell Tests |
----------------------|--------------|---------------|
[Full Cardano Ledger](https://IntersectMBO.github.io/formal-ledger-specifications/pdfs/cardano-ledger.pdf) | [Html](https://IntersectMBO.github.io/formal-ledger-specifications/html/Html.html) | [UTXOW test](https://IntersectMBO.github.io/formal-ledger-specifications/haskell/Ledger/test/UtxowSpec.hs) |
[Conway](https://IntersectMBO.github.io/formal-ledger-specifications/pdfs/conway-ledger.pdf) | [Html](https://IntersectMBO.github.io/formal-ledger-specifications/html/Html.html) | [UTXOW test](https://IntersectMBO.github.io/formal-ledger-specifications/haskell/Ledger/test/UtxowSpec.hs) |

Note: the HTML version of the specification is interactive, but many modules currently contain LaTeX code which is used to generate the PDF. We intend to fix this eventually.

--------------------

## Build and Test the Formal Spec

### Clone this repository and enter its directory

```
git clone https://github.com/IntersectMBO/formal-ledger-specifications.git
cd formal-ledger-specifications
```


### Build the spec using nix-build

Invoke the following `nix-build` commands from inside the `formal-ledger-specifications` directory.

```
nix-build -A ledger.docs      # generate the PDF spec of the Cardano ledger
nix-build -A ledger.hsSrc     # extract the Haskell code of the Cardano ledger
```

### Test the spec using nix-shell

The `hsExe` is a `cabal` package, which can be loaded into GHCI like this:

```
nix-shell -A run --command "cabal repl --build-depends 'cardano-ledger'"
λ> :m Lib
λ> :i UTxOState
```

Building the `hsExe` derivation will also run the test suite, which you can manually do using `cabal test`.



## Contributions and Feedback

If you would like more detailed information and/or you want to contribute to the Agda formalization of the spec, please see the [CONTRIBUTING.md](CONTRIBUTING.md) file.

Please [submit a new issue][] if you find problems with, and/or wish to comment on, this repository.

[submit a new issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
