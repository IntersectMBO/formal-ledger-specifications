\section{Governance}
\label{sec:governance}
\modulenote{\LedgerModule{Gov}}, where we define the types required for ledger governance.
In particular, the behavior of \GovState{} is similar to that of a queue.  New proposals are
appended at the end, but any proposal can be removed at the epoch boundary.  However,
for the purposes of enactment, earlier proposals take priority.  Note that
\EnactState{} used in \GovEnv{} is defined later, in \cref{sec:enactment}.

\begin{itemize}[itemsep=\itmsep]
  \item
    \addVote{} inserts (and potentially overrides) a vote made for a
    particular governance action (identified by its ID) by a credential with a role.
  \item
    \addAction{} adds a new proposed action at the end of a given \GovState{}.
  \item
    The \validHFAction{} property indicates whether a given proposal, if it is a
    \TriggerHF{} action, can potentially be enacted in the future. For this to be the
    case, its \prevAction{} needs to exist, be another \TriggerHF{} action and have a
    compatible version.
\end{itemize}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Types.GovStructure
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Gov (txs : _) (open TransactionStructure txs hiding (epoch)) where

open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup; ∈-filter)

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.GovernanceActions govStructure using (Vote)
open import Ledger.Enact govStructure
open import Ledger.Ratify txs hiding (vote)
open import Ledger.Certs govStructure

open import Data.List.Ext using (subpermutations; sublists)
open import Data.List.Ext.Properties2
open import Data.List.Membership.Propositional.Properties using (Any↔; ∈-filter⁻; ∈-filter⁺)
open import Data.List.Relation.Binary.Subset.Propositional using () renaming (_⊆_ to _⊆ˡ_)
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Any using (any?; Any)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Relation.Nullary.Decidable.Ext using (map′⇔)
open import Function.Related.Propositional using (↔⇒)

open GovActionState
\end{code}

\begin{figure*}
\emph{Derived types}
\begin{code}[hide]
GovState : Type
\end{code}
\begin{code}
GovState = List (GovActionID × GovActionState)

record GovEnv : Type where
  field
    txid        : TxId
    epoch       : Epoch
    pparams     : PParams
    ppolicy     : Maybe ScriptHash
    enactState  : EnactState
    certState   : CertState
    rewardCreds : ℙ Credential
\end{code}
\caption{Types used in the GOV transition system}
\label{defs:gov-derived-types}
\end{figure*}

\begin{code}[hide]
instance
  unquoteDecl To-GovEnv = derive-To
    [ (quote GovEnv , To-GovEnv) ]

private variable
  Γ : GovEnv
  s s' : GovState
  aid : GovActionID
  voter : Voter
  vote : GovVote
  v : Vote
  d : Coin
  addr : RwdAddr
  a : GovAction
  prev : NeedsHash a
  k : ℕ
  p : Maybe ScriptHash

open GState
open PState
\end{code}

\begin{figure*}
\begin{AgdaMultiCode}
\begin{code}
govActionPriority : GovAction → ℕ
govActionPriority NoConfidence             = 0
govActionPriority (UpdateCommittee _ _ _)  = 1
govActionPriority (NewConstitution _ _)    = 2
govActionPriority (TriggerHF _)            = 3
govActionPriority (ChangePParams _)        = 4
govActionPriority (TreasuryWdrl _)         = 5
govActionPriority Info                     = 6

Overlap : GovAction → GovAction → Type
Overlap a a' = let n = govActionPriority a
                   m = govActionPriority a'
               in (n ≡ m) ⊎ (n ≡ 0 × m ≡ 1) ⊎ (n ≡ 1 × m ≡ 0)
\end{code}
\begin{code}[hide]
Overlap? : (a a' : GovAction) → Dec (Overlap a a')
Overlap? a a' = let n = govActionPriority a
                    m = govActionPriority a'
                in n ≟ m ⊎-dec (n ≟ 0 ×-dec m ≟ 1) ⊎-dec (n ≟ 1 ×-dec m ≟ 0)
\end{code}
\begin{code}

