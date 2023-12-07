\section{Governance}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.GovStructure

module Ledger.Gov (gs : _) (open GovStructure gs hiding (epoch)) where

open import Ledger.GovernanceActions gs hiding (yes; no)
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
  constructor ⟦_,_,_,_⟧ᵍ
  field txid        : TxId
        epoch       : Epoch
        pparams     : PParams
        enactState  : EnactState

connects : List (GovActionID × GovActionID) → GovActionID → GovActionID → Set
connects [] aid₁ aid₂ = aid₁ ≡ aid₂
connects ((a₁ , a₂) ∷ s) aid₁ aid₂ = connects s aid₁ a₁ × a₂ ≡ aid₂

enactable : EnactState → GovActionID × GovActionState → ℙ (GovActionID × GovActionID) → Set
enactable eState (aid , record { action = actn }) aidPairs =
  case getHashES eState actn of λ where
  nothing      → ⊤
  (just aid')  → ∃[ aidPairList ] (fromList aidPairList ⊆ aidPairs) × (connects aidPairList aid' aid)

aidPairSet : GovState → ℙ (GovActionID × GovActionID)
aidPairSet aid×stateList =
  mapPartial (λ (aid , aState) → (aid ,_) <$> getHash (prevAction aState)) $ fromList aid×stateList
  where open GovActionState

allEnactable : EnactState → GovState → Set
allEnactable eState aid×states =
  ∀[ (aid , aState) ∈ fromList aid×states ] enactable eState (aid , aState) (aidPairSet aid×states)

connects? : (l : List (GovActionID × GovActionID))(aid aid' : GovActionID) → Dec(connects l aid aid')
connects? [] = _≟_
connects? ((a₁ , a₂) ∷ s) aid₁ aid₂ with (a₂ ≟ aid₂) | connects? s aid₁ a₁
...| yes p  | yes q  = yes (q , p)
...| _      | no ¬q  = no λ (q , _) → ¬q q
...| no ¬p  | _      = no λ (_ , p) → ¬p p

enactable? : ∀ x y z → Dec(enactable x y z)
enactable? eState (aid , record { action = actn} ) aidPairs with getHashES eState actn
...| nothing = yes tt
...| (just aid')  with any? (λ as → all? (_∈? aidPairs){X = fromList as} ×-dec (connects? as aid' aid)) {!!}
...               | yes (prs , _ , prsConx) = yes (prs , prsConx)
...               | no ¬p = no λ (x , y , z) → ¬p (x , {!!} , y , z)

allEnactable? : ∀ eState aid×stateList → Dec (allEnactable eState aid×stateList)
allEnactable? eState aid×stateList = all? λ pr → enactable? eState pr (aidPairSet aid×stateList)

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
  { votes = ∅ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

validHFAction : GovProposal → GovState → EnactState → Set
validHFAction (record { action = TriggerHF v ; prevAction = prev }) s e =
  (let (v' , aid) = EnactState.pv e in aid ≡ prev × pvCanFollow v' v)
  ⊎ ∃₂[ x , v' ] (prev , x) ∈ fromList s × x .action ≡ TriggerHF v' × pvCanFollow v' v
validHFAction _ _ _ = ⊤
\end{code}
\caption{Types and functions used in the GOV transition system\protect\footnotemark}
\label{defs:gov-defs}
\end{figure*}
\footnotetext{\AgdaBound{l}~\AgdaFunction{∷ʳ}~\AgdaBound{x} appends element \AgdaBound{x} to list \AgdaBound{l}.}

\GovActionState is the state of an individual governance action. It
contains the individual votes, its lifetime, and information necessary
to enact the action and to repay the deposit.

\GovState behaves similar to a queue. New proposals are appended at
the end, but any proposal can be removed at the epoch
boundary. However, for the purposes of enactment, earlier proposals
take priority.

\begin{itemize}
\item \addVote inserts (and potentially overrides) a vote made for a
particular governance action (identified by its ID) by a credential with a role.

\item \addAction adds a new proposed action at the end of a given \GovState.

\item \validHFAction is the property whether a given proposal, if it is a
\TriggerHF action, can potentially be enacted in the future. For this to be the
case, its \prevAction needs to exist, be another \TriggerHF action and have a
compatible version.
\end{itemize}

\begin{figure*}
\begin{code}[hide]
data _⊢_⇀⦇_,GOV'⦈_ where
\end{code}
\begin{code}
  GOV-Vote : ∀ {x ast} →  let  open GovEnv Γ
                               sig = inj₁ record  { gid = aid ; role = role
                                                  ; credential = cred
                                                  ; vote = v ; anchor = x }
                          in
    (aid , ast) ∈ fromList s
    → canVote pparams (action ast) role
    ───────────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ addVote s aid role cred v

  GOV-Propose : ∀ {x} →  let  open GovEnv Γ
                              open PParams pparams hiding (a)
                              prop = record  { returnAddr = addr ; action = a
                                             ; anchor = x ; deposit = d
                                             ; prevAction = prev }
                              s' = addAction  s (govActionLifetime +ᵉ epoch)
                                              (txid , k) addr a prev
                         in
       actionWellFormed a ≡ true
    →  d ≡ govActionDeposit
    →  (∀ {new rem q} → a ≡ NewCommittee new rem q
        → ∀[ e ∈ range new ]  epoch < e  ×  dom new ∩ rem ≡ᵉ ∅)
    →  validHFAction prop s enactState
    ───────────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_ = ReflexiveTransitiveClosureᵢ _⊢_⇀⦇_,GOV'⦈_
\end{code}
\caption{Rules for the GOV transition system}
\label{defs:gov-rules}
\end{figure*}
