---
source_branch: master
source_path: src/Ledger/Conway/Specification/Gov/Properties/ChangePPGroup.lagda.md
---

## Claim: <span class="AgdaRecord">PParam</span> updates have non-empty groups {#clm:ChangePPGroup}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Gov.Properties.ChangePPGroup
  (txs : _) (open TransactionStructure txs)
  where

open import Ledger.Prelude

instance
  _ : IsSet TxBody GovProposal
  _ = record { toSet = fromList ∘ TxBody.txGovProposals }
```
-->

*Informally*.

Let `p`{.AgdaBound} : `GovProposal`{.AgdaRecord} be a governance proposal and suppose the
`GovActionType`{.AgdaDatatype} of `p`{.AgdaBound} `.action`{.AgdaField} is `ChangePParams`{.AgdaInductiveConstructor}.
If the data field of `p`{.AgdaBound}—that is
`pu`{.AgdaBound} = `p`{.AgdaBound} `.action`{.AgdaField} `.gaData`{.AgdaField}—is
denoted by `pu`{.AgdaBound} (for "parameter update"), then the set
`updateGroups`{.AgdaField} `pu`{.AgdaBound} is nonempty.


*Formally*.

```agda
ChangePPHasGroup : {tx : Tx} {p : GovProposal} (pu : PParamsUpdate)
  → p ∈ Tx.body tx → p .GovProposal.action ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ
  → Type
ChangePPHasGroup pu _ _ = updateGroups pu ≢ ∅
```

*Proof*. (coming soon)
