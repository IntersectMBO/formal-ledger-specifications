\section{Ratification}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ratify (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.PParams Epoch
open import Ledger.Tally TxId Epoch Network ADHash PParamsUpdate crypto

open import Relation.Nullary.Decidable

import Data.Integer as Z
import Data.Rational as R
open import Data.Nat.Properties using (+-0-commutativeMonoid)

instance
  _ = +-0-commutativeMonoid

record RatifyEnv : Set where
  field stakeDistr : KeyHash ↛ Coin
        currentEpoch : Epoch
        roles : KeyHash ↛ GovRole
\end{code}
\begin{figure*}[h]
\begin{code}
record RatifyState : Set where
  constructor ⟦_,_⟧ʳ
  field pparams  : PParams
        future   : List (GovActionID × GovActionState)
\end{code}
\caption{Types and functions for the RATIFY transition system}
\end{figure*}
\begin{figure*}[h]
\begin{code}
-- TODO: turn this into protocol parameters
CCThreshold epochsToExpire : ℕ
CCThreshold = 3
epochsToExpire = 10

votedYesHashes : ((GovRole × KeyHash) ↛ Vote) → GovRole → ℙ KeyHash
votedYesHashes votes role = flip mapPartial (votes ˢ)
  λ { ((r , kh) , Vote.yes) → if ⌊ r ≟ role ⌋ then just kh else nothing ; _ → nothing }

acceptedStake : GovRole → (KeyHash ↛ Coin) → GovActionState → Coin
acceptedStake role dist record { votes = votes } =
  Σᵐ[ x ← (dist ∣ votedYesHashes votes role) ᶠᵐ ] proj₂ x

totalStake : GovRole → (KeyHash ↛ Coin) → (KeyHash ↛ GovRole) → Coin
totalStake role dist roles = Σᵐ[ x ← (dist ∣ dom ((roles ∣^ singleton role) ˢ)) ᶠᵐ ] proj₂ x

acceptedR : RatifyEnv → GovActionState → GovRole → R.ℚ → Set
acceptedR Γ s role t = let open RatifyEnv Γ; totalStake = totalStake role stakeDistr roles in
  case totalStake of λ where
    0         → ⊥ -- if there's no stake, never accept
    x@(suc _) → Z.+ acceptedStake role stakeDistr s R./ x R.> t

-- for now, consider a proposal as accepted if the CC and half of the SPOs agree
accepted : RatifyEnv → GovActionState → Set
accepted Γ s@record { votes = votes } = lengthˢ (votedYesHashes votes CC) > CCThreshold
                                      × acceptedR Γ s SPO R.½

expired : Epoch → GovActionState → Set
expired current record { proposedIn = proposedIn } = (epochsToExpire +ᵉ proposedIn) <ᵉ current
\end{code}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : RatifyEnv
  s s' : RatifyState
  pp newpp : PParams
  upd : PParamsUpdate
  a : GovActionID × GovActionState
  f l : List (GovActionID × GovActionState)

data _⊢_⇀⦇_,RATIFY⦈_ : RatifyEnv → RatifyState → List (GovActionID × GovActionState) → RatifyState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  RATIFY-Accept : let open RatifyEnv Γ in
    accepted Γ (proj₂ a)
    ────────────────────────────────
    Γ ⊢ ⟦ pp , f ⟧ʳ ⇀⦇ a ∷ l ,RATIFY⦈ ⟦ newpp , f ⟧ʳ

  -- remove expired actions
  -- NOTE: don't have to remove actions that can never be accpted because of sufficient no votes
  RATIFY-Reject : let open RatifyEnv Γ in
    ¬ accepted Γ (proj₂ a)
    → expired currentEpoch (proj₂ a)
    ────────────────────────────────
    Γ ⊢ ⟦ pp , f ⟧ʳ ⇀⦇ a ∷ l ,RATIFY⦈ ⟦ pp , f ⟧ʳ

  -- continue voting in the next epoch
  RATIFY-Continue : let open RatifyEnv Γ in
    ¬ accepted Γ (proj₂ a)
    → ¬ expired currentEpoch (proj₂ a)
    ────────────────────────────────
    Γ ⊢ ⟦ pp , f ⟧ʳ ⇀⦇ a ∷ l ,RATIFY⦈ ⟦ pp , a ∷ f ⟧ʳ

  RATIFY-Base : Γ ⊢ s ⇀⦇ [] ,RATIFY⦈ s
\end{code}
\caption{RATIFY transition system}
\end{figure*}
