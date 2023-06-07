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

import Data.List as L
open import Relation.Nullary.Decidable

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
TallyState = List (GovActionID × GovActionState)

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
-- could be implemented using a function of type ∀ {a} {A : Set a} → (A → Maybe A) → List A → List A
modifyMatch : ∀ {a} {A : Set a} → (A → Bool) → (A → A) → List A → List A
modifyMatch P f = L.map (λ x → if P x then f x else x)

addVote : TallyState → GovActionID → GovRole → Credential → Vote → TallyState
addVote s aid r kh v =
  modifyMatch (λ x → ⌊ aid ≟ proj₁ x ⌋)
              (λ where (gid , s') → gid , record s' { votes = insert (votes s') (r , kh) v }) s

addAction : TallyState → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a → TallyState
addAction s e aid addr a prev = s ∷ʳ (aid , record
  { votes = ∅ᵐ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

-- x is the anchor in those two cases, which we don't do anything with
data _⊢_⇀⦇_,TALLY'⦈_ : TallyEnv × ℕ → TallyState → GovVote ⊎ GovProposal → TallyState → Set where
  TallyVote : ∀ {x k} → let open TallyEnv Γ in
    aid ∈ setFromList (L.map proj₁ s)
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
