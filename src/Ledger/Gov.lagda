\section{Governance}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure

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
  constructor ⟦_,_,_,_⟧ᵍ
  field txid        : TxId
        epoch       : Epoch
        pparams     : PParams
        enactState  : EnactState

open GovActionState
getAidPairsList : GovState → List (GovActionID × GovActionID)
getAidPairsList aid×states =
  mapMaybe (λ (aid , aState) → (aid ,_) <$> getHash (prevAction aState)) $ aid×states

getAidPairsSet : GovState → ℙ (GovActionID × GovActionID)
getAidPairsSet aid×states =
  mapPartial (λ (aid , as) → (aid ,_) <$> getHash (prevAction as)) $ fromList aid×states

_connects_to_ : List (GovActionID × GovActionID) → GovActionID → GovActionID → Set
[] connects aid₁ to aid₂ = aid₁ ≡ aid₂
((a₁ , a₂) ∷ s) connects aid₁ to aid₂ = s connects aid₁ to a₁ × a₂ ≡ aid₂

_connects?_to_ : ∀ l aid aid' → Dec (l connects aid to aid')
[]             connects? aid to aidₚ = aid ≟ aidₚ
((a , aₚ) ∷ s) connects? aid to aidₚ
  with (aₚ ≟ aidₚ)
...| no ¬p = no λ (_ , p) → ¬p p
...| yes p
  with (s connects? aid to a)
...| no ¬q = no (λ (q , _) → ¬q q)
...| yes q = yes (q , p)

enactableList : EnactState → List (GovActionID × GovActionID) → GovActionID × GovActionState → Set
enactableList eState aidPairs (aid , as) =
  case getHashES eState (GovActionState.action as) of λ where
  nothing      → ⊤
  (just aidₚ)  → Any (_connects aid to aidₚ) (subpermutations aidPairs)

enactableList? : ∀ eState aidPairs aid×st → Dec(enactableList eState aidPairs aid×st)
enactableList? eState aidPairs (aid , as) with (getHashES eState (GovActionState.action as))
...| nothing = yes tt
...| (just aidₚ) = any? (_connects? aid to aidₚ) (subpermutations aidPairs)

-- enactablePerm : EnactState → List (GovActionID × GovActionID) → GovActionID × GovActionState → Set
-- enactablePerm eState aidPairs (aid , as) =
--   case getHashES eState (GovActionState.action as) of λ where
--   nothing      → ⊤
--   (just aidₚ)  → Anyˡ (λ t → Subperm t aidPairs × t connects aid to aidₚ) {!!}

-- enactablePerm? : ∀ eState aidPairs aid×st → Dec(enactablePerm eState aidPairs aid×st)
-- enactablePerm? eState aidPairs (aid , as) with (getHashES eState (GovActionState.action as))
-- ...| nothing = yes tt
-- ...| (just aidₚ) = any?ˡ (λ x → subperm? x aidPairs ×-dec (x connects? aid to aidₚ)) {!!}
open Subperm {A = GovActionID × GovActionID}  renaming (here to hereˢ; there to thereˢ)
enactablePerm' : EnactState → List (GovActionID × GovActionID) → GovActionID × GovActionState → Set
enactablePerm' eState aidPairs (aid , as) =
  case getHashES eState (GovActionState.action as) of λ where
  nothing      → ⊤
  (just aidₚ)  → AnySubpermOf aidPairs (λ t → t connects aid to aidₚ) (subpermutations aidPairs)

enactablePerm'? : ∀ eState aidPairs aid×st → Dec(enactablePerm' eState aidPairs aid×st)
enactablePerm'? eState aidPairs (aid , as) with (getHashES eState (GovActionState.action as))
...| nothing = yes tt
...| (just aidₚ) = anySubpermOf? aidPairs (λ t → t connects aid to aidₚ) (λ t → t connects? aid to aidₚ) (subpermutations aidPairs)

enactablePerm : EnactState → List (GovActionID × GovActionID) → GovActionID × GovActionState → Set
enactablePerm eState aidPairs (aid , as) =
  case getHashES eState (GovActionState.action as) of λ where
  nothing      → ⊤
  (just aidₚ)  → ∃[ t ](Subperm t aidPairs × t connects aid to aidₚ)

enactablePerm? : ∀ eState aidPairs aid×st → Dec(enactablePerm eState aidPairs aid×st)
enactablePerm? eState aidPairs (aid , as) with (getHashES eState (GovActionState.action as))
...| nothing = yes tt
...| (just aidₚ) = {!!}

enactable : EnactState → List (GovActionID × GovActionID) → GovActionID × GovActionState → Set
enactable e aidPairs = λ (aid , as) → case getHashES e (GovActionState.action as) of λ where
  nothing → ⊤
  (just aid') → ∃[ t ](fromList t ⊆ fromList aidPairs × t connects aid to aid')

