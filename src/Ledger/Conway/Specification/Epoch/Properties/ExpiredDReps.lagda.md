<!--
```agda
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
open import Relation.Binary.PropositionalEquality hiding (cong)

open import Axiom.Set.Properties th hiding (filter-map)
open import abstract-set-theory.Axiom.Set.Properties th
```
-->

The `EPOCH`{.AgdaDatatype} transition system behaves parametrically w.r.t. the
set of expired `DReps`{.AgdaInductiveConstructor} that are part of the
`EpochState`{.AgdaRecord}.

The following family of equivalence relations indexed by `Epoch` formalize the
concept of two maps of `DReps`{.AgdaInductiveConstructor} being the same on
non-expired `DReps`{.AgdaInductiveConstructor}:

```agda
DReps-[_]_≈_ : Epoch → B.Rel DReps 0ℓ
DReps-[_]_≈_ e dreps₁ dreps₂
  = filterᵐ (activeInEpoch e) dreps₁ ≡ᵐ filterᵐ (activeInEpoch e) dreps₂
```

This family of relations is monotonic w.r.t. increment on `Epoch`{.AgdaDatatype}
and respects `sucᵉ`{.AgdaFunction}:

```agda
DReps-≈-mono : ∀ (e : Epoch) {dreps₁ dreps₂ : DReps} → DReps-[ e ] dreps₁ ≈ dreps₂ → DReps-[ sucᵉ e ] dreps₁ ≈ dreps₂
DReps-≈-mono e {dreps₁} {dreps₂} dreps₁≈dreps₂ =
    begin
      filterᵐ (activeInEpoch (sucᵉ e)) dreps₁ ˢ
        ≈⟨ filter-⇒ P⇒Q ⟨
      filterᵐ (activeInEpoch (sucᵉ e)) (filterᵐ (activeInEpoch e) dreps₁) ˢ
        ≈⟨ filter-cong dreps₁≈dreps₂ ⟩
      filterᵐ (activeInEpoch (sucᵉ e)) (filterᵐ (activeInEpoch e) dreps₂) ˢ
        ≈⟨ filter-⇒ P⇒Q ⟩
      filterᵐ (activeInEpoch (sucᵉ e)) dreps₂ ˢ
    ∎
    where
      open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid
      import Relation.Unary as U
      module esp = HasPreorder (EpochStructure.preoEpoch epochStructure)
      P⇒Q : U.Universal ((λ ((_ , e') : Credential × Epoch)  → sucᵉ e ≤ e') U.⇒ (λ (_ , e') → e ≤ e'))
      P⇒Q _ p = esp.≤-trans (proj₁ (esp.<⇒≤∧≉ e<sucᵉ)) p

DReps-≈-sucᵉ : ∀ (e : Epoch) {dreps₁ dreps₂ : DReps} → DReps-[ e ] dreps₁ ≈ dreps₂ → DReps-[ sucᵉ e ] mapValues sucᵉ dreps₁ ≈ mapValues sucᵉ dreps₂
DReps-≈-sucᵉ e {dreps₁} {dreps₂} dreps₁≈dreps₂ =
    begin
      filterᵐ (activeInEpoch (sucᵉ e)) (mapValues sucᵉ dreps₁) ˢ
        ≈⟨ filter-map P⇒Q ⟩
      filterᵐ (activeInEpoch (sucᵉ e)) (mapValues sucᵉ (filterᵐ (activeInEpoch e) dreps₁)) ˢ
        ≈⟨ filter-cong (map-≡ᵉ dreps₁≈dreps₂) ⟩
      filterᵐ (activeInEpoch (sucᵉ e)) (mapValues sucᵉ (filterᵐ (activeInEpoch e) dreps₂)) ˢ
        ≈⟨ filter-map P⇒Q ⟨
      filterᵐ (activeInEpoch (sucᵉ e)) (mapValues sucᵉ dreps₂) ˢ
    ∎
    where
      open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid
      import Relation.Unary as U
      P⇒Q : U.Universal ((λ ((_ , e') : Credential × Epoch)  → sucᵉ e ≤ sucᵉ e') U.⇒ (λ (_ , e') → e ≤ e'))
      P⇒Q _ p = ≤-predᵉ p
```

<!--
```agda
DReps-≈-sym : (e : Epoch) {dreps₁ dreps₂ : DReps} → DReps-[ e ] dreps₁ ≈ dreps₂ → DReps-[ e ] dreps₂ ≈ dreps₁
DReps-≈-sym _ = ≡ᵉ-isEquivalence.sym
  where
    open import Relation.Binary.Structures _≡ᵉ_
    module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence

open Equivalence
```
-->

