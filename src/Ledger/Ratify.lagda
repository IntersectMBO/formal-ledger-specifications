\section{Ratification}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

open import Ledger.Crypto
import Ledger.PParams as PP

module Ledger.Ratify (txs : TransactionStructure) where

open import Ledger.Prelude hiding (_∧_)

open TransactionStructure txs
open import Ledger.Tally TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto
open PP epochStructure

open import Relation.Nullary.Decidable

import Data.Integer as Z
import Data.Rational as R
open import Data.Nat.Properties using (+-0-commutativeMonoid)

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid

record RatifyEnv : Set where
  field stakeDistr    : KeyHash ↛ (Coin × Coin)
        currentEpoch  : Epoch
        roles         : KeyHash ↛ GovRole -- TODO: only allowing one role per hash might not be desirable
\end{code}
\begin{figure*}[h]
\begin{code}
record RatifyState : Set where
  constructor ⟦_,_⟧ʳ
  field es      : EnactState
        future  : List (GovActionID × GovActionState)
\end{code}
\caption{Types and functions for the RATIFY transition system}
\end{figure*}
\begin{figure*}[h]
\begin{code}
-- TODO: turn this into protocol parameters
CCThreshold epochsToExpire : ℕ
CCThreshold = 3
epochsToExpire = 10

votedHashes : Vote → ((GovRole × KeyHash) ↛ Vote) → GovRole → ℙ KeyHash
votedHashes v votes r = (votes ⦅ r ,-⦆) ⁻¹ v

votedYesHashes : ((GovRole × KeyHash) ↛ Vote) → GovRole → ℙ KeyHash
votedYesHashes = votedHashes Vote.yes

votedPresentHashes : ((GovRole × KeyHash) ↛ Vote) → GovRole → ℙ KeyHash
votedPresentHashes = votedHashes Vote.present

getStake : GovRole → Coin × Coin → Coin
getStake CC   = λ _ → 0
getStake DRep = proj₂
getStake SPO  = proj₁

acceptedStake : GovRole → (KeyHash ↛ (Coin × Coin)) → GovActionState → Coin
acceptedStake r dist record { votes = votes } =
  Σᵐᵛ[ x ← (dist ∣ votedYesHashes votes r) ᶠᵐ ] getStake r x

totalStake : GovRole → (KeyHash ↛ (Coin × Coin)) → ((GovRole × KeyHash) ↛ Vote) → Coin
totalStake r dist votes = Σᵐᵛ[ x ← dist ∣ votedPresentHashes votes r ᶜ ᶠᵐ ] getStake r x

acceptedR : RatifyEnv → GovActionState → GovRole → R.ℚ → Set
acceptedR Γ s role t =
  let open RatifyEnv Γ; open GovActionState s
      totalStake = totalStake role stakeDistr votes
  in
  case totalStake of λ where
    0         → ⊥ -- if there's no stake, never accept
    x@(suc _) → Z.+ acceptedStake role stakeDistr s R./ x R.> t

ccSize : Maybe (ℙ KeyHash × R.ℚ) → Maybe (ℕ × R.ℚ)
ccSize nothing         = nothing
ccSize (just (cc , q)) = just (lengthˢ cc , q)

-- for now, consider a proposal as accepted if the CC and half of the SPOs agree
accepted : RatifyEnv → EnactState → GovActionState → Set
accepted Γ es@record { cc = cc } s@record { votes = votes } =
  acceptedR Γ s SPO R.½
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
