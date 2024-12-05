{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Ratify.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.Gov txs
open import Ledger.GovernanceActions.Properties govStructure
open import Ledger.Enact govStructure
open import Ledger.Ratify txs

open Computational ⦃...⦄ hiding (computeProof; completeness)

private
  module Implementation
    Γ (s : RatifyState) (sig : _ × _)
    (let ⟦ es , removed , d ⟧ʳ = s)
    (let gid , st = sig)
    where
    open RatifyEnv Γ; open GovActionState st
    es'  = compute ⟦ gid , treasury , currentEpoch ⟧ᵉ es action
    acc? = accepted? Γ es st
    exp? = expired? currentEpoch st
    del? = delayed? action prevAction es d

    opaque
      acceptConds? : ∀ a → Dec (acceptConds Γ s a)
      acceptConds? _ = Dec-× ⦃ ⁇ accepted? _ _ _ ⦄
        ⦃ Dec-× ⦃ Dec-→ ⦃ ⁇ delayed? _ _ _ _ ⦄ ⦄ ⦃ ⁇ Computational⇒Dec' ⦄ ⦄ .dec

    RATIFY'-total : ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
    RATIFY'-total
      with acceptConds? sig | exp?
    ... | yes p@(_ , _ , (_ , q)) | _ = -, RATIFY-Accept (p , q)
    ... | no ¬p | no ¬a = -, RATIFY-Continue (¬p , ¬a)
    ... | no ¬p | yes a = -, RATIFY-Reject (¬p , a)

    computeProof = success {Err = ⊥} RATIFY'-total

    RATIFY'-completeness : ∀ s' → Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s' → RATIFY'-total .proj₁ ≡ s'
    RATIFY'-completeness ⟦ x , _ , _ ⟧ʳ (RATIFY-Accept (p , a)) with acceptConds? sig
    ... | no ¬h = ⊥-elim (¬h p)
    ... | yes (_ , _ , _ , h) = cong ⟦_, _ , _ ⟧ʳ $ computational⇒rightUnique Computational-ENACT h a
    RATIFY'-completeness s' (RATIFY-Reject (¬p , a))
      rewrite dec-no (acceptConds? _) ¬p | dec-yes exp? a .proj₂ = refl
    RATIFY'-completeness s' (RATIFY-Continue (¬p , ¬a))
      rewrite dec-no (acceptConds? _) ¬p | dec-no exp? ¬a = refl

    completeness = cong (success {Err = ⊥}) ∘₂ RATIFY'-completeness

instance
  Computational-RATIFY' : Computational _⊢_⇀⦇_,RATIFY'⦈_ ⊥
  Computational-RATIFY' = record {Implementation}

Computational-RATIFY : Computational _⊢_⇀⦇_,RATIFY⦈_ ⊥
Computational-RATIFY = it

RATIFY-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
RATIFY-total = ReflexiveTransitiveClosure-total (Implementation.RATIFY'-total _ _ _)

RATIFY-complete : ∀ {Γ s sig s'} →
  Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s' → RATIFY-total {Γ} {s} {sig} .proj₁ ≡ s'
RATIFY-complete = computational⇒rightUnique Computational-RATIFY (RATIFY-total .proj₂)

opaque
  RATIFY-total' : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
  RATIFY-total' = RATIFY-total

  RATIFY-complete' : ∀ {Γ s sig s'} →
    Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s' → RATIFY-total' {Γ} {s} {sig} .proj₁ ≡ s'
  RATIFY-complete' = RATIFY-complete
