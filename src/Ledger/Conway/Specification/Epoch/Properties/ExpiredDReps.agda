{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.ExpiredDReps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Core.Specification.Epoch
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Prelude hiding (cong)
import Ledger.Prelude as P
import Relation.Binary.Core as B
open import Relation.Binary.Definitions
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Enact.Properties.Computational govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Rewards txs abs
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)
open import Axiom.Set.Properties th
open import Relation.Binary.PropositionalEquality hiding (cong)

-- | Epoch indexed relation.
-- Two DReps (Map Credential Epoch) are related iff: Non-expired DReps are the same.
DReps-[_]_≈_ : Epoch → B.Rel DReps 0ℓ
DReps-[_]_≈_ e dreps₁ dreps₂
  = filterᵐ (λ (c , e') → e ≤ e') dreps₁ ≡ᵐ filterᵐ (λ (c , e') → e ≤ e') dreps₂

DReps-≈-sucᵉ : ∀ (e : Epoch) {dreps₁ dreps₂ : DReps} → DReps-[ e ] dreps₁ ≈ dreps₂ → DReps-[ sucᵉ e ] mapValues sucᵉ dreps₁ ≈ mapValues sucᵉ dreps₂
DReps-≈-sucᵉ e {dreps₁} {dreps₂} dreps₁≈dreps₂ =
    begin
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') (mapValues sucᵉ dreps₁) ˢ
        ≈⟨ filter-map P⇒Q ⟩
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') (mapValues sucᵉ (filterᵐ (λ (_ , e') → e ≤ e') dreps₁)) ˢ
        ≈⟨ filter-cong (map-≡ᵉ dreps₁≈dreps₂) ⟩
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') (mapValues sucᵉ (filterᵐ (λ (_ , e') → e ≤ e') dreps₂)) ˢ
        ≈⟨ filter-map P⇒Q ⟨
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') (mapValues sucᵉ dreps₂) ˢ
    ∎
    where
      open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid
      import Relation.Unary as U
      P⇒Q : U.Universal ((λ ((_ , e') : Credential × Epoch)  → sucᵉ e ≤ sucᵉ e') U.⇒ (λ (_ , e') → e ≤ e'))
      P⇒Q _ p = ≤-predᵉ p

DReps-≈-sym : (e : Epoch) {dreps₁ dreps₂ : DReps} → DReps-[ e ] dreps₁ ≈ dreps₂ → DReps-[ e ] dreps₂ ≈ dreps₁
DReps-≈-sym _ = ≡ᵉ-isEquivalence.sym
  where
    open import Relation.Binary.Structures _≡ᵉ_
    module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence

open Equivalence

DReps-≈-mono : ∀ (e : Epoch) {dreps₁ dreps₂ : DReps} → DReps-[ e ] dreps₁ ≈ dreps₂ → DReps-[ sucᵉ e ] dreps₁ ≈ dreps₂
DReps-≈-mono e {dreps₁} {dreps₂} dreps₁≈dreps₂ =
    begin
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') dreps₁ ˢ
        ≈⟨ filter-⇒ P⇒Q ⟨
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') (filterᵐ (λ (_ , e') → e ≤ e') dreps₁) ˢ
        ≈⟨ filter-cong dreps₁≈dreps₂ ⟩
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') (filterᵐ (λ (_ , e') → e ≤ e') dreps₂) ˢ
        ≈⟨ filter-⇒ P⇒Q ⟩
      filterᵐ (λ (_ , e') → sucᵉ e ≤ e') dreps₂ ˢ
    ∎
    where
      open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid
      import Relation.Unary as U
      module esp = HasPreorder (EpochStructure.preoEpoch epochStructure)
      P⇒Q : U.Universal ((λ ((_ , e') : Credential × Epoch)  → sucᵉ e ≤ e') U.⇒ (λ (_ , e') → e ≤ e'))
      P⇒Q _ p = esp.≤-trans (proj₁ (esp.<⇒≤∧≉ e<sucᵉ)) p

record StakeDistrs-_≈_ (sd sd' : StakeDistrs) : Type where
  module sd  = StakeDistrs sd
  module sd' = StakeDistrs sd'
  field
    stakeDistrVDeleg : sd.stakeDistrVDeleg ≡ᵐ sd'.stakeDistrVDeleg
    stakeDistrPools  : sd.stakeDistrPools ≡ sd'.stakeDistrPools

StakeDistrs-≈-sym : Symmetric StakeDistrs-_≈_
StakeDistrs-≈-sym sd≈sd' = record { stakeDistrVDeleg = ≡ᵉ-isEquivalence.sym sd≈sd'.stakeDistrVDeleg ; stakeDistrPools = ≡-sym sd≈sd'.stakeDistrPools }
  where
    module sd≈sd' = StakeDistrs-_≈_ sd≈sd'
    open import Relation.Binary.Structures _≡ᵉ_
    module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence
    open import Relation.Binary.PropositionalEquality renaming (sym to ≡-sym)

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

RatifyEnv-≈-sym : Symmetric RatifyEnv-_≈_
RatifyEnv-≈-sym {Γ} {Γ'} Γ≈Γ' = record {R}
  where
    module R where
      module Γ≈Γ' = RatifyEnv-_≈_ Γ≈Γ'
      module Γ = RatifyEnv Γ
      module Γ' = RatifyEnv Γ'
      open import Relation.Binary.PropositionalEquality renaming (sym to ≡-sym)

      stakeDistrs = StakeDistrs-≈-sym Γ≈Γ'.stakeDistrs
      currentEpoch = ≡-sym Γ≈Γ'.currentEpoch

      dreps : DReps-[ Γ'.currentEpoch ] Γ'.dreps ≈ Γ.dreps
      dreps rewrite currentEpoch = DReps-≈-sym Γ.currentEpoch {dreps₁ = Γ.dreps} {dreps₂ = Γ'.dreps} Γ≈Γ'.dreps

      ccHotKeys = ≡-sym Γ≈Γ'.ccHotKeys
      treasury = ≡-sym Γ≈Γ'.treasury
      pools = ≡-sym Γ≈Γ'.pools
      delegatees = ≡-sym Γ≈Γ'.delegatees

module AcceptedByDRep-≈ {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') (eSt : EnactState) (gaSt : GovActionState) where
  module Γ = RatifyEnv Γ
  module Γ' = RatifyEnv Γ'
  module Γ≈Γ' = RatifyEnv-_≈_ Γ≈Γ'
  module abdr  = AcceptedByDRep Γ  eSt gaSt
  module abdr' = AcceptedByDRep Γ' eSt gaSt

  castVotes : abdr.castVotes ≡ abdr'.castVotes
  castVotes = refl

  activeDReps : abdr.activeDReps ≡ᵉ abdr'.activeDReps
  activeDReps with Γ≈Γ'.currentEpoch
  ... | refl = dom-cong $
    begin
      filterᵐ (λ (_ , e) → Γ.currentEpoch ≤ e) Γ.dreps ˢ
        ≈⟨ filterᵐ-idem {m = Γ.dreps} ⟨
      filterᵐ (λ (_ , e) → Γ.currentEpoch ≤ e) (filterᵐ (λ (_ , e) → Γ.currentEpoch ≤ e) Γ.dreps) ˢ
        ≈⟨ filter-cong Γ≈Γ'.dreps ⟩
      filterᵐ (λ (_ , e) → Γ'.currentEpoch ≤ e) (filterᵐ (λ (_ , e) → Γ'.currentEpoch ≤ e) Γ'.dreps) ˢ
        ≈⟨ filterᵐ-idem {m = Γ'.dreps} ⟩
      filterᵐ (λ (_ , e) → Γ'.currentEpoch ≤ e) Γ'.dreps ˢ
    ∎
    where
      open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid

  predeterminedDRepVotes : abdr.predeterminedDRepVotes ≡ abdr'.predeterminedDRepVotes
  predeterminedDRepVotes = refl

  defaultDRepCredentialVotes : abdr.defaultDRepCredentialVotes ≡ᵐ abdr'.defaultDRepCredentialVotes
  defaultDRepCredentialVotes = map-≡ᵉ (map-≡ᵉ activeDReps)

  actualVotes : abdr.actualVotes ≡ᵐ abdr'.actualVotes
  actualVotes = ∪ˡ-cong {m = abdr.castVotes} {m' = abdr.defaultDRepCredentialVotes ∪ˡ abdr.predeterminedDRepVotes}
                       {m'' = abdr'.castVotes} {m''' = abdr'.defaultDRepCredentialVotes ∪ˡ abdr'.predeterminedDRepVotes}
                       (≡ᵉ-isEquivalence.reflexive (P.cong proj₁ castVotes))
                       (∪ˡ-cong {m = abdr.defaultDRepCredentialVotes} {m' = abdr.predeterminedDRepVotes }
                               {m'' = abdr'.defaultDRepCredentialVotes} {m''' = abdr'.predeterminedDRepVotes }
                               defaultDRepCredentialVotes (≡ᵉ-isEquivalence.reflexive (P.cong proj₁ predeterminedDRepVotes)))
    where
      open import Relation.Binary.Structures _≡ᵉ_
      module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence

  t : abdr.t ≡ abdr'.t
  t = refl

  acceptedStake : abdr.acceptedStake ≡ abdr'.acceptedStake
  acceptedStake =
    indexedSumᵛ'-cong ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ {f = id}
      {x = StakeDistrs.stakeDistrVDeleg Γ.stakeDistrs ∣ abdr.actualVotes ⁻¹ _}
      {y = StakeDistrs.stakeDistrVDeleg Γ'.stakeDistrs ∣ abdr'.actualVotes ⁻¹ _}
      (resᵐ-cong {m = StakeDistrs.stakeDistrVDeleg Γ.stakeDistrs}
                 {m' = StakeDistrs.stakeDistrVDeleg Γ'.stakeDistrs}
        (StakeDistrs-_≈_.stakeDistrVDeleg Γ≈Γ'.stakeDistrs)
        (⁻¹-cong {m = abdr.actualVotes} {m' = abdr'.actualVotes} actualVotes))

  totalStake : abdr.totalStake ≡ abdr'.totalStake
  totalStake = indexedSumᵛ'-cong ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ {f = id}
                 {x = StakeDistrs.stakeDistrVDeleg Γ.stakeDistrs ∣ dom (abdr.actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵))}
                 {y = StakeDistrs.stakeDistrVDeleg Γ'.stakeDistrs ∣ dom (abdr'.actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵))}
                 (resᵐ-cong {m = StakeDistrs.stakeDistrVDeleg Γ.stakeDistrs}
                            {m' = StakeDistrs.stakeDistrVDeleg Γ'.stakeDistrs}
                            (StakeDistrs-_≈_.stakeDistrVDeleg Γ≈Γ'.stakeDistrs)
                            (dom-cong (coresᵐ-cong {m = abdr.actualVotes} {m' = abdr'.actualVotes} actualVotes ≡ᵉ-isEquivalence.refl)))
    where
      open import Relation.Binary.Structures _≡ᵉ_
      module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence

  accepted-→ : abdr.accepted → abdr'.accepted
  accepted-→ x =
    subst (λ totalStake → (abdr'.acceptedStake /₀ totalStake) ≥ abdr'.t ) totalStake
      (subst (λ acceptedStake → (acceptedStake /₀ abdr.totalStake) ≥ abdr'.t ) acceptedStake
        (subst (λ t → (abdr.acceptedStake /₀ abdr.totalStake) ≥ t ) t x))

module AcceptedBySPO-≈ {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') (eSt : EnactState) (gaSt : GovActionState) where
  module Γ = RatifyEnv Γ
  module Γ' = RatifyEnv Γ'
  module Γ≈Γ' = RatifyEnv-_≈_ Γ≈Γ'

  accepted-→ : acceptedBySPO Γ eSt gaSt → acceptedBySPO Γ' eSt gaSt
  accepted-→ x rewrite StakeDistrs-_≈_.stakeDistrPools Γ≈Γ'.stakeDistrs | Γ≈Γ'.pools | Γ≈Γ'.delegatees = x

module AcceptedByCC-≈ {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') (eSt : EnactState) (gaSt : GovActionState) where
  module Γ = RatifyEnv Γ
  module Γ' = RatifyEnv Γ'
  module Γ≈Γ' = RatifyEnv-_≈_ Γ≈Γ'

  accepted-→ : acceptedByCC Γ eSt gaSt → acceptedByCC Γ' eSt gaSt
  accepted-→ x rewrite Γ≈Γ'.currentEpoch | Γ≈Γ'.ccHotKeys = x

module AcceptedConds-≈ {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') (rSt : RatifyState) (ga : GovActionID × GovActionState) where
  module Γ = RatifyEnv Γ
  module Γ' = RatifyEnv Γ'
  module Γ≈Γ' = RatifyEnv-_≈_ Γ≈Γ'

  opaque
    unfolding accepted

    acceptConds-→ : acceptConds Γ rSt ga → acceptConds Γ' rSt ga
    acceptConds-→ ((abcc , abdrep , abspo) , y , z)
      with Γ≈Γ'.currentEpoch | Γ≈Γ'.ccHotKeys | Γ≈Γ'.treasury | Γ≈Γ'.pools | Γ≈Γ'.delegatees | StakeDistrs-_≈_.stakeDistrPools Γ≈Γ'.stakeDistrs
    ... | refl | refl | refl | refl | refl | refl
      = ( AcceptedByCC-≈.accepted-→ Γ≈Γ' (RatifyState.es rSt) (ga .proj₂) abcc
        , AcceptedByDRep-≈.accepted-→ Γ≈Γ' (RatifyState.es rSt) (ga .proj₂) abdrep
        , AcceptedBySPO-≈.accepted-→ Γ≈Γ' (RatifyState.es rSt) (ga .proj₂) abspo
        )
        , y
        , z

module RATIFY {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') {a a' : _} {rSt rSt' : RatifyState} where
  module Γ  = RatifyEnv Γ
  module Γ' = RatifyEnv Γ'
  module rSt  = RatifyState rSt
  module rSt' = RatifyState rSt'

  module Γ≈Γ' = RatifyEnv-_≈_ Γ≈Γ'

  cong : ∀ (rSt≡rSt' : rSt ≡ rSt') {rSt'' rSt'''}
       → Γ  ⊢ rSt  ⇀⦇ a ,RATIFY⦈ rSt''
       → Γ' ⊢ rSt' ⇀⦇ a ,RATIFY⦈ rSt'''
       → rSt'' ≡ rSt'''
  cong rSt≡rSt' (RATIFY-Accept {es = es}((ac , de , ex) , en)) (RATIFY-Accept {es = es'} ((ac' , ex') , en'))
    with  Γ≈Γ'.treasury |  Γ≈Γ'.currentEpoch | rSt≡rSt'
  ... | refl | refl | refl with ENACT-deterministic en en'
  ... | refl = refl
  cong refl (RATIFY-Accept (ac , _)) (RATIFY-Reject (¬ac , _))
    = ⊥-elim (¬ac (AcceptedConds-≈.acceptConds-→ Γ≈Γ' rSt a ac))
  cong refl (RATIFY-Accept (ac , _)) (RATIFY-Continue (¬ac , _))
    = ⊥-elim (¬ac (AcceptedConds-≈.acceptConds-→ Γ≈Γ' rSt a ac))
  cong refl (RATIFY-Reject (¬ac , _)) (RATIFY-Accept (ac , _))
    = ⊥-elim (¬ac (AcceptedConds-≈.acceptConds-→ (RatifyEnv-≈-sym Γ≈Γ') rSt' a ac))
  cong refl (RATIFY-Reject (¬ac , _)) (RATIFY-Reject (¬ac' , _))
    = refl
  cong refl (RATIFY-Reject (_ , ex)) (RATIFY-Continue (_ , ¬ex))
    rewrite Γ≈Γ'.currentEpoch = ⊥-elim (¬ex ex)
  cong refl (RATIFY-Continue (¬ac , _)) (RATIFY-Accept (ac , _))
    = ⊥-elim (¬ac (AcceptedConds-≈.acceptConds-→ (RatifyEnv-≈-sym Γ≈Γ') rSt' a ac))
  cong refl (RATIFY-Continue (_ , ¬ex)) (RATIFY-Reject (_ , ex))
    rewrite Γ≈Γ'.currentEpoch = ⊥-elim (¬ex ex)
  cong refl (RATIFY-Continue (¬ac , ¬ex)) (RATIFY-Continue (¬ac' , ¬ex')) = refl

module RATIFIES {Γ Γ' : RatifyEnv} (Γ≈Γ' : RatifyEnv- Γ ≈ Γ') where
  cong
    : ∀ {rSt rSt' : RatifyState} (rSt≡rSt' : rSt ≡ rSt') {govSt govSt' : GovState} (govSt≡govSt' : govSt ≡ govSt') {rSt'' rSt''' : RatifyState}
       → Γ  ⊢ rSt  ⇀⦇ govSt  ,RATIFIES⦈ rSt''
       → Γ' ⊢ rSt' ⇀⦇ govSt' ,RATIFIES⦈ rSt'''
       → rSt'' ≡ rSt'''
  cong refl refl (BS-base Id-nop) (BS-base Id-nop) = refl
  cong refl refl (BS-ind {sig = a} p ps) (BS-ind {sig = a'} q qs)
    with RATIFY.cong Γ≈Γ' {a = a} {a' = a'} refl p q
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
            (lSt≈lSt' : LState-[ e ] lSt ≈ lSt')
            where
  module lSt≈lSt' = LState-[_]_≈_ lSt≈lSt'

  cong : ∀ (ss≡ss' : ss ≡ ss')
          {ss'' ss''' : Snapshots}
          → lSt  ⊢ ss ⇀⦇ tt ,SNAP⦈ ss''
          → lSt' ⊢ ss' ⇀⦇ tt ,SNAP⦈ ss'''
          → ss'' ≡ ss'''
  cong refl SNAP SNAP rewrite lSt≈lSt'.utxoSt | CertState-[_]_≈_.pState lSt≈lSt'.certState | CertState-[_]_≈_.dState lSt≈lSt'.certState = refl


record EPOCH-Updates0-[_]_≈_ (e : Epoch) (eu0 eu0' : EPOCH-Updates0) : Type where
  module eu0  = EPOCH-Updates0 eu0
  module eu0' = EPOCH-Updates0 eu0'

  field
    es             : eu0.es ≡ eu0'.es
    govSt'         : eu0.govSt' ≡ eu0'.govSt'
    payout         : eu0.payout ≡ eu0'.payout
    gState'        : GState-[ sucᵉ e ] eu0.gState' ≈ eu0'.gState'
    utxoSt'        : eu0.utxoSt' ≡ eu0'.utxoSt'
    totWithdrawals : eu0.totWithdrawals ≡ eu0'.totWithdrawals

module EPOCH-updates0 {rSt rSt' : RatifyState} {lSt lSt' : LState} (e : Epoch) (rSt≡rSt' : rSt ≡ rSt') (lSt≈lSt' : LState-[ e ] lSt ≈ lSt') where
  module lSt≈lSt' = LState-[_]_≈_ lSt≈lSt'
  module eu0  = EPOCHUpdates0 rSt lSt
  module eu0' = EPOCHUpdates0 rSt' lSt'

  es : eu0.es ≡ eu0'.es
  es rewrite rSt≡rSt' = refl

  tmpGovSt : eu0.tmpGovSt ≡ eu0'.tmpGovSt
  tmpGovSt rewrite rSt≡rSt' | lSt≈lSt'.govSt = refl

  orphans : eu0.orphans ≡ eu0'.orphans
  orphans rewrite es | tmpGovSt = refl

  removed' : eu0.removed' ≡ eu0'.removed'
  removed' rewrite rSt≡rSt' | lSt≈lSt'.govSt = refl

  govSt' : eu0.govSt' ≡ eu0'.govSt'
  govSt' rewrite removed' | lSt≈lSt'.govSt = refl

  removedGovActions : eu0.removedGovActions ≡ eu0'.removedGovActions
  removedGovActions rewrite removed' | lSt≈lSt'.utxoSt = refl

  govActionReturns : eu0.govActionReturns ≡ eu0'.govActionReturns
  govActionReturns rewrite removedGovActions = refl

  payout : eu0.payout ≡ eu0'.payout
  payout rewrite govActionReturns | rSt≡rSt' = refl

  gState' : GState-[ sucᵉ e ] eu0.gState' ≈ eu0'.gState'
  gState' = record {R}
    where
      module R where
        open import Relation.Binary.PropositionalEquality renaming (trans to ≡-trans; sym to ≡-sym)

        true≢false : ¬ true ≡ false
        true≢false ()

        dreps : DReps-[ sucᵉ e ] GState.dreps eu0.gState' ≈ GState.dreps eu0'.gState'
        dreps with null eu0.govSt' | inspect null eu0.govSt' | null eu0'.govSt' | inspect null eu0'.govSt'
        ... | false | eq₀ | false | eq₁ = DReps-≈-mono e {dreps₁ = GState.dreps eu0.gState} {dreps₂ = GState.dreps eu0'.gState} (GState-[_]_≈_.dreps (CertState-[_]_≈_.gState lSt≈lSt'.certState))
        ... | false | [ eq₀ ] | true | [ eq₁ ] = ⊥-elim (true≢false (≡-trans (≡-sym eq₁) (≡-trans (cong null (≡-sym govSt')) eq₀)))
        ... | true | [ eq₀ ] | false | [ eq₁ ] = ⊥-elim (true≢false (≡-trans (≡-sym eq₀) (≡-trans (cong null govSt') eq₁)))
        ... | true | eq₀ | true | eq₁ = DReps-≈-sucᵉ e {dreps₁ = GState.dreps eu0.gState} {dreps₂ = GState.dreps eu0'.gState} (GState-[_]_≈_.dreps (CertState-[_]_≈_.gState lSt≈lSt'.certState))

        ccHotKeys : GState.ccHotKeys eu0.gState' ≡  GState.ccHotKeys eu0'.gState'
        ccHotKeys rewrite GState-[_]_≈_.ccHotKeys (CertState-[_]_≈_.gState lSt≈lSt'.certState) | rSt≡rSt' = refl

  utxoSt' : eu0.utxoSt' ≡ eu0'.utxoSt'
  utxoSt' rewrite lSt≈lSt'.utxoSt | removed' = refl

  totWithdrawals : eu0.totWithdrawals ≡ eu0'.totWithdrawals
  totWithdrawals rewrite rSt≡rSt' = refl

  updates : EPOCH-Updates0-[ e ] eu0.updates ≈ eu0'.updates
  updates = record
             { es = es
             ; govSt' = govSt'
             ; payout = payout
             ; gState' = gState'
             ; utxoSt' = utxoSt'
             ; totWithdrawals = totWithdrawals
             }
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

  module eu0≈eu0' = EPOCH-Updates0-[_]_≈_ eu0≈eu0'
  module eu = EPOCHUpdates eu0 lSt dSt acnt
  module eu' = EPOCHUpdates eu0' lSt' dSt' acnt'

  refunds : eu.refunds ≡ eu'.refunds
  refunds rewrite eu0≈eu0'.payout | dSt≡dSt' = refl

  dState'' : eu.dState'' ≡ eu'.dState''
  dState'' rewrite dSt≡dSt' | eu0≈eu0'.payout = refl

  unclaimed : eu.unclaimed ≡ eu'.unclaimed
  unclaimed rewrite eu0≈eu0'.payout | dSt≡dSt' = refl

  acnt'' : eu.acnt'' ≡ eu'.acnt''
  acnt'' rewrite acnt≡acnt' | eu0≈eu0'.totWithdrawals | LState-[_]_≈_.utxoSt lSt≈lSt' | unclaimed = refl

  updates : EPOCH-Updates-[ e ] eu.updates ≈ eu'.updates
  updates = record { dState'' = dState'' ; acnt'' = acnt'' }

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
  (prSt≈prSt' : PoolReapState- prSt ≈ prSt') where

  module prSt≈prSt' = PoolReapState-_≈_ prSt≈prSt'

  cong : ∀ {prSt'' prSt''' : PoolReapState}
       → tt ⊢ prSt ⇀⦇ e ,POOLREAP⦈ prSt''
       → tt ⊢ prSt' ⇀⦇ e ,POOLREAP⦈ prSt'''
       → PoolReapState- prSt'' ≈ prSt'''
  cong POOLREAP POOLREAP with prSt≈prSt'.utxoSt | prSt≈prSt'.acnt | prSt≈prSt'.dState  | prSt≈prSt'.pState
  ... | refl | refl | refl | refl  = record { utxoSt = refl ; acnt = refl ; dState = refl ; pState = refl }

module VDelegDelegatedStake-≈
  (currentEpoch : Epoch)
  (utxoSt : UTxOState)
  (govSt : GovState)
  {gState gState' : GState} (gState≈gState' : GState-[ currentEpoch ] gState ≈ gState')
  (dState : DState)
  where

  module gState = GState gState
  module gState' = GState gState'
  module gState≈gState' = GState-[_]_≈_ gState≈gState'
  module vds  = VDelegDelegatedStake currentEpoch utxoSt govSt gState  dState
  module vds' = VDelegDelegatedStake currentEpoch utxoSt govSt gState' dState

  activeDReps : vds.activeDReps ≡ᵉ vds'.activeDReps
  activeDReps = dom-cong $
    begin
      filterᵐ (λ (_ , e) → currentEpoch ≤ e) gState.dreps ˢ
        ≈⟨ filterᵐ-idem {m = gState.dreps} ⟨
      filterᵐ (λ (_ , e) → currentEpoch ≤ e) (filterᵐ (λ (_ , e) → currentEpoch ≤ e) gState.dreps) ˢ
        ≈⟨ filter-cong gState≈gState'.dreps ⟩
      filterᵐ (λ (_ , e) → currentEpoch ≤ e) (filterᵐ (λ (_ , e) → currentEpoch ≤ e) gState'.dreps) ˢ
        ≈⟨ filterᵐ-idem {m = gState'.dreps} ⟩
      filterᵐ (λ (_ , e) → currentEpoch ≤ e) gState'.dreps ˢ
    ∎
    where
      open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid

  activeVDelegs : vds.activeVDelegs ≡ᵉ vds'.activeVDelegs
  activeVDelegs = ∪-cong (map-≡ᵉ activeDReps) ≡ᵉ-isEquivalence.refl
    where
      open import Relation.Binary.Structures _≡ᵉ_
      module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence

  calculate : vds.calculate ≡ᵐ vds'.calculate
  calculate = mapFromFun-cong _ activeVDelegs

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

        eu0≈eu0' = EPOCH-updates0.updates e epSt≈epSt'.fut epSt≈epSt'.ls
        module eu0≈eu0' = EPOCH-Updates0-[_]_≈_ eu0≈eu0'

        module PoolReapState-≈ where
          utxoSt = eu0≈eu0'.utxoSt'
          acnt   = epSt≈epSt'.acnt
          dState = cSt≈cSt'.dState
          pState = cSt≈cSt'.pState

        module prSt≈prSt' = PoolReapState-_≈_ (POOLREAP.cong e (record {PoolReapState-≈}) poolreap₁ poolreap₂)
        module eu≈eu' = EPOCH-Updates-[_]_≈_ (EPOCH-updates.updates e eu0≈eu0' epSt≈epSt'.ls prSt≈prSt'.dState prSt≈prSt'.acnt)
        ss''≡ss''' = SNAP.cong e epSt≈epSt'.ls epSt≈epSt'.ss snap₁ snap₂

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
