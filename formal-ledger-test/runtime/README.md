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
The Haskell artifact CI job runs these regressions after extraction and before
upload; the pinned development shell provides GHC with both required packages.

The fixtures cover ordinary setup, top/child activation at protocol majors 11
and 12, protected key witness obligations, native script/redeemer obligations,
original output-index domains and pointers, exact top/child collection counts for
identical Receiving outputs and the same script under distinct purposes,
distinct per-output redeemers and execution budgets, interleaved ordinary/key/native
outputs, and parent/child index isolation,
output-only reference-script rejection, V1 versus V2/V3 reference visibility,
protected collateral return rejection on both validity paths, and collateral-only
state effects for top and child Receiving failures. The execution-budget
fixtures independently test below-limit admission, equality admission and
rejection when either memory or steps exceeds its maximum.

Four complete-state regressions additionally compare ordinary enactment/epoch
baselines at major 12 with hard-fork enactment and epoch application at major 13.
They require the authoritative enactment version and stored protocol-parameter
version to agree, while retaining the parameter-update chain identity.

Thirteen committee-selection regressions preserve registered zero-stake/keyless
seats, disabled size, fractional positive weights, identity tie breaks, top-K
selection, unregistered-pool exclusion and honored/expired keys. The foreign
global constants imply a four-epoch key lifetime; the key-age assertions state
that premise and do not claim arbitrary network-global agreement.
Four of these exercise composed `newEpochStep`: a single delegator with stake 4,
two delegators with stakes 1+3 or 2+2, and a top-K boundary with another pool.
They require one exact list seat per pool, so repeated internal stake-relation
entries cannot consume another registered pool's slot. These reach the internal
aggregation path that duplicate foreign map inputs alone do not exercise.

These are executable model regressions under its explicit foreign premises:
`utxowStep` uses the dummy abstract evaluator and signature verifier;
`ledgerStep` fixtures separately choose a rejecting evaluator. They establish
structural obligations and modeled state effects under those choices. They do
not establish actual UPLC evaluation, script context encoding, concrete DSIGN,
script fees, integrity hashing or multiasset collateral algebra. The ledger
conformance runner uses actual DSIGN verification and has the model/concrete
coverage boundary documented in `CIP160.md`.

The foreign HSSet and HSMap expose list presentations of mathematical sets and
maps; those lists can contain repeated equal entries. Domain observations and
the composed epoch's resulting stake map therefore compare semantic sets,
while Receiving domain assertions retain every distinct output index, including
identical outputs, and pointer assertions require the original body-local index.
Committee seats are lists: their exact comparison never removes duplicate seats.
