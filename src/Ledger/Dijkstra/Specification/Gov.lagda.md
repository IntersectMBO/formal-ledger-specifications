---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Gov.lagda.md
---

# Governance {#sec:governance}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base

module Ledger.Dijkstra.Specification.Gov (govStructure : GovStructure) where

open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup; ∈-filter)

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.Dijkstra.Specification.Gov.Actions govStructure hiding (yes; no)
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.Certs govStructure

open import stdlib.Data.List.Subpermutations using (subpermutations; sublists)
open import stdlib.Data.List.Subpermutations.Properties
  using (∃uniqueSubset⇔∃uniqueSubperm; maxsublists⊧P; maxlen; sublists⊧P; ∈-maxlen-≤)
open import Data.List.Membership.Propositional.Properties using (Any↔; ∈-filter⁻; ∈-filter⁺)
open import Data.List.Relation.Binary.Subset.Propositional using () renaming (_⊆_ to _⊆ˡ_)
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Any using (any?; Any)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Relation.Nullary.Decidable using () renaming (map to map-Dec)
open import Function.Properties.Equivalence using () renaming (sym to sym-Equiv)
open import Function.Related.Propositional using (↔⇒)

open GovStructure govStructure
```
-->

## Governance Types and Functions

```agda
-- Governance Derived types --
GovState : Type
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

-- Governance Functions --

-- Assign a priority to governance actions for ordering lists of them.
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
record HasGovState {a} (A : Type a) : Type a where
  field GovStateOf : A → GovState
open HasGovState ⦃...⦄ public

record HasEpoch {a} (A : Type a) : Type a where
  field EpochOf : A → Epoch
open HasEpoch ⦃...⦄ public

record HasRewardCredentials {a} (A : Type a) : Type a where
  field RewardCredentialsOf : A → ℙ Credential
open HasRewardCredentials ⦃...⦄ public

instance
  HasPParams-GovEnv : HasPParams GovEnv
  HasPParams-GovEnv .PParamsOf = GovEnv.pparams

  HasEnactState-GovEnv : HasEnactState GovEnv
  HasEnactState-GovEnv .EnactStateOf = GovEnv.enactState

  HasCertState-GovEnv : HasCertState GovEnv
  HasCertState-GovEnv .CertStateOf = GovEnv.certState

  HasEpoch-GovEnv : HasEpoch GovEnv
  HasEpoch-GovEnv .EpochOf = GovEnv.epoch

  HasRewardCredentials-GovEnv : HasRewardCredentials GovEnv
  HasRewardCredentials-GovEnv .RewardCredentialsOf = GovEnv.rewardCreds

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
  addr   : RewardAddress
  a      : GovAction
  prev   : NeedsHash (gaType a)
  k      : ℕ
  p      : Maybe ScriptHash

open GState
open PState

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
  =  if govActionPriority (GovActionTypeOf gaSt₀) ≤ govActionPriority (GovActionTypeOf gaSt₁)
     then (gaID₀ , gaSt₀) ∷ insertGovAction gaPrs (gaID₁ , gaSt₁)
     else (gaID₁ , gaSt₁) ∷ (gaID₀ , gaSt₀) ∷ gaPrs

mkGovStatePair :  Epoch → GovActionID → RewardAddress → (a : GovAction) → NeedsHash (a .gaType)
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

-- add a new proposed action at the end of a given GovState
addAction :  GovState → Epoch → GovActionID → RewardAddress
             → (a : GovAction) → NeedsHash (a .gaType)
             → GovState
addAction s e aid addr a prev = insertGovAction s (mkGovStatePair e aid addr a prev)


