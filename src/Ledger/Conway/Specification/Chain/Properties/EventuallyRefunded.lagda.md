---
source_branch: master
source_path: src/Ledger/Conway/Specification/Chain/Properties/EventuallyRefunded.lagda.md
---

## Claim: Governance action deposits are eventually refunded {#clm:EventuallyRefunded}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Chain.Properties.EventuallyRefunded
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Base txs abs
open import Ledger.Prelude
```
-->

*Informally*.

Every governance action carries a deposit (a `GovActionDeposit`{.AgdaInductiveConstructor}
entry in the `UTxOState`{.AgdaRecord}) which is held only while the action is part of
the governance state.  Each action also records an `expiresIn`{.AgdaField} epoch in
its `GovActionState`{.AgdaRecord}.

Once that epoch has passed, the `EPOCH`{.AgdaDatatype} transition (run as part of
`CHAIN`{.AgdaDatatype} whenever a block advances the epoch) removes the action from
the governance state and refunds its deposit.

Hence, for every `ChainState`{.AgdaRecord} `cs`{.AgdaBound} satisfying
`govDepsMatch`{.AgdaFunction} and every governance action deposit still held in
`cs`{.AgdaBound}, there is an epoch `e`{.AgdaBound} (namely, just after the action's
`expiresIn`{.AgdaField}) such that, once the chain has progressed to `e`{.AgdaBound},
the deposit is no longer in the deposit pot.[^1]

The precondition `govDepsMatch`{.AgdaFunction} is needed to ensure that every
`GovActionDeposit`{.AgdaInductiveConstructor} entry has a corresponding
`GovActionState`{.AgdaRecord} in the governance state (from which we read
the `expiresIn`{.AgdaField} epoch).  Without the precondition, "orphan" deposit
entries with no matching governance action would never be removed.

The predicate `govDepsMatch`{.AgdaFunction} is a known `CHAIN`{.AgdaDatatype}
invariant.[^2]

*Formally*.

We first record what it means for a governance action deposit to still be held in a
chain state, and we close `CHAIN`{.AgdaDatatype} under composition along a list of
blocks.

```agda
-- The deposits of `cs` still holds the deposit for governance action `gaid`.
gaDepositInPot : ChainState → GovActionID → Type
gaDepositInPot cs gaid = GovActionDeposit gaid ∈ dom (DepositsOf cs)

-- Reflexive-transitive closure of CHAIN along a list of blocks.
data CHAINStar : ChainState → List Block → ChainState → Type where
  []*  : {cs : ChainState} → CHAINStar cs [] cs
  _∷*_ : {cs cs' cs'' : ChainState} {b : Block} {bs : List Block}
         → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
         → CHAINStar cs' bs cs''
         → CHAINStar cs (b ∷ bs) cs''
```

The property asserts that every held governance action deposit is eventually
refunded.  Formally,

```agda
GADepositsEventuallyRefunded : Type
GADepositsEventuallyRefunded = {cs : ChainState} {gaid : GovActionID}
  → govDepsMatch (LStateOf cs) → gaDepositInPot cs gaid
  → ∃[ e ] (  ∀ {bs cs'} → CHAINStar cs bs cs' → e ≤ LastEpochOf cs'
              → ¬ gaDepositInPot cs' gaid  )
```

*Proof*. (coming soon)

---

[^1]: "The chain has progressed to `e`{.AgdaBound}" holds when a block has been produced in epoch `e`{.AgdaBound} *or later*.
[^2]: See [`CHAIN-govDepsMatch`][Chain.Properties.GovDepsMatch] for the proof.
