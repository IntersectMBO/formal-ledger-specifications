---
source_branch: master
source_path: src/Ledger/Conway/Specification/Gov.lagda.md
---

# Governance {#sec:governance}

The behavior of `GovState`{.AgdaFunction} is similar to that of a queue.
New proposals are appended at the end, but any proposal can be removed
at the epoch boundary. However, for the purposes of enactment, earlier
proposals take priority. Note that `EnactState`{.AgdaRecord} used in
`GovEnv`{.AgdaRecord} is defined in
the [Enact][Ledger.Conway.Specification.Enact] module.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

module Ledger.Conway.Specification.Gov (txs : _) (open TransactionStructure txs hiding (epoch)) where

open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup; ∈-filter)

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Ratify txs
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
```
-->

## Governance Types {#governance-types}

*Derived types*

```agda
GovState : Type
GovState = List (GovActionID × GovActionState)
```

<!--
```agda
record HasGovState {a} (A : Type a) : Type a where
  field GovStateOf : A → GovState
open HasGovState ⦃...⦄ public
```
-->

```agda
record GovEnv : Type where
  field
    txid        : TxId
    epoch       : Epoch
    pparams     : PParams
    ppolicy     : Maybe ScriptHash
    enactState  : EnactState
    certState   : CertState
    rewardCreds : ℙ Credential
```

<!--
```agda
instance
  HasPParams-GovEnv : HasPParams GovEnv
  HasPParams-GovEnv .PParamsOf = GovEnv.pparams

  HasEnactState-GovEnv : HasEnactState GovEnv
  HasEnactState-GovEnv .EnactStateOf = GovEnv.enactState

  HasCertState-GovEnv : HasCertState GovEnv
  HasCertState-GovEnv .CertStateOf = GovEnv.certState

  unquoteDecl HasCast-GovEnv = derive-HasCast
    [ (quote GovEnv , HasCast-GovEnv) ]

private variable
  Γ      : GovEnv
  s s'   : GovState
  aid    : GovActionID
  voter  : GovVoter
  vote   : GovVote
  v      : Vote
  d      : Coin
  addr   : RwdAddr
  a      : GovAction
  prev   : NeedsHash (gaType a)
  k      : ℕ
  p      : Maybe ScriptHash

open GState
open PState
```
-->


## Governance Functions {#governance-functions}

The function definitions worth highlighting in this section are the following:

- `addVote`{.AgdaFunction} inserts (and potentially overrides) a vote
  made for a particular governance action (identified by its ID) by a
  credential with a role.

- `addAction`{.AgdaFunction} adds a new proposed action at the end of a
  given `GovState`{.AgdaFunction}.

- The `validHFAction`{.AgdaFunction} property indicates whether a given
  proposal, if it is a `TriggerHardFork`{.AgdaInductiveConstructor}
  action, can potentially be enacted in the future. For this to be the
  case, its `prevAction`{.AgdaField} needs to exist, be another
  `TriggerHardFork`{.AgdaInductiveConstructor} action and have a
  compatible version.

```agda
govActionPriority : GovActionType → ℕ
govActionPriority NoConfidence        = 0
govActionPriority UpdateCommittee     = 1
govActionPriority NewConstitution     = 2
govActionPriority TriggerHardFork     = 3
govActionPriority ChangePParams       = 4
govActionPriority TreasuryWithdrawal  = 5
govActionPriority Info                = 6

