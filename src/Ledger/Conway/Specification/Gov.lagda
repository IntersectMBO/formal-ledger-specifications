\section{Governance}
\label{sec:governance}
\modulenote{\ConwayModule{Gov}}, where we define the types required for ledger governance.

The behavior of \GovState{} is similar to that of a queue.  New proposals are
appended at the end, but any proposal can be removed at the epoch boundary.  However,
for the purposes of enactment, earlier proposals take priority.  Note that
\EnactState{} used in \GovEnv{} is defined in \cref{sec:enactment}.

\begin{itemize}
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

open import Ledger.Conway.Specification.Gov.Base
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

module Ledger.Conway.Specification.Gov (txs : _) (open TransactionStructure txs hiding (epoch)) where

open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup; ∈-filter)

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Ratify txs hiding (vote)
open import Ledger.Conway.Specification.Certs govStructure

open import stdlib.Data.List.Subpermutations using (subpermutations; sublists)
open import stdlib.Data.List.Subpermutations.Properties
open import Data.List.Membership.Propositional.Properties using (Any↔; ∈-filter⁻; ∈-filter⁺)
open import Data.List.Relation.Binary.Subset.Propositional using () renaming (_⊆_ to _⊆ˡ_)
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Any using (any?; Any)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Relation.Nullary.Decidable using () renaming (map to map-Dec)
open import Function.Properties.Equivalence using () renaming (sym to sym-Equiv)
open import Function.Related.Propositional using (↔⇒)

open GovActionState
\end{code}

\begin{figure*}
\emph{Derived types}
\begin{AgdaMultiCode}
\begin{code}[hide]
GovState : Type
\end{code}
\begin{code}
GovState = List (GovActionID × GovActionState)
\end{code}
\begin{code}[hide]
record HasGovState {a} (A : Type a) : Type a where
  field GovStateOf : A → GovState
open HasGovState ⦃...⦄ public
\end{code}
\begin{code}

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
\end{AgdaMultiCode}
\caption{Types used in the GOV transition system}
\label{defs:gov-derived-types}
\end{figure*}

\begin{code}[hide]
instance
  unquoteDecl HasCast-GovEnv = derive-HasCast
    [ (quote GovEnv , HasCast-GovEnv) ]

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
  prev : NeedsHash (gaType a)
  k : ℕ
  p : Maybe ScriptHash

open GState
open PState
\end{code}

\begin{figure*}
\begin{AgdaMultiCode}
\begin{code}
govActionPriority : GovActionType → ℕ
govActionPriority NoConfidence     = 0
govActionPriority UpdateCommittee  = 1
govActionPriority NewConstitution  = 2
govActionPriority TriggerHF        = 3
govActionPriority ChangePParams    = 4
govActionPriority TreasuryWdrl     = 5
govActionPriority Info             = 6

Overlap : GovActionType → GovActionType → Type
Overlap NoConfidence    UpdateCommittee  = ⊤
Overlap UpdateCommittee NoConfidence     = ⊤
Overlap a               a'               = a ≡ a'
\end{code}
\begin{code}[hide]
-- TODO: cleanup this
Overlap? : (a a' : GovActionType) → Dec (Overlap a a')
Overlap? NoConfidence    UpdateCommittee  = Dec-⊤ .dec
Overlap? UpdateCommittee NoConfidence     = Dec-⊤ .dec
Overlap? NoConfidence NoConfidence = yes refl
Overlap? NoConfidence NewConstitution = no (λ ())
Overlap? NoConfidence TriggerHF = no (λ ())
Overlap? NoConfidence ChangePParams = no (λ ())
Overlap? NoConfidence TreasuryWdrl = no (λ ())
Overlap? NoConfidence Info = no (λ ())
Overlap? UpdateCommittee UpdateCommittee = yes refl
Overlap? UpdateCommittee NewConstitution = no (λ ())
Overlap? UpdateCommittee TriggerHF = no (λ ())
Overlap? UpdateCommittee ChangePParams = no (λ ())
Overlap? UpdateCommittee TreasuryWdrl = no (λ ())
Overlap? UpdateCommittee Info = no (λ ())
Overlap? NewConstitution NoConfidence = no (λ ())
Overlap? NewConstitution UpdateCommittee = no (λ ())
Overlap? NewConstitution NewConstitution = yes refl
Overlap? NewConstitution TriggerHF = no (λ ())
Overlap? NewConstitution ChangePParams = no (λ ())
Overlap? NewConstitution TreasuryWdrl = no (λ ())
Overlap? NewConstitution Info = no (λ ())
Overlap? TriggerHF NoConfidence = no (λ ())
Overlap? TriggerHF UpdateCommittee = no (λ ())
Overlap? TriggerHF NewConstitution = no (λ ())
Overlap? TriggerHF TriggerHF = yes refl
Overlap? TriggerHF ChangePParams = no (λ ())
Overlap? TriggerHF TreasuryWdrl = no (λ ())
Overlap? TriggerHF Info = no (λ ())
Overlap? ChangePParams NoConfidence = no (λ ())
Overlap? ChangePParams UpdateCommittee = no (λ ())
Overlap? ChangePParams NewConstitution = no (λ ())
Overlap? ChangePParams TriggerHF = no (λ ())
Overlap? ChangePParams ChangePParams = yes refl
Overlap? ChangePParams TreasuryWdrl = no (λ ())
Overlap? ChangePParams Info = no (λ ())
Overlap? TreasuryWdrl NoConfidence = no (λ ())
Overlap? TreasuryWdrl UpdateCommittee = no (λ ())
Overlap? TreasuryWdrl NewConstitution = no (λ ())
Overlap? TreasuryWdrl TriggerHF = no (λ ())
Overlap? TreasuryWdrl ChangePParams = no (λ ())
Overlap? TreasuryWdrl TreasuryWdrl = yes refl
Overlap? TreasuryWdrl Info = no (λ ())
Overlap? Info NoConfidence = no (λ ())
Overlap? Info UpdateCommittee = no (λ ())
Overlap? Info NewConstitution = no (λ ())
Overlap? Info TriggerHF = no (λ ())
Overlap? Info ChangePParams = no (λ ())
Overlap? Info TreasuryWdrl = no (λ ())
Overlap? Info Info = yes refl
\end{code}
\begin{code}

