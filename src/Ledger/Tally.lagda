\section{Tally}

\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Epoch using (EpochStructure)

import Ledger.PParams as PP

module Ledger.Tally (TxId Network DocHash : Set)
                    (es : EpochStructure) (open EpochStructure es hiding (epoch))
                    (open PP es)
                    (ppd : PParamsDiff)
                    (ppHashable : isHashableSet PParams)
                    (crypto : Crypto) ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq TxId ⦄ where

open import Ledger.GovernanceActions TxId Network DocHash es ppd ppHashable crypto

open Crypto crypto

open import Ledger.Address Network KeyHash ScriptHash
\end{code}
\begin{figure*}[h]
\begin{code}
record GovActionState : Set where
  field votes       : (GovRole × Credential) ↛ Vote
        deposit     : Coin
        returnAddr  : RwdAddr
        expiresIn   : Epoch
        action      : GovAction

TallyState : Set
TallyState = GovActionID ↛ GovActionState

record TallyEnv : Set where
  field txid     : TxId
        epoch    : Epoch
        pparams  : PParams
\end{code}
\begin{code}[hide]
open GovActionState

private
  variable Γ : TallyEnv
           s s' : TallyState
           aid : GovActionID
           role : GovRole
           cred : Credential
           v : Vote
           l : List GovProcedure
           c : Coin
           addr : RwdAddr
           a : GovAction
\end{code}
\begin{code}
addVote : TallyState → GovActionID → GovRole → Credential → Vote → TallyState
addVote s aid r kh v =
  mapSingleValue (λ s' → record s' { votes = insert (votes s') (r , kh) v }) s aid

addAction : TallyState → Epoch → GovActionID → Coin → RwdAddr → GovAction → TallyState
addAction s e aid c addr a = insert s aid record
  { votes = ∅ᵐ ; deposit = c ; returnAddr = addr ; expiresIn = e ; action = a }

-- x is the anchor in those two cases, which we don't do anything with
data _⊢_⇀⦇_,TALLY'⦈_ : TallyEnv → TallyState → GovProcedure → TallyState → Set where
  TallyVote : ∀ {x} → let open TallyEnv Γ in
    aid ∈ dom (s ˢ)
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ vote aid role cred v x ,TALLY'⦈ addVote s aid role cred v

  TallyPropose : ∀ {x} → let open TallyEnv Γ; open PParams pparams using (govExpiration; govDeposit) in
    c ≡ govDeposit
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ propose c addr a x ,TALLY'⦈ addAction s (govExpiration +ᵉ epoch) (txid , length l) c addr a

_⊢_⇀⦇_,TALLY⦈_ : TallyEnv → TallyState → List GovProcedure → TallyState → Set
_⊢_⇀⦇_,TALLY⦈_ = SS⇒BS (λ where (Γ , _) → Γ ⊢_⇀⦇_,TALLY'⦈_)
\end{code}
\caption{TALLY types}
\label{defs:tally-types}
\end{figure*}