The family of relations is lifted to `EpochState`{.AgdaRecord}:

```agda
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
```

<!--
```agda
StakeDistrs-≈-sym : Symmetric StakeDistrs-_≈_
StakeDistrs-≈-sym sd≈sd' = record { stakeDistrVDeleg = ≡ᵉ-isEquivalence.sym sd≈sd'.stakeDistrVDeleg ; stakeDistrPools = ≡-sym sd≈sd'.stakeDistrPools }
  where
    module sd≈sd' = StakeDistrs-_≈_ sd≈sd'
    open import Relation.Binary.Structures _≡ᵉ_
    module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence
    open import Relation.Binary.PropositionalEquality renaming (sym to ≡-sym)

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

  activeDReps-≡ᵉ : abdr.activeDReps ≡ᵉ abdr'.activeDReps
  activeDReps-≡ᵉ with Γ≈Γ'.currentEpoch
  ... | refl = dom-cong $
    begin
      filterᵐ (activeInEpoch Γ.currentEpoch) Γ.dreps ˢ
        ≈˘⟨ filterᵐ-idem {m = Γ.dreps} ⟩
      filterᵐ (activeInEpoch _) (filterᵐ (activeInEpoch _) Γ.dreps) ˢ
        ≈⟨ filter-cong Γ≈Γ'.dreps ⟩
      filterᵐ (activeInEpoch _) (filterᵐ (activeInEpoch _) Γ'.dreps) ˢ
        ≈⟨ filterᵐ-idem {m = Γ'.dreps} ⟩
      filterᵐ (activeInEpoch Γ'.currentEpoch) Γ'.dreps ˢ
    ∎
    where open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid

  predeterminedDRepVotes : abdr.predeterminedDRepVotes ≡ abdr'.predeterminedDRepVotes
  predeterminedDRepVotes = refl

  defaultDRepCredentialVotes : abdr.defaultDRepCredentialVotes ≡ᵐ abdr'.defaultDRepCredentialVotes
  defaultDRepCredentialVotes = map-≡ᵉ (map-≡ᵉ activeDReps-≡ᵉ)

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


module Governance-update
  {lSt lSt' : LState} {rSt rSt' : RatifyState}
  (e : Epoch) (lSt≈lSt' : LState-[ e ] lSt ≈ lSt') (rSt≡rSt' : rSt ≡ rSt')
  where

  module lSt≈lSt' = LState-[_]_≈_ lSt≈lSt'

  module govUpd₁ = GovernanceUpdate lSt rSt
  module govUpd₂ = GovernanceUpdate lSt' rSt'

  tmpGovSt : govUpd₁.tmpGovSt ≡ govUpd₂.tmpGovSt
  tmpGovSt rewrite rSt≡rSt' | lSt≈lSt'.govSt = refl

  orphans : govUpd₁.orphans ≡ govUpd₂.orphans
  orphans rewrite tmpGovSt | rSt≡rSt' = refl

  removed' : govUpd₁.removed' ≡ govUpd₂.removed'
  removed' rewrite rSt≡rSt' | lSt≈lSt'.govSt = refl

  removedGovActions : govUpd₁.removedGovActions ≡ govUpd₂.removedGovActions
  removedGovActions rewrite removed' | lSt≈lSt'.utxoSt = refl

  govSt' : govUpd₁.govSt' ≡ govUpd₂.govSt'
  govSt' rewrite removed' | lSt≈lSt'.govSt = refl

  updates : govUpd₁.updates ≡ govUpd₂.updates
  updates rewrite govSt' | removedGovActions = refl

record Pre-POOLREAP-Update-[_]_≈_ (e : Epoch) (pPRUpd₁ pPRUpd₂ : Pre-POOLREAP-Update) : Type where
  module pPRUpd₁ = Pre-POOLREAP-Update pPRUpd₁
  module pPRUpd₂ = Pre-POOLREAP-Update pPRUpd₂

  field
    pState' : pPRUpd₁.pState' ≡ pPRUpd₂.pState'
    gState' : GState-[ sucᵉ e ] pPRUpd₁.gState' ≈ pPRUpd₂.gState'
    utxoSt' : pPRUpd₁.utxoSt' ≡ pPRUpd₂.utxoSt'

module Pre-POOLREAP-update
  {lSt lSt' : LState} {eSt eSt' : EnactState} {govUpd govUpd' : Governance-Update}
  (e : Epoch) (eSt≡eSt' : eSt ≡ eSt') (lSt≈lSt' : LState-[ e ] lSt ≈ lSt') (govUpd≡govUpd' : govUpd ≡ govUpd')
  where

  module lSt≈lSt' = LState-[_]_≈_ lSt≈lSt'
  module pPRUpd₁  = Pre-POOLREAPUpdate lSt eSt govUpd
  module pPRUpd₂  = Pre-POOLREAPUpdate lSt' eSt' govUpd'

  gState' : GState-[ sucᵉ e ] pPRUpd₁.gState' ≈ pPRUpd₂.gState'
  gState' = record {R}
    where
      module R where
        open import Relation.Binary.PropositionalEquality renaming (trans to ≡-trans; sym to ≡-sym)

        true≢false : ¬ true ≡ false
        true≢false ()

        dreps : DReps-[ sucᵉ e ] GState.dreps pPRUpd₁.gState' ≈ GState.dreps pPRUpd₂.gState'
        dreps with P.cong Governance-Update.govSt' govUpd≡govUpd'
        ... | refl with null (Governance-Update.govSt' govUpd')
        ... | false = DReps-≈-mono e {dreps₁ = DRepsOf lSt} {dreps₂ = DRepsOf lSt'} (GState-[_]_≈_.dreps (CertState-[_]_≈_.gState lSt≈lSt'.certState))
        ... | true  = DReps-≈-sucᵉ e {dreps₁ = DRepsOf lSt} {dreps₂ = DRepsOf lSt'} (GState-[_]_≈_.dreps (CertState-[_]_≈_.gState lSt≈lSt'.certState))

        ccHotKeys : GState.ccHotKeys pPRUpd₁.gState' ≡  GState.ccHotKeys pPRUpd₂.gState'
        ccHotKeys rewrite GState-[_]_≈_.ccHotKeys (CertState-[_]_≈_.gState lSt≈lSt'.certState) | eSt≡eSt' = refl

  utxoSt' : pPRUpd₁.utxoSt' ≡ pPRUpd₂.utxoSt'
  utxoSt' rewrite govUpd≡govUpd' | lSt≈lSt'.utxoSt = refl

  pState' : pPRUpd₁.pState' ≡ pPRUpd₂.pState'
  pState' rewrite CertState-[_]_≈_.pState lSt≈lSt'.certState = refl

  updates : Pre-POOLREAP-Update-[ e ] pPRUpd₁.updates ≈ pPRUpd₂.updates
  updates = record { pState' = pState' ; gState' = gState' ; utxoSt' = utxoSt' }

record Post-POOLREAP-Update-[_]_≈_ (e : Epoch) (pPRUpd₁ pPRUpd₂ : Post-POOLREAP-Update) : Type where
  module pPRUpd₁ = Post-POOLREAP-Update pPRUpd₁
  module pPRUpd₂ = Post-POOLREAP-Update pPRUpd₂

  field
    dState'' : pPRUpd₁.dState'' ≡ pPRUpd₂.dState''
    acnt''   : pPRUpd₁.acnt'' ≡ pPRUpd₂.acnt''

module Post-POOLREAP-update
  {eSt eSt' : EnactState} {lSt lSt' : LState} {dSt dSt' : DState} {acnt acnt' : Acnt} {govUpd govUpd' : Governance-Update}
  (e : Epoch)
  (eSt≡eSt' : eSt ≡ eSt') (lSt≈lSt' : LState-[ e ] lSt ≈ lSt') (dSt≡dSt' : dSt ≡ dSt') (acnt≡acnt' : acnt ≡ acnt') (govUpd≡govUpd' : govUpd ≡ govUpd')
  where

  module pPRUpd₁ = Post-POOLREAPUpdate eSt lSt dSt acnt govUpd
  module pPRUpd₂ = Post-POOLREAPUpdate eSt' lSt' dSt' acnt' govUpd'

  opaque
    unfolding Post-POOLREAPUpdate.payout

    govActionReturns : pPRUpd₁.govActionReturns ≡ pPRUpd₂.govActionReturns
    govActionReturns rewrite govUpd≡govUpd' = refl

    payout : pPRUpd₁.payout ≡ pPRUpd₂.payout
    payout rewrite eSt≡eSt' | govActionReturns = refl

  opaque
    unfolding Post-POOLREAPUpdate.refunds

    refunds : pPRUpd₁.refunds ≡ pPRUpd₂.refunds
    refunds rewrite payout | dSt≡dSt' = refl

  dState'' : pPRUpd₁.dState'' ≡ pPRUpd₂.dState''
  dState'' rewrite refunds | dSt≡dSt' = refl

  unclaimed : pPRUpd₁.unclaimed ≡ pPRUpd₂.unclaimed
  unclaimed rewrite payout | refunds = refl

  totWithdrawals : pPRUpd₁.totWithdrawals ≡ pPRUpd₂.totWithdrawals
  totWithdrawals rewrite eSt≡eSt' = refl

  acnt'' : pPRUpd₁.acnt'' ≡ pPRUpd₂.acnt''
  acnt'' rewrite unclaimed | totWithdrawals | acnt≡acnt' | LState-[_]_≈_.utxoSt lSt≈lSt' = refl

  updates : Post-POOLREAP-Update-[ e ] pPRUpd₁.updates ≈ pPRUpd₂.updates
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

  activeDReps-≡ᵉ : vds.activeDReps ≡ᵉ vds'.activeDReps
  activeDReps-≡ᵉ = dom-cong $
    begin
      filterᵐ (activeInEpoch currentEpoch) gState.dreps ˢ
        ≈⟨ filterᵐ-idem {m = gState.dreps} ⟨
      filterᵐ (activeInEpoch currentEpoch) (filterᵐ (activeInEpoch currentEpoch) gState.dreps) ˢ
        ≈⟨ filter-cong gState≈gState'.dreps ⟩
      filterᵐ (activeInEpoch currentEpoch) (filterᵐ (activeInEpoch currentEpoch) gState'.dreps) ˢ
        ≈⟨ filterᵐ-idem {m = gState'.dreps} ⟩
      filterᵐ (activeInEpoch currentEpoch) gState'.dreps ˢ
    ∎
    where open import Relation.Binary.Reasoning.Setoid ≡ᵉ-Setoid

  activeVDelegs : vds.activeVDelegs ≡ᵉ vds'.activeVDelegs
  activeVDelegs = ∪-cong (map-≡ᵉ activeDReps-≡ᵉ) ≡ᵉ-isEquivalence.refl
    where
      open import Relation.Binary.Structures _≡ᵉ_
      module ≡ᵉ-isEquivalence = IsEquivalence ≡ᵉ-isEquivalence

  calculate : vds.calculate ≡ᵐ vds'.calculate
  calculate = mapFromFun-cong _ activeVDelegs

opaque
  unfolding calculateVDelegDelegatedStake

  calculateVDelegDelegatedStake-≈
    : (e : Epoch) → (utxoSt : UTxOState) → (govSt : GovState)
    → {gState gState' : GState} (gState≈gState' : GState-[ e ] gState ≈ gState')
    → (dState : DState)
    → calculateVDelegDelegatedStake e utxoSt govSt gState dState ≡ᵐ calculateVDelegDelegatedStake e utxoSt govSt gState' dState
  calculateVDelegDelegatedStake-≈ e utxoSt govSt gState≈gState' dState = VDelegDelegatedStake-≈.calculate  e utxoSt govSt gState≈gState' dState

module mkStakeDistrs {s s' : Snapshot} {utxoSt utxoSt' : UTxOState} {govSt govSt' : GovState} {gState gState' : GState} {dState dState' : DState}
                     where

  cong
   : ∀ (s≡s' : s ≡ s') (e : Epoch) (utxoSt≡utxoSt' : utxoSt ≡ utxoSt') (govSt≡govSt' : govSt ≡ govSt') (gState≈gState' : GState-[ e ] gState ≈ gState') (dState≡dState' : dState ≡ dState')
   → StakeDistrs- (mkStakeDistrs s e utxoSt govSt gState dState) ≈ (mkStakeDistrs s' e utxoSt' govSt' gState' dState')
  cong refl e refl refl gState≈gState' refl = record { R }
    where
      module R where
        stakeDistrVDeleg = calculateVDelegDelegatedStake-≈ e utxoSt govSt gState≈gState' dState
        stakeDistrPools = refl
```
-->