Overlap : GovActionType → GovActionType → Type
Overlap NoConfidence     UpdateCommittee  = ⊤
Overlap UpdateCommittee  NoConfidence     = ⊤
Overlap a                a'               = a ≡ a'
```

<!--
```agda
-- TODO: cleanup this
Overlap? : (a a' : GovActionType) → Dec (Overlap a a')
Overlap? NoConfidence    UpdateCommittee  = Dec-⊤ .dec
Overlap? UpdateCommittee NoConfidence     = Dec-⊤ .dec
Overlap? NoConfidence NoConfidence = yes refl
Overlap? NoConfidence NewConstitution = no (λ ())
Overlap? NoConfidence TriggerHardFork = no (λ ())
Overlap? NoConfidence ChangePParams = no (λ ())
Overlap? NoConfidence TreasuryWithdrawal = no (λ ())
Overlap? NoConfidence Info = no (λ ())
Overlap? UpdateCommittee UpdateCommittee = yes refl
Overlap? UpdateCommittee NewConstitution = no (λ ())
Overlap? UpdateCommittee TriggerHardFork = no (λ ())
Overlap? UpdateCommittee ChangePParams = no (λ ())
Overlap? UpdateCommittee TreasuryWithdrawal = no (λ ())
Overlap? UpdateCommittee Info = no (λ ())
Overlap? NewConstitution NoConfidence = no (λ ())
Overlap? NewConstitution UpdateCommittee = no (λ ())
Overlap? NewConstitution NewConstitution = yes refl
Overlap? NewConstitution TriggerHardFork = no (λ ())
Overlap? NewConstitution ChangePParams = no (λ ())
Overlap? NewConstitution TreasuryWithdrawal = no (λ ())
Overlap? NewConstitution Info = no (λ ())
Overlap? TriggerHardFork NoConfidence = no (λ ())
Overlap? TriggerHardFork UpdateCommittee = no (λ ())
Overlap? TriggerHardFork NewConstitution = no (λ ())
Overlap? TriggerHardFork TriggerHardFork = yes refl
Overlap? TriggerHardFork ChangePParams = no (λ ())
Overlap? TriggerHardFork TreasuryWithdrawal = no (λ ())
Overlap? TriggerHardFork Info = no (λ ())
Overlap? ChangePParams NoConfidence = no (λ ())
Overlap? ChangePParams UpdateCommittee = no (λ ())
Overlap? ChangePParams NewConstitution = no (λ ())
Overlap? ChangePParams TriggerHardFork = no (λ ())
Overlap? ChangePParams ChangePParams = yes refl
Overlap? ChangePParams TreasuryWithdrawal = no (λ ())
Overlap? ChangePParams Info = no (λ ())
Overlap? TreasuryWithdrawal NoConfidence = no (λ ())
Overlap? TreasuryWithdrawal UpdateCommittee = no (λ ())
Overlap? TreasuryWithdrawal NewConstitution = no (λ ())
Overlap? TreasuryWithdrawal TriggerHardFork = no (λ ())
Overlap? TreasuryWithdrawal ChangePParams = no (λ ())
Overlap? TreasuryWithdrawal TreasuryWithdrawal = yes refl
Overlap? TreasuryWithdrawal Info = no (λ ())
Overlap? Info NoConfidence = no (λ ())
Overlap? Info UpdateCommittee = no (λ ())
Overlap? Info NewConstitution = no (λ ())
Overlap? Info TriggerHardFork = no (λ ())
Overlap? Info ChangePParams = no (λ ())
Overlap? Info TreasuryWithdrawal = no (λ ())
Overlap? Info Info = yes refl
```
-->

```agda
insertGovAction : GovState → GovActionID × GovActionState → GovState
insertGovAction [] gaPr = [ gaPr ]
insertGovAction ((gaID₀ , gaSt₀) ∷ gaPrs) (gaID₁ , gaSt₁)
  =  if govActionPriority (action gaSt₀ .gaType) ≤ govActionPriority (action gaSt₁ .gaType)
     then (gaID₀ , gaSt₀) ∷ insertGovAction gaPrs (gaID₁ , gaSt₁)
     else (gaID₁ , gaSt₁) ∷ (gaID₀ , gaSt₀) ∷ gaPrs

mkGovStatePair :  Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash (a .gaType)
                  → GovActionID × GovActionState
mkGovStatePair e aid addr a prev = (aid , gas)
  where
  gas : GovActionState
  gas = record  { votes = record { gvCC = ∅ ; gvDRep = ∅ ; gvSPO = ∅ }
                ; returnAddr = addr
                ; expiresIn = e
                ; action = a
                ; prevAction = prev
                }

addAction :  GovState → Epoch → GovActionID → RwdAddr
             → (a : GovAction) → NeedsHash (a .gaType)
             → GovState
