\section{Governance}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Axiom.Set.Properties using (∉-∅; ∃?-sublist-⇔)
open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup)
open import Ledger.Types.GovStructure

module Ledger.Gov (gs : _) (open GovStructure gs hiding (epoch)) where

open import Ledger.GovernanceActions gs hiding (yes; no)

open import Data.List.Ext renaming (_⊆_ to _⊆ˡ_) hiding (insert)
open import Data.List.Ext.Properties using (⊆id; ∃uniqueSubset⇔∃uniqueSubperm; ∃⇔Any)
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.Any using (any?; Any; here; there)
open import Data.Relation.Nullary.Decidable.Ext using (map′⇔)
open import Relation.Nullary.Decidable using (_×-dec_)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)

\end{code}
\begin{figure*}[h]
\emph{Derived types}
\begin{code}
record GovActionState : Set where
  field votes       : Voter ⇀ Vote
        returnAddr  : RwdAddr
        expiresIn   : Epoch
        action      : GovAction
        prevAction  : NeedsHash action

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
open GovActionState

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
((aid , aidPrev) ∷ s) connects aidNew to aidOld = aid ≡ aidNew × s connects aidPrev to aidOld
                                                  ⊎ s connects aidNew to aidOld
-- TODO: delete these notes (and possibly add them to docs) after confirming they're correct.
--   Suppose:  aid₁ → aid₂ → aid₃ → aid₄ → aid₅.
--   And let:  l := (aid₅, aid₄) (aid₄, aid₃) (aid₃, aid₂) (aid₂, aid₁)
--   Check:    l connects aid₅ to aid₂ :
--               ((aid₅, aid₄) ∷ s) connects aid₅ to aid₂ = aid₅ ≡ aid₅ × s connects aid₄ to aid₂

[_connects_to_?] : ∀ l aidNew aidOld → Dec (l connects aidNew to aidOld)
[ [] connects aidNew to aidOld ?] = aidNew ≟ aidOld

[ (aid , aidPrev) ∷ s connects aidNew to aidOld ?] =
  ((aid ≟ aidNew) ×-dec [ s connects aidPrev to aidOld ?]) ⊎-dec [ s connects aidNew to aidOld ?]

enactable : EnactState → List (GovActionID × GovActionID) → GovActionID × GovActionState → Set
enactable e aidPairs = λ (aidNew , as) → case getHashES e (GovActionState.action as) of λ where
  nothing → ⊤
  (just aidOld) → ∃[ t ](fromList t ⊆ fromList aidPairs × Unique t × t connects aidNew to aidOld)

open Equivalence

any?-connecting-subperm : ∀ {u}{v} → ∀ L → Dec (Any(λ l → Unique l × l connects u to v) (subpermutations L))
any?-connecting-subperm {u}{v} L = any? (λ l → unique? _≟_ l ×-dec [ l connects u to v ?]) (subpermutations L)

∃?-connecting-subperm : ∀ {u}{v} → ∀ L → Dec (∃[ l ] l ∈ˡ subpermutations L × Unique l × l connects u to v)
∃?-connecting-subperm L = from (map′⇔ ∃⇔Any) (any?-connecting-subperm L)

∃?-connecting-subset : ∀ {u}{v} → ∀ L → Dec (∃[ l ](l ⊆ˡ L × Unique l × l connects u to v))
∃?-connecting-subset L = from (map′⇔ ∃uniqueSubset⇔∃uniqueSubperm) (∃?-connecting-subperm L)

enactable? : ∀ eState aidPairs aidNew×st → Dec(enactable eState aidPairs aidNew×st)
enactable? eState aidPairs (aidNew , as) with getHashES eState (GovActionState.action as)
... | nothing = yes tt
... | just aidOld = from (∃?-sublist-⇔ th) (∃?-connecting-subset aidPairs)

allEnactable : EnactState → GovState → Set
allEnactable e aid×states = All (λ p → enactable e (getAidPairsList aid×states) p) aid×states

allEnactable? : ∀ eState aid×states → Dec (allEnactable eState aid×states)
allEnactable? eState aid×states =
  all? (λ aid×st → enactable? eState (getAidPairsList aid×states) aid×st) aid×states

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
        { gid = aid ; voter = voter ; vote = v ; anchor = x }
    in
    ∙ (aid , ast) ∈ fromList s
    ∙ canVote pparams (action ast) (proj₁ voter)
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ addVote s aid voter v

  GOV-Propose : ∀ {x} → let
      open GovEnv Γ; open PParams pparams hiding (a)
      prop = record
        { returnAddr = addr ; action = a ; anchor = x
        ; policy = p ; deposit = d ; prevAction = prev }
      s' = addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a prev
    in
    ∙ actionWellFormed a ≡ true
    ∙ d ≡ govActionDeposit
    ∙ (∃[ u ] a ≡ ChangePParams u ⊎ ∃[ w ] a ≡ TreasuryWdrl w → p ≡ ppolicy)
    ∙ (∀ {new rem q} → a ≡ NewCommittee new rem q
       → ∀[ e ∈ range new ]  epoch < e  ×  dom new ∩ rem ≡ᵉ ∅)
    ∙ validHFAction prop s enactState
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_ = ReflexiveTransitiveClosureᵢ _⊢_⇀⦇_,GOV'⦈_
\end{code}
\caption{Rules for the GOV transition system}
\label{defs:gov-rules}
\end{figure*}