The main property states that `EPOCH`{.AgdaDatatype} "preserves" the above
relation on `EpochState`{.AgdaRecord}:

```agda
module EPOCH {epSt epSt' : EpochState} (e : Epoch) (epSt≈epSt' : EpochState-[ e ] epSt ≈ epSt') where
  module epSt≈epSt' = EpochState-[_]_≈_ epSt≈epSt'

  cong : ∀ (epSt'' epSt''' : EpochState)
       → tt ⊢ epSt  ⇀⦇ e ,EPOCH⦈ epSt''
       → tt ⊢ epSt' ⇀⦇ e ,EPOCH⦈ epSt'''
       → EpochState-[ sucᵉ e ] epSt'' ≈ epSt'''
  cong eps'' eps''' (EPOCH (snap₁ , poolreap₁ , ratify₁)) (EPOCH (snap₂ , poolreap₂ , ratify₂))
```
(Proof ommited from rendering)

<!--
```agda
    = record {R}
    where
      module R where
        module lSt≈lSt' = LState-[_]_≈_ epSt≈epSt'.ls
        module cSt≈cSt' = CertState-[_]_≈_ lSt≈lSt'.certState
        module gSt≈gSt' = GState-[_]_≈_ cSt≈cSt'.gState

        govUpd₁ = GovernanceUpdate.updates (LStateOf epSt) (RatifyStateOf epSt)
        govUpd₂ = GovernanceUpdate.updates (LStateOf epSt') (RatifyStateOf epSt')

        govUpd₁≡govUpd₂ : govUpd₁ ≡ govUpd₂
        govUpd₁≡govUpd₂ = Governance-update.updates e epSt≈epSt'.ls epSt≈epSt'.fut

        prPRUpd₁≈prPRUpd₂ = Pre-POOLREAP-update.updates e (P.cong EnactStateOf epSt≈epSt'.fut) epSt≈epSt'.ls govUpd₁≡govUpd₂
        module prPRUpd₁≈prPRUpd₂ = Pre-POOLREAP-Update-[_]_≈_ prPRUpd₁≈prPRUpd₂

        module PoolReapState-≈ where
          utxoSt = prPRUpd₁≈prPRUpd₂.utxoSt'
          acnt   = epSt≈epSt'.acnt
          dState = cSt≈cSt'.dState
          pState = prPRUpd₁≈prPRUpd₂.pState'

        module prSt≈prSt' =  PoolReapState-_≈_ (POOLREAP.cong e (record {PoolReapState-≈}) poolreap₁ poolreap₂)
        module poPRUpd₁≈poPRUpd₂ = Post-POOLREAP-Update-[_]_≈_ (Post-POOLREAP-update.updates e ((P.cong EnactStateOf epSt≈epSt'.fut))
                                                                epSt≈epSt'.ls prSt≈prSt'.dState prSt≈prSt'.acnt govUpd₁≡govUpd₂)
        ss''≡ss''' = SNAP.cong e epSt≈epSt'.ls epSt≈epSt'.ss snap₁ snap₂

        module Γ≈Γ' where
          stakeDistrs   = mkStakeDistrs.cong (P.cong Snapshots.mark ss''≡ss''') e prPRUpd₁≈prPRUpd₂.utxoSt' (P.cong Governance-Update.govSt' govUpd₁≡govUpd₂)
                                             cSt≈cSt'.gState cSt≈cSt'.dState
          currentEpoch  = refl
          dreps         = gSt≈gSt'.dreps
          ccHotKeys     = gSt≈gSt'.ccHotKeys
          treasury      = P.cong Acnt.treasury poPRUpd₁≈poPRUpd₂.acnt''
          pools         = P.cong PState.pools (cSt≈cSt'.pState)
          delegatees    = P.cong DState.voteDelegs (cSt≈cSt'.dState)

        fut≡fut' = RATIFIES.cong
          (record {Γ≈Γ'})
          (P.cong
            (λ x → RatifyState.constructor
                     (record (EnactStateOf x) {withdrawals = ∅})
                     ∅
                     false
            )
            epSt≈epSt'.fut
          )
          (P.cong Governance-Update.govSt' govUpd₁≡govUpd₂)
          ratify₁
          ratify₂

        module CS where
          dState = poPRUpd₁≈poPRUpd₂.dState''
          pState = prSt≈prSt'.pState
          gState = prPRUpd₁≈prPRUpd₂.gState'

        module LS where
          utxoSt = prSt≈prSt'.utxoSt
          govSt = P.cong Governance-Update.govSt' govUpd₁≡govUpd₂
          certState = record {CS}

        acnt = poPRUpd₁≈poPRUpd₂.acnt''
        ss   = ss''≡ss'''
        ls   = record {LS}

        es : record (EnactStateOf (RatifyStateOf epSt)) { withdrawals = ∅ } ≡ record (EnactStateOf (RatifyStateOf epSt')) { withdrawals = ∅ }
        es rewrite (P.cong EnactStateOf epSt≈epSt'.fut) = refl

        fut  = fut≡fut'
```
-->
