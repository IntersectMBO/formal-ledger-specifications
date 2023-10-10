\section{Governance}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Unary.Any
  hiding (map)
  renaming (Any to Anyˡ; any? to decAny)
open import Function.Related using (fromRelated)
open import Function.Related.Propositional using (⤖⇒)
open import Relation.Binary using (Rel)
open import Relation.Nullary.Decidable renaming (map to mapᵈ)
open import Ledger.Prelude renaming (yes to yesᵈ; no to noᵈ) hiding (Rel)
open import Ledger.Crypto
open import Ledger.GovStructure

module Ledger.Gov (gs : _) (open GovStructure gs hiding (epoch)) where

open import Ledger.GovernanceActions gs
\end{code}
\begin{figure*}[h]
\emph{Derived types}
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
\emph{Transition relation types}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,GOV'⦈_ : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Set

_⊢_⇀⦇_,GOV⦈_ : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Set
\end{code}
\begin{code}[hide]
open GovActionState

private variable
  Γ : GovEnv
  s s' : GovState
  aid : GovActionID
  role : GovRole
  cred : Credential
  v : Vote
  c d : Coin
  addr : RwdAddr
  a : GovAction
  prev : NeedsHash a
  k : ℕ

-- could be implemented using a function of type:
--   ∀ {a} {A : Set a} → (A → Maybe A) → List A → List A
modifyMatch : ∀ {a} {A : Set a} → (A → Bool) → (A → A) → List A → List A
modifyMatch P f = map (λ x → if P x then f x else x)
\end{code}
\emph{Functions used in the GOV rules}
\begin{code}
addVote : GovState → GovActionID → GovRole → Credential → Vote → GovState
addVote s aid r kh v =
  modifyMatch
    (λ (x , _) → aid ≡ᵇ x)
    (λ (gid , s') → gid , record s' { votes = insert (votes s') (r , kh) v }) s

addAction : GovState
          → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
          → GovState
addAction s e aid addr a prev = s ∷ʳ (aid , record
  { votes = ∅ᵐ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

\end{code}
\caption{Types and functions used in the GOV transition system}
\label{defs:gov-defs}
\end{figure*}
\begin{figure*}
\begin{code}[hide]
data _⊢_⇀⦇_,GOV'⦈_ where
\end{code}
\begin{code}
  GOV-Vote : ∀ {x ast} → let open GovEnv Γ in
    (aid , ast) ∈ fromList s
    → canVote pparams (action ast) role
    ────────────────────────────────
    let sig = inj₁ record { gid = aid ; role = role ; credential = cred
                          ; vote = v ; anchor = x }
    in (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ addVote s aid role cred v

  GOV-Propose : ∀ {x} → let open GovEnv Γ; open PParams pparams hiding (a) in
    actionWellFormed a ≡ true
    → d ≡ govActionDeposit
    →  (∀ {new rem q} → a ≡ NewCommittee new rem q
       → ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅)
    ────────────────────────────────
    let sig = inj₂ record { returnAddr = addr ; action = a ; anchor = x
                          ; deposit = d ; prevAction = prev }
        s'  = addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a prev
    in
    (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_ = SS⇒BSᵢ _⊢_⇀⦇_,GOV'⦈_
\end{code}
\caption{Rules for the GOV transition system}
\label{defs:gov-rules}
\end{figure*}

\begin{code}[hide]
open Computational ⦃...⦄

private
  open Equivalence

  lookupActionId : (pparams : PParams) (role : GovRole) (aid : GovActionID) (s : GovState) →
                   Dec (Anyˡ (λ (aid' , ast) → aid ≡ aid' × canVote pparams (action ast) role) s)
  lookupActionId pparams role aid = decAny λ _ → ¿ _ ¿

  isNewCommittee : (a : GovAction) → Dec (∃[ new ] ∃[ rem ] ∃[ q ] a ≡ NewCommittee new rem q)
  isNewCommittee NoConfidence             = noᵈ λ()
  isNewCommittee (NewCommittee new rem q) = yesᵈ (new , rem , q , refl)
  isNewCommittee (NewConstitution x x₁)   = noᵈ λ()
  isNewCommittee (TriggerHF x)            = noᵈ λ()
  isNewCommittee (ChangePParams x)        = noᵈ λ()
  isNewCommittee (TreasuryWdrl x)         = noᵈ λ()
  isNewCommittee Info                     = noᵈ λ()

instance
  Computational-GOV' : Computational _⊢_⇀⦇_,GOV'⦈_
  Computational-GOV' .computeProof (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₁ record { gid = aid ; role = role }) =
    case lookupActionId pparams role aid s of λ where
      (yesᵈ p) →
        case ⤖⇒ (fromRelated Any↔) .from p of λ where
          (_ , mem , refl , cV) → just (_ , GOV-Vote (∈-fromList .to mem) cV)
      (noᵈ _)  → nothing
  Computational-GOV' .computeProof (⟦ _ , epoch , pparams ⟧ᵗ , k) s (inj₂ record { action = a ; deposit = d }) =
    case ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govActionDeposit ¿
         ,′ isNewCommittee a of λ where
      (yesᵈ (wf , dep) , yesᵈ (new , rem , q , refl)) →
        case ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ of λ where
          (yesᵈ newOk) → just (_ , GOV-Propose wf dep λ where refl → newOk)
          (noᵈ _)      → nothing
      (yesᵈ (wf , dep) , noᵈ notNewComm) → just (_ , GOV-Propose wf dep λ isNewComm → ⊥-elim (notNewComm (_ , _ , _ , isNewComm)))
      _ → nothing
  Computational-GOV' .completeness (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₁ record { gid = aid ; role = role }) s' (GOV-Vote mem cV)
    with lookupActionId pparams role aid s | "agda#6868"
  ... | noᵈ ¬p | _ = ⊥-elim (¬p (⤖⇒ (fromRelated Any↔) .to (_ , ∈-fromList .from mem , refl , cV)))
  ... | yesᵈ p | _ with ⤖⇒ (fromRelated Any↔) .from p
  ...   | (_ , mem , refl , cV) = refl
  Computational-GOV' .completeness (⟦ _ , epoch , pparams ⟧ᵗ , k) s (inj₂ record { action = a ; deposit = d }) s' (GOV-Propose wf dep newOk)
    with ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govActionDeposit ¿ | isNewCommittee a
  ... | noᵈ ¬p | _ = ⊥-elim (¬p (wf , dep))
  ... | yesᵈ _ | noᵈ notNewComm = refl
  ... | yesᵈ _ | yesᵈ (new , rem , q , refl)
    rewrite dec-yes ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ (newOk refl) .proj₂ = refl

Computational-GOV : Computational _⊢_⇀⦇_,GOV⦈_
Computational-GOV = it
\end{code}
