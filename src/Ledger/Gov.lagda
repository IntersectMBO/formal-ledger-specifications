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
  constructor ⟦_,_,_⟧ᵗ
  field txid     : TxId
        epoch    : Epoch
        pparams  : PParams

connects : List (GovActionID × GovActionID) → GovActionID → GovActionID → Set
connects [] aid₁ aid₂ = aid₁ ≡ aid₂
connects ((a₁ , a₂) ∷ s) aid₁ aid₂ = connects s aid₁ a₁ × a₂ ≡ aid₂

connects? : (l : List (GovActionID × GovActionID))(aid aid' : GovActionID) → Dec(connects l aid aid')
connects? [] = _≟_
connects? ((a₁ , a₂) ∷ s) aid₁ aid₂ with (a₂ ≟ aid₂) | connects? s aid₁ a₁
...| yes p  | yes q  = yes (q , p)
...| _      | no ¬q  = no λ (q , _) → ¬q q
...| no ¬p  | _      = no λ (_ , p) → ¬p p

enactable : EnactState → GovActionID × GovActionState → ℙ (GovActionID × GovActionID) → Set
enactable eState (aid , record { action = actn }) aidPairs =
  case getHashES eState actn of λ where
  nothing      → ⊤
  (just aid')  → ∃[ aidPairList ] (fromList aidPairList ⊆ aidPairs) × (connects aidPairList aid' aid)

aidPairSet : GovState → ℙ (GovActionID × GovActionID)
aidPairSet aid×stateList =
  mapPartial (λ (aid , aState) → (aid ,_) <$> getHash (prevAction aState)) $ fromList aid×stateList
  where open GovActionState

enactable? : ∀ x y z → Dec(enactable x y z)
enactable? eState (aid , record { action = actn} ) aidPairs with getHashES eState actn
...| nothing = yes tt
...| (just aid')  with any? (λ as → all? (_∈? aidPairs) ×-dec (connects? as aid' aid)) {!!}
...               | yes (pairs , _ , prsConx) = yes (pairs , prsConx)
...               | no ¬p = no λ (x , y , z) → ¬p (x , {!!} , y , z)

allEnactable : EnactState → GovState → Set
allEnactable eState aid×states =
  ∀[ (aid , aState) ∈ fromList aid×states ] enactable eState (aid , aState) (aidPairSet aid×states)

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
\end{code}
\caption{Types and functions used in the GOV transition system\protect\footnotemark}
\label{defs:gov-defs}
\end{figure*}
\footnotetext{\AgdaBound{l}~\AgdaFunction{∷ʳ}~\AgdaBound{x} appends element \AgdaBound{x} to list \AgdaBound{l}.}
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
                              sig = inj₂ record  { returnAddr = addr ; action = a
                                                 ; anchor = x ; deposit = d
                                                 ; prevAction = prev }
                              s' = addAction  s (govActionLifetime +ᵉ epoch)
                                              (txid , k) addr a prev
                         in
       actionWellFormed a ≡ true
    →  d ≡ govActionDeposit
    →  (∀ {new rem q} → a ≡ NewCommittee new rem q
        → ∀[ e ∈ range new ]  epoch < e  ×  dom new ∩ rem ≡ᵉ ∅)
    ───────────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_ = ReflexiveTransitiveClosureᵢ _⊢_⇀⦇_,GOV'⦈_
\end{code}
\caption{Rules for the GOV transition system}
\label{defs:gov-rules}
\end{figure*}
