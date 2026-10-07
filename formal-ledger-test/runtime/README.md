# Receiving extracted regressions

`Receiving.hs` contains independently authored fixtures against the public
Haskell API generated from the Agda specification. It imports no ledger target
implementation and does not edit generated MAlonzo sources. Generate the real
artifact with `fls-shake hs`, then run from the repository:

```sh
formal-ledger-test/runtime/run-receiving.sh
```

The GHC environment needs `text` and `ieee754`, as the generated package does.
`FLS_GHC` selects a compiler; `FLS_RUNTIME_BUILD_DIR` can retain/reuse the compiled
fixture dependencies. The driver ignores ambient GHC package environments.

The fixtures cover ordinary setup, top/child activation at protocol majors 11
and 12, protected key witness obligations, native script/redeemer obligations,
grouped domains and canonical pointers, output-only reference-script rejection,
protected collateral return rejection on both validity paths, and collateral-only
state effects for top and child Receiving failures. The execution-budget
fixtures independently test below-limit admission, equality admission and
rejection when either memory or steps exceeds its maximum.

These are executable model regressions under its explicit foreign premises:
`utxowStep` uses the dummy abstract evaluator and signature verifier;
`ledgerStep` fixtures separately choose a rejecting evaluator. They establish
structural obligations and modeled state effects under those choices. They do
not establish actual UPLC evaluation, script context encoding, concrete DSIGN,
script fees, integrity hashing or multiasset collateral algebra. The ledger
conformance runner uses actual DSIGN verification and has the model/concrete
coverage boundary documented in `CIP160.md`.
