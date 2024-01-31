{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Ratify.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.Gov txs
open import Ledger.GovernanceActions.Properties govStructure
open import Ledger.Enact govStructure
open import Ledger.Ratify txs

open Computational ⦃...⦄ hiding (computeProof; completeness)

pattern RATIFY-Continue₁  x y = RATIFY-Continue (inj₁ (x , y))
pattern RATIFY-Continue₂  x y = RATIFY-Continue (inj₂ (x , y))
pattern RATIFY-Continue₂₁ x y = RATIFY-Continue₂ x (inj₁ y)
pattern RATIFY-Continue₂₂ x y = RATIFY-Continue₂ x (inj₂ y)

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

    RATIFY'-total : ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
    RATIFY'-total
      with acc? | exp? | del?
    ... | no ¬acc | no ¬exp | _ = -, RATIFY-Continue₁ ¬acc ¬exp
    ... | no ¬acc | yes exp | _ = -, RATIFY-Reject ¬acc exp
    ... | yes acc | _ | yes del = -, RATIFY-Continue₂₁ acc del
    ... | yes acc | _ | no ¬del
      = caseCR es'
        ∣ (λ eq → -, RATIFY-Accept acc ¬del (≡-success⇔STS .Equivalence.to eq))
        ∣ (λ eq → -, RATIFY-Continue₂₂ acc (failure⇒∀¬STS eq))

    computeProof = success {Err = ⊥} RATIFY'-total

    RATIFY'-completeness : ∀ s' → Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s' → RATIFY'-total .proj₁ ≡ s'
    RATIFY'-completeness s' (RATIFY-Continue₁ ¬acc ¬exp)
      rewrite dec-no acc? ¬acc | dec-no exp? ¬exp = refl
    RATIFY'-completeness s' (RATIFY-Reject ¬acc exp)
      rewrite dec-no acc? ¬acc | dec-yes exp? exp .proj₂ = refl
    RATIFY'-completeness s' (RATIFY-Continue₂₁ acc del)
      rewrite dec-yes acc? acc .proj₂ | dec-yes del? del .proj₂ = refl
    RATIFY'-completeness s' (RATIFY-Accept acc ¬del eq)
      rewrite dec-yes acc? acc .proj₂ | dec-no del? ¬del
      = cong proj₁
      $ caseCR-success
      $ Computational-ENACT .Computational.completeness _ _ _ _ eq
    RATIFY'-completeness s' (RATIFY-Continue₂₂ acc h)
      with del?
    ... | yes del
      rewrite dec-yes acc? acc .proj₂ | dec-yes del? del .proj₂ = refl
    ... | no ¬del
      rewrite dec-yes acc? acc .proj₂ | dec-no del? ¬del
      = cong proj₁
      $ caseCR-failure
      $ caseCR es'
        ∣ ⊥-elim ∘ h _ ∘ ≡-success⇔STS .Equivalence.to
        ∣ id

    completeness = cong (success {Err = ⊥}) ∘₂ RATIFY'-completeness

instance
  Computational-RATIFY' : Computational _⊢_⇀⦇_,RATIFY'⦈_ ⊥
  Computational-RATIFY' = record {Implementation}

Computational-RATIFY : Computational _⊢_⇀⦇_,RATIFY⦈_ (⊥ ⊎ ⊥)
Computational-RATIFY = it

RATIFY-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
RATIFY-total = ReflexiveTransitiveClosure-total (Implementation.RATIFY'-total _ _ _)

RATIFY-complete : ∀ {Γ s sig s'} →
  Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s' → RATIFY-total {Γ} {s} {sig} .proj₁ ≡ s'
RATIFY-complete = computational⇒rightUnique it (RATIFY-total .proj₂)
