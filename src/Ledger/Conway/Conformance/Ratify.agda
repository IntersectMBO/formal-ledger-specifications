
{-# OPTIONS --safe #-}

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ; _⊔_)
open import Data.Nat.Properties hiding (_≟_; _≤?_)
open import Data.Nat.Properties.Ext

open import Ledger.Prelude hiding (_∧_; _⊔_) renaming (filterᵐ to filter)
open import Ledger.Conway.Conformance.Transaction hiding (Vote)

module Ledger.Conway.Conformance.Ratify (txs : _) (open TransactionStructure txs) where

open import Ledger.Enact govStructure
open import Ledger.GovernanceActions govStructure using (Vote)

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid

private
  ∣_∣_∣_∣ : {A : Type} → A → A → A → GovRole → A
  ∣ q₁ ∣ q₂ ∣ q₃ ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

  ∣_∥_∣ : {A : Type} → A → A × A → GovRole → A
  ∣ q₁ ∥ (q₂ , q₃) ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

vote : ℚ → Maybe ℚ
vote = just

defer : ℚ
defer = ℚ.1ℚ ℚ.+ ℚ.1ℚ

maxThreshold : ℙ (Maybe ℚ) → Maybe ℚ
maxThreshold x = foldl comb nothing (proj₁ $ finiteness x)
  where
    comb : Maybe ℚ → Maybe ℚ → Maybe ℚ
    comb (just x) (just y) = just (x ⊔ y)
    comb (just x) nothing  = just x
    comb nothing  (just y) = just y
    comb nothing  nothing  = nothing

─ : Maybe ℚ
─ = nothing
✓† = vote defer

threshold : PParams → Maybe ℚ → GovAction → GovRole → Maybe ℚ
threshold pp ccThreshold =

  λ where

      NoConfidence             → ∣ ─   ∣ vote P1      ∣ vote Q1  ∣
      (UpdateCommittee _ _ _)  → ∣ ─   ∥ P/Q2a/b                 ∣
      (NewConstitution _ _)    → ∣ ✓   ∣ vote P3      ∣ ─        ∣
      (TriggerHF _)            → ∣ ✓   ∣ vote P4      ∣ vote Q4  ∣
      (ChangePParams x)        → ∣ ✓   ∥ P/Q5 x                  ∣
      (TreasuryWdrl _)         → ∣ ✓   ∣ vote P6      ∣ ─        ∣
      Info                     → ∣ ✓†  ∣ ✓†           ∣ ✓†       ∣
        where

        open PParams pp
        open DrepThresholds drepThresholds
        open PoolThresholds poolThresholds

        ✓ = maybe just ✓† ccThreshold

        P/Q2a/b : Maybe ℚ × Maybe ℚ
        P/Q2a/b =  case ccThreshold of

          λ where

                   (just _)  → (vote P2a , vote Q2a)
                   nothing   → (vote P2b , vote Q2b)

        pparamThreshold : PParamGroup → Maybe ℚ × Maybe ℚ
        pparamThreshold NetworkGroup     = (vote P5a  , ─         )
        pparamThreshold EconomicGroup    = (vote P5b  , ─         )
        pparamThreshold TechnicalGroup   = (vote P5c  , ─         )
        pparamThreshold GovernanceGroup  = (vote P5d  , ─         )
        pparamThreshold SecurityGroup    = (─         , vote Q5e  )

        P/Q5 : PParamsUpdate → Maybe ℚ × Maybe ℚ
        P/Q5 ppu = maxThreshold (mapˢ (proj₁ ∘ pparamThreshold) (updateGroups ppu))
                 , maxThreshold (mapˢ (proj₂ ∘ pparamThreshold) (updateGroups ppu))

canVote : PParams → GovAction → GovRole → Type
canVote pp a r = Is-just (threshold pp nothing a r)

record StakeDistrs : Type where

  field

    stakeDistr  : VDeleg ⇀ Coin

record RatifyEnv : Type where

  field

    stakeDistrs   : StakeDistrs
    currentEpoch  : Epoch
    dreps         : Credential ⇀ Epoch
    ccHotKeys     : Credential ⇀ Maybe Credential
    treasury      : Coin

record RatifyState : Type where

  constructor ⟦_,_,_⟧ʳ
  field

    es              : EnactState
    removed         : ℙ (GovActionID × GovActionState)
    delay           : Bool

CCData : Type
CCData = Maybe ((Credential ⇀ Epoch) × ℚ)

govRole : VDeleg → GovRole
govRole (credVoter gv _)  = gv
govRole abstainRep        = DRep
govRole noConfidenceRep   = DRep

IsCC IsDRep IsSPO : VDeleg → Type
IsCC    v = govRole v ≡ CC
IsDRep  v = govRole v ≡ DRep
IsSPO   v = govRole v ≡ SPO

open StakeDistrs

actualVotes  : RatifyEnv → PParams → CCData → GovAction
             → (GovRole × Credential ⇀ Vote) → (VDeleg ⇀ Vote)
