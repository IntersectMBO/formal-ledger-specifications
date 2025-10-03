open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.ExpiredDReps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Prelude hiding (cong)
import Ledger.Prelude as P
import Relation.Binary.Core as B
open import Relation.Binary.Definitions
-- open import Ledger.Conway.Specification.Ratify txs using (module AcceptedByDRep)
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Rewards txs abs
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Gov txs


partitionᵐ : ∀ {A B : Type} → (P : A × B → Type) ⦃ _ : P ⁇¹ ⦄ → A ⇀ B → (A ⇀ B) × (A ⇀ B)
partitionᵐ P m = filterᵐ P m , filterᵐ (¬_ ∘ P) m

-- | Epoch indexed relation.
-- Two DReps (Map Credential Epoch) are related iff:
--   1. Expired DReps are the same w/o their expiration epoch.
--   2. Non-expired DReps are the same.
DReps-[_]_≈_ : Epoch → B.Rel DReps 0ℓ
DReps-[_]_≈_ e dreps₁ dreps₂ =
  let dreps₁-not-expired = filterᵐ (λ (c , e') → e ≤ e') dreps₁
      dreps₂-not-expired = filterᵐ (λ (c , e') → e ≤ e') dreps₂
  in dreps₁-not-expired ≡ᵐ dreps₂-not-expired

record StakeDistrs-_≈_ (sd sd' : StakeDistrs) : Type where
  module sd  = StakeDistrs sd
  module sd' = StakeDistrs sd'
  field
    stakeDistrVDeleg : sd.stakeDistrVDeleg ≡ᵐ sd'.stakeDistrVDeleg
    stakeDistrPools  : sd.stakeDistrPools ≡ sd'.stakeDistrPools

record RatifyEnv-_≈_ (Γ Γ' : RatifyEnv) : Type where
  module Γ  = RatifyEnv Γ
  module Γ' = RatifyEnv Γ'

  field
    stakeDistrs   : StakeDistrs- Γ.stakeDistrs ≈ Γ'.stakeDistrs
    currentEpoch  : Γ.currentEpoch ≡ Γ'.currentEpoch
    dreps         : DReps-[ Γ.currentEpoch ] (DRepsOf Γ) ≈ (DRepsOf Γ')
    ccHotKeys     : Γ.ccHotKeys ≡ Γ'.ccHotKeys
    treasury      : Γ.treasury ≡ Γ'.treasury
    pools         : Γ.pools ≡ Γ'.pools
    delegatees    : Γ.delegatees ≡ Γ'.delegatees

acceptConds-≈-cong : ∀ {rSt a} → (λ Γ → acceptConds Γ rSt a) B.Preserves RatifyEnv-_≈_ ⟶ λ A B → (A → B)
acceptConds-≈-cong = {!!}

module RATIFY {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') {a a' : _} {rSt rSt' : RatifyState} where

  module Γ≈Γ' = RatifyEnv-_≈_ Γ≈Γ'

  cong : ∀ (rSt≡rSt' : rSt ≡ rSt') {rSt'' rSt'''}
       → Γ  ⊢ rSt  ⇀⦇ a ,RATIFY⦈ rSt''
       → Γ' ⊢ rSt' ⇀⦇ a ,RATIFY⦈ rSt'''
       → rSt'' ≡ rSt'''
  cong refl (RATIFY-Accept x) (RATIFY-Accept x₁) = {!!}
  cong refl (RATIFY-Accept x) (RATIFY-Reject x₁) = {!!}
  cong refl (RATIFY-Accept x) (RATIFY-Continue x₁) = {!!}
  cong refl (RATIFY-Reject x) (RATIFY-Accept x₁) = {!!}
  cong refl (RATIFY-Reject x) (RATIFY-Reject x₁) = {!!}
  cong refl (RATIFY-Reject x) (RATIFY-Continue x₁) = {!!}
  cong refl (RATIFY-Continue x) (RATIFY-Accept x₁) = {!!}
  cong refl (RATIFY-Continue x) (RATIFY-Reject x₁) = {!!}
  cong refl (RATIFY-Continue x) (RATIFY-Continue x₁) = {!!}

module RATIFIES {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') where
  cong
    : ∀ {rSt rSt' : RatifyState} (rSt≡rSt' : rSt ≡ rSt') {govSt govSt' : GovState} (govSt≡govSt' : govSt ≡ govSt') {rSt'' rSt''' : RatifyState}
       → Γ  ⊢ rSt  ⇀⦇ govSt  ,RATIFIES⦈ rSt''
       → Γ' ⊢ rSt' ⇀⦇ govSt' ,RATIFIES⦈ rSt'''
       → rSt'' ≡ rSt'''
  cong refl refl (BS-base Id-nop) (BS-base Id-nop) = refl
  cong refl refl (BS-ind p ps) (BS-ind q qs)
    with RATIFY.cong Γ≈Γ' refl p q
  ... | refl = cong refl refl ps  qs

record GState-[_]_≈_ (e : Epoch) (gSt gSt' : GState) : Type where
  module gSt  = GState gSt
  module gSt' = GState gSt'
  field
    dreps      : DReps-[ e ] gSt.dreps ≈ gSt'.dreps
    ccHotKeys  : gSt.ccHotKeys ≡ gSt'.ccHotKeys

record CertState-[_]_≈_ (e : Epoch) (cSt cSt' : CertState) : Type where
  module cSt  = CertState cSt
  module cSt' = CertState cSt'
  field
    dState : cSt.dState ≡ cSt'.dState
    pState : cSt.pState ≡ cSt'.pState
    gState : GState-[ e ] cSt.gState ≈ cSt'.gState

record LState-[_]_≈_ (e : Epoch) (lSt lSt' : LState) : Type where
  module lSt  = LState lSt
  module lSt' = LState lSt'
  field
    utxoSt     : lSt.utxoSt ≡ lSt'.utxoSt
    govSt      : lSt.govSt ≡ lSt'.govSt
    certState  : CertState-[ e ] lSt.certState ≈ lSt'.certState

record EpochState-[_]_≈_ (e : Epoch) (epSt epSt' : EpochState) : Type where
  module epSt  = EpochState epSt
  module epSt' = EpochState epSt'

  field
    acnt       : epSt.acnt ≡ epSt'.acnt
    ss         : epSt.ss ≡ epSt'.ss
    ls         : LState-[ e ] epSt.ls ≈ epSt'.ls
    es         : epSt.es ≡ epSt'.es
    fut        : epSt.fut ≡ epSt'.fut

module SNAP {lSt lSt' : LState} {ss ss' : Snapshots}
            (e : Epoch)
            (ss≡ss' : ss ≡ ss') (lSt≈lSt' : LState-[ e ] lSt ≈ lSt')
            where

  module lSt≈lSt' = LState-[_]_≈_ lSt≈lSt'
  module certState≈certState' = CertState-[_]_≈_ lSt≈lSt'.certState

  cong : ∀ {ss'' ss''' : Snapshots}
          → lSt  ⊢ ss ⇀⦇ tt ,SNAP⦈ ss''
          → lSt' ⊢ ss' ⇀⦇ tt ,SNAP⦈ ss'''
          → ss'' ≡ ss'''
  cong SNAP SNAP = {!!}

record EPOCH-Updates0-[_]_≈_ (e : Epoch) (eu eu' : EPOCH-Updates0) : Type where
  module eu  = EPOCH-Updates0 eu
  module eu' = EPOCH-Updates0 eu'

  field
    es             : eu.es ≡ eu'.es
    govSt'         : eu.govSt' ≡ eu'.govSt'
    payout         : eu.payout ≡ eu'.payout
    gState'        : GState-[ sucᵉ e ] eu.gState' ≈ eu'.gState'
    utxoSt'        : eu.utxoSt' ≡ eu'.utxoSt'
    totWithdrawals : eu.totWithdrawals ≡ eu'.totWithdrawals

module EPOCH-updates0 {rSt rSt' : RatifyState} {lSt lSt' : LState} (e : Epoch) (rSt≡rSt' : rSt ≡ rSt') (lSt≈lSt' : LState-[ e ] lSt ≈ lSt') where
  module lSt≈lSt' = LState-[_]_≈_ lSt≈lSt'

  cong : EPOCH-Updates0-[ e ] (EPOCH-updates0 rSt lSt) ≈ (EPOCH-updates0 rSt' lSt')
  cong = {!!}

record EPOCH-Updates-[_]_≈_ (e : Epoch) (eu eu' : EPOCH-Updates) : Type where
  module eu  = EPOCH-Updates eu
  module eu' = EPOCH-Updates eu'
  field
    dState''       : eu.dState'' ≡ eu'.dState''
    acnt''         : eu.acnt'' ≡ eu'.acnt''

module EPOCH-updates
  {eu0 eu0' : EPOCH-Updates0} {lSt lSt' : LState} {dSt dSt' : DState} {acnt acnt' : Acnt}
  (e : Epoch)
  (eu0≈eu0' : EPOCH-Updates0-[ e ] eu0 ≈ eu0') (lSt≈lSt' : LState-[ e ] lSt ≈ lSt') (dSt≡dSt' : dSt ≡ dSt') (acnt≡acnt' : acnt ≡ acnt') where

  cong : EPOCH-Updates-[ e ] (EPOCH-updates eu0 lSt dSt acnt) ≈ (EPOCH-updates eu0' lSt' dSt' acnt')
  cong = {!!}

record PoolReapState-_≈_ (prSt prSt' : PoolReapState) : Type where
  module prSt  = PoolReapState prSt
  module prSt' = PoolReapState prSt'
  field
    utxoSt     : prSt.utxoSt ≡ prSt'.utxoSt
    acnt       : prSt.acnt ≡ prSt'.acnt
    dState     : prSt.dState ≡ prSt'.dState
    pState     : prSt.pState ≡ prSt'.pState

module POOLREAP
  {prSt prSt' : PoolReapState}
  (e : Epoch)
  (prSt≡prSt' : PoolReapState- prSt ≈ prSt') where

  cong : ∀ {prSt'' prSt''' : PoolReapState}
       → tt ⊢ prSt ⇀⦇ e ,POOLREAP⦈ prSt''
       → tt ⊢ prSt' ⇀⦇ e ,POOLREAP⦈ prSt'''
       → PoolReapState- prSt'' ≈ prSt'''
  cong = {!!}

module VDelegDelegatedStake-≈
  (currentEpoch : Epoch)
  (utxoSt : UTxOState)
  (govSt : GovState)
  {gState gState' : GState} (gState≡gState' : GState-[ currentEpoch ] gState ≈ gState')
  (dState : DState)
  where

  module vds  = VDelegDelegatedStake currentEpoch utxoSt govSt gState  dState
  module vds' = VDelegDelegatedStake currentEpoch utxoSt govSt gState' dState

  -- filterᵐ is idempotent
  -- dom is congruent
  activeDReps : vds.activeDReps ≡ᵉ vds'.activeDReps
  activeDReps = {!!}
  -- activeDReps = dom (filterᵐ (λ (_ , e) → currentEpoch ≤ e) dreps)

  -- mapˢ is congruent
  -- ∪ is congruent
  -- ∣^ is congruent
  activeVoteDelegs : vds.activeVoteDelegs ≡ᵐ vds'.activeVoteDelegs
  activeVoteDelegs = {!!}
  -- activeVoteDelegs = voteDelegs ∣^ ((mapˢ vDelegCredential activeDReps)
  --                                   ∪ ❴ vDelegNoConfidence ❵ ∪ ❴ vDelegAbstain ❵)

  -- mapFromFun is congruent
  stakePerCredential : vds.stakePerCredential ≡ᵐ vds'.stakePerCredential
  stakePerCredential = {!!}
  -- stakePerCredential = mapFromFun (λ c → cbalance (utxo ∣^' λ txout → getStakeCred txout ≡ just c))
  --                                 (dom activeVoteDelegs)

  -- ∪⁺ is congruent
  -- _ˢ is congruent
  -- ∘ʳ is congruent
  -- ⁻¹ʳ is congruent
  -- aggregate₊ is congruent
  calculate : vds.calculate ≡ᵐ vds'.calculate
  calculate = {!!}

module mkStakeDistrs {s s' : Snapshot} {utxoSt utxoSt' : UTxOState} {govSt govSt' : GovState} {gState gState' : GState} {dState dState' : DState}
                     where

  cong
   : ∀ (s≡s' : s ≡ s') (e : Epoch) (utxoSt≡utxoSt' : utxoSt ≡ utxoSt') (govSt≡govSt' : govSt ≡ govSt') (gState≈gState' : GState-[ e ] gState ≈ gState') (dState≡dState' : dState ≡ dState')
   → StakeDistrs- (mkStakeDistrs s e utxoSt govSt gState dState) ≈ (mkStakeDistrs s' e utxoSt' govSt' gState' dState')
  cong refl e refl refl gState≈gState' refl = record { R }
    where
      module R where
        stakeDistrVDeleg = VDelegDelegatedStake-≈.calculate  e utxoSt govSt gState≈gState' dState
        stakeDistrPools = refl

module EPOCH {epSt epSt' : EpochState} (e : Epoch) (epSt≈epSt' : EpochState-[ e ] epSt ≈ epSt') where
  module epSt≈epSt' = EpochState-[_]_≈_ epSt≈epSt'

  cong : ∀ (epSt'' epSt''' : EpochState)
       → tt ⊢ epSt  ⇀⦇ e ,EPOCH⦈ epSt''
       → tt ⊢ epSt' ⇀⦇ e ,EPOCH⦈ epSt'''
       → EpochState-[ sucᵉ e ] epSt'' ≈ epSt'''
  cong eps'' eps''' (EPOCH (snap₁ , ratify₁ , poolreap₁)) (EPOCH (snap₂ , ratify₂ , poolreap₂))
    = record {R}
    where
      module R where
        module lSt≈lSt' = LState-[_]_≈_ epSt≈epSt'.ls
        module cSt≈cSt' = CertState-[_]_≈_ lSt≈lSt'.certState
        module gSt≈gSt' = GState-[_]_≈_ cSt≈cSt'.gState

        eu0≈eu0' = EPOCH-updates0.cong e epSt≈epSt'.fut epSt≈epSt'.ls
        module eu0≈eu0' = EPOCH-Updates0-[_]_≈_ eu0≈eu0'

        module PoolReapState-≈ where
          utxoSt = eu0≈eu0'.utxoSt'
          acnt   = epSt≈epSt'.acnt
          dState = cSt≈cSt'.dState
          pState = cSt≈cSt'.pState

        module prSt≈prSt' = PoolReapState-_≈_ (POOLREAP.cong e (record {PoolReapState-≈}) poolreap₁ poolreap₂)
        module eu≈eu' = EPOCH-Updates-[_]_≈_ (EPOCH-updates.cong e eu0≈eu0' epSt≈epSt'.ls prSt≈prSt'.dState prSt≈prSt'.acnt)
        ss''≡ss''' = SNAP.cong e epSt≈epSt'.ss epSt≈epSt'.ls snap₁ snap₂

        module Γ≈Γ' where
          stakeDistrs   = mkStakeDistrs.cong (P.cong Snapshots.mark ss''≡ss''') e eu0≈eu0'.utxoSt' eu0≈eu0'.govSt' cSt≈cSt'.gState cSt≈cSt'.dState
          currentEpoch  = refl
          dreps         = gSt≈gSt'.dreps
          ccHotKeys     = gSt≈gSt'.ccHotKeys
          treasury      = P.cong Acnt.treasury epSt≈epSt'.acnt
          pools         = P.cong PState.pools (cSt≈cSt'.pState)
          delegatees    = P.cong DState.voteDelegs (cSt≈cSt'.dState)

        fut≡fut'   = RATIFIES.cong (record {Γ≈Γ'}) (P.cong (λ x → RatifyState.constructor x ∅ false) eu0≈eu0'.es) eu0≈eu0'.govSt' ratify₁ ratify₂

        module CS where
          dState = eu≈eu'.dState''
          pState = prSt≈prSt'.pState
          gState = eu0≈eu0'.gState'

        module LS where
          utxoSt = prSt≈prSt'.utxoSt
          govSt = eu0≈eu0'.govSt'
          certState = record {CS}

        acnt = eu≈eu'.acnt''
        ss   = ss''≡ss'''
        ls   = record {LS}
        es   = eu0≈eu0'.es
        fut  = fut≡fut'
