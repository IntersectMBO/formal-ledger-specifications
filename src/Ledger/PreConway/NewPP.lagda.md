---
source_branch: master
source_path: src/Ledger/PreConway/NewPP.lagda.md
---

# Protocol Parameters Update {#sec:protocol-parameters-update}

<!--
```agda
{-# OPTIONS --safe #-}

open import Relation.Nullary.Decidable

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

module Ledger.PreConway.NewPP (txs : _) (open TransactionStructure txs) where

open import Ledger.PreConway.PPUp txs

record NewPParamEnv : Type where
--  field
```
-->

## Types and Functions for the <span class="AgdaDatatype">NEWPP</span> Transition System {#sec:types-and-functions-for-the-newpp-transition-system}

```agda
record NewPParamState : Type where
  field
    pparams  : PParams
    ppup     : PPUpdateState

updatePPUp : PParams → PPUpdateState → PPUpdateState
updatePPUp pparams record { fpup = fpup }
  with allᵇ ¿ isViableUpdate pparams ¿¹ (range fpup)
... | false  = record { pup = ∅ᵐ    ; fpup = ∅ᵐ }
... | true   = record { pup = fpup  ; fpup = ∅ᵐ }

votedValue : ProposedPPUpdates → PParams → ℕ → Maybe PParamsUpdate
votedValue pup pparams quorum =
  case any? (λ u → lengthˢ (pup ∣^ fromList [ u ]) ≥? quorum) (range pup) of λ where
    (no  _)        → nothing
    (yes (u , _))  → just u
```

<!--
```agda
instance
  unquoteDecl HasCast-NewPParamState = derive-HasCast
    [ (quote NewPParamState , HasCast-NewPParamState) ]

private variable
  Γ : NewPParamEnv
  s s' : NewPParamState
  upd : PParamsUpdate
```
-->

## The <span class="AgdaDatatype">NEWPP</span> Transition System {#sec:the-newpp-transition-system}

```agda
data _⊢_⇀⦇_,NEWPP⦈_ : NewPParamEnv → NewPParamState → Maybe PParamsUpdate → NewPParamState → Type where

  NEWPP-Accept : ∀ {Γ} → let open NewPParamState s; newpp = applyUpdate pparams upd in
    viablePParams newpp
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ just upd ,NEWPP⦈ ⟦ newpp , updatePPUp newpp ppup ⟧

  NEWPP-Reject : ∀ {Γ} →
    Γ ⊢ s ⇀⦇ nothing ,NEWPP⦈ s
```
