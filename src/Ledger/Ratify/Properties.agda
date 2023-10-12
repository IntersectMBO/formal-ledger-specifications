{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Ratify.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.Gov govStructure
open import Ledger.Ratify txs

-- ** decision procedures
verifyPrev? : ∀ a h es → Dec (verifyPrev a h es)
verifyPrev? NoConfidence           h es = it
verifyPrev? (NewCommittee x x₁ x₂) h es = it
verifyPrev? (NewConstitution x x₁) h es = it
verifyPrev? (TriggerHF x)          h es = it
verifyPrev? (ChangePParams x)      h es = it
verifyPrev? (TreasuryWdrl x)       h es = it
verifyPrev? Info                   h es = it

delayed? : ∀ a h es d → Dec (delayed a h es d)
delayed? a h es d = let instance _ = verifyPrev? a h es in it

acceptedBy? : ∀ Γ es st role → Dec (acceptedBy Γ es st role)
acceptedBy? Γ record{ cc = cc , _ ; pparams = pparams , _ } st role
  with (let open RatifyEnv Γ; open GovActionState st; open PParams pparams
            votes' = actualVotes Γ cc votes action pparams
            cc' = dom votes'
            redStakeDistr = restrictedDists coinThreshold rankThreshold stakeDistrs
        in totalStake role cc' redStakeDistr votes')
... | zero  = it
... | suc n = it

accepted? : ∀ Γ es st → Dec (accepted Γ es st)
accepted? Γ es st =
  let instance _ = λ {role} → acceptedBy? Γ es st role
  in it

-- ** shorthands for RATIFY rules
pattern RATIFY-Continue₁  x y = RATIFY-Continue (inj₁ (x , y))
pattern RATIFY-Continue₂  x y = RATIFY-Continue (inj₂ (x , y))
pattern RATIFY-Continue₂₁ x y = RATIFY-Continue₂ x (inj₁ y)
pattern RATIFY-Continue₂₂ x y = RATIFY-Continue₂ x (inj₂ y)

private
  module Implementation
    (Γ : RatifyEnv) (s : RatifyState) (sig : GovActionID × GovActionState)
    (let ⟦ es , removed , d ⟧ʳ = s; _ , st = sig)
    where
    open RatifyEnv Γ; open GovActionState st
    open Computational ⦃...⦄ hiding (computeProof) renaming (completeness to complete)
    open Equivalence

    -- We abstract over the accepted/expired/delayed checks and the enact step to make
    -- the completeness proof a little cleaner, and because the normal form of
    -- `accepted` is very big, making using `with` impractical.
    private
      es' = compute ⟦ sig .proj₁ , treasury , currentEpoch ⟧ᵉ es action

      AbstractedArgs : Set
      AbstractedArgs
        = Dec (accepted Γ es st)
        × Dec (expired currentEpoch st)
        × Dec (delayed action prevAction es d)
        × ∃ (es' ≡_)

      ⋯ : AbstractedArgs
      ⋯ = accepted? Γ es st
        , ¿ expired currentEpoch st ¿
        , delayed? action prevAction es d
        , es' , refl

      reifyArgs : {P : AbstractedArgs → Set} → (∀ ⋯ → P ⋯) → P ⋯
      reifyArgs = _$ ⋯

    RATIFY'-total-helper : AbstractedArgs → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
    RATIFY'-total-helper = λ where
      (no ¬acc , no ¬exp , _ , _ , _)        → -, RATIFY-Continue₁ ¬acc ¬exp
      (no ¬acc , yes exp , _ , _ , _)        → -, RATIFY-Reject ¬acc exp
      (yes acc , _ , yes del , _ , _)        → -, RATIFY-Continue₂₁ acc del
      (yes acc , _ , no ¬del , just _  , eq) → -, RATIFY-Accept acc ¬del (≡-just⇔STS .to eq)
      (yes acc , _ , no ¬del , nothing , eq) → -, RATIFY-Continue₂₂ acc (nothing⇒∀¬STS eq)

    RATIFY'-completeness-helper : ∀ (⋯ : AbstractedArgs) →
      ∀ s' → Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s' → RATIFY'-total-helper ⋯ .proj₁ ≡ s'
    RATIFY'-completeness-helper = λ where
      (no _ , no _ , _ , _)            _ (RATIFY-Continue₁ _ _)   → refl
      (no _ , yes _ , _ , _)           _ (RATIFY-Reject _ _)      → refl
      (yes _ , _ , yes _ , _)          _ (RATIFY-Continue₂ _ _)   → refl
      (yes _ , _ , no _ , just _ , eq) _ (RATIFY-Accept _ _ h)    →
        case trans (sym eq) (complete _ _ _ _ h) of λ where refl → refl
      (yes _ , _ , no _ , nothing , _) _ (RATIFY-Continue₂₂ _ _)  → refl

      (no ¬acc , _ , _ , _)      _ (RATIFY-Accept acc _ _)   → ⊥-elim $ ¬acc acc
      (_ , _ , yes del , _)      _ (RATIFY-Accept _ ¬del _)  → ⊥-elim $ ¬del del
      (_ , _ , _ , nothing , eq) _ (RATIFY-Accept _ _ h)     → ⊥-elim $ nothing⇒∀¬STS eq _ h
      (yes acc , _ , _ , _)      _ (RATIFY-Reject ¬acc _)    → ⊥-elim $ ¬acc acc
      (_ , no ¬exp , _ , _)      _ (RATIFY-Reject _ exp)     → ⊥-elim $ ¬exp exp
      (yes acc , _ , _ , _)      _ (RATIFY-Continue₁ ¬acc _) → ⊥-elim $ ¬acc acc
      (_ , yes exp , _ , _)      _ (RATIFY-Continue₁ _ ¬exp) → ⊥-elim $ ¬exp exp
      (no ¬acc , _ , _ , _)      _ (RATIFY-Continue₂ acc _)  → ⊥-elim $ ¬acc acc
      (_ , _ , no ¬del , _)      _ (RATIFY-Continue₂₁ _ del) → ⊥-elim $ ¬del del
      (_ , _ , _ , just _ , eq)  _ (RATIFY-Continue₂₂ _ h)   → ⊥-elim $ h _ (≡-just⇔STS .to eq)

    RATIFY'-total : ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
    RATIFY'-total = reifyArgs RATIFY'-total-helper

    RATIFY'-complete : ∀ s' → Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s' → RATIFY'-total .proj₁ ≡ s'
    RATIFY'-complete = reifyArgs RATIFY'-completeness-helper

    computeProof = just RATIFY'-total
    completeness = cong just ∘₂ RATIFY'-complete

instance
  Computational-RATIFY' : Computational _⊢_⇀⦇_,RATIFY'⦈_
  Computational-RATIFY' = record {Implementation}

open Implementation public
  using (RATIFY'-total; RATIFY'-complete)

Computational-RATIFY : Computational _⊢_⇀⦇_,RATIFY⦈_
Computational-RATIFY = it

module _ {Γ s sig} where
  RATIFY-total : ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
  RATIFY-total = SS⇒BS-total (RATIFY'-total _ _ _)

  RATIFY-complete : ∀ {s'} → Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s' → RATIFY-total .proj₁ ≡ s'
  RATIFY-complete = computational⇒rightUnique it (RATIFY-total .proj₂)