_⋂_ : {A : Type} → Pred A 0ℓ → List A → Pred A 0ℓ
P ⋂ l = λ x → x ∈ˡ l × P x

satisfiableˡ : {A : Type}{l : List A}{P : Pred A 0ℓ} → Satisfiable (P ⋂ l) → Any P l
satisfiableˡ {l = x ∷ _} (.x , here refl , Px) = here Px
satisfiableˡ (x' , there x∈l , Px) = there (satisfiableˡ (x' , x∈l , Px))

-- ⇐Subperms𝒞' :  ∀ {gen : List (GovActionID × GovActionID)}{aid aid' : GovActionID}
--            → AnySubpermOf gen (_connects aid to aid') (subpermutations gen)
--            → ∃[ t ]((fromList t ⊆ fromList gen) × (t connects aid to aid'))
-- ⇐Subperms𝒞' {gen}{aid}{aid'} hereˢ pxs sp = {!!}
-- ⇐Subperms𝒞' {gen}{aid}{aid'} there pxss  = {!!}

Subperms𝒞⇒' :  ∀ {gen : List (GovActionID × GovActionID)}{aid aid' : GovActionID}
           → ∃[ t ]((fromList t ⊆ fromList gen) × (t connects aid to aid'))
           → AnySubpermOf gen (_connects aid to aid') (subpermutations gen)
Subperms𝒞⇒' = {!!}

⇐Subperms𝒞 :  ∀ {gen : List (GovActionID × GovActionID)}{aid aid' : GovActionID}
           → ∃[ t ]((Subperm t gen) × (t connects aid to aid'))
           → ∃[ t ]((fromList t ⊆ fromList gen) × (t connects aid to aid'))
⇐Subperms𝒞 (t , Sptgen , tConx) = t , Subperm→SetIncl Sptgen , tConx

Subperms𝒞⇒ :  ∀ {gen : List (GovActionID × GovActionID)}{aid aid' : GovActionID}
           → ∃[ t ]((fromList t ⊆ fromList gen) × (t connects aid to aid'))
           → ∃[ t ]((Subperm t gen) × (t connects aid to aid'))
Subperms𝒞⇒ (t , Sptgen , tConx) = t , SetIncl→Subperm Sptgen , tConx

enactable⇔enactablePerm : ∀ eState → ∀{aidPairs}{aid×st} →
  enactable eState aidPairs aid×st ⇔ enactablePerm eState aidPairs aid×st
enactable⇔enactablePerm eState {aid×st = (_ , as)} with (getHashES eState (GovActionState.action as))
...| nothing = mk⇔ id id
...| (just aidₚ) = mk⇔ Subperms𝒞⇒ ⇐Subperms𝒞

DecEnactPerm→DecEnact  : ∀ eState {aidPairs} {aid×st}
                       → Dec(enactablePerm eState aidPairs aid×st)
                       → Dec(enactable eState aidPairs aid×st)

DecEnactPerm→DecEnact eState = map′ (from (enactable⇔enactablePerm eState))
                                    (to (enactable⇔enactablePerm eState))
  where open Equivalence

enactable? : ∀ eState aidPairs aid×st → Dec(enactable eState aidPairs aid×st)
enactable? eState aidPairs aid×st = DecEnactPerm→DecEnact eState (enactablePerm? eState aidPairs aid×st)

allEnactable : EnactState → GovState → Set
allEnactable e aid×states = All (λ p → enactable e (getAidPairsList aid×states) p) aid×states

allEnactable? : ∀ eState aid×states → Dec (allEnactable eState aid×states)
allEnactable? eState aid×states = all? (λ aid×st → enactable? eState (getAidPairsList aid×states) aid×st) aid×states

\end{code}
\emph{Transition relation types}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,GOV'⦈_  : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Set
_⊢_⇀⦇_,GOV⦈_     : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Set
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
\end{code}
\emph{Functions used in the GOV rules}
\begin{code}
addVote : GovState → GovActionID → GovRole → Credential → Vote → GovState
addVote s aid r kh v = map modifyVotes s
  where modifyVotes = λ (gid , s') → gid , record s'
          { votes = if gid ≡ aid then insert (votes s') (r , kh) v else votes s'}

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
  GOV-Vote : ∀ {x ast} → let
    open GovEnv Γ
    sig = inj₁ record
      { gid = aid ; role = role ; credential = cred ; vote = v ; anchor = x }
    in
       (aid , ast) ∈ fromList s
    →  canVote pparams (action ast) role
    ───────────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ addVote s aid role cred v

  GOV-Propose : ∀ {x} → let
    open GovEnv Γ; open PParams pparams hiding (a)
    prop = record
      { returnAddr = addr ; action = a ; anchor = x ; deposit = d ; prevAction = prev }
    s' = addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a prev
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
