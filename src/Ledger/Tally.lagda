\section{Tally}

\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Epoch

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
  field votes       : (GovRole × Credential) ⇀ Vote
        returnAddr  : RwdAddr
        expiresIn   : Epoch
        action      : GovAction
        prevAction  : NeedsHash action

TallyState : Set
TallyState = GovActionID ⇀ GovActionState

record TallyEnv : Set where
  constructor ⟦_,_,_⟧ᵗ
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
           c : Coin
           addr : RwdAddr
           a : GovAction
           prev : NeedsHash a
\end{code}
\begin{code}
addVote : TallyState → GovActionID → GovRole → Credential → Vote → TallyState
addVote s aid r kh v =
  mapSingleValue (λ s' → record s' { votes = insert (votes s') (r , kh) v }) s aid

addAction : TallyState → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a → TallyState
addAction s e aid addr a prev = insert s aid record
  { votes = ∅ᵐ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev }

-- x is the anchor in those two cases, which we don't do anything with
data _⊢_⇀⦇_,TALLY'⦈_ : TallyEnv × ℕ → TallyState → GovVote ⊎ GovProposal → TallyState → Set where
  TallyVote : ∀ {x k} → let open TallyEnv Γ in
    aid ∈ dom (s ˢ)
    ────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ inj₁ record { gid = aid ; role = role ; credential = cred ; vote = v ; anchor = x } ,TALLY'⦈
              addVote s aid role cred v

  TallyPropose : ∀ {x k} → let open TallyEnv Γ; open PParams pparams using (govExpiration; govDeposit) in
    (Γ , k) ⊢ s ⇀⦇ inj₂ record { returnAddr = addr ; action = a ; anchor = x ; prevAction = prev } ,TALLY'⦈
              addAction s (govExpiration +ᵉ epoch) (txid , k) addr a prev

_⊢_⇀⦇_,TALLY⦈_ : TallyEnv → TallyState → List (GovVote ⊎ GovProposal) → TallyState → Set
_⊢_⇀⦇_,TALLY⦈_ = SS⇒BS (λ Γ → Γ ⊢_⇀⦇_,TALLY'⦈_)
\end{code}
\caption{TALLY types}
\label{defs:tally-types}
\end{figure*}
