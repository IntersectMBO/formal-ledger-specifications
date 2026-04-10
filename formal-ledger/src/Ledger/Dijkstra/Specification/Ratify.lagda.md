---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ratify.lagda.md
---

# Ratification {#sec:ratification}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base

module Ledger.Dijkstra.Specification.Ratify (govStructure : GovStructure) where

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ; _⊔_)
open import Data.Nat.Properties hiding (_≟_; _≤?_)

open import Ledger.Prelude hiding (_∧_; _∨_; _⊔_) renaming (filterᵐ to filter; ∣_∣ to _↓)

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Gov.Actions govStructure hiding (yes; no)
open GovStructure govStructure

private
  ∣_∣_∣_∣ : {A : Type} → A → A → A → GovRole → A
  ∣ q₁ ∣ q₂ ∣ q₃ ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

  ∣_∥_∣ : {A : Type} → A → A × A → GovRole → A
  ∣ q₁ ∥ (q₂ , q₃) ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

```
-->

```agda
threshold : PParams → Maybe ℚ → GovAction → GovRole → Maybe ℚ
threshold pp ccThreshold ga =
  case  ga ↓ of λ where
        (NoConfidence        , _       ) → ∣ ─   ∣ vote P1      ∣ vote Q1  ∣
        (UpdateCommittee     , _       ) → ∣ ─   ∥ P/Q2a/b                 ∣
        (NewConstitution     , _       ) → ∣ ✓   ∣ vote P3      ∣ ─        ∣
        (TriggerHardFork     , _       ) → ∣ ✓   ∣ vote P4      ∣ vote Q4  ∣
        (ChangePParams       , update  ) → ∣ ✓   ∥ P/Q5 update             ∣
        (TreasuryWithdrawal  , _       ) → ∣ ✓   ∣ vote P6      ∣ ─        ∣
        (Info                , _       ) → ∣ ✓†  ∣ ✓†           ∣ ✓†       ∣
          where
          open PParams pp
          open DrepThresholds drepThresholds
          open PoolThresholds poolThresholds

          vote : ℚ → Maybe ℚ
          vote = just

          defer : ℚ
          defer = ℚ.1ℚ ℚ.+ ℚ.1ℚ

          maxThreshold : ℙ (Maybe ℚ) → Maybe ℚ
          maxThreshold x = foldl _∨_ nothing (proj₁ $ finiteness x)
            where
            _∨_ : Maybe ℚ → Maybe ℚ → Maybe ℚ
            just x  ∨ just y  = just (x ⊔ y)
            just x  ∨ nothing = just x
            nothing ∨ just y  = just y
            nothing ∨ nothing = nothing

          ─ ✓ ✓† : Maybe ℚ
          ─  = nothing
          ✓  = maybe just ✓† ccThreshold
          ✓† = vote defer

          P/Q2a/b : Maybe ℚ × Maybe ℚ
          P/Q2a/b =  case ccThreshold of λ where
                     (just _)  → (vote P2a , vote Q2a)
                     nothing   → (vote P2b , vote Q2b)

          pparamThreshold : PParamGroup → Maybe ℚ × Maybe ℚ
          pparamThreshold NetworkGroup     = (vote P5a  , ─        )
          pparamThreshold EconomicGroup    = (vote P5b  , ─        )
          pparamThreshold TechnicalGroup   = (vote P5c  , ─        )
          pparamThreshold GovernanceGroup  = (vote P5d  , ─        )
          pparamThreshold SecurityGroup    = (─         , vote Q5  )

          P/Q5 : PParamsUpdate → Maybe ℚ × Maybe ℚ
          P/Q5 ppu = maxThreshold (mapˢ (proj₁ ∘ pparamThreshold) (updateGroups ppu))
                   , maxThreshold (mapˢ (proj₂ ∘ pparamThreshold) (updateGroups ppu))

canVote : PParams → GovAction → GovRole → Type
canVote pp a r = Is-just (threshold pp nothing a r)

record StakeDistrs : Type where
  field
    stakeDistrVDeleg  : VDeleg  ⇀ Coin
    stakeDistrPools   : KeyHash ⇀ Coin

record RatifyEnv : Type where
  field
    stakeDistrs   : StakeDistrs
    currentEpoch  : Epoch
    dreps         : Credential ⇀ Epoch
    ccHotKeys     : Credential ⇀ Maybe Credential
    treasury      : Treasury
    pools         : KeyHash ⇀ StakePoolParams
    delegatees    : VoteDelegs