insertGovAction : GovState → GovActionID × GovActionState → GovState
insertGovAction [] gaPr = [ gaPr ]
insertGovAction ((gaID₀ , gaSt₀) ∷ gaPrs) (gaID₁ , gaSt₁)
  =  if govActionPriority (action gaSt₀ .gaType) ≤ govActionPriority (action gaSt₁ .gaType)
     then (gaID₀ , gaSt₀) ∷ insertGovAction gaPrs (gaID₁ , gaSt₁)
     else (gaID₁ , gaSt₁) ∷ (gaID₀ , gaSt₀) ∷ gaPrs

mkGovStatePair : Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash (a .gaType)
                 → GovActionID × GovActionState
mkGovStatePair e aid addr a prev = (aid , record
  { votes = ∅ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

addAction : GovState
          → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash (a .gaType)
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
  isRegistered Γ (r , c) = case r of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      CC    → just c ∈ range (gState .ccHotKeys)
      DRep  → c ∈ dom (gState .dreps)
      SPO   → c ∈ mapˢ KeyHashObj (dom (pState .pools))
        where
          open CertState (GovEnv.certState Γ) using (gState; pState)

  validHFAction : GovProposal → GovState → EnactState → Type
  validHFAction (record { action = ⟦ TriggerHF , v ⟧ᵍᵃ ; prevAction = prev }) s e =
    (let (v' , aid) = EnactState.pv e in aid ≡ prev × pvCanFollow v' v)
    ⊎ ∃₂[ x , v' ] (prev , x) ∈ fromList s × x .action ≡ ⟦ TriggerHF , v' ⟧ᵍᵃ × pvCanFollow v' v
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
Priority is also used to check if two actions \AgdaFunction{Overlap}; that is,
they would modify the same piece of \AgdaDatatype{EnactState}.

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
enactable e aidPairs = λ (aidNew , as) → case getHashES e (action as .gaType) of
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

hasParentE : EnactState → GovActionID → GovActionType → Type
hasParentE e aid gaTy = case getHashES e gaTy of
\end{code}
\begin{code}[hide]
  λ where
\end{code}
\begin{code}
   nothing    → ⊤
   (just id)  → id ≡ aid

hasParent : EnactState → GovState → (gaTy : GovActionType) → NeedsHash gaTy → Type
hasParent e s gaTy aid = case getHash aid of
\end{code}
\begin{code}[hide]
  λ where
\end{code}
\begin{code}
    nothing      → ⊤
    (just aid')  → hasParentE e aid' gaTy
                   ⊎ Any (λ (gid , gas) → gid ≡ aid' × Overlap (gas .action .gaType) gaTy) s
\end{code}
\begin{code}[hide]
open Equivalence

hasParentE? : ∀ e aid a → Dec (hasParentE e aid a)
hasParentE? e aid gaTy with getHashES e gaTy
... | nothing   = yes _
... | (just id) = id ≟ aid

hasParent? : ∀ e s a aid → Dec (hasParent e s a aid)
hasParent? e s gaTy aid with getHash aid
... | just aid' = hasParentE? e aid' gaTy
                  ⊎-dec any? (λ (gid , gas) → gid ≟ aid' ×-dec Overlap? (gas .action .gaType) gaTy) s
... | nothing = yes _

-- newtype to make the instance resolution work
data hasParent' : EnactState → GovState → (gaTy : GovActionType) → NeedsHash gaTy → Type where
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
∃?-connecting-subperm L = map-Dec (sym-Equiv (↔⇒ Any↔)) (any?-connecting-subperm L)

∃?-connecting-subset : ∀ {u} {v} → ∀ L → Dec (∃[ l ] l ⊆ˡ L × Unique l × l connects u to v)
∃?-connecting-subset L = map-Dec (sym-Equiv ∃uniqueSubset⇔∃uniqueSubperm) (∃?-connecting-subperm L)

enactable? : ∀ eState aidPairs aidNew×st → Dec (enactable eState aidPairs aidNew×st)
enactable? eState aidPairs (aidNew , as) with getHashES eState (GovActionState.action as .gaType)
... | nothing = yes tt
... | just aidOld = map-Dec (sym-Equiv ∃-sublist-⇔) (∃?-connecting-subset aidPairs)

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
actionValid rewardCreds p ppolicy epoch ⟦ ChangePParams , _ ⟧ᵍᵃ =
  p ≡ ppolicy
actionValid rewardCreds p ppolicy epoch ⟦ TreasuryWdrl  , x ⟧ᵍᵃ =
  p ≡ ppolicy × mapˢ RwdAddr.stake (dom x) ⊆ rewardCreds
actionValid rewardCreds p ppolicy epoch ⟦ UpdateCommittee , (new , rem , q) ⟧ᵍᵃ =
  p ≡ nothing × (∀[ e ∈ range new ]  epoch < e) × (dom new ∩ rem ≡ᵉ ∅)
actionValid rewardCreds p ppolicy epoch _ =
  p ≡ nothing

actionWellFormed : GovAction → Type
actionWellFormed ⟦ ChangePParams , x ⟧ᵍᵃ = ppdWellFormed x
actionWellFormed ⟦ TreasuryWdrl  , x ⟧ᵍᵃ =
  (∀[ a ∈ dom x ] NetworkIdOf a ≡ NetworkId) × (∃[ v ∈ range x ] ¬ (v ≡ 0))
actionWellFormed _                 = ⊤
\end{code}
\caption{Validity and wellformedness predicates}
\label{fig:valid-and-wellformed}
\end{figure*}

\Cref{fig:valid-and-wellformed} defines predicates used in the \GOVPropose{} case
of the GOV rule to ensure that a governance action is valid and well-formed.
\begin{itemize}
  \item \actionValid{} ensures that the proposed action is valid given the current state of the system:
        \begin{itemize}
          \item a \ChangePParams{} action is valid if the proposal policy is provided;
          \item a \TreasuryWdrl{} action is valid if the proposal policy is provided and the reward stake
                credential is registered;
          \item an \UpdateCommittee{} action is valid if credentials of proposed candidates
                have not expired, and the action does not propose to both add and
                remove the same candidate.
        \end{itemize}
  \item \actionWellFormed{} ensures that the proposed action is well-formed:
        \begin{itemize}
          \item a \ChangePParams{} action must preserves well-formedness of the protocol parameters;
          \item a \TreasuryWdrl{} action is well-formed if the network ID is correct and
                there is at least one non-zero withdrawal amount in the given \RwdAddrToCoinMap{} map.
        \end{itemize}
\end{itemize}


\begin{code}[hide]
actionValid? : ∀ {rewardCreds p ppolicy epoch a} → actionValid rewardCreds p ppolicy epoch a ⁇
actionValid? {a = ⟦ NoConfidence    , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ UpdateCommittee , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ NewConstitution , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ TriggerHF       , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ ChangePParams   , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ TreasuryWdrl    , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ Info            , _ ⟧ᵍᵃ} = it

actionWellFormed? : ∀ {a} → actionWellFormed a ⁇
actionWellFormed? {⟦ NoConfidence    , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ UpdateCommittee , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ NewConstitution , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ TriggerHF       , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ ChangePParams   , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ TreasuryWdrl    , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ Info            , _ ⟧ᵍᵃ} = it
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
    ∙ hasParent enactState s (a .gaType) prev
    ∙ NetworkIdOf addr ≡ NetworkId
    ∙ CredentialOf addr ∈ rewardCreds
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
