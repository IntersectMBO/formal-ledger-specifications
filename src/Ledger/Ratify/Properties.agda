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
    Γ (s : RatifyState) (sig : GovActionID × _)
    (let gid , st = sig)
    where
    open RatifyState s
    open RatifyEnv Γ; open GovActionState st
    es'  = compute ⟦ gid , treasury , currentEpoch ⟧ es action
    acc? = accepted? Γ es st
    exp? = expired? currentEpoch st
    del? = delayed? action prevAction es delay

    opaque
      acceptConds? : ∀ a → Dec (acceptConds Γ s a)
      acceptConds? _ = Dec-× ⦃ ⁇ accepted? _ _ _ ⦄
        ⦃ Dec-× ⦃ Dec-→ ⦃ ⁇ delayed? _ _ _ _ ⦄ ⦄ ⦃ ⁇ Computational⇒Dec' ⦄ ⦄ .dec

    RATIFIES'-total : ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFIES'⦈ s'
    RATIFIES'-total
      with acceptConds? sig | exp?
    ... | yes p@(_ , _ , (_ , q)) | _ = -, RATIFIES-Accept (p , q)
    ... | no ¬p | no ¬a = -, RATIFIES-Continue (¬p , ¬a)
    ... | no ¬p | yes a = -, RATIFIES-Reject (¬p , a)

    computeProof = success {Err = ⊥} RATIFIES'-total

    RATIFIES'-completeness : ∀ s' → Γ ⊢ s ⇀⦇ sig ,RATIFIES'⦈ s' → RATIFIES'-total .proj₁ ≡ s'
    RATIFIES'-completeness stʳ (RATIFIES-Accept (p , a)) with acceptConds? sig
    ... | no ¬h = ⊥-elim (¬h p)
    ... | yes (_ , _ , _ , h) = cong (λ stᵉ → ⟦ stᵉ , _ , _ ⟧) $ computational⇒rightUnique Computational-ENACT h a
    RATIFIES'-completeness s' (RATIFIES-Reject (¬p , a))
      rewrite dec-no (acceptConds? _) ¬p | dec-yes exp? a .proj₂ = refl
    RATIFIES'-completeness s' (RATIFIES-Continue (¬p , ¬a))
      rewrite dec-no (acceptConds? _) ¬p | dec-no exp? ¬a = refl

    completeness = cong (success {Err = ⊥}) ∘₂ RATIFIES'-completeness

instance
  Computational-RATIFIES' : Computational _⊢_⇀⦇_,RATIFIES'⦈_ ⊥
  Computational-RATIFIES' = record {Implementation}

Computational-RATIFIES : Computational _⊢_⇀⦇_,RATIFIES⦈_ ⊥
Computational-RATIFIES = it

RATIFIES-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s'
RATIFIES-total = ReflexiveTransitiveClosure-total (Implementation.RATIFIES'-total _ _ _)

RATIFIES-complete : ∀ {Γ s sig s'} →
  Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s' → RATIFIES-total {Γ} {s} {sig} .proj₁ ≡ s'
RATIFIES-complete = computational⇒rightUnique Computational-RATIFIES (RATIFIES-total .proj₂)

opaque
  RATIFIES-total' : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s'
  RATIFIES-total' = RATIFIES-total

  RATIFIES-complete' : ∀ {Γ s sig s'} →
    Γ ⊢ s ⇀⦇ sig ,RATIFIES⦈ s' → RATIFIES-total' {Γ} {s} {sig} .proj₁ ≡ s'
  RATIFIES-complete' = RATIFIES-complete
