# Conformance-testing example

This folder includes an example for conformance testing the Agda-generated
Haskell code.

`conformance-example` is a [`cabal`](https://www.haskell.org/cabal/) package. We
also provide a nix derivation to setup the correct dependencies.

## Usage

```
cabal repl
> :m Lib
> :i UTxOState
```