addAction s e aid addr a prev = insertGovAction s (mkGovStatePair e aid addr a prev)
```

<!--
```agda
opaque
```
-->

```agda
  addVote : GovState → GovActionID → GovVoter → Vote → GovState
  addVote gSt aid voter v = map modifyVotes gSt
    where
    modifyVotes : GovActionID × GovActionState → GovActionID × GovActionState
    modifyVotes (gid , gaSt) = gid , (if gid ≡ aid then record gaSt { votes = votes' voter } else gaSt)
      where
      open GovVotes (votes gaSt)
      votes' : GovVoter → GovVotes
      votes' ⟦ CC , c ⟧ᵍᵛ = record { gvCC = insert gvCC c v ; gvDRep = gvDRep ; gvSPO = gvSPO }
      votes' ⟦ DRep , c ⟧ᵍᵛ = record { gvCC = gvCC ; gvDRep = insert gvDRep c v ; gvSPO = gvSPO }
      votes' ⟦ SPO , kh ⟧ᵍᵛ = record { gvCC = gvCC ; gvDRep = gvDRep ; gvSPO = insert gvSPO kh v }

  isRegistered : GovEnv → GovVoter → Type
  isRegistered Γ v = case v of
    λ where
      ⟦ CC   , c  ⟧ᵍᵛ → just c ∈ range (CCHotKeysOf (CertStateOf Γ))
      ⟦ DRep , c  ⟧ᵍᵛ → c ∈ dom (DRepsOf (CertStateOf Γ))
      ⟦ SPO  , kh ⟧ᵍᵛ → kh ∈ dom (PoolsOf (CertStateOf Γ))

  validHFAction : GovProposal → GovState → EnactState → Type
  validHFAction (record { action = ⟦ TriggerHardFork , v ⟧ᵍᵃ ; prevAction = prev }) s e =
    (aid' ≡ prev × pvCanFollow ver v) ⊎ ∃₂[ x , v' ]  (prev , x) ∈ fromList s
                                                      × x .action ≡ ⟦ TriggerHardFork , v' ⟧ᵍᵃ
                                                      × pvCanFollow v' v
    where
      ver : ProtVer
      ver = EnactState.pv e .proj₁
      aid' : GovActionID
      aid' = EnactState.pv e .proj₂

  validHFAction _ _ _ = ⊤
```

## Enactability Predicate

This section contains some of the functions used to determine whether certain actions
are enactable in a given state.  Specifically, `allEnactable`{.AgdaFunction} passes
the `GovState`{.AgdaFunction} to `getAidPairsList`{.AgdaFunction} to obtain a list of
`GovActionID`{.AgdaFunction}-pairs which is then passed to `enactable`{.AgdaFunction}.
The latter uses the `_connects_to_`{.AgdaFunction} function to check whether the list
of `GovActionID`{.AgdaFunction}-pairs connects the proposed action to a previously
enacted one.[^1]

The function `govActionPriority`{.AgdaFunction} assigns a priority to
the various types of governance actions. This is useful for ordering
lists of governance actions (see the definition of the
`insertGovAction`{.AgdaFunction} function in the section on
[Functions of the GOV Transition System][]
Priority is also used to check if two actions `Overlap`{.AgdaFunction}; that is,
they would modify the same piece of `EnactState`{.AgdaDatatype}.

<!--
```agda
-- Convert list of (GovActionID,GovActionState)-pairs to list of GovActionID pairs.
getAidPairsList : GovState → List (GovActionID × GovActionID)
getAidPairsList aid×states =
  mapMaybe (λ (aid , aState) → (aid ,_) <$> getHash (prevAction aState)) $ aid×states

-- A list of GovActionID pairs connects the first GovActionID to the second.
_connects_to_ : List (GovActionID × GovActionID) → GovActionID → GovActionID → Type
[] connects aidNew to aidOld = aidNew ≡ aidOld
((aid , aidPrev) ∷ s) connects aidNew to aidOld  =
  aid ≡ aidNew × s connects aidPrev to aidOld ⊎ s connects aidNew to aidOld
```
-->

```agda
enactable  : EnactState → List (GovActionID × GovActionID)
           → GovActionID × GovActionState → Type
enactable e aidPairs = λ (aidNew , as) → case getHashES e (action as .gaType) of
  λ where
   nothing        → ⊤
   (just aidOld)  → ∃[ t ]  fromList t ⊆ fromList aidPairs
                            × Unique t × t connects aidNew to aidOld

allEnactable : EnactState → GovState → Type
allEnactable e aid×states = All (enactable e (getAidPairsList aid×states)) aid×states

hasParentE : EnactState → GovActionID → GovActionType → Type
hasParentE e aid gaTy = case getHashES e gaTy of
  λ where
    nothing    → ⊤
    (just id)  → id ≡ aid

hasParent : EnactState → GovState → (gaTy : GovActionType) → NeedsHash gaTy → Type
hasParent e s gaTy aid = case getHash aid of
  λ where
    nothing      → ⊤
    (just aid')  → hasParentE e aid' gaTy
                   ⊎ Any (λ (gid , gas) → gid ≡ aid' × Overlap (GovActionTypeOf gas) gaTy) s
```

<!--
```agda
open Equivalence

hasParentE? : ∀ e aid a → Dec (hasParentE e aid a)
hasParentE? e aid gaTy with getHashES e gaTy
... | nothing   = yes _
... | (just id) = id ≟ aid

hasParent? : ∀ e s a aid → Dec (hasParent e s a aid)
hasParent? e s gaTy aid with getHash aid
... | just aid' = hasParentE? e aid' gaTy
                  ⊎-dec any? (λ (gid , gas) → gid ≟ aid' ×-dec Overlap? (GovActionTypeOf gas) gaTy) s
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
enactable? eState aidPairs (aidNew , as) with getHashES eState (GovActionTypeOf as)
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
maxAllEnactable : EnactState → GovState → List GovState
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
```
-->



## Validity and Wellformedness Predicates {#validity-and-wellformedness-predicates}

This section defines predicates used in the `GOVPropose`{.AgdaInductiveConstructor} case
of the GOV rule to ensure that a governance action is valid and well-formed.

```agda
actionValid : ℙ Credential → Maybe ScriptHash → Maybe ScriptHash → Epoch → GovAction → Type
actionValid rewardCreds p ppolicy epoch ⟦ ChangePParams , _ ⟧ᵍᵃ =
  p ≡ ppolicy
actionValid rewardCreds p ppolicy epoch ⟦ TreasuryWithdrawal  , x ⟧ᵍᵃ =
  p ≡ ppolicy × mapˢ RwdAddr.stake (dom x) ⊆ rewardCreds
actionValid rewardCreds p ppolicy epoch ⟦ UpdateCommittee , (new , rem , q) ⟧ᵍᵃ =
  p ≡ nothing × (∀[ e ∈ range new ]  epoch < e) × (dom new ∩ rem ≡ᵉ ∅)
actionValid rewardCreds p ppolicy epoch _ =
  p ≡ nothing

actionWellFormed : GovAction → Type
actionWellFormed ⟦ ChangePParams , x ⟧ᵍᵃ = ppdWellFormed x
actionWellFormed ⟦ TreasuryWithdrawal  , x ⟧ᵍᵃ =
  (∀[ a ∈ dom x ] NetworkIdOf a ≡ NetworkId) × (∃[ v ∈ range x ] ¬ (v ≡ 0))
actionWellFormed _                 = ⊤
```

+  `actionValid`{.AgdaFunction} ensures that the proposed action is valid
   given the current state of the system:

    -  a `ChangePParams`{.AgdaInductiveConstructor} action is valid if the
       proposal policy is provided;

    -  a `TreasuryWithdrawal`{.AgdaInductiveConstructor} action is valid if
       the proposal policy is provided and the reward stake credential is
       registered;

    -  an `UpdateCommittee`{.AgdaInductiveConstructor} action is valid if
       credentials of proposed candidates have not expired, and the action
       does not propose to both add and remove the same candidate.

+  `actionWellFormed`{.AgdaFunction} ensures that the proposed action is
    well-formed:

   -  a `ChangePParams`{.AgdaInductiveConstructor} action must preserves well-formedness of the protocol parameters;

   -  a `TreasuryWithdrawal`{.AgdaInductiveConstructor} action is well-formed if the
      network ID is correct and there is at least one non-zero withdrawal amount in
      the given `RwdAddrToCoinMap`{.AgdaRecord} map.


<!--
```agda
actionValid? : ∀ {rewardCreds p ppolicy epoch a} → actionValid rewardCreds p ppolicy epoch a ⁇
actionValid? {a = ⟦ NoConfidence        , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ UpdateCommittee     , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ NewConstitution     , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ TriggerHardFork     , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ ChangePParams       , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ TreasuryWithdrawal  , _ ⟧ᵍᵃ} = it
actionValid? {a = ⟦ Info                , _ ⟧ᵍᵃ} = it

actionWellFormed? : ∀ {a} → actionWellFormed a ⁇
actionWellFormed? {⟦ NoConfidence        , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ UpdateCommittee     , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ NewConstitution     , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ TriggerHardFork     , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ ChangePParams       , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ TreasuryWithdrawal  , _ ⟧ᵍᵃ} = it
actionWellFormed? {⟦ Info                , _ ⟧ᵍᵃ} = it

open GovEnv
open PParams hiding (a)
open GovVoter

variable
  machr : Maybe Anchor
  achr : Anchor
  ast  : GovActionState
```
-->


## The <span class="AgdaDatatype">GOV</span> Transition System {#the-gov-transition-system}

The `GOV`{.AgdaDatatype} transition rule has the following type signature:

```agda
data _⊢_⇀⦇_,GOV⦈_ : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Type where

  GOV-Vote :
    ∙ (aid , ast) ∈ fromList s
    ∙ canVote (PParamsOf Γ) (action ast) (gvRole voter)
    ∙ isRegistered Γ voter
    ∙ ¬ expired (Γ .epoch) ast
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₁ ⟦ aid , voter , v , machr ⟧ ,GOV⦈ addVote s aid voter v

  GOV-Propose :
    let pp           = PParamsOf Γ
        e            = Γ .epoch
        enactState   = EnactStateOf Γ
        rewardCreds  = Γ .rewardCreds
        prop         = record { returnAddr = addr ; action = a ; anchor = achr
                              ; policy = p ; deposit = d ; prevAction = prev }
    in
    ∙ actionWellFormed a
    ∙ actionValid rewardCreds p (Γ .ppolicy) e a
    ∙ d ≡ pp .govActionDeposit
    ∙ validHFAction prop s enactState
    ∙ hasParent enactState s (GovActionTypeOf a) prev
    ∙ NetworkIdOf addr ≡ NetworkId
    ∙ CredentialOf addr ∈ rewardCreds
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV⦈ addAction s (pp .govActionLifetime +ᵉ e)
                                                 (Γ .txid , k) addr a prev

```

The `GOVS`{.AgdaDatatype} transition rule is actually a function with following signature:

```agda
_⊢_⇀⦇_,GOVS⦈_ : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Type
```

Specifically, it is defined as a reduction combinator that applies the
`GOV`{.AgdaDatatype} rule at each step.[^2]

```agda
_⊢_⇀⦇_,GOVS⦈_ = ReflexiveTransitiveClosureᵢ {sts = _⊢_⇀⦇_,GOV⦈_}
```

For `GOVVote`{.AgdaInductiveConstructor}, we check that the governance
action being voted on exists; that the voter’s role is allowed to vote
(see `canVote`{.AgdaFunction} in Section [Functions related to voting][]; and
that the voter’s credential is actually associated with their role (see
`isRegistered`{.AgdaFunction} in the section on the
[Type signature of the GOV transition relation][].

For `GOVPropose`{.AgdaInductiveConstructor}, we check the correctness of
the deposit along with some and some conditions that ensure the action
is well-formed and valid; naturally, these checks depend on the type of
action being proposed (see
the section on [Validity and Wellformedness Predicates][].

[^1]:  To see the definition of the `_connects_to_`{.AgdaFunction} function, click the “Show more Agda” button.

[^2]:  The Agda code defining various versions of the `ReflexiveTransitiveClosure`{.AgdaFunction}
       type is not yet documented as we are in the process of refactoring it.



