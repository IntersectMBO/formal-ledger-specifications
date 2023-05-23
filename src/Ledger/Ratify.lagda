\section{Ratification}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ratify (txs : TransactionStructure) where

open import Ledger.Prelude hiding (_∧_)

open TransactionStructure txs
open import Ledger.Tally TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto
open import Ledger.PParams epochStructure

import Data.Integer as Z
import Data.Rational as R
open import Data.Nat hiding (_≟_)
open import Data.Nat.Properties hiding (_≟_)
open import Data.Nat.Properties.Ext
open import Data.Product using (map₂)

open import Relation.Nullary.Decidable

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid
  _ = +-0-monoid
\end{code}
\begin{figure*}[h]
\begin{code}
record StakeDistrs : Set where
  field stakeDistr  : VDeleg ↛ Coin

record RatifyEnv : Set where
  field stakeDistrs   : StakeDistrs
        currentEpoch  : Epoch
        ccHotKeys     : KeyHash ↛ Maybe KeyHash

record RatifyState : Set where
  constructor ⟦_,_,_⟧ʳ
  field es              : EnactState
        future          : List (GovActionID × GovActionState)
        depositReturns  : RwdAddr ↛ Coin
\end{code}
\caption{Types and functions for the RATIFY transition system}
\end{figure*}
\begin{figure*}[h]
\begin{code}[hide]
-- TODO: remove these or put them into RatifyState
coinThreshold rankThreshold : ℕ
coinThreshold = 1000000000
rankThreshold = 1000

-- DReps with at least `c` coins
mostStakeDRepDist : Credential ↛ Coin → Coin → Credential ↛ Coin
mostStakeDRepDist dist c = dist ∣^' to-sp (_≥? c)

-- mostStakeDRepDist-homomorphic : ∀ {dist} → Homomorphic₂ _ _ _>_ (_⊆_ on _ˢ) (mostStakeDRepDist dist)
-- mostStakeDRepDist-homomorphic x>y = impl⇒cores⊆ _ _ {!!} --(<-trans x>y)

mostStakeDRepDist-0 : ∀ {dist} → mostStakeDRepDist dist 0 ≡ᵉᵐ dist
mostStakeDRepDist-0 = (proj₂ ∘ Equivalence.from ∈-filter) , λ x → Equivalence.to ∈-filter (z≤n , x)

-- TODO: maybe this can be proven easier with the maximum?
mostStakeDRepDist-∅ : ∀ {dist} → ∃[ N ] mostStakeDRepDist dist N ˢ ≡ᵉ ∅
mostStakeDRepDist-∅ {dist} = suc (Σᵐᵛ[ x ← dist ᶠᵐ ] x) , Properties.∅-least
  (⊥-elim ∘ uncurry helper ∘ Equivalence.from ∈-filter)
  where
    open ≤-Reasoning

    helper : ∀ {k v} → v > Σᵐᵛ[ x ← dist ᶠᵐ ] x → ¬ (k , v) ∈ dist ˢ
    helper {k} {v} v>sum kv∈dist = 1+n≰n $ begin-strict
      v
        ≡˘⟨ indexedSum-singleton' (finiteness ❴ k , v ❵) ⟩
      Σᵐᵛ[ x ← ❴ k , v ❵ᵐ ᶠᵐ ] x
        ≡˘⟨ indexedSumᵐ-cong {x = (dist ∣ ❴ k ❵) ᶠᵐ} {y = ❴ k , v ❵ᵐ ᶠᵐ}
                             (res-singleton' {m = dist} kv∈dist) ⟩
      Σᵐᵛ[ x ← (dist ∣ ❴ k ❵) ᶠᵐ ] x
        ≤⟨ m≤m+n _ _ ⟩
      Σᵐᵛ[ x ← (dist ∣ ❴ k ❵) ᶠᵐ ] x + Σᵐᵛ[ x ← (dist ∣ ❴ k ❵ ᶜ) ᶠᵐ ] x
        ≡˘⟨ indexedSumᵐ-partition {m = dist ᶠᵐ} {(dist ∣ ❴ k ❵) ᶠᵐ} {(dist ∣ ❴ k ❵ ᶜ) ᶠᵐ}
                                  (res-ex-disj-∪ Properties.Dec-∈-singleton) ⟩
      Σᵐᵛ[ x ← dist ᶠᵐ ] x
        <⟨ v>sum ⟩
      v ∎

∃topNDRepDist : ∀ {n dist} → lengthˢ (dist ˢ) ≥ n → n > 0
                → ∃[ c ] lengthˢ (mostStakeDRepDist dist c ˢ) ≥ n
                       × lengthˢ (mostStakeDRepDist dist (suc c) ˢ) < n
∃topNDRepDist {n} {dist} length≥n n>0 with negInduction (λ _ → _ ≥? n)
  (subst (_≥ n) (sym $ lengthˢ-≡ᵉ _ _ (mostStakeDRepDist-0 {dist})) length≥n)
  (map₂ (λ h h' → ≤⇒≯ (subst (_≥ n) (trans (lengthˢ-≡ᵉ _ _ h) lengthˢ-∅) h') n>0)
                     (mostStakeDRepDist-∅ {dist}))
