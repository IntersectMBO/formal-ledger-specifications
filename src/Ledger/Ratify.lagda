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
open import Data.Nat
open import Data.Nat.Properties
open import Data.Nat.Properties.Ext
open import Data.Product using (map₂)

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid
\end{code}
\begin{figure*}[h]
\begin{code}
record StakeDistrs : Set where
  field poolStakeDistr  : KeyHash ↛ Coin
        drepStakeDistr  : KeyHash ↛ Coin

record RatifyEnv : Set where
  field stakeDistrs   : StakeDistrs
        currentEpoch  : Epoch
        roles         : KeyHash ↛ GovRole -- TODO: only allowing one role per hash might not be desirable

record RatifyState : Set where
  constructor ⟦_,_⟧ʳ
  field es      : EnactState
        future  : List (GovActionID × GovActionState)
\end{code}
\caption{Types and functions for the RATIFY transition system}
\end{figure*}
\begin{figure*}[h]
\begin{code}
-- TODO: turn these into protocol parameters
epochsToExpire coinThreshold rankThreshold : ℕ
epochsToExpire = 10
coinThreshold = 1000000000
rankThreshold = 1000

-- DReps with at least `c` coins
mostStakeDRepDist : KeyHash ↛ Coin → Coin → KeyHash ↛ Coin
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

topNDRepDist : ℕ → KeyHash ↛ Coin → KeyHash ↛ Coin
topNDRepDist n dist = case (lengthˢ (dist ˢ) ≥? n) ,′ (n >? 0) of λ where
  (_     , no  _)  → ∅ᵐ
  (no _  , yes _)  → dist
  (yes p , yes p₁) → mostStakeDRepDist dist (proj₁ (∃topNDRepDist {dist = dist} p p₁))

-- restrict the DRep stake distribution
restrictedDists : ℕ → ℕ → StakeDistrs → StakeDistrs
restrictedDists coins rank dists = record dists { drepStakeDistr = restrict drepStakeDistr }
  where open StakeDistrs dists
        -- one always includes the other
        restrict : KeyHash ↛ Coin → KeyHash ↛ Coin
        restrict dist = topNDRepDist rank dist ∪ᵐˡ mostStakeDRepDist dist coins

votedHashes : Vote → ((GovRole × KeyHash) ↛ Vote) → GovRole → ℙ KeyHash
votedHashes v votes r = (votes ⦅ r ,-⦆)⁻¹ v

votedYesHashes : ((GovRole × KeyHash) ↛ Vote) → GovRole → ℙ KeyHash
votedYesHashes = votedHashes Vote.yes

votedPresentHashes : ((GovRole × KeyHash) ↛ Vote) → GovRole → ℙ KeyHash
votedPresentHashes = votedHashes Vote.present

getStakeDist : GovRole → StakeDistrs → KeyHash ↛ Coin
getStakeDist CC   _                                = ∅ᵐ
getStakeDist DRep record { drepStakeDistr = dist } = dist
getStakeDist SPO  record { poolStakeDistr = dist } = dist

acceptedStake : GovRole → StakeDistrs → GovActionState → Coin
acceptedStake r dists record { votes = votes } =
  Σᵐᵛ[ x ← (getStakeDist r dists ∣ votedYesHashes votes r) ᶠᵐ ] x

totalStake : GovRole → StakeDistrs → ((GovRole × KeyHash) ↛ Vote) → Coin
totalStake r dists votes = Σᵐᵛ[ x ← getStakeDist r dists ∣ votedPresentHashes votes r ᶜ ᶠᵐ ] x

acceptedR : RatifyEnv → GovActionState → GovRole → R.ℚ → Set
acceptedR Γ s role t =
  let open RatifyEnv Γ; open GovActionState s
      redStakeDistr = restrictedDists coinThreshold rankThreshold stakeDistrs
      totalStake = totalStake role redStakeDistr votes
  in
  case totalStake of λ where
    0         → ⊥ -- if there's no stake, never accept
    x@(suc _) → Z.+ acceptedStake role redStakeDistr s R./ x R.> t

ccSize : Maybe (ℙ KeyHash × R.ℚ) → Maybe (ℕ × R.ℚ)
ccSize nothing         = nothing
ccSize (just (cc , q)) = just (lengthˢ cc , q)

-- for now, consider a proposal as accepted if the CC and half of the SPOs agree
accepted : RatifyEnv → EnactState → GovActionState → Set
accepted Γ es@record { cc = cc } s@record { votes = votes } =
  acceptedR Γ s SPO R.½
  ∧ acceptedR Γ s DRep R.½
  ∧ (case ccSize cc of λ where
      (just (s@(suc _) , q)) → Z.+ lengthˢ (votedYesHashes votes CC) R./ s R.> q
      _                      → ⊥)

expired : Epoch → GovActionState → Set
expired current record { proposedIn = proposedIn } = (epochsToExpire +ᵉ proposedIn) <ᵉ current
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

data _⊢_⇀⦇_,RATIFY'⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  RATIFY-Accept : let open RatifyEnv Γ in
    accepted Γ es (proj₂ a)
    → _ ⊢ es ⇀⦇ GovActionState.action (proj₂ a) ,ENACT⦈ es'
    ────────────────────────────────
    Γ ⊢ ⟦ es , f ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es' , f ⟧ʳ

  -- remove expired actions
  -- NOTE: don't have to remove actions that can never be accpted because of sufficient no votes
  RATIFY-Reject : let open RatifyEnv Γ in
    ¬ accepted Γ es (proj₂ a)
    → expired currentEpoch (proj₂ a)
    ────────────────────────────────
    Γ ⊢ ⟦ es , f ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , f ⟧ʳ

  -- continue voting in the next epoch
  RATIFY-Continue : let open RatifyEnv Γ in
    ¬ accepted Γ es (proj₂ a)
    → ¬ expired currentEpoch (proj₂ a)
    ────────────────────────────────
    Γ ⊢ ⟦ es , f ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , a ∷ f ⟧ʳ

_⊢_⇀⦇_,RATIFY⦈_ : RatifyEnv → RatifyState → List (GovActionID × GovActionState) → RatifyState → Set
_⊢_⇀⦇_,RATIFY⦈_ = SS⇒BS (λ where (Γ , _) → Γ ⊢_⇀⦇_,RATIFY'⦈_)
\end{code}
\caption{RATIFY transition system}
\end{figure*}