opaque
  -- insert (and potentially override) a vote for a particular gov action
  addVote : GovState → GovActionID → GovVoter → Vote → GovState
  addVote gSt aid voter v = map modifyVotes gSt
    where
    modifyVotes : GovActionID × GovActionState → GovActionID × GovActionState
    modifyVotes (gid , gaSt) = gid , (if gid ≡ aid then record gaSt { votes = votes' voter } else gaSt)
      where
      open GovVotes (GovVotesOf gaSt)
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

  -- Indicates whether TriggerHardFork can be enacted in future.
  validHFAction : GovProposal → GovState → EnactState → Type
  validHFAction (record { action = ⟦ TriggerHardFork , v ⟧ᵍᵃ ; prevAction = prev }) s e =
    (aid' ≡ prev × pvCanFollow ver v) ⊎ ∃₂[ x , v' ]  (prev , x) ∈ fromList s
                                                      × GovActionState.action x ≡ ⟦ TriggerHardFork , v' ⟧ᵍᵃ
                                                      × pvCanFollow v' v
    where
      ver : ProtVer
      ver = EnactState.pv e .proj₁
      aid' : GovActionID
      aid' = EnactState.pv e .proj₂

  validHFAction _ _ _ = ⊤


-- Enactability Predicate --

-- Convert list of (GovActionID,GovActionState)-pairs to list of GovActionID pairs.
getAidPairsList : GovState → List (GovActionID × GovActionID)
getAidPairsList aid×states =
  mapMaybe (λ (aid , aState) → (aid ,_) <$> getHash (GovActionState.prevAction aState)) $ aid×states

-- A list of GovActionID pairs connects the first GovActionID to the second.
_connects_to_ : List (GovActionID × GovActionID) → GovActionID → GovActionID → Type
[] connects aidNew to aidOld = aidNew ≡ aidOld
((aid , aidPrev) ∷ s) connects aidNew to aidOld  =
  aid ≡ aidNew × s connects aidPrev to aidOld ⊎ s connects aidNew to aidOld

enactable  : EnactState → List (GovActionID × GovActionID)
           → GovActionID × GovActionState → Type
enactable e aidPairs = λ (aidNew , as) → case getHashES e (GovActionTypeOf as) of
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


```agda
-- Validity and Wellformedness Predicates --

-- ensure the proposed action is valid given the current state of the system
actionValid : ℙ Credential → Maybe ScriptHash → Maybe ScriptHash → Epoch → GovAction → Type
actionValid _ p ppolicy _ ⟦ ChangePParams , _ ⟧ᵍᵃ = p ≡ ppolicy
actionValid rwdCreds p ppolicy _ ⟦ TreasuryWithdrawal , wdrls ⟧ᵍᵃ = p ≡ ppolicy × mapˢ CredentialOf (dom wdrls) ⊆ rwdCreds
actionValid _ p _ epoch ⟦ UpdateCommittee , (new , rem , q) ⟧ᵍᵃ = p ≡ nothing × (∀[ e ∈ range new ] epoch < e) × dom new ∩ rem ≡ᵉ ∅
actionValid _ p _ _ _ = p ≡ nothing

-- ensure the proposed action is well-formed
actionWellFormed : GovAction → Type
actionWellFormed ⟦ ChangePParams , ppup ⟧ᵍᵃ = ppdWellFormed ppup
actionWellFormed ⟦ TreasuryWithdrawal , wdrls ⟧ᵍᵃ =  (∀[ a ∈ dom wdrls ] NetworkIdOf a ≡ NetworkId)
                                                     × ∃[ v ∈ range wdrls ] ¬ (v ≡ 0)
actionWellFormed _ = ⊤
```

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

```agda
data _⊢_⇀⦇_,GOV⦈_ : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Type where

  GOV-Vote :
    ∙ (aid , ast) ∈ fromList s
    ∙ canVote (PParamsOf Γ) (GovActionOf ast) (gvRole voter)
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


-- N.B. The GOVS transition rule is a reduce combinator; applies GOV at each step.
_⊢_⇀⦇_,GOVS⦈_ : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Type
_⊢_⇀⦇_,GOVS⦈_ = ReflexiveTransitiveClosureᵢ {sts = _⊢_⇀⦇_,GOV⦈_}
```
