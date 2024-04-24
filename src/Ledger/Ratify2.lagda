\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ; _⊔_)
open import Data.Nat.Properties hiding (_≟_; _≤?_)
open import Data.Nat.Properties.Ext

open import Ledger.Prelude hiding (_∧_; _⊔_) renaming (filterᵐ to filter)
open import Ledger.Transaction hiding (Vote)

module Ledger.Ratify2 (txs : _) (open TransactionStructure txs) where

open import Ledger.Enact govStructure
open import Ledger.GovernanceActions govStructure using (Vote)

record RatifyEnv : Set where
  field currentEpoch  : Epoch
        dreps         : Credential ⇀ Epoch
        ccHotKeys     : Credential ⇀ Maybe Credential

CCData : Set
CCData = Maybe ((Credential ⇀ Epoch) × ℚ)
\end{code}

\begin{AgdaMultiCode}
\begin{code}
actualVotes  : RatifyEnv → PParams → CCData → GovAction
             → (GovRole × Credential ⇀ Vote) → (VDeleg ⇀ Vote)
actualVotes Γ pparams cc ga votes
  =  ∅
  where
\end{code}
\begin{code}[hide]
  open RatifyEnv Γ
  open PParams pparams
\end{code}
\begin{code}

  roleVotes : GovRole → VDeleg ⇀ Vote
  roleVotes r = mapKeys (uncurry credVoter) (filter (λ (x , _) → r ≡ proj₁ x) votes)

  getCCHotCred : Credential × Epoch → Maybe Credential
  getCCHotCred = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _                        → nothing -- expired, no hot key or resigned

  actualCCVote : Credential → Epoch → Vote
  actualCCVote c e = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _          → Vote.abstain

  actualCCVotes : Bool
  actualCCVotes = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    _  →  true
\end{code}
\end{AgdaMultiCode}
