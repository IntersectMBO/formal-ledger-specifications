This module provides the model used to do conformance testing of the Haskell
implementation of the Ledger.

The conformance model differs from the Conway specification in how deposits are
stored in the Ledger state.

In the Conway specification, deposits are stored in `LState.utxoSt.deposits`.
The conformance model, on the other hand, separates deposits in three disjoint
maps:

* `LState.utxoSt.deposits`{.AgdaField}
* `LState.certState.dState.deposits`{.AgdaField}
* `LState.certState.gState.deposits`{.AgdaField}

## Motivation

The conformance model follows the way in which the Haskell implementation stores
the deposits, which makes possible to compare the behaviors of the conformance
model and the implementation of the `UTXOS`{.AgdaDatatype} rule.

The UTXOS rule transforms `UTxOState`s. While the specification updates the
deposits in this rule, the implementation cannot do so because its input state
does not contain the deposits in `DState` and `GState`.

Other rules which use `UTXOS`{.AgdaDatatype} are in a similar predicament,
namely `UTXO`{.AgdaDatatype} and `UTXOW`{.AgdaDatatype}. The
`LEDGER`{.AgdaDatatype} rule, which uses `UTXOW`{.AgdaDatatype}, is the first
rule where the implementation has all the state necessary to reconstruct the
full deposits that the specification needs.

## Guarantees

Since we still want to check that the implementation behaves as the
specification, there is a proof of the equivalence between the conformance model
and the specification:

* `Ledger.Conway.Conformance.Equivalence.bisimilarityProof`{.AgdaBound}

## Alternatives

Rather than providing a conformance model, we could have changed the Conway
specification to match the implementation way of storing deposits. However,
there are trade offs to consider. Putting the deposits together in one place
makes some proofs simpler, while splitting them as in the implementation makes
more convenient to write the update functions for the separated pieces.

While we could decide the tradeoff for a particular implementation, it would be
difficult to adjust the specification when multiple implementations need to be
accommodated.

Yet another option could have been to skip testing specifically for the
`UTXOS`{.AgdaDatatype} rule. This was a difficulty for testing, since spotting
differences in a rule is harder when it is combined with other rules like the
`LEDGER`{.AgdaDatatype} rule does.

```agda
{-# OPTIONS --safe #-}
module Ledger.Conway.Conformance where

import Ledger.Conway.Conformance.Certs
import Ledger.Conway.Conformance.Certs.Properties
import Ledger.Conway.Conformance.Chain
import Ledger.Conway.Conformance.Chain.Properties
import Ledger.Conway.Conformance.Equivalence
import Ledger.Conway.Conformance.Epoch
import Ledger.Conway.Conformance.Epoch.Properties
import Ledger.Conway.Conformance.Gov
import Ledger.Conway.Conformance.Ledger
import Ledger.Conway.Conformance.Ledger.Properties
import Ledger.Conway.Conformance.Properties
import Ledger.Conway.Conformance.Utxo
import Ledger.Conway.Conformance.Utxo.Properties
import Ledger.Conway.Conformance.Utxow
import Ledger.Conway.Conformance.Utxow.Properties
import Ledger.Conway.Conformance.Script
```
