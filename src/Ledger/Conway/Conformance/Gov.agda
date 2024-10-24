{-# OPTIONS --safe #-}

open import Ledger.Types.GovStructure
open import Ledger.Conway.Conformance.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Gov (txs : _) (open TransactionStructure txs using (govStructure; networkId)) where
open GovStructure govStructure hiding (epoch)

open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup; ∈-filter)

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.Conway.Conformance.GovernanceActions govStructure hiding (yes; no)
open import Ledger.Conway.Conformance.Enact govStructure
open import Ledger.Conway.Conformance.Ratify txs hiding (vote)

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

GovState : Type

GovState = List (GovActionID × GovActionState)

record GovEnv : Type where

  constructor ⟦_,_,_,_,_⟧ᵍ
  field

    txid        : TxId
    epoch       : Epoch
    pparams     : PParams
    ppolicy     : Maybe ScriptHash
    enactState  : EnactState

data

  _⊢_⇀⦇_,GOV'⦈_  : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Type

_⊢_⇀⦇_,GOV⦈_     : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Type

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

govActionPriority : GovAction → ℕ
govActionPriority NoConfidence             = 0
govActionPriority (UpdateCommittee _ _ _)  = 1
govActionPriority (NewConstitution _ _)    = 2
govActionPriority (TriggerHF _)            = 3
govActionPriority (ChangePParams _)        = 4
govActionPriority (TreasuryWdrl _)         = 5
govActionPriority Info                     = 6

_∼_ : ℕ → ℕ → Type
n ∼ m = (n ≡ m) ⊎ (n ≡ 0 × m ≡ 1) ⊎ (n ≡ 1 × m ≡ 0)

_≈_ : GovAction → GovAction → Type
a ≈ a' = (govActionPriority a) ∼ (govActionPriority a')

_∼?_ : (n m : ℕ) → Dec (n ∼ m)
n ∼? m = n ≟ m ⊎-dec (n ≟ 0 ×-dec m ≟ 1) ⊎-dec (n ≟ 1 ×-dec m ≟ 0)

_≈?_ : (a a' : GovAction) → Dec (a ≈ a')
a ≈? a' = (govActionPriority a) ∼? (govActionPriority a')


insertGovAction : GovState → GovActionID × GovActionState → GovState
insertGovAction [] gaPr = [ gaPr ]
insertGovAction ((gaID₀ , gaSt₀) ∷ gaPrs) (gaID₁ , gaSt₁)
  =  if (govActionPriority (action gaSt₀)) ≤? (govActionPriority (action gaSt₁))
     then (gaID₀ , gaSt₀) ∷ insertGovAction gaPrs (gaID₁ , gaSt₁)
     else (gaID₁ , gaSt₁) ∷ (gaID₀ , gaSt₀) ∷ gaPrs

addVote : GovState → GovActionID → Voter → Vote → GovState
addVote s aid voter v = map modifyVotes s
  where modifyVotes = λ (gid , s') → gid , record s'
          { votes = if gid ≡ aid then insert (votes s') voter v else votes s'}

mkGovStatePair : Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
                 → GovActionID × GovActionState
mkGovStatePair e aid addr a prev = (aid , record
  { votes = ∅ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

addAction : GovState
          → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
          → GovState
addAction s e aid addr a prev = insertGovAction s (mkGovStatePair e aid addr a prev)

validHFAction : GovProposal → GovState → EnactState → Type
validHFAction (record { action = TriggerHF v ; prevAction = prev }) s e =
  (let (v' , aid) = EnactState.pv e in aid ≡ prev × pvCanFollow v' v)
  ⊎ ∃₂[ x , v' ] (prev , x) ∈ fromList s × x .action ≡ TriggerHF v' × pvCanFollow v' v
validHFAction _ _ _ = ⊤

-- Convert list of (GovActionID,GovActionState)-pairs to list of GovActionID pairs.
getAidPairsList : GovState → List (GovActionID × GovActionID)
getAidPairsList aid×states =
  mapMaybe (λ (aid , aState) → (aid ,_) <$> getHash (prevAction aState)) $ aid×states

-- A list of GovActionID pairs connects the first GovActionID to the second.
_connects_to_ : List (GovActionID × GovActionID) → GovActionID → GovActionID → Type
[] connects aidNew to aidOld = aidNew ≡ aidOld
((aid , aidPrev) ∷ s) connects aidNew to aidOld  =
  aid ≡ aidNew × s connects aidPrev to aidOld ⊎ s connects aidNew to aidOld

enactable  : EnactState → List (GovActionID × GovActionID)
           → GovActionID × GovActionState → Type
enactable e aidPairs = λ (aidNew , as) → case getHashES e (action as) of

  λ where

   nothing        → ⊤
   (just aidOld)  → ∃[ t ]  fromList t ⊆ fromList aidPairs
                            × Unique t × t connects aidNew to aidOld

allEnactable : EnactState → GovState → Type
allEnactable e aid×states = All (enactable e (getAidPairsList aid×states)) aid×states

hasParentE : EnactState → GovActionID → GovAction → Type
hasParentE e aid a = case getHashES e a of

  λ where

   nothing    → ⊤
   (just id)  → id ≡ aid

hasParent : EnactState → GovState → (a : GovAction) → NeedsHash a → Type
hasParent e s a aid with getHash aid
... | just aid' = hasParentE e aid' a
                  ⊎ Any (λ (gid , gas) → gid ≡ aid' × action gas ≈ a) s
... | nothing = ⊤

open Equivalence

hasParentE? : ∀ e aid a → Dec (hasParentE e aid a)
hasParentE? e aid a with getHashES e a
... | nothing   = yes _
... | (just id) = id ≟ aid

hasParent? : ∀ e s a aid → Dec (hasParent e s a aid)
hasParent? e s a aid with getHash aid
... | just aid' = hasParentE? e aid' a
                  ⊎-dec any? (λ (gid , gas) → gid ≟ aid' ×-dec action gas ≈? a) s
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

data _⊢_⇀⦇_,GOV'⦈_ where

  GOV-Vote : ∀ {x ast} → let
      open GovEnv Γ
      vote = record { gid = aid ; voter = voter ; vote = v ; anchor = x }
    in
    ∙ (aid , ast) ∈ fromList s
    ∙ canVote pparams (action ast) (proj₁ voter)
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₁ vote ,GOV'⦈ addVote s aid voter v

  GOV-Propose : ∀ {x} → let
      open GovEnv Γ; open PParams pparams hiding (a)
      prop = record { returnAddr = addr ; action = a ; anchor = x
                    ; policy = p ; deposit = d ; prevAction = prev }
      s' = addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a prev
    in
    ∙ actionWellFormed a
    ∙ d ≡ govActionDeposit
    ∙ (∃[ u ] a ≡ ChangePParams u ⊎ ∃[ w ] a ≡ TreasuryWdrl w → p ≡ ppolicy)
    ∙ (¬ (∃[ u ] a ≡ ChangePParams u ⊎ ∃[ w ] a ≡ TreasuryWdrl w) → p ≡ nothing)
    ∙ (∀ {new rem q} → a ≡ UpdateCommittee new rem q
       → ∀[ e ∈ range new ]  epoch < e  ×  dom new ∩ rem ≡ᵉ ∅)
    ∙ validHFAction prop s enactState
    ∙ hasParent enactState s a prev
    ∙ addr .RwdAddr.net ≡ networkId
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_ = ReflexiveTransitiveClosureᵢ _⊢_⇀⦇_,GOV'⦈_
