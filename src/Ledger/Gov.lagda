\section{Governance}

\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude renaming (yes to yesᵈ; no to noᵈ)
open import Ledger.Epoch

import Ledger.PParams as PP

module Ledger.Gov (TxId Network DocHash : Set)
                  (es : EpochStructure) (open EpochStructure es hiding (epoch))
                  (open PP es)
                  (ppd : PParamsDiff)
                  (ppHashable : isHashableSet PParams)
                  (crypto : Crypto) ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq TxId ⦄ where

import Data.List as L
open import Relation.Nullary.Decidable renaming (map to mapᵈ)

open import Ledger.GovernanceActions TxId Network DocHash es ppd ppHashable crypto

open import Data.List.Relation.Unary.Any renaming (Any to Anyˡ; any? to decAny)
open import Data.List.Membership.Propositional renaming (_∈_ to _∈ˡ_)
open import Interface.Decidable.Instance

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

GovState : Set
GovState = List (GovActionID × GovActionState)

record GovEnv : Set where
  constructor ⟦_,_,_⟧ᵗ
  field txid     : TxId
        epoch    : Epoch
        pparams  : PParams
\end{code}
\begin{code}[hide]
open GovActionState

private
  variable Γ : GovEnv
           s s' : GovState
           aid : GovActionID
           role : GovRole
           cred : Credential
           v : Vote
           c d : Coin
           addr : RwdAddr
           a : GovAction
           prev : NeedsHash a
\end{code}
\begin{code}
-- could be implemented using a function of type ∀ {a} {A : Set a} → (A → Maybe A) → List A → List A
modifyMatch : ∀ {a} {A : Set a} → (A → Bool) → (A → A) → List A → List A
modifyMatch P f = L.map (λ x → if P x then f x else x)

addVote : GovState → GovActionID → GovRole → Credential → Vote → GovState
addVote s aid r kh v =
  modifyMatch (λ x → ⌊ aid ≟ proj₁ x ⌋)
              (λ where (gid , s') → gid , record s' { votes = insert (votes s') (r , kh) v }) s

addAction : GovState → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a → GovState
addAction s e aid addr a prev = s ∷ʳ (aid , record
  { votes = ∅ᵐ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

-- x is the anchor in those two cases, which we don't do anything with
data _⊢_⇀⦇_,GOV'⦈_ : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Set where
  GOV-Vote : ∀ {x k ast} → let open GovEnv Γ in
    (aid , ast) ∈ fromList s
    → canVote pparams (action ast) role
    ────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ inj₁ record { gid = aid ; role = role ; credential = cred ; vote = v ; anchor = x } ,GOV'⦈
              addVote s aid role cred v

  GOV-Propose : ∀ {x k} → let open GovEnv Γ; open PParams pparams using (govExpiration; govDeposit) in
    actionWellFormed a ≡ true
    → d ≡ govDeposit
    ────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ inj₂ record { returnAddr = addr ; action = a ; anchor = x ; deposit = d ; prevAction = prev } ,GOV'⦈
              addAction s (govExpiration +ᵉ epoch) (txid , k) addr a prev

_⊢_⇀⦇_,GOV⦈_ : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Set
_⊢_⇀⦇_,GOV⦈_ = SS⇒BS (λ Γ → Γ ⊢_⇀⦇_,GOV'⦈_)
\end{code}
\caption{TALLY types}
\label{defs:tally-types}
\end{figure*}

\begin{code}[hide]
open Computational' ⦃...⦄

private
  open Equivalence

  any⇔∃ : ∀ {A : Set} {P : A → Set} {xs : List A} → Anyˡ P xs ⇔ (∃[ x ] x ∈ˡ xs × P x)
  any⇔∃ .to   (here px)            = _ , here refl , px
  any⇔∃ .to   (there p)            = let x , mem , px = any⇔∃ .to p in x , there mem , px
  any⇔∃ .from (x , here refl , px) = here px
  any⇔∃ .from (x , there mem , px) = there (any⇔∃ .from (x , mem , px))
  any⇔∃ .to-cong   = cong (any⇔∃ .to)
  any⇔∃ .from-cong = cong (any⇔∃ .from)

  lookupActionId : (pparams : PParams) (role : GovRole) (aid : GovActionID) (s : GovState) →
                   Dec (Anyˡ (λ (aid' , ast) → aid ≡ aid' × canVote pparams (action ast) role) s)
  lookupActionId pparams role aid = decAny λ _ → ¿ _ ¿

instance
  Computational'-GOV' : Computational' _⊢_⇀⦇_,GOV'⦈_
  Computational'-GOV' .computeProof (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₁ record { gid = aid ; role = role }) =
    case lookupActionId pparams role aid s of λ where
      (yesᵈ p) →
        case any⇔∃ .to p of λ where
          (_ , mem , refl , cV) → just (_ , GOV-Vote (∈-fromList .to mem) cV)
      (noᵈ _)  → nothing
  Computational'-GOV' .computeProof (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₂ record { action = a ; deposit = d }) =
    case ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govDeposit ¿ of λ where
      (yesᵈ (wf , dep)) → just (_ , GOV-Propose wf dep)
      (noᵈ _)           → nothing
  Computational'-GOV' .completeness (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₁ record { gid = aid ; role = role }) s' (GOV-Vote mem cV)
    with lookupActionId pparams role aid s | "bug"
  ... | noᵈ ¬p | _ = ⊥-elim (¬p (any⇔∃ .from (_ , ∈-fromList .from mem , refl , cV)))
  ... | yesᵈ p | _ with any⇔∃ .to p
  ...   | (_ , mem , refl , cV) = refl
  Computational'-GOV' .completeness (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₂ record { action = a ; deposit = d }) s' (GOV-Propose wf dep)
    with ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govDeposit ¿ | "bug"
  ... | yesᵈ _ | _ = refl
  ... | noᵈ ¬p | _ = ⊥-elim (¬p (wf , dep))

  Computational-GOV' = fromComputational' Computational'-GOV'
\end{code}