insertGovAction : GovState → GovActionID × GovActionState → GovState
insertGovAction [] gaPr = [ gaPr ]
insertGovAction ((gaID₀ , gaSt₀) ∷ gaPrs) (gaID₁ , gaSt₁)
  =  if (govActionPriority (action gaSt₀)) ≤? (govActionPriority (action gaSt₁))
     then (gaID₀ , gaSt₀) ∷ insertGovAction gaPrs (gaID₁ , gaSt₁)
     else (gaID₁ , gaSt₁) ∷ (gaID₀ , gaSt₀) ∷ gaPrs

mkGovStatePair : Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
                 → GovActionID × GovActionState
mkGovStatePair e aid addr a prev = (aid , record
  { votes = ∅ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

addAction : GovState
          → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
          → GovState
addAction s e aid addr a prev = insertGovAction s (mkGovStatePair e aid addr a prev)
\end{code}
\begin{code}[hide]
opaque
\end{code}
\begin{code}
  addVote : GovState → GovActionID → Voter → Vote → GovState
  addVote s aid voter v = map modifyVotes s
    where modifyVotes : GovActionID × GovActionState → GovActionID × GovActionState
          modifyVotes = λ (gid , s') → gid , record s'
            { votes = if gid ≡ aid then insert (votes s') voter v else votes s'}

  isRegistered : GovEnv → Voter → Type
  isRegistered Γ (r , c) = case r of λ where
    CC    → just c ∈ range (gState .ccHotKeys)
    DRep  → c ∈ dom (gState .dreps)
    SPO   → c ∈ mapˢ KeyHashObj (dom (pState .pools))
      where
        open CertState (GovEnv.certState Γ) using (gState; pState)

  validHFAction : GovProposal → GovState → EnactState → Type
  validHFAction (record { action = TriggerHF v ; prevAction = prev }) s e =
    (let (v' , aid) = EnactState.pv e in aid ≡ prev × pvCanFollow v' v)
    ⊎ ∃₂[ x , v' ] (prev , x) ∈ fromList s × x .action ≡ TriggerHF v' × pvCanFollow v' v
  validHFAction _ _ _ = ⊤
\end{code}
\end{AgdaMultiCode}
\caption{Functions used in the GOV transition system}
\label{defs:gov-functions}
\end{figure*}

\begin{figure*}
\begin{AgdaMultiCode}
\emph{Transition relation types}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,GOV⦈_  : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Type
\end{code}
\begin{code}
_⊢_⇀⦇_,GOVS⦈_   : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Type
\end{code}
\end{AgdaMultiCode}
\caption{Type signature of the transition relation of the GOV transition system}
\label{defs:gov-defs}
\end{figure*}

\Cref{defs:enactable} shows some of the functions used to determine whether certain
actions are enactable in a given state.  Specifically, \AgdaFunction{allEnactable} passes
the \AgdaFunction{GovState} to \AgdaFunction{getAidPairsList} to obtain a list of
\AgdaFunction{GovActionID}-pairs which is then passed to \AgdaFunction{enactable}. The latter uses the
\AgdaFunction{\AgdaUnderscore{}connects\AgdaUnderscore{}to\AgdaUnderscore{}} function to check
whether the list of \AgdaFunction{GovActionID}-pairs connects the proposed action to a previously
enacted one.

The function \govActionPriority{} assigns a priority to the various types of governance actions.
This is useful for ordering lists of governance actions (see \AgdaFunction{insertGovAction}
in \cref{defs:gov-functions}).
%
Priority is also used to check if two actions \AgdaFunction{Overlap}: that is,
they potentially modify the same piece of \AgdaDatatype{EnactState}.

\begin{figure*}
\begin{AgdaMultiCode}
\begin{code}[hide]
-- Convert list of (GovActionID,GovActionState)-pairs to list of GovActionID pairs.
getAidPairsList : GovState → List (GovActionID × GovActionID)
getAidPairsList aid×states =
  mapMaybe (λ (aid , aState) → (aid ,_) <$> getHash (prevAction aState)) $ aid×states

-- A list of GovActionID pairs connects the first GovActionID to the second.
_connects_to_ : List (GovActionID × GovActionID) → GovActionID → GovActionID → Type
[] connects aidNew to aidOld = aidNew ≡ aidOld
((aid , aidPrev) ∷ s) connects aidNew to aidOld  =
  aid ≡ aidNew × s connects aidPrev to aidOld ⊎ s connects aidNew to aidOld
\end{code}
\begin{code}
enactable  : EnactState → List (GovActionID × GovActionID)
           → GovActionID × GovActionState → Type
enactable e aidPairs = λ (aidNew , as) → case getHashES e (action as) of
\end{code}
\begin{code}[hide]
  λ where
\end{code}
\begin{code}
   nothing        → ⊤
   (just aidOld)  → ∃[ t ]  fromList t ⊆ fromList aidPairs
                            × Unique t × t connects aidNew to aidOld

allEnactable : EnactState → GovState → Type
allEnactable e aid×states = All (enactable e (getAidPairsList aid×states)) aid×states

hasParentE : EnactState → GovActionID → GovAction → Type
hasParentE e aid a = case getHashES e a of
\end{code}
\begin{code}[hide]
  λ where
\end{code}
\begin{code}
   nothing    → ⊤
   (just id)  → id ≡ aid

hasParent : EnactState → GovState → (a : GovAction) → NeedsHash a → Type
hasParent e s a aid = case getHash aid of
\end{code}
\begin{code}[hide]
  λ where
\end{code}
\begin{code}
    nothing      → ⊤
    (just aid')  → hasParentE e aid' a
                   ⊎ Any (λ (gid , gas) → gid ≡ aid' × Overlap (gas .action) a) s
\end{code}
\begin{code}[hide]
open Equivalence

hasParentE? : ∀ e aid a → Dec (hasParentE e aid a)
hasParentE? e aid a with getHashES e a
... | nothing   = yes _
... | (just id) = id ≟ aid

hasParent? : ∀ e s a aid → Dec (hasParent e s a aid)
hasParent? e s a aid with getHash aid
... | just aid' = hasParentE? e aid' a
                  ⊎-dec any? (λ (gid , gas) → gid ≟ aid' ×-dec Overlap? (gas .action) a) s
... | nothing = yes _

-- newtype to make the instance resolution work
data hasParent' : EnactState → GovState → (a : GovAction) → NeedsHash a → Type where
  HasParent' : ∀ {x y z w} → hasParent x y z w → hasParent' x y z w

instance
  hasParent?' : ∀ {x y z w} → hasParent' x y z w ⁇
  hasParent?' = ⁇ map′ HasParent' (λ where (HasParent' x) → x) (hasParent? _ _ _ _)

[_connects_to_?] : ∀ l aidNew aidOld → Dec (l connects aidNew to aidOld)
[ [] connects aidNew to aidOld ?] = aidNew ≟ aidOld

[ (aid , aidPrev) ∷ s connects aidNew to aidOld ?] =
  ((aid ≟ aidNew) ×-dec [ s connects aidPrev to aidOld ?]) ⊎-dec [ s connects aidNew to aidOld ?]

any?-connecting-subperm : ∀ {u} {v} → ∀ L → Dec (Any(λ l → Unique l × l connects u to v) (subpermutations L))
any?-connecting-subperm {u} {v} L = any? (λ l → unique? _≟_ l ×-dec [ l connects u to v ?]) (subpermutations L)

∃?-connecting-subperm : ∀ {u} {v} → ∀ L → Dec (∃[ l ] l ∈ˡ subpermutations L × Unique l × l connects u to v)
∃?-connecting-subperm L = from (map′⇔ (↔⇒ Any↔)) (any?-connecting-subperm L)

∃?-connecting-subset : ∀ {u} {v} → ∀ L → Dec (∃[ l ] l ⊆ˡ L × Unique l × l connects u to v)
∃?-connecting-subset L = from (map′⇔ ∃uniqueSubset⇔∃uniqueSubperm) (∃?-connecting-subperm L)

enactable? : ∀ eState aidPairs aidNew×st → Dec (enactable eState aidPairs aidNew×st)
enactable? eState aidPairs (aidNew , as) with getHashES eState (GovActionState.action as)
... | nothing = yes tt
... | just aidOld = from (map′⇔ ∃-sublist-⇔) (∃?-connecting-subset aidPairs)

allEnactable? : ∀ eState aid×states → Dec (allEnactable eState aid×states)
allEnactable? eState aid×states =
  all? (λ aid×st → enactable? eState (getAidPairsList aid×states) aid×st) aid×states

-- newtype to make the instance resolution work
data allEnactable' : EnactState → GovState → Type where
  AllEnactable' : ∀ {x y} → allEnactable x y → allEnactable' x y

instance
  allEnactable?' : ∀ {x y} → allEnactable' x y ⁇
  allEnactable?' = ⁇ map′ AllEnactable' (λ where (AllEnactable' x) → x) (allEnactable? _ _)

-- `maxAllEnactable` returns a list `ls` of sublists of the given
-- list (`aid×states : List (GovActionID × GovActionState)`) such that
--    (i) each sublist `l ∈ ls` satisfies `allEnactable e l` and
--   (ii) each sublist `l ∈ ls` is of maximal length among sublists of `aid×states` satisfying `allEnactable`.
maxAllEnactable : EnactState → List (GovActionID × GovActionState) → List (List (GovActionID × GovActionState))
maxAllEnactable e = maxsublists⊧P (allEnactable? e)

-- Every sublist returned by `maxAllEnactable` satisfies (i).
∈-maxAllEnactable→allEnactable : ∀ {e} {aid×states} l
  → l ∈ˡ maxAllEnactable e aid×states → allEnactable e l
∈-maxAllEnactable→allEnactable {e} {aid×states} l l∈ =
  proj₂ (∈-filter⁻ (allEnactable? e) {l} {sublists aid×states}
          (proj₁ (∈-filter⁻ (λ l → length l ≟ maxlen (sublists⊧P (allEnactable? e) aid×states)) l∈)))

-- Every sublist returned by `maxAllEnactable` satisfies (ii).
∈-maxAllEnactable→maxLength : ∀ {e aid×states l l'}
                              → l ∈ˡ sublists aid×states → allEnactable e l
                              → l' ∈ˡ maxAllEnactable e aid×states
                              → length l ≤ length l'
∈-maxAllEnactable→maxLength {e} {aid×states} {l} {l'} l∈ el l'∈ =
  let ls = sublists⊧P (allEnactable? e) aid×states in
    subst (length l ≤_)
          (sym (proj₂ (∈-filter⁻ (λ l → length l ≟ maxlen ls) {xs = ls} l'∈)))
          (∈-maxlen-≤ l (∈-filter⁺ (allEnactable? e) l∈ el))
\end{code}
\end{AgdaMultiCode}
\caption{Enactability predicate}
\label{defs:enactable}
\end{figure*}

\clearpage

\begin{figure*}
\begin{code}
actionValid : ℙ Credential → Maybe ScriptHash → Maybe ScriptHash → Epoch → GovAction → Type
actionValid rewardCreds p ppolicy epoch (ChangePParams x) =
  p ≡ ppolicy
actionValid rewardCreds p ppolicy epoch (TreasuryWdrl x) =
  p ≡ ppolicy × mapˢ RwdAddr.stake (dom x) ⊆ rewardCreds
actionValid rewardCreds p ppolicy epoch (UpdateCommittee new rem q) =
  p ≡ nothing × (∀[ e ∈ range new ]  epoch < e) × (dom new ∩ rem ≡ᵉ ∅)
actionValid rewardCreds p ppolicy epoch _ =
  p ≡ nothing

actionWellFormed : GovAction → Type
actionWellFormed (ChangePParams x) = ppdWellFormed x
actionWellFormed (TreasuryWdrl x)  =
  (∀[ a ∈ dom x ] RwdAddr.net a ≡ NetworkId) × (∃[ v ∈ range x ] ¬ (v ≡ 0))
actionWellFormed _                 = ⊤
\end{code}
\caption{Validity and wellformedness predicates}
\label{fig:valid-and-wellformed}
\end{figure*}

\Cref{fig:valid-and-wellformed} defines predicates used in the \GOVPropose{} case
of the GOV rule to ensure that a governance action is valid and well-formed.
\begin{itemize}[itemsep=\itmsep]
  \item \actionValid{} ensures that the proposed action is valid given the current state of the system:
        \begin{itemize}[itemsep=\itmsep]
          \item a \ChangePParams{} action is valid if the proposal policy is provided;
          \item a \TreasuryWdrl{} action is valid if the proposal policy is provided and the reward stake
                credential is registered;
          \item an \UpdateCommittee{} action is valid if credentials of proposed candidates
                have not expired, and the action does not propose to both add and
                remove the same candidate.
        \end{itemize}
  \item \actionWellFormed{} ensures that the proposed action is well-formed:
        \begin{itemize}[itemsep=\itmsep]
          \item a \ChangePParams{} action must preserves well-formedness of the protocol parameters;
          \item a \TreasuryWdrl{} action is well-formed if the network ID is correct and
                there is at least one non-zero withdrawal amount in the given \RwdAddrToCoinMap{} map.
        \end{itemize}
\end{itemize}


\begin{code}[hide]
actionValid? : ∀ {rewardCreds p ppolicy epoch a} → actionValid rewardCreds p ppolicy epoch a ⁇
actionValid? {a = NoConfidence}          = it
actionValid? {a = UpdateCommittee _ _ _} = it
actionValid? {a = NewConstitution _ _}   = it
actionValid? {a = TriggerHF _}           = it
actionValid? {a = ChangePParams _}       = it
actionValid? {a = TreasuryWdrl _}        = it
actionValid? {a = Info}                  = it

actionWellFormed? : ∀ {a} → actionWellFormed a ⁇
actionWellFormed? {NoConfidence}          = it
actionWellFormed? {UpdateCommittee _ _ _} = it
actionWellFormed? {NewConstitution _ _}   = it
actionWellFormed? {TriggerHF _}           = it
actionWellFormed? {ChangePParams _}       = it
actionWellFormed? {TreasuryWdrl _}        = it
actionWellFormed? {Info}                  = it
\end{code}

\clearpage

\begin{code}[hide]
open GovEnv
open PParams hiding (a)

variable
  machr : Maybe Anchor
  achr : Anchor
  ast  : GovActionState
\end{code}
\begin{figure*}
\begin{AgdaMultiCode}
\begin{code}
data _⊢_⇀⦇_,GOV⦈_ where
\end{code}
\begin{code}
  GOV-Vote :
    ∙ (aid , ast) ∈ fromList s
    ∙ canVote (Γ .pparams) (action ast) (proj₁ voter)
    ∙ isRegistered Γ voter
    ∙ ¬ expired (Γ .epoch) ast
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₁ ⟦ aid , voter , v , machr ⟧ ,GOV⦈ addVote s aid voter v

  GOV-Propose :
    let pp           = Γ .pparams
        e            = Γ .epoch
        enactState   = Γ .enactState
        rewardCreds  = Γ .rewardCreds
        prop         = record { returnAddr = addr ; action = a ; anchor = achr
                              ; policy = p ; deposit = d ; prevAction = prev }
    in
    ∙ actionWellFormed a
    ∙ actionValid rewardCreds p (Γ .ppolicy) e a
    ∙ d ≡ pp .govActionDeposit
    ∙ validHFAction prop s enactState
    ∙ hasParent enactState s a prev
    ∙ addr .RwdAddr.net ≡ NetworkId
    ∙ addr .RwdAddr.stake ∈ rewardCreds
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV⦈ addAction s (pp .govActionLifetime +ᵉ e)
                                                 (Γ .txid , k) addr a prev

_⊢_⇀⦇_,GOVS⦈_ = ReflexiveTransitiveClosureᵢ {sts = _⊢_⇀⦇_,GOV⦈_}
\end{code}
\end{AgdaMultiCode}
\caption{Rules for the GOV transition system}
\label{defs:gov-rules}
\end{figure*}

The GOVS transition system is now given as the reflexitive-transitive
closure of the system GOV, described in \Cref{defs:gov-rules}.

For \GOVVote{}, we check that the governance action being voted on
exists; that the voter's role is allowed to vote (see \canVote{} in
\cref{fig:ratification-requirements}); and that the voter's
credential is actually associated with their role (see
\isRegistered{} in \cref{defs:gov-defs}).

For \GOVPropose{}, we check the correctness of the deposit along with some
and some conditions that ensure the action is well-formed and valid;
naturally, these checks depend on the type of action being proposed
(see \cref{fig:valid-and-wellformed}).
