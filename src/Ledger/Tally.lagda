\section{Tally}

\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude hiding (yes; no)

module Ledger.Tally (TxId Epoch Network DocHash PParamsUpdate : Set)
                    (crypto : Crypto) ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq TxId ⦄ where

open import Ledger.GovernanceActions TxId Network DocHash PParamsUpdate crypto

open Crypto crypto

open import Ledger.Address Network KeyHash ScriptHash
\end{code}
\begin{figure*}[h]
\begin{code}
record GovActionState : Set where
  field votes       : (GovRole × KeyHash) ↛ Vote
        deposit     : Coin
        returnAddr  : RwdAddr
        proposedIn  : Epoch
        action      : GovAction

TallyState : Set
TallyState = GovActionID ↛ GovActionState

record TallyEnv : Set where
  field txid   : TxId
        epoch  : Epoch
        roles  : KeyHash ↛ GovRole
\end{code}
\begin{code}[hide]
open GovActionState

private
  variable Γ : TallyEnv
           s s' : TallyState
           aid : GovActionID
           role : GovRole
           kh : KeyHash
           v : Vote
           md : GovMD
           l : List GovProcedure
           c : Coin
           addr : RwdAddr
           a : GovAction
\end{code}
\begin{code}
addVote : TallyState → GovActionID → GovRole → KeyHash → Vote → TallyState
addVote s aid r kh v =
  mapSingleValue (λ s' → record s' { votes = insert (votes s') (r , kh) v }) s aid

addAction : TallyState → Epoch → GovActionID → Coin → RwdAddr → GovAction → TallyState
addAction s e aid c addr a = insert s aid record
  { votes = ∅ᵐ ; deposit = c ; returnAddr = addr ; proposedIn = e ; action = a }

data _⊢_⇀⦇_,TALLY⦈_ : TallyEnv → TallyState → List GovProcedure → TallyState → Set where
  TallyEmpty : Γ ⊢ s ⇀⦇ [] ,TALLY⦈ s

  TallyVote : let open TallyEnv Γ in
    Γ ⊢ s ⇀⦇ l ,TALLY⦈ s'
    → aid ∈ dom (s ˢ)
    → (kh , role) ∈ roles ˢ
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ vote aid role kh v md ∷ l ,TALLY⦈ addVote s' aid role kh v

  TallyPropose : let open TallyEnv Γ in
    Γ ⊢ s ⇀⦇ l ,TALLY⦈ s'
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ propose c addr a md ∷ l ,TALLY⦈ addAction s' epoch (txid , length l) c addr a

\end{code}
\caption{TALLY types}
\label{defs:tally-types}
\end{figure*}
