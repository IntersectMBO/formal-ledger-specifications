---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/ChangePPGroup.lagda.md
---

## Theorem: <span class="AgdaRecord">PParam</span> updates have non-empty groups at the LEDGER level {#thm:LEDGER-ChangePPGroup}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Ledger.Properties.ChangePPGroup
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov govStructure
open import Ledger.Conway.Specification.Gov.Properties.ChangePPGroup govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Data.List.Membership.Propositional.Properties using (∈-++⁺ˡ; ∈-map⁺)

instance
  _ : IsSet TxBody GovProposal
  _ = record { toSet = fromList ∘ TxBody.txGovProposals }
```
-->

*Informally*.

This module lifts the `GOVS-ChangePPHasGroup`{.AgdaFunction} property to the
`LEDGER`{.AgdaDatatype} rule as the following claim:

If `p : ``GovProposal`{.AgdaRecord} is a governance proposal carried by the
transaction `tx` and the `action`{.AgdaField} of `p` is a
`ChangePParams`{.AgdaInductiveConstructor} with parameter update
`pu : ``PParamsUpdate`{.AgdaField}, then the set `updateGroups`{.AgdaField}` pu` is
nonempty.

The transaction must be valid.  An invalid transaction takes the
`LEDGER-I`{.AgdaInductiveConstructor} rule, which never runs `GOVS`{.AgdaFunction},
so its proposals are not checked for well-formedness.  (They are also not recorded in
the governance state.)

*Formally*.

```agda
LEDGER-ChangePPHasGroup :
  {Γ     : LEnv}
  {s s'  : LState}
  {tx    : Tx}
  {p     : GovProposal}
  {pu    : PParamsUpdate}
  → Tx.isValid tx ≡ true
  → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
  → p ∈ TxBodyOf tx
  → GovActionOf p ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ
  → updateGroups pu ≢ ∅
```

*Proof*.

The `LEDGER-V`{.AgdaInductiveConstructor} rule feeds `txgov`{.AgdaFunction}
`txb = map inj₂ txGovProposals ++ map inj₁ txGovVotes` to
`GOVS`{.AgdaFunction}, so a proposal of the transaction occurs in that signal list,
and `GOVS-ChangePPHasGroup`{.AgdaFunction} applies.

```agda
LEDGER-ChangePPHasGroup refl (LEDGER-V⋯ _ _ _ govs) p∈ eq =
  GOVS-ChangePPHasGroup govs
    (∈-++⁺ˡ (∈-map⁺ inj₂ (Equivalence.from ∈-fromList p∈))) eq
LEDGER-ChangePPHasGroup refl (LEDGER-I⋯ () _) _ _
```
