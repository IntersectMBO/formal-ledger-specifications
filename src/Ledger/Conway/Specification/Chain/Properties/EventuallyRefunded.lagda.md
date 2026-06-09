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

open import Ledger.Core.Specification.Epoch
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov.Actions govStructure hiding (yes; no)
open import Ledger.Prelude
```
-->

*Informally*.

Every governance action carries a deposit (a `GovActionDeposit`{.AgdaInductiveConstructor}
entry in the deposit pot of the `UTxOState`{.AgdaRecord}) which is held only while the
action is part of the governance state.  Each action also records an
`expiresIn`{.AgdaField} epoch in its `GovActionState`{.AgdaRecord}.  Once that epoch
has passed, the `EPOCH`{.AgdaDatatype} transition (run as part of `CHAIN`{.AgdaDatatype}
whenever a block advances the epoch) removes the action from the governance state and
refunds its deposit.

Hence, for every `ChainState`{.AgdaRecord} `cs`{.AgdaBound} and every governance action
deposit still held in `cs`{.AgdaBound}, there is an epoch `e`{.AgdaBound} (namely, just
after the action's `expiresIn`{.AgdaField}) such that, once the chain has progressed to
`e`{.AgdaBound} (i.e. a block has been produced in epoch `e`{.AgdaBound} or later), the
deposit is no longer in the deposit pot.

*Formally*.

We first record what it means for a governance action deposit to still be held in a
chain state, and we close `CHAIN`{.AgdaDatatype} under composition along a list of
blocks.

```agda
-- The deposit pot of `cs` still holds the deposit for the governance action `gaid`.
gaDepositInPot : ChainState → GovActionID → Type
gaDepositInPot cs gaid = GovActionDeposit gaid ∈ dom (DepositsOf cs)

-- Reflexive-transitive closure of CHAIN along a list of blocks.
data CHAINStar : ChainState → List Block → ChainState → Type where
  []*  : ∀ {cs} → CHAINStar cs [] cs
  _∷*_ : ∀ {cs cs' cs'' b bs}
       → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
       → CHAINStar cs' bs cs''
       → CHAINStar cs (b ∷ bs) cs''
```

The property then states that every held governance action deposit is eventually
refunded:

```agda
GADepositsEventuallyRefunded : Type
GADepositsEventuallyRefunded = ∀ {cs : ChainState} {gaid : GovActionID}
  → gaDepositInPot cs gaid
  → Σ[ e ∈ Epoch ] (∀ {bs : List Block} {cs' : ChainState}
      → CHAINStar cs bs cs'
      → e ≤ LastEpochOf cs'
      → ¬ gaDepositInPot cs' gaid)
```

*Proof*. (coming soon)