record RatifyState : Type where
  field
    es       : EnactState
    removed  : ℙ (GovActionID × GovActionState)
    delay    : Bool
```

<!--
```agda
record HasRatifyState {a} (A : Type a) : Type a where
  field RatifyStateOf : A → RatifyState
open HasRatifyState ⦃...⦄ public

instance
  HasEnactState-RatifyState : HasEnactState RatifyState
  HasEnactState-RatifyState .EnactStateOf = RatifyState.es

  HasDReps-RatifyEnv : HasDReps RatifyEnv
  HasDReps-RatifyEnv .DRepsOf = RatifyEnv.dreps

  HasTreasury-RatifyEnv : HasTreasury RatifyEnv
  HasTreasury-RatifyEnv .TreasuryOf = RatifyEnv.treasury

  unquoteDecl HasCast-StakeDistrs HasCast-RatifyEnv HasCast-RatifyState = derive-HasCast
    (   (quote StakeDistrs , HasCast-StakeDistrs)
    ∷   (quote RatifyEnv , HasCast-RatifyEnv)
    ∷ [ (quote RatifyState , HasCast-RatifyState) ])
```
-->

## Vote Counting

```agda
-- Constitutional Committee (CC) Vote Counting --
module AcceptedByCC (currentEpoch : Epoch)
                    (ccHotKeys : Credential ⇀ Maybe Credential)
                    (eSt : EnactState)
                    (gaSt : GovActionState)
                    where

  open EnactState eSt using (cc)
  open PParams (PParamsOf eSt)
  open GovActionState gaSt
  open GovVotes votes using (gvCC)

  castVotes : Credential ⇀ Vote
  castVotes = gvCC

  getCCHotCredential : Credential → Epoch → Maybe Credential
  getCCHotCredential c e =
    if currentEpoch > e
    then nothing -- credential has expired
    else case lookupᵐ? ccHotKeys c of λ where
      (just (just c'))  → just c'
      _                 → nothing -- hot key not registered or resigned

  activeCC : Credential ⇀ Credential
  activeCC = case proj₁ cc of λ where
    (just (ccMembers , _)) → mapMaybeWithKeyᵐ getCCHotCredential ccMembers
    nothing → ∅

  sizeActiveCC : ℕ
  sizeActiveCC = lengthˢ (dom activeCC)

  actualVotes : Credential ⇀ Vote
  actualVotes =
    mapValues (λ hotCredential → maybe id Vote.no (lookupᵐ? castVotes hotCredential))
               activeCC

  mT : Maybe ℚ
  mT = threshold (PParamsOf eSt) (proj₂ <$> (proj₁ cc)) action CC

  stakeDistr : Credential ⇀ Coin
  stakeDistr = constMap (dom actualVotes) 1

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistr ∣ actualVotes ⁻¹ Vote.yes ] x
  totalStake     = ∑[ x ← stakeDistr ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x

  accepted : Type
  accepted = case mT of λ where
    (just t) → sizeActiveCC ≥ ccMinSize × (acceptedStake /₀ totalStake) ≥ t
    nothing  → ⊤

acceptedByCC : RatifyEnv → EnactState → GovActionState → Type
acceptedByCC Γ = AcceptedByCC.accepted currentEpoch ccHotKeys
  where open RatifyEnv Γ using (currentEpoch; ccHotKeys)


-- DRep Vote Counting --
module AcceptedByDRep (Γ : RatifyEnv)
                      (eSt : EnactState)
                      (gaSt : GovActionState)
                      where

  open EnactState eSt using (cc)
  open RatifyEnv Γ using (currentEpoch; stakeDistrs)
  open StakeDistrs stakeDistrs
  open GovActionState gaSt
  open GovVotes votes using (gvDRep)

  castVotes : VDeleg ⇀ Vote
  castVotes = mapKeys vDelegCredential gvDRep

  activeDReps : ℙ Credential
  activeDReps = dom (activeDRepsOf Γ currentEpoch)

  predeterminedDRepVotes : VDeleg ⇀ Vote
  predeterminedDRepVotes = case gaType action of λ where
      NoConfidence → ❴ vDelegAbstain , Vote.abstain ❵ ∪ˡ ❴ vDelegNoConfidence , Vote.yes ❵
      _            → ❴ vDelegAbstain , Vote.abstain ❵ ∪ˡ ❴ vDelegNoConfidence , Vote.no  ❵

  defaultDRepCredentialVotes : VDeleg ⇀ Vote
  defaultDRepCredentialVotes = constMap (mapˢ vDelegCredential activeDReps) Vote.no

  actualVotes : VDeleg ⇀ Vote
  actualVotes  = castVotes ∪ˡ defaultDRepCredentialVotes
                           ∪ˡ predeterminedDRepVotes

  t : ℚ
  t = maybe id 0ℚ (threshold (PParamsOf eSt) (proj₂ <$> (proj₁ cc)) action DRep)

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistrVDeleg ∣ actualVotes ⁻¹ Vote.yes ] x
  totalStake     = ∑[ x ← stakeDistrVDeleg ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x

  accepted = (acceptedStake /₀ totalStake) ≥ t

acceptedByDRep : RatifyEnv → EnactState → GovActionState → Type
acceptedByDRep = AcceptedByDRep.accepted


-- Stake Pool Operator Vote Counting --
module AcceptedBySPO (delegatees : VoteDelegs)
                     (pools : Pools)
                     (stakeDistrPools : KeyHash ⇀ Coin)
                     (eSt : EnactState)
                     (gaSt : GovActionState)
                     where

  open EnactState eSt using (cc)
  open GovActionState gaSt
  open GovVotes votes using (gvSPO)

  castVotes : KeyHash ⇀ Vote
  castVotes = gvSPO

  defaultVote : KeyHash → Vote
  defaultVote kh = case lookupᵐ? pools kh of λ where
    nothing   → Vote.no
    (just  p) → case lookupᵐ? delegatees (StakePoolParams.rewardAccount p) , gaType action of
      λ where
      ( _                        , TriggerHardFork  )  → Vote.no
      ( just vDelegNoConfidence  , NoConfidence     )  → Vote.yes
      ( just vDelegAbstain       , _                )  → Vote.abstain
      _                                                → Vote.no

  actualVotes : KeyHash ⇀ Vote
  actualVotes = castVotes ∪ˡ mapFromFun defaultVote (dom stakeDistrPools)

  t : ℚ
  t = maybe id 0ℚ (threshold (PParamsOf eSt) (proj₂ <$> (proj₁ cc)) action SPO)

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistrPools ∣ actualVotes ⁻¹ Vote.yes ] x
  totalStake     = ∑[ x ← stakeDistrPools ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x

  accepted : Type
  accepted = (acceptedStake /₀ totalStake) ≥ t

acceptedBySPO : RatifyEnv → EnactState → GovActionState → Type
acceptedBySPO Γ = AcceptedBySPO.accepted delegatees pools stakeDistrPools
  where open RatifyEnv Γ; open StakeDistrs stakeDistrs


-- Ratification Functions --

opaque
  accepted : RatifyEnv → EnactState → GovActionState → Type
  accepted Γ es gs = acceptedByCC Γ es gs × acceptedByDRep Γ es gs × acceptedBySPO Γ es gs

  expired : Epoch → GovActionState → Type
  expired current record { expiresIn = expiresIn } = expiresIn < current

open EnactState

verifyPrev : (a : GovActionType) → NeedsHash a → EnactState → Type
verifyPrev NoConfidence        h es  = h ≡ es .cc .proj₂
verifyPrev UpdateCommittee     h es  = h ≡ es .cc .proj₂
verifyPrev NewConstitution     h es  = h ≡ es .constitution .proj₂
verifyPrev TriggerHardFork     h es  = h ≡ es .pv .proj₂
verifyPrev ChangePParams       h es  = h ≡ es .pparams .proj₂
verifyPrev TreasuryWithdrawal  _ _   = ⊤
verifyPrev Info                _ _   = ⊤

delayingAction : GovActionType → Bool
delayingAction NoConfidence        = true
delayingAction UpdateCommittee     = true
delayingAction NewConstitution     = true
delayingAction TriggerHardFork     = true
delayingAction ChangePParams       = false
delayingAction TreasuryWithdrawal  = false
delayingAction Info                = false

delayed : (a : GovActionType) → NeedsHash a → EnactState → Bool → Type
delayed gaTy h es d = ¬ verifyPrev gaTy h es ⊎ d ≡ true

acceptConds : RatifyEnv → RatifyState → GovActionID × GovActionState → Type
acceptConds Γ stʳ (id , st) =
  accepted Γ es st
  × ¬ delayed (gaType action) prevAction es delay
  × ∃[ es' ]  ⟦ id , treasury , currentEpoch ⟧ ⊢ es ⇀⦇ action ,ENACT⦈ es'
    where open RatifyEnv Γ
          open RatifyState stʳ
          open GovActionState st

opaque
  unfolding accepted

  verifyPrev? : ∀ a h es → Dec (verifyPrev a h es)
  verifyPrev? NoConfidence        h es = dec
  verifyPrev? UpdateCommittee     h es = dec
  verifyPrev? NewConstitution     h es = dec
  verifyPrev? TriggerHardFork     h es = dec
  verifyPrev? ChangePParams       h es = dec
  verifyPrev? TreasuryWithdrawal  h es = dec
  verifyPrev? Info                h es = dec

  delayed? : ∀ a h es d → Dec (delayed a h es d)
  delayed? a h es d = let instance _ = ⁇ verifyPrev? a h es in dec

  Is-nothing? : ∀ {A : Set} {x : Maybe A} → Dec (Is-nothing x)
  Is-nothing? {x = x} = All.dec (const $ no id) x
    where import Data.Maybe.Relation.Unary.All as All

  Is-just? : ∀ {A : Set} {x : Maybe A} → Dec (Is-just x)
  Is-just? {x = x} = Any.dec (const $ yes tt) x
    where import Data.Maybe.Relation.Unary.Any as Any

  acceptedByCC? : ∀ Γ es st → Dec (acceptedByCC Γ es st)
  acceptedByCC? Γ es st = d
    where
      open RatifyEnv Γ using (currentEpoch; ccHotKeys)
      module acbCC = AcceptedByCC currentEpoch ccHotKeys es st

      d : Dec acbCC.accepted
      d with acbCC.mT
      ... | just t =  _ ≤? acbCC.sizeActiveCC ×-dec t ≤?  _
      ... | nothing = yes tt

  acceptedByDRep? : ∀ Γ es st → Dec (acceptedByDRep Γ es st)
  acceptedByDRep? _ _ _ = _ ℚ.≤? _

  acceptedBySPO? : ∀ Γ es st → Dec (acceptedBySPO Γ es st)
  acceptedBySPO? _ _ _ = _ ℚ.≤? _

  accepted? : ∀ Γ es st → Dec (accepted Γ es st)
  accepted? Γ es st = acceptedByCC? Γ es st ×-dec acceptedByDRep? Γ es st ×-dec acceptedBySPO? Γ es st

  expired? : ∀ e st → Dec (expired e st)
  expired? e st = ¿ expired e st ¿
```

<!--
```agda
private variable
  Γ        : RatifyEnv
  es es'   : EnactState
  a        : GovActionID × GovActionState
  removed  : ℙ (GovActionID × GovActionState)
  d        : Bool

open RatifyEnv
open GovActionState
```
-->

## The <span class="AgdaDatatype">RATIFY</span> Transition System

```agda
data _⊢_⇀⦇_,RATIFY⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Type
  where

  RATIFY-Accept :
    let treasury       = TreasuryOf Γ
        e              = Γ .currentEpoch
        (gaId , gaSt)  = a
        action         = GovActionOf gaSt
    in
    ∙ acceptConds Γ ⟦ es , removed , d ⟧ a
    ∙ ⟦ gaId , treasury , e ⟧ ⊢ es ⇀⦇ action ,ENACT⦈ es'
      ────────────────────────────────
      Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es' , ❴ a ❵ ∪ removed , delayingAction (gaType action) ⟧

  RATIFY-Reject :
    let e              = Γ .currentEpoch
        (gaId , gaSt)  = a
    in
    ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ a
    ∙ expired e gaSt
      ────────────────────────────────
      Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es , ❴ a ❵ ∪ removed , d ⟧

  RATIFY-Continue :
     let e              = Γ .currentEpoch
         (gaId , gaSt)  = a
     in
     ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ a
     ∙ ¬ expired e gaSt
       ────────────────────────────────
       Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es , removed , d ⟧

_⊢_⇀⦇_,RATIFIES⦈_ : RatifyEnv → RatifyState → List (GovActionID × GovActionState) → RatifyState → Type
_⊢_⇀⦇_,RATIFIES⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,RATIFY⦈_}
```
