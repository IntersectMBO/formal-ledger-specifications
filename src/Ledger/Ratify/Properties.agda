{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Ratify.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.Gov govStructure
open import Ledger.Ratify txs

open Computational ⦃...⦄

caseEq_of_ : ∀ {a b} {A : Set a} {B : Set b} → (a : A) → ((a' : A) → a ≡ a' → B) → B
caseEq a of f = f a refl

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

-- We abstract over the accepted/expired/delayed checks and the enact step to make the completeness proof
-- a little cleaner, and because the normal form of `accepted` is very big, making using `with` impractical.
module _ {Γ : RatifyEnv} {s : RatifyState} {sig : GovActionID × GovActionState}
         (let open RatifyEnv Γ; st = proj₂ sig; open GovActionState st)
         (let ⟦ es , removed , d ⟧ʳ = s)
    where

  RATIFY'-total-helper :
    (accepted? : Dec (accepted Γ es st))
    (expired? : Dec (expired currentEpoch st))
    (delayed? : Dec (delayed action prevAction es d))
    (enact : Maybe EnactState)
    (eq : compute ⟦ sig .proj₁ , treasury , currentEpoch ⟧ᵉ es action ≡ enact) →
    ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
  RATIFY'-total-helper (no ¬acc) (no ¬exp) delayed? enact    eq = _ , RATIFY-Continue (inj₁ (¬acc , ¬exp))
  RATIFY'-total-helper (no ¬acc) (yes exp) delayed? enact    eq = _ , RATIFY-Reject ¬acc exp
  RATIFY'-total-helper (yes acc) expired? (no ¬del) (just x) eq = _ , RATIFY-Accept acc ¬del (≡-just⇔STS .Equivalence.to eq)
  RATIFY'-total-helper (yes acc) expired? (no ¬del) nothing  eq = _ , RATIFY-Continue (inj₂ (acc , inj₂ (nothing⇒∀¬STS eq)))
  RATIFY'-total-helper (yes acc) expired? (yes del) enact    eq = _ , RATIFY-Continue (inj₂ (acc , inj₁ del))

  RATIFY'-completeness-helper :
    (accepted? : Dec (accepted Γ es st))
    (expired? : Dec (expired currentEpoch st))
    (delayed? : Dec (delayed action prevAction es d))
    (enact : Maybe EnactState)
    (eq : compute ⟦ sig .proj₁ , treasury , currentEpoch ⟧ᵉ es action ≡ enact) →
    ∀ s' → Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s' → RATIFY'-total-helper accepted? expired? delayed? enact eq .proj₁ ≡ s'
  RATIFY'-completeness-helper (no _) (no _) _ _ _ _          (RATIFY-Continue _)   = refl
  RATIFY'-completeness-helper (no _) (yes _) _ _ _ _         (RATIFY-Reject _ _)   = refl
  RATIFY'-completeness-helper (yes _) _ (no _) (just _) eq _ (RATIFY-Accept _ _ h) = case trans (sym eq) (completeness _ _ _ _ h) of λ where refl → refl
  RATIFY'-completeness-helper (yes _) _ (no _) nothing _ _   (RATIFY-Continue _)   = refl
  RATIFY'-completeness-helper (yes _) _ (yes _) _ _ _        (RATIFY-Continue _)   = refl

  RATIFY'-completeness-helper (no ¬acc) _ _ _ _ _ (RATIFY-Accept acc _ _)                 = ⊥-elim (¬acc acc)
  RATIFY'-completeness-helper _ _ (yes del) _ _ _ (RATIFY-Accept _ ¬del _)                = ⊥-elim (¬del del)
  RATIFY'-completeness-helper _ _ _ nothing eq _  (RATIFY-Accept _ _ h)                   = ⊥-elim (nothing⇒∀¬STS eq _ h)
  RATIFY'-completeness-helper (yes acc) _ _ _ _ _ (RATIFY-Reject ¬acc _)                  = ⊥-elim (¬acc acc)
  RATIFY'-completeness-helper _ (no ¬exp) _ _ _ _ (RATIFY-Reject _ exp)                   = ⊥-elim (¬exp exp)
  RATIFY'-completeness-helper (yes acc) _ _ _ _ _ (RATIFY-Continue (inj₁ (¬acc , _)))     = ⊥-elim (¬acc acc)
  RATIFY'-completeness-helper _ (yes exp) _ _ _ _ (RATIFY-Continue (inj₁ (_ , ¬exp)))     = ⊥-elim (¬exp exp)
  RATIFY'-completeness-helper (no ¬acc) _ _ _ _ _ (RATIFY-Continue (inj₂ (acc , _)))      = ⊥-elim (¬acc acc)
  RATIFY'-completeness-helper _ _ (no ¬del) _ _ _ (RATIFY-Continue (inj₂ (_ , inj₁ del))) = ⊥-elim (¬del del)
  RATIFY'-completeness-helper _ _ _ (just _) eq _ (RATIFY-Continue (inj₂ (_ , inj₂ h)))   = ⊥-elim (h _ (≡-just⇔STS .Equivalence.to eq))

RATIFY'-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
RATIFY'-total {Γ} {⟦ es , removed , d ⟧ʳ} {sig} =
  let open RatifyEnv Γ; st = proj₂ sig; open GovActionState st
  in RATIFY'-total-helper (accepted? Γ es st) (¿ expired currentEpoch st ¿) (delayed? action prevAction es d)
                          (compute ⟦ sig .proj₁ , treasury , currentEpoch ⟧ᵉ es action) refl

instance
  Computational-RATIFY' : Computational _⊢_⇀⦇_,RATIFY'⦈_
  Computational-RATIFY' .computeProof Γ s a = just RATIFY'-total
  Computational-RATIFY' .completeness Γ ⟦ es , removed , d ⟧ʳ a s' h =
    let open RatifyEnv Γ; st = proj₂ a; open GovActionState st in
    cong just (RATIFY'-completeness-helper (accepted? Γ es st) ¿ expired currentEpoch st ¿ (delayed? action prevAction es d)
                                           (compute ⟦ a .proj₁ , treasury , currentEpoch ⟧ᵉ es action) refl s' h)

Computational-RATIFY : Computational _⊢_⇀⦇_,RATIFY⦈_
Computational-RATIFY = it

RATIFY-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
RATIFY-total = SS⇒BS-total RATIFY'-total

RATIFY-complete : ∀ {Γ s sig s'} → Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s' → RATIFY-total {Γ} {s} {sig} .proj₁ ≡ s'
RATIFY-complete h = computational⇒rightUnique it (RATIFY-total .proj₂) h
