\section{Governance}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Axiom.Set.Properties using (∃?-sublist-⇔)
open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup; ∈-filter)
open import Ledger.Types.GovStructure
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Gov (txs : _) (open TransactionStructure txs using (govStructure)) where
open GovStructure govStructure hiding (epoch)

open import Ledger.GovernanceActions govStructure hiding (yes; no)
open import Ledger.Enact govStructure
open import Ledger.Ratify txs

open import Data.List.Ext using (subpermutations; sublists)
open import Data.List.Ext.Properties
open import Data.List.Membership.Propositional.Properties using (Any↔; ∈-filter⁻; ∈-filter⁺)
open import Data.List.Relation.Binary.Subset.Propositional using () renaming (_⊆_ to _⊆ˡ_)
open import Relation.Nullary.Decidable using (map′)
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Any using (any?; Any)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)
open import Data.Relation.Nullary.Decidable.Ext using (map′⇔)
open import Function.Related.Propositional using (↔⇒)

open GovActionState
\end{code}
\begin{figure*}[h]
\emph{Derived types}
\begin{code}
GovState : Set
GovState = List (GovActionID × GovActionState)

record GovEnv : Set where
  constructor ⟦_,_,_,_,_⟧ᵍ
  field txid        : TxId
        epoch       : Epoch
        pparams     : PParams
        ppolicy     : Maybe ScriptHash
        enactState  : EnactState
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
private variable
  Γ : GovEnv
  s s' : GovState
  aid : GovActionID
  role : GovRole
  cred : Credential
  voter : Voter
  v : Vote
  c d : Coin
  addr : RwdAddr
  a : GovAction
  prev : NeedsHash a
  k : ℕ
  p : Maybe ScriptHash
\end{code}
\emph{Functions used in the GOV rules}
\begin{code}
addVote : GovState → GovActionID → Voter → Vote → GovState
addVote s aid voter v = map modifyVotes s
  where modifyVotes = λ (gid , s') → gid , record s'
          { votes = if gid ≡ aid then insert (votes s') voter v else votes s'}

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
\begin{figure*}[h]
\begin{code}
-- convert list of (GovActionID,GovActionState)-pairs to list GovActionID pairs.
getAidPairsList : GovState → List (GovActionID × GovActionID)
getAidPairsList aid×states =
  mapMaybe (λ (aid , aState) → (aid ,_) <$> getHash (prevAction aState)) $ aid×states

-- convert list of (GovActionID,GovActionState)-pairs to SET of GovActionID pairs.
getAidPairsSet : GovState → ℙ (GovActionID × GovActionID)
getAidPairsSet aid×states =
  mapPartial (λ (aid , as) → (aid ,_) <$> getHash (prevAction as)) $ fromList aid×states

-- a list of GovActionID pairs connects the first GovActionID to the second
_connects_to_ : List (GovActionID × GovActionID) → GovActionID → GovActionID → Set
[] connects aidNew to aidOld = aidNew ≡ aidOld
((aid , aidPrev) ∷ s) connects aidNew to aidOld  = aid ≡ aidNew × s connects aidPrev to aidOld
                                                 ⊎ s connects aidNew to aidOld

enactable : EnactState → List (GovActionID × GovActionID) → GovActionID × GovActionState → Set
enactable e aidPairs = λ (aidNew , as) → case getHashES e (GovActionState.action as) of λ where
  nothing       → ⊤
  (just aidOld) → ∃[ t ] fromList t ⊆ fromList aidPairs × Unique t × t connects aidNew to aidOld

allEnactable : EnactState → GovState → Set
allEnactable e aid×states = All (enactable e (getAidPairsList aid×states)) aid×states
\end{code}
\begin{code}[hide]
open Equivalence

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
... | just aidOld = from (∃?-sublist-⇔ th) (∃?-connecting-subset aidPairs)

allEnactable? : ∀ eState aid×states → Dec (allEnactable eState aid×states)
allEnactable? eState aid×states =
  all? (λ aid×st → enactable? eState (getAidPairsList aid×states) aid×st) aid×states

-- newtype to make the instance resolution work
data allEnactable' : EnactState → GovState → Set where
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
\caption{Enactability predicate}
\label{defs:enactable}
\end{figure*}

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
      sig = inj₁ record { gid = aid ; voter = voter ; vote = v ; anchor = x }
    in
    ∙ (aid , ast) ∈ fromList s
    ∙ canVote pparams (action ast) (proj₁ voter)
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ addVote s aid voter v

  GOV-Propose : ∀ {x} → let
      open GovEnv Γ; open PParams pparams hiding (a)
      prop = record { returnAddr = addr ; action = a ; anchor = x
                    ; policy = p ; deposit = d ; prevAction = prev }
      s' = addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a prev
    in
    ∙ actionWellFormed a
    ∙ d ≡ govActionDeposit
    ∙ (∃[ u ] a ≡ ChangePParams u ⊎ ∃[ w ] a ≡ TreasuryWdrl w → p ≡ ppolicy)
    ∙ (∀ {new rem q} → a ≡ NewCommittee new rem q
       → ∀[ e ∈ range new ]  epoch < e  ×  dom new ∩ rem ≡ᵉ ∅)
    ∙ validHFAction prop s enactState
    ∙ allEnactable enactState s'
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_ = ReflexiveTransitiveClosureᵢ _⊢_⇀⦇_,GOV'⦈_
\end{code}
\caption{Rules for the GOV transition system}
\label{defs:gov-rules}
\end{figure*}

The GOV transition system is now given as the reflexitive-transitive
closure of the system GOV', described in
Figure~\ref{defs:gov-rules}.

For \GOVVote, we check that the governance action being voted on
exists and the role is allowed to vote. \canVote is defined in
Figure~\ref{fig:ratification-requirements}.

For \GOVPropose, we check well-formedness, correctness of the deposit
and some conditions depending on the type of the action:
\begin{itemize}
\item for \ChangePParams or \TreasuryWdrl, the proposal policy needs to be provided;
\item for \NewCommittee, no proposals with members expiring in the present or past
  epoch are allowed, and candidates cannot be added and removed at the same time;
\item and we check the validity of hard-fork actions via \validHFAction.
\end{itemize}
