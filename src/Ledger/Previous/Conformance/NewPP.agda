
{-# OPTIONS --safe #-}

open import Relation.Nullary.Decidable

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Previous.Conformance.NewPP (txs : _) (open TransactionStructure txs) where

open import Ledger.Previous.Conformance.PPUp txs

record NewPParamEnv : Type where
--  field

record NewPParamState : Type where
  field
    pparams  : PParams
    ppup     : PPUpdateState

instance
  unquoteDecl HasCast-NewPParamState = derive-HasCast
    [ (quote NewPParamState , HasCast-NewPParamState) ]

updatePPUp : PParams → PPUpdateState → PPUpdateState
updatePPUp pparams record { fpup = fpup }
  with allᵇ ¿ isViableUpdate pparams ¿¹ (range fpup)
... | false  = record { pup = ∅ᵐ    ; fpup = ∅ᵐ }
... | true   = record { pup = fpup  ; fpup = ∅ᵐ }

votedValue : ProposedPPUpdates → PParams → ℕ → Maybe PParamsUpdate
votedValue pup pparams quorum =
  case any? (λ u → lengthˢ (pup ∣^ fromList [ u ]) ≥? quorum) (range pup) of
    λ  where
       (no  _)        → nothing
       (yes (u , _))  → just u

private variable
  Γ : NewPParamEnv
  s s' : NewPParamState
  upd : PParamsUpdate

data _⊢_⇀⦇_,NEWPP⦈_ : NewPParamEnv → NewPParamState → Maybe PParamsUpdate → NewPParamState → Type where

  NEWPP-Accept : ∀ {Γ} → let open NewPParamState s; newpp = applyUpdate pparams upd in
    viablePParams newpp
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ just upd ,NEWPP⦈ ⟦ newpp , updatePPUp newpp ppup ⟧

  NEWPP-Reject : ∀ {Γ} →
    Γ ⊢ s ⇀⦇ nothing ,NEWPP⦈ s

