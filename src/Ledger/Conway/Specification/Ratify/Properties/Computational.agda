{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Ratify.Properties.Computational
  (txs : _) (open TransactionStructure txs) where

open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Enact.Properties.Computational govStructure
open import Ledger.Conway.Specification.Ratify txs

open Computational ⦃...⦄ hiding (computeProof; completeness)

private
  module Implementation
    Γ (s : RatifyState) (sig : GovActionID × _)
    (let gid , st = sig)
    where
    open RatifyState s
    open RatifyEnv Γ; open GovActionState st
    es'  = compute ⟦ gid , treasury , currentEpoch ⟧ es action
    acc? = accepted? Γ es st
    exp? = expired? currentEpoch st
    del? = delayed? (action .gaType) prevAction es delay

    opaque
      acceptConds? : ∀ a → Dec (acceptConds Γ s a)
      acceptConds? _ = Dec-× ⦃ ⁇ accepted? _ _ _ ⦄
        ⦃ Dec-× ⦃ Dec-→ ⦃ ⁇ delayed? _ _ _ _ ⦄ ⦄ ⦃ ⁇ Computational⇒Dec' ⦄ ⦄ .dec

    RATIFY-total : ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
    RATIFY-total
      with acceptConds? sig | exp?
    ... | yes p@(_ , _ , (_ , q)) | _ = -, RATIFY-Accept (p , q)
    ... | no ¬p | no ¬a = -, RATIFY-Continue (¬p , ¬a)
    ... | no ¬p | yes a = -, RATIFY-Reject (¬p , a)

    computeProof = success {Err = ⊥} RATIFY-total

    RATIFY-completeness : ∀ s' → Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s' → RATIFY-total .proj₁ ≡ s'
    RATIFY-completeness stʳ (RATIFY-Accept (p , a)) with acceptConds? sig
    ... | no ¬h = ⊥-elim (¬h p)
    ... | yes (_ , _ , _ , h) = cong (λ stᵉ → ⟦ stᵉ , _ , _ ⟧) $ computational⇒rightUnique Computational-ENACT h a
    RATIFY-completeness s' (RATIFY-Reject (¬p , a))
      rewrite dec-no (acceptConds? _) ¬p | dec-yes exp? a .proj₂ = refl
    RATIFY-completeness s' (RATIFY-Continue (¬p , ¬a))
      rewrite dec-no (acceptConds? _) ¬p | dec-no exp? ¬a = refl

    completeness = cong (success {Err = ⊥}) ∘₂ RATIFY-completeness

instance
  Computational-RATIFY : Computational _⊢_⇀⦇_,RATIFY⦈_ ⊥
  Computational-RATIFY = record {Implementation}

Computational-RATIFIES : Computational _⊢_⇀⦇_,RATIFIES⦈_ ⊥
Computational-RATIFIES = it

RATIFIES-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s'
RATIFIES-total = ReflexiveTransitiveClosure-total (Implementation.RATIFY-total _ _ _)

RATIFIES-complete : ∀ {Γ s sig s'} →
  Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s' → RATIFIES-total {Γ} {s} {sig} .proj₁ ≡ s'
RATIFIES-complete = computational⇒rightUnique Computational-RATIFIES (RATIFIES-total .proj₂)

opaque
  RATIFIES-total' : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s'
  RATIFIES-total' = RATIFIES-total

  RATIFIES-complete' : ∀ {Γ s sig s'} →
    Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s' → RATIFIES-total' {Γ} {s} {sig} .proj₁ ≡ s'
  RATIFIES-complete' = RATIFIES-complete

  RATIFIES-deterministic : ∀ {Γ s sig s' s''}
    → Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s'
    → Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s''
    → s' ≡ s''
  RATIFIES-deterministic p₁ p₂ = trans (sym (RATIFIES-complete' p₁)) (RATIFIES-complete' p₂)

  RATIFIES-deterministic-≡ : ∀ {Γ Γ' s s' sig sig' s'' s'''}
    → Γ ≡ Γ'
    → s ≡ s'
    → sig ≡ sig'
    → Γ  ⊢ s  ⇀⦇ sig  ,RATIFIES⦈ s''
    → Γ' ⊢ s' ⇀⦇ sig' ,RATIFIES⦈ s'''
    → s'' ≡ s'''
  RATIFIES-deterministic-≡ refl refl refl = RATIFIES-deterministic