... | (c , h , h') = c , h , ≰⇒> h'

topNDRepDist : ℕ → Credential ↛ Coin → Credential ↛ Coin
topNDRepDist n dist = case (lengthˢ (dist ˢ) ≥? n) ,′ (n >? 0) of λ where
  (_     , no  _)  → ∅ᵐ
  (no _  , yes _)  → dist
  (yes p , yes p₁) → mostStakeDRepDist dist (proj₁ (∃topNDRepDist {dist = dist} p p₁))
\end{code}
\begin{code}
-- restrict the DRep stake distribution
-- commented out for now, since we don't know if that'll actually be implemented
restrictedDists : ℕ → ℕ → StakeDistrs → StakeDistrs
restrictedDists coins rank dists = dists -- record dists { drepStakeDistr = restrict drepStakeDistr }
  where open StakeDistrs dists
        -- one always includes the other
        restrict : Credential ↛ Coin → Credential ↛ Coin
        restrict dist = topNDRepDist rank dist ∪ᵐˡ mostStakeDRepDist dist coins

CCData : Set
CCData = Maybe (KeyHash ↛ Epoch × R.ℚ)

module _ (ce : Epoch) (ccHotKeys : KeyHash ↛ Maybe KeyHash)
         (cc : CCData) (votes : (GovRole × Credential) ↛ Vote)
         (ga : GovAction) where

  actualCCVote : KeyHash → Epoch → Vote
  actualCCVote kh e = case ⌊ ce ≤ᵉ? e ⌋ ,′ lookupᵐ? ccHotKeys kh ⦃ _ ∈? _ ⦄ of λ where
    (true , just (just hk)) → maybe′ id Vote.no $ lookupᵐ? votes (CC , (inj₁ hk)) ⦃ _ ∈? _ ⦄
    _                       → Vote.abstain -- expired, no hot key or resigned

  actualCCVotes : Credential ↛ Vote
  actualCCVotes = case cc of λ where
    (just (cc , _)) → mapKeys inj₁ (mapWithKey actualCCVote cc) (λ where _ _ refl → refl)
    nothing         → ∅ᵐ

  actualPDRepVotes : VDeleg ↛ Vote
  actualPDRepVotes = ❴ abstainRep      , Vote.abstain ❵ᵐ
                 ∪ᵐˡ ❴ noConfidenceRep , (case ga of λ where
                                           NoConfidence → Vote.yes
                                           _            → Vote.no) ❵ᵐ

  actualVotes : VDeleg ↛ Vote
  actualVotes = mapKeys (credVoter CC) actualCCVotes (λ where _ _ refl → refl)
              ∪ᵐˡ (actualPDRepVotes
              ∪ᵐˡ mapKeys (uncurry credVoter) votes (λ where _ _ refl → refl)) -- TODO: make `actualVotes` for DRep, SPO

votedHashes : Vote → (VDeleg ↛ Vote) → GovRole → ℙ VDeleg
votedHashes v votes r = votes ⁻¹ v

votedYesHashes : (VDeleg ↛ Vote) → GovRole → ℙ VDeleg
votedYesHashes = votedHashes Vote.yes

votedAbstainHashes : (VDeleg ↛ Vote) → GovRole → ℙ VDeleg
votedAbstainHashes = votedHashes Vote.abstain

participatingHashes : (VDeleg ↛ Vote) → GovRole → ℙ VDeleg
participatingHashes votes r = votedYesHashes votes r ∪ votedHashes Vote.no votes r

isDRep : VDeleg → Bool
isDRep (credVoter DRep _) = true
isDRep (credVoter _ _)    = false
isDRep abstainRep         = true
isDRep noConfidenceRep    = true

isSPO : VDeleg → Bool
isSPO (credVoter SPO _) = true
isSPO _                 = false

isDRepProp : specProperty λ x → isDRep x ≡ true
isDRepProp = to-sp (λ x → isDRep x ≟ true)

isSPOProp : specProperty λ x → isSPO x ≡ true
isSPOProp = to-sp (λ x → isSPO x ≟ true)

getStakeDist : GovRole → StakeDistrs → VDeleg ↛ Coin
getStakeDist CC   _                              = ∅ᵐ
getStakeDist DRep s@record { stakeDistr = dist } = filterᵐ (sp-∘ isDRepProp proj₁) dist
getStakeDist SPO  s@record { stakeDistr = dist } = filterᵐ (sp-∘ isSPOProp proj₁) dist

acceptedStake : GovRole → StakeDistrs → (VDeleg ↛ Vote) → Coin
acceptedStake r dists votes =
  Σᵐᵛ[ x ← (getStakeDist r dists ∣ votedYesHashes votes r) ᶠᵐ ] x

totalStake : GovRole → StakeDistrs → (VDeleg ↛ Vote) → Coin
totalStake r dists votes = Σᵐᵛ[ x ← getStakeDist r dists ∣ votedAbstainHashes votes r ᶜ ᶠᵐ ] x

acceptedR : RatifyEnv → (VDeleg ↛ Vote) → GovRole → R.ℚ → Set
acceptedR Γ votes role t =
  let open RatifyEnv Γ
      redStakeDistr = restrictedDists coinThreshold rankThreshold stakeDistrs
      totalStake = totalStake role redStakeDistr votes
  in
  case totalStake of λ where
    0         → ⊥ -- if there's no stake, never accept
    x@(suc _) → Z.+ acceptedStake role redStakeDistr votes R./ x R.> t

ccThreshold : CCData → Maybe R.ℚ
ccThreshold nothing         = nothing
ccThreshold (just (cc , q)) = just q

-- for now, consider a proposal as accepted if the CC and half of the SPOs and DReps agree
accepted : RatifyEnv → EnactState → GovActionState → Set
accepted Γ es@record { cc = cc ; pparams = record { votingThresholds = drepThreshold , spoThreshold } }
         s@record  { votes = votes ; action = action } =
  let open RatifyEnv Γ; votes = actualVotes currentEpoch ccHotKeys cc votes action in
  acceptedR Γ votes SPO spoThreshold
  ∧ acceptedR Γ votes DRep drepThreshold
  ∧ (case lengthˢ (participatingHashes votes CC) , ccThreshold cc of λ where
      (s@(suc _) , just q) → Z.+ lengthˢ (votedYesHashes votes CC) R./ s R.> q
      _                    → ⊥)

expired : Epoch → GovActionState → Set
expired current record { expiresIn = expiresIn } = expiresIn <ᵉ current
\end{code}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : RatifyEnv
  s s' : RatifyState
  es es' : EnactState
  upd : PParamsUpdate
  a : GovActionID × GovActionState
  f f' l : List (GovActionID × GovActionState)
  rwds : RwdAddr ↛ Coin

data _⊢_⇀⦇_,RATIFY'⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  RATIFY-Accept : let open RatifyEnv Γ; open GovActionState (proj₂ a) in
    accepted Γ es (proj₂ a)
    → _ ⊢ es ⇀⦇ GovActionState.action (proj₂ a) ,ENACT⦈ es'
    ────────────────────────────────
    Γ ⊢ ⟦ es , f , rwds ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es' , f , rwds ∪⁺ ❴ returnAddr , deposit ❵ᵐ ⟧ʳ

  -- remove expired actions
  -- NOTE: don't have to remove actions that can never be accpted because of sufficient no votes
  RATIFY-Reject : let open RatifyEnv Γ; open GovActionState (proj₂ a) in
    ¬ accepted Γ es (proj₂ a)
    → expired currentEpoch (proj₂ a)
    ────────────────────────────────
    Γ ⊢ ⟦ es , f , rwds ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , f , rwds ∪⁺ ❴ returnAddr , deposit ❵ᵐ ⟧ʳ

  -- continue voting in the next epoch
  RATIFY-Continue : let open RatifyEnv Γ in
    ¬ accepted Γ es (proj₂ a)
    → ¬ expired currentEpoch (proj₂ a)
    ────────────────────────────────
    Γ ⊢ ⟦ es , f , rwds ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , a ∷ f , rwds ⟧ʳ

_⊢_⇀⦇_,RATIFY⦈_ : RatifyEnv → RatifyState → List (GovActionID × GovActionState) → RatifyState → Set
_⊢_⇀⦇_,RATIFY⦈_ = SS⇒BS (λ where (Γ , _) → Γ ⊢_⇀⦇_,RATIFY'⦈_)
\end{code}
\caption{RATIFY transition system}
\end{figure*}
