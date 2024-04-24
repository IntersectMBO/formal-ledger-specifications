\section{Ratification}
\label{sec:ratification}
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

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid
\end{code}

\subsection{Ratification restrictions}
\label{sec:ratification-restrictions}
\begin{figure*}[h!]
\begin{code}
record StakeDistrs : Set where
  field stakeDistr  : VDeleg ⇀ Coin

record RatifyEnv : Set where
  field stakeDistrs   : StakeDistrs
        currentEpoch  : Epoch
        dreps         : Credential ⇀ Epoch
        ccHotKeys     : Credential ⇀ Maybe Credential
        treasury      : Coin

record RatifyState : Set where
  constructor ⟦_,_,_⟧ʳ
  field es              : EnactState
        removed         : ℙ (GovActionID × GovActionState)
        delay           : Bool

CCData : Set
CCData = Maybe ((Credential ⇀ Epoch) × ℚ)

govRole : VDeleg → GovRole
govRole (credVoter gv _)  = gv
govRole abstainRep        = DRep
govRole noConfidenceRep   = DRep

IsCC IsDRep IsSPO : VDeleg → Set
IsCC    v = govRole v ≡ CC
IsDRep  v = govRole v ≡ DRep
IsSPO   v = govRole v ≡ SPO
\end{code}
\caption{Types and functions for the RATIFY transition system}
\label{fig:types-and-functions-for-the-ratify-transition-system}
\end{figure*}

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

  activeDReps = dom (filter (λ (_ , e) → currentEpoch ≤ e) dreps)

  getCCHotCred : Credential × Epoch → Maybe Credential
  getCCHotCred (c , e) = case ¿ currentEpoch ≤ e ¿ᵇ , lookupᵐ? ccHotKeys c of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (true , just (just c'))  → just c'
      _                        → nothing -- expired, no hot key or resigned

  actualCCVote : Credential → Epoch → Vote
  actualCCVote c e = case getCCHotCred (c , e) of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (just c')  → maybe id Vote.no (lookupᵐ? votes (CC , c'))
      _          → Vote.abstain

  activeCC : (Credential ⇀ Epoch) → ℙ Credential
  activeCC m = mapPartial getCCHotCred (m ˢ)

  actualCCVotes : Credential ⇀ Vote
  actualCCVotes = case cc of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    nothing         →  ∅
    (just (m , q))  →  if ccMinSize ≤ lengthˢ (activeCC m)
                         then mapWithKey actualCCVote m
                         else constMap (dom m) Vote.no
\end{code}
\end{AgdaMultiCode}