actualVotes Γ pparams cc ga votes
  =   mapKeys (credVoter CC) actualCCVotes  ∪ˡ actualPDRepVotes ga
  ∪ˡ  actualDRepVotes                       ∪ˡ actualSPOVotes ga
  where

  open RatifyEnv Γ
  open PParams pparams

  roleVotes : GovRole → VDeleg ⇀ Vote
  roleVotes r = mapKeys (uncurry credVoter) (filter (λ (x , _) → r ≡ proj₁ x) votes)

  activeDReps = dom (filter (λ (_ , e) → currentEpoch ≤ e) dreps)
  spos = filterˢ IsSPO (dom (stakeDistr stakeDistrs))

  getCCHotCred : Credential × Epoch → Maybe Credential
  getCCHotCred (c , e) = case ¿ currentEpoch ≤ e ¿ᵇ , lookupᵐ? ccHotKeys c of

    λ where

      (true , just (just c'))  → just c'
      _                        → nothing -- expired, no hot key or resigned

  actualCCVote : Credential → Epoch → Vote
  actualCCVote c e = case getCCHotCred (c , e) of

    λ where

      (just c')  → maybe id Vote.no (lookupᵐ? votes (CC , c'))
      _          → Vote.abstain

  actualCCVotes : Credential ⇀ Vote
  actualCCVotes = case cc of

    λ where

      nothing         → ∅
      (just (m , q))  → if ccMinSize ≤ lengthˢ (mapFromPartialFun getCCHotCred (m ˢ))
                          then mapWithKey actualCCVote m
                          else constMap (dom m) Vote.no

  actualPDRepVotes : GovAction → VDeleg ⇀ Vote
  actualPDRepVotes NoConfidence
                      = ❴ abstainRep , Vote.abstain ❵ ∪ˡ ❴ noConfidenceRep , Vote.yes ❵
  actualPDRepVotes _  = ❴ abstainRep , Vote.abstain ❵ ∪ˡ ❴ noConfidenceRep , Vote.no ❵

  actualDRepVotes : VDeleg ⇀ Vote
  actualDRepVotes  =   roleVotes DRep
                   ∪ˡ  constMap (mapˢ (credVoter DRep) activeDReps) Vote.no

  actualSPOVotes : GovAction → VDeleg ⇀ Vote
  actualSPOVotes (TriggerHF _)  = roleVotes SPO ∪ˡ constMap spos Vote.no
  actualSPOVotes _              = roleVotes SPO ∪ˡ constMap spos Vote.abstain

open RatifyEnv using (stakeDistrs)

abstract
  -- unused, keep until we know for sure that there'll be no minimum AVS
  -- activeVotingStake : ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
  -- activeVotingStake cc dists votes =
  --   ∑[ x  ← getStakeDist DRep cc dists ∣ dom votes ᶜ ᶠᵐ ] x

  -- TODO: explain this notation in the prose and it's purpose:
  -- if there's no stake, accept only if threshold is zero
  _/₀_ : ℕ → ℕ → ℚ
  x /₀ 0 = 0ℚ
  x /₀ y@(suc _) = ℤ.+ x ℚ./ y

  getStakeDist : GovRole → ℙ VDeleg → StakeDistrs → VDeleg ⇀ Coin
  getStakeDist CC    cc  sd  = constMap (filterˢ IsCC cc) 1
  getStakeDist DRep  _   sd  = filterKeys IsDRep  (sd .stakeDistr)
  getStakeDist SPO   _   sd  = filterKeys IsSPO   (sd .stakeDistr)

  acceptedStakeRatio : GovRole → ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → ℚ
  acceptedStakeRatio r cc dists votes = acceptedStake /₀ totalStake
    where
      dist : VDeleg ⇀ Coin
      dist = getStakeDist r cc dists
      acceptedStake totalStake : Coin
      acceptedStake  = ∑[ x ← dist ∣ votes ⁻¹ Vote.yes                              ] x
      totalStake     = ∑[ x ← dist ∣ dom (votes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵))  ] x

  acceptedBy : RatifyEnv → EnactState → GovActionState → GovRole → Type
  acceptedBy Γ (record { cc = cc , _; pparams = pparams , _ }) gs role =
    let open GovActionState gs; open PParams pparams
        votes'  = actualVotes Γ pparams cc action votes
        mbyT    = threshold pparams (proj₂ <$> cc) action role
        t       = maybe id 0ℚ mbyT
    in acceptedStakeRatio role (dom votes') (stakeDistrs Γ) votes' ≥ t
     ∧ (role ≡ CC → maybe (λ (m , _) → lengthˢ m) 0 cc ≥ ccMinSize ⊎ Is-nothing mbyT)

  accepted : RatifyEnv → EnactState → GovActionState → Type
  accepted Γ es gs = acceptedBy Γ es gs CC ∧ acceptedBy Γ es gs DRep ∧ acceptedBy Γ es gs SPO

  expired : Epoch → GovActionState → Type
  expired current record { expiresIn = expiresIn } = expiresIn < current

open EnactState

verifyPrev : (a : GovAction) → NeedsHash a → EnactState → Type
verifyPrev NoConfidence             h es  = h ≡ es .cc .proj₂
verifyPrev (UpdateCommittee _ _ _)  h es  = h ≡ es .cc .proj₂
verifyPrev (NewConstitution _ _)    h es  = h ≡ es .constitution .proj₂
verifyPrev (TriggerHF _)            h es  = h ≡ es .pv .proj₂
verifyPrev (ChangePParams _)        h es  = h ≡ es .pparams .proj₂
verifyPrev (TreasuryWdrl _)         _ _   = ⊤
verifyPrev Info                     _ _   = ⊤

delayingAction : GovAction → Bool
delayingAction NoConfidence             = true
delayingAction (UpdateCommittee _ _ _)  = true
delayingAction (NewConstitution _ _)    = true
delayingAction (TriggerHF _)            = true
delayingAction (ChangePParams _)        = false
delayingAction (TreasuryWdrl _)         = false
delayingAction Info                     = false

delayed : (a : GovAction) → NeedsHash a → EnactState → Bool → Type
delayed a h es d = ¬ verifyPrev a h es ⊎ d ≡ true

acceptConds : RatifyEnv → RatifyState → GovActionID × GovActionState → Type
acceptConds Γ ⟦ es , removed , d ⟧ʳ (id , st) = let open RatifyEnv Γ; open GovActionState st in
       accepted Γ es st
    ×  ¬ delayed action prevAction es d
    × ∃[ es' ]  ⟦ id , treasury , currentEpoch ⟧ᵉ ⊢ es ⇀⦇ action ,ENACT⦈ es'

abstract
  verifyPrev? : ∀ a h es → Dec (verifyPrev a h es)
  verifyPrev? NoConfidence              h es = dec
  verifyPrev? (UpdateCommittee x x₁ x₂) h es = dec
  verifyPrev? (NewConstitution x x₁)    h es = dec
  verifyPrev? (TriggerHF x)             h es = dec
  verifyPrev? (ChangePParams x)         h es = dec
  verifyPrev? (TreasuryWdrl x)          h es = dec
  verifyPrev? Info                      h es = dec

  delayed? : ∀ a h es d → Dec (delayed a h es d)
  delayed? a h es d = let instance _ = ⁇ verifyPrev? a h es in dec

  Is-nothing? : ∀ {A : Set} {x : Maybe A} → Dec (Is-nothing x)
  Is-nothing? {x = x} = All.dec (const $ no id) x
    where
        import Data.Maybe.Relation.Unary.All as All

  acceptedBy? : ∀ Γ es st role → Dec (acceptedBy Γ es st role)
  acceptedBy? _ _ _ _ = _ ℚ.≤? _ ×-dec _ ≟ _ →-dec (_ ≥? _ ⊎-dec Is-nothing?)
    where
      import Relation.Nullary.Decidable as Dec

  accepted? : ∀ Γ es st → Dec (accepted Γ es st)
  accepted? Γ es st = let a = λ {x} → acceptedBy? Γ es st x in a ×-dec a ×-dec a

  expired? : ∀ e st → Dec (expired e st)
  expired? e st = ¿ expired e st ¿

private variable
  es es' : EnactState
  a : GovActionID × GovActionState
  removed : ℙ (GovActionID × GovActionState)
  d : Bool

data _⊢_⇀⦇_,RATIFY'⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Type where


  RATIFY-Accept : ∀ {Γ} {es} {removed} {d} {a} {es'} → let open RatifyEnv Γ; st = a .proj₂; open GovActionState st in
     ∙ acceptConds Γ ⟦ es , removed , d ⟧ʳ a
     ∙ ⟦ a .proj₁ , treasury , currentEpoch ⟧ᵉ ⊢ es ⇀⦇ action ,ENACT⦈ es'
       ────────────────────────────────
       Γ ⊢  ⟦ es   , removed          , d                      ⟧ʳ ⇀⦇ a ,RATIFY'⦈
            ⟦ es'  , ❴ a ❵ ∪ removed  , delayingAction action  ⟧ʳ

  RATIFY-Reject : ∀ {Γ} {es} {removed} {d} {a} → let open RatifyEnv Γ; st = a .proj₂ in
     ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ʳ a
     ∙ expired currentEpoch st
       ────────────────────────────────
       Γ ⊢ ⟦ es , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , ❴ a ❵ ∪ removed , d ⟧ʳ

  RATIFY-Continue : ∀ {Γ} {es} {removed} {d} {a} → let open RatifyEnv Γ; st = a .proj₂ in
     ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ʳ a
     ∙ ¬ expired currentEpoch st
       ────────────────────────────────
       Γ ⊢ ⟦ es , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , removed , d ⟧ʳ

_⊢_⇀⦇_,RATIFY⦈_  : RatifyEnv → RatifyState → List (GovActionID × GovActionState)
                 → RatifyState → Type
_⊢_⇀⦇_,RATIFY⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,RATIFY'⦈_

