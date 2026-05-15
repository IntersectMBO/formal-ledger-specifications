---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Epoch.lagda.md
---

# <span class="AgdaDatatype">EPOCH</span> and <span class="AgdaDatatype">NEWEPOCH</span> Transition Systems for Dijkstra

Modelled on the `Conway.Conformance.Epoch`{.AgdaModule} module, adapted for Dijkstra:

+  Deposits live in `CertState`{.AgdaRecord} (not `UTxOState`{.AgdaRecord})
+  `SNAP`{.AgdaDatatype} and `POOLREAP`{.AgdaDatatype} operate on `CertState`{.AgdaRecord}
   and `Acnt`{.AgdaRecord} rather than `UTxOState`{.AgdaRecord} and `CertState`{.AgdaRecord}.
+  govAction deposit returns are taken from `GState.deposits`{.AgdaField}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Epoch
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

import Data.Integer as ℤ
open import Data.Integer using () renaming (+_ to pos)
open import Data.Integer.Properties         using (module ≤-Reasoning; +-mono-≤; neg-mono-≤; +-identityˡ)
                                            renaming (nonNegative⁻¹ to nonNegative⁻¹ℤ)
open import Data.Integer.Tactic.RingSolver  using (solve-∀)
open import Data.Rational                   using (ℚ; floor; _*_; _÷_; _/_; _⊓_; _≟_; ≢-nonZero)
open import Data.Rational.Literals          using (number; fromℤ)
open import Data.Rational.Properties        using (nonNegative⁻¹; pos⇒nonNeg; ⊓-glb)

open import stdlib.Data.Rational.Properties using (0≤⇒0≤floor; ÷-0≤⇒0≤; fromℕ-0≤; *-0≤⇒0≤; fromℤ-0≤)


open import Ledger.Prelude hiding (iterate; _/_; _*_; _⊓_; _≟_; ≢-nonZero)
open import Ledger.Prelude.Numeric.UnitInterval using (fromUnitInterval; UnitInterval-*-0≤)

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)

open import Agda.Builtin.FromNat
open import Data.Nat.GeneralisedArithmetic using (iterate)

open import Data.Maybe                      using (fromMaybe)

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.PoolReap txs abs
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.Rewards txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs

open Number number renaming (fromNat to fromℕ)
```
-->

```agda
getOrphans : EnactState → GovState → GovState
getOrphans es govSt = proj₁ $ iterate step ([] , govSt) (length govSt)
  where
    step : GovState × GovState → GovState × GovState
    step (orps , govSt) =
      let
        isOrphan? a prev = ¬? (hasParent? es govSt a prev)
        (orps' , govSt') = partition
          (λ (_ , record {action = a ; prevAction = prev}) → isOrphan? (a .gaType) prev)
          govSt
      in
        (orps ++ orps' , govSt')

getStakeCred : TxOut → Maybe Credential
getStakeCred (a , _ , _ , _) = stakeCred a

open GovActionState using (returnAddr)
-- open RewardAddress using (stake)

PoolDelegatedStake : Type
PoolDelegatedStake = KeyHash ⇀ Coin

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LedgerState
    es         : EnactState
    fut        : RatifyState
```

<!--
```agda
record HasEpochState {a} (A : Type a) : Type a where
  field EpochStateOf : A → EpochState
open HasEpochState ⦃...⦄ public

instance
  HasAccount-EpochState : HasAccount EpochState
  HasAccount-EpochState .AccountOf = EpochState.acnt

  HasSnapshots-EpochState : HasSnapshots EpochState
  HasSnapshots-EpochState .SnapshotsOf = EpochState.ss

  HasLedgerState-EpochState : HasLedgerState EpochState
  HasLedgerState-EpochState .LedgerStateOf = EpochState.ls

  HasGovState-EpochState : HasGovState EpochState
  HasGovState-EpochState .GovStateOf = GovStateOf ∘ LedgerStateOf

  HasEnactState-EpochState : HasEnactState EpochState
  HasEnactState-EpochState .EnactStateOf = EpochState.es

  HasDReps-EpochState : HasDReps EpochState
  HasDReps-EpochState .DRepsOf = DRepsOf ∘ CertStateOf ∘ LedgerStateOf

  HasTreasury-EpochState : HasTreasury EpochState
  HasTreasury-EpochState .TreasuryOf = Acnt.treasury ∘ EpochState.acnt

  HasReserves-EpochState : HasReserves EpochState
  HasReserves-EpochState .ReservesOf = Acnt.reserves ∘ EpochState.acnt

  HasPParams-EpochState : HasPParams EpochState
  HasPParams-EpochState .PParamsOf = PParamsOf ∘ EnactStateOf

  HasRatifyState-EpochState : HasRatifyState EpochState
  HasRatifyState-EpochState .RatifyStateOf = EpochState.fut

  HasPState-EpochState : HasPState EpochState
  HasPState-EpochState .PStateOf = PStateOf ∘ CertStateOf ∘ LedgerStateOf

  HasRetiring-EpochState : HasRetiring EpochState
  HasRetiring-EpochState .RetiringOf = RetiringOf ∘ PStateOf
```
-->

```agda
record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    bprev       : BlocksMade
    bcur        : BlocksMade
    epochState  : EpochState
    ru          : Maybe RewardUpdate
    pd          : PoolDelegatedStake
```

<!--
```agda
record HasNewEpochState {a} (A : Type a) : Type a where
  field NewEpochStateOf : A → NewEpochState
open HasNewEpochState ⦃...⦄ public

record HasLastEpoch {a} (A : Type a) : Type a where
  field LastEpochOf : A → Epoch
open HasLastEpoch ⦃...⦄ public


instance
  HasLastEpoch-NewEpochState : HasLastEpoch NewEpochState
  HasLastEpoch-NewEpochState .LastEpochOf = NewEpochState.lastEpoch

  HasEpochState-NewEpochState : HasEpochState NewEpochState
  HasEpochState-NewEpochState .EpochStateOf = NewEpochState.epochState

  HasEnactState-NewEpochState : HasEnactState NewEpochState
  HasEnactState-NewEpochState .EnactStateOf = EnactStateOf ∘ EpochStateOf

  Hastreasury-NewEpochState : HasTreasury NewEpochState
  Hastreasury-NewEpochState .TreasuryOf = TreasuryOf ∘ EpochStateOf

  HasLedgerState-NewEpochState : HasLedgerState NewEpochState
  HasLedgerState-NewEpochState .LedgerStateOf = LedgerStateOf ∘ EpochStateOf

  HasGovState-NewEpochState : HasGovState NewEpochState
  HasGovState-NewEpochState .GovStateOf = GovStateOf ∘ LedgerStateOf

  HasCertState-NewEpochState : HasCertState NewEpochState
  HasCertState-NewEpochState .CertStateOf = CertStateOf ∘ LedgerStateOf

  HasDReps-NewEpochState : HasDReps NewEpochState
  HasDReps-NewEpochState .DRepsOf = DRepsOf ∘ CertStateOf

  HasRewards-NewEpochState : HasRewards NewEpochState
  HasRewards-NewEpochState .RewardsOf = RewardsOf ∘ CertStateOf

  HasPParams-NewEpochState : HasPParams NewEpochState
  HasPParams-NewEpochState .PParamsOf = PParamsOf ∘ EpochStateOf

  unquoteDecl HasCast-EpochState HasCast-NewEpochState = derive-HasCast
    ( (quote EpochState     , HasCast-EpochState)
    ∷ [ (quote NewEpochState  , HasCast-NewEpochState)])

opaque
  createRUpd : ℕ → BlocksMade → EpochState → Coin → RewardUpdate
  createRUpd slotsPerEpoch b es total =
    record  { Δt = Δt₁
            ; Δr = 0 - Δr₁ + Δr₂
            ; Δf = 0 - pos feeSS
            ; rs = rs
            ; flowConservation = flowConservation
            ; Δt-nonnegative = Δt-nonneg
            ; Δf-nonpositive = Δf-nonpos
            }
    where
      prevPp : PParams
      prevPp = PParamsOf es

      reserves : Reserves
      reserves = ReservesOf es

      pstakego : Snapshot
      pstakego = (SnapshotsOf es) .Snapshots.go

      feeSS : Fees
      feeSS = FeesOf (SnapshotsOf es)

      stake : Stake
      stake = StakeOf pstakego

      delegs : StakeDelegs
      delegs = StakeDelegsOf pstakego

      poolParams : Pools
      poolParams = PoolsOf pstakego

      blocksMade : ℕ
      blocksMade = ∑[ m ← b ] m

      ρ η τ : ℚ
      ρ = fromUnitInterval (prevPp .PParams.monetaryExpansion)
      η = fromℕ blocksMade ÷₀ (fromℕ slotsPerEpoch * ActiveSlotCoeff)
      τ = fromUnitInterval (prevPp .PParams.treasuryCut)

      Δr₁ rewardPot Δt₁ R : ℤ
      Δr₁ = floor (1 ⊓ η * ρ * fromℕ reserves)
      rewardPot = pos feeSS + Δr₁
      Δt₁ = floor (fromℤ rewardPot * τ)
      R = rewardPot - Δt₁

      circulation : Coin
      circulation = total - reserves

      rs : Rewards
      rs = reward prevPp b (posPart R) poolParams stake delegs circulation

      Δr₂ : ℤ
      Δr₂ = R - pos (∑[ c ← rs ] c)

      -- Proofs
      -- Note: Overloading of + and - seems to interfere with the ring solver.
      lemmaFlow : ∀ (t₁ r₁ f z : ℤ)
        → (t₁ ℤ.+ (0 ℤ.- r₁ ℤ.+ ((f ℤ.+ r₁ ℤ.- t₁) ℤ.- z)) ℤ.+ (0 ℤ.- f) ℤ.+ z) ≡ 0
      lemmaFlow = solve-∀
      flowConservation :
        let t₁ = Δt₁
            r₁ = Δr₁
            f  = pos feeSS
            z  = pos (∑[ c ← rs ] c)
         in
            (t₁ ℤ.+ (0 ℤ.- r₁ ℤ.+ ((f ℤ.+ r₁ ℤ.- t₁) ℤ.- z)) ℤ.+ (0 ℤ.- f) ℤ.+ z) ≡ 0
      flowConservation = lemmaFlow Δt₁ Δr₁ (pos feeSS) (pos (∑[ c ← rs ] c))

      ÷₀-0≤⇒0≤ : ∀ (x y : ℚ) → 0 ≤ x → 0 ≤ y → 0 ≤ (x ÷₀ y)
      ÷₀-0≤⇒0≤ x y 0≤x 0≤y with y ≟ 0
      ... | (yes y≡0) = nonNegative⁻¹ 0
      ... | (no y≢0)  = ÷-0≤⇒0≤ x y {{≢-nonZero y≢0}} 0≤x 0≤y

      η-nonneg : 0 ≤ η
      η-nonneg = ÷₀-0≤⇒0≤ _ _ (fromℕ-0≤ blocksMade)
        (*-0≤⇒0≤ _ _
          (fromℕ-0≤ slotsPerEpoch)
          (nonNegative⁻¹ ActiveSlotCoeff {{pos⇒nonNeg ActiveSlotCoeff}}))

      min1η-nonneg : 0 ≤ 1 ⊓ η
      min1η-nonneg = ⊓-glb (nonNegative⁻¹ 1) η-nonneg

      Δr₁-nonneg : 0 ≤ Δr₁
      Δr₁-nonneg = 0≤⇒0≤floor _
        (*-0≤⇒0≤ (1 ⊓ η * ρ) (fromℕ reserves)
          (UnitInterval-*-0≤ (1 ⊓ η) (prevPp .PParams.monetaryExpansion) min1η-nonneg)
          (fromℕ-0≤ reserves))

      rewardPot-nonneg : 0 ≤ rewardPot
      rewardPot-nonneg = +-mono-≤ (nonNegative⁻¹ℤ (pos feeSS)) Δr₁-nonneg

      Δt-nonneg : 0 ≤ Δt₁
      Δt-nonneg = 0≤⇒0≤floor _
        (UnitInterval-*-0≤ (fromℤ rewardPot) (prevPp .PParams.treasuryCut)
          (fromℤ-0≤ rewardPot rewardPot-nonneg))

      Δf-nonpos : (0 - pos feeSS) ≤ 0
      Δf-nonpos = begin
          0 - pos feeSS ≡⟨ +-identityˡ _ ⟩
          ℤ.- pos feeSS ≤⟨ neg-mono-≤ (ℤ.+≤+ z≤n) ⟩
          0             ∎
        where open ≤-Reasoning

open RewardAddress using (stake)
```
-->

```agda
applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd rewardUpdate
  ⟦ ⟦ treasury , reserves ⟧ᵃ , ss , ⟦ ⟦ utxo , fees , donations ⟧ᵘ , govSt , ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ , es , fut ⟧ᵉ' = ⟦  ⟦ posPart (pos treasury + Δt + pos unregRU') , posPart (pos reserves + Δr) ⟧ , ss , ⟦ ⟦ utxo , posPart (pos fees + Δf) , donations ⟧ , govSt , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU , deposits ⟧ᵈ , pState , gState ⟧ᶜˢ  ⟧ˡ , es , fut ⟧ᵉ'
  where
  open RewardUpdate rewardUpdate using (Δt; Δr; Δf; rs)
  regRU     = rs ∣ dom rewards
  unregRU   = rs ∣ dom rewards ᶜ
  unregRU'  = ∑[ x ← unregRU ] x
```

<!--
```agda
opaque
  calculatePoolDelegatedStake : Snapshot → PoolDelegatedStake
  calculatePoolDelegatedStake ss = sd ∣ dom (ss .pools)
    -- Shelley spec: the output map must contain keys appearing in both
    -- sd and the pool parameters.
    where
      open Snapshot
      -- stake credentials delegating to each pool
      stakeCredentialsPerPool : Rel KeyHash Credential
      stakeCredentialsPerPool = (StakeDelegsOf ss ˢ) ⁻¹ʳ
      -- delegated stake per pool
      sd : KeyHash ⇀ Coin
      sd = aggregate₊ ((stakeCredentialsPerPool ∘ʳ (StakeOf ss ˢ)) ᶠˢ)

  -- In Dijkstra, look up each gov action's deposit from GState.deposits
  -- using the stake credential of the proposal's returnAddr.
  stakeFromGADeposits : GovState → GState → Stake
  stakeFromGADeposits govSt gState =
    aggregateBy
      (mapˢ (λ (gaid , addr) → (gaid , addr) , stake addr) govSt')
      (mapFromPartialFun (λ (_ , addr) → lookupᵐ? (DepositsOf gState) (stake addr)) govSt')
    where
      govSt' : ℙ (GovActionID × RewardAddress)
      govSt' = mapˢ (map₂ returnAddr) (fromList govSt)

module VDelegDelegatedStake
  (currentEpoch : Epoch)
  (utxoSt       : UTxOState)
  (govSt        : GovState)
  (gState       : GState)
  (dState       : DState)
  where
  activeDReps : ℙ Credential
  activeDReps = dom (activeDRepsOf gState currentEpoch)
  activeVDelegs : ℙ VDeleg
  activeVDelegs = mapˢ vDelegCredential activeDReps ∪ ❴ vDelegNoConfidence ❵ ∪ ❴ vDelegAbstain ❵
  stakePerCredential : Credential → Coin
  stakePerCredential c =
      cbalance ((UTxOOf utxoSt) ∣^' λ txout → getStakeCred txout ≡ just c)
    + fromMaybe 0 (lookupᵐ? (stakeFromGADeposits govSt gState) c)  -- ← gState, not utxoSt
    + fromMaybe 0 (lookupᵐ? (RewardsOf dState) c)
  calculate : VDeleg ⇀ Coin
  calculate =
    mapFromFun
      (λ vd → ∑ˢ[ c ← (VoteDelegsOf dState) ⁻¹ vd ] stakePerCredential c)
      activeVDelegs


opaque
  calculateVDelegDelegatedStake : Epoch → UTxOState → GovState → GState → DState → VDeleg ⇀ Coin
  calculateVDelegDelegatedStake = VDelegDelegatedStake.calculate

  -- Pool-delegated stake for voting:
  -- also uses gState instead of utxoSt for gov-action deposit component.
  calculatePoolDelegatedStakeForVoting : Snapshot → GovState → GState → KeyHash ⇀ Coin
  calculatePoolDelegatedStakeForVoting ss govSt gState =
    calculatePoolDelegatedStake ss ∪⁺ (stakeFromDeposits ∣ dom (PoolsOf ss))
    where
    stakeFromDeposits : KeyHash ⇀ Coin
    stakeFromDeposits = aggregate₊ (((StakeDelegsOf ss ˢ) ⁻¹ʳ ∘ʳ (stakeFromGADeposits govSt gState ˢ)) ᶠˢ)

-- mkStakeDistrs no longer takes utxoSt for the deposit lookup,
-- but still takes it for the UTxO-balance part of VDeleg stake.
mkStakeDistrs : Snapshot → Epoch → UTxOState → GovState → GState → DState → StakeDistrs
mkStakeDistrs ss currentEpoch utxoSt govSt gState dState =
  ⟦ calculateVDelegDelegatedStake currentEpoch utxoSt govSt gState dState
  , calculatePoolDelegatedStakeForVoting ss govSt gState   -- ← no utxoSt here
  ⟧


private variable
  e lastEpoch : Epoch
  fut fut' : RatifyState
  eps eps' eps'' : EpochState
  ls : LedgerState
  acnt : Acnt
  es₀ : EnactState
  ss ss' : Snapshots
  ru : RewardUpdate
  mru : Maybe RewardUpdate
```
-->

```agda
data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where

  EPOCH : let
      open LedgerState ls
      open RatifyState fut renaming (es to esW)

      es : EnactState
      es = record esW { withdrawals = ∅ }

      tmpGovSt = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt

      orphans : ℙ (GovActionID × GovActionState)
      orphans  = fromList (getOrphans es tmpGovSt)

      removed' : ℙ (GovActionID × GovActionState)
      removed' = removed ∪ orphans

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed' ¿) govSt

      removedGovActions : ℙ (RewardAddress × Coin)
      removedGovActions =
          mapPartial
            (λ (gaid , gaSt) →
              let ra   = GovActionState.returnAddr gaSt
                  cred = RewardAddress.stake ra
              in  (ra ,_) <$> lookupᵐ? (DepositsOf (GStateOf ls)) cred)
            removed'

      govActionReturns : RewardAddress ⇀ Coin
      govActionReturns =
        aggregate₊ (mapˢ (λ (a , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals   = WithdrawalsOf esW
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      retired    = (RetiringOf (PStateOf ls)) ⁻¹ e
      payout     = govActionReturns ∪⁺ trWithdrawals
      refunds    = pullbackMap payout toRewardAddress (dom (RewardsOf (DStateOf ls)))
      unclaimed  = getCoin payout - getCoin refunds

      dState' : DState
      dState' = record (DStateOf ls) { rewards = (RewardsOf (DStateOf ls)) ∪⁺ refunds }

      pState' : PState
      pState' = let ps = PStateOf ls in
        ⟦ PoolsOf ps ∣ retired ᶜ , PState.fPools ps ∣ retired ᶜ , RetiringOf ps ∣ retired ᶜ , DepositsOf ps ∣ retired ᶜ ⟧

      gState' : GState
      gState' = ⟦ (if null govSt' then mapValues (1 +_) (DRepsOf ls) else (DRepsOf ls))
                , CCHotKeysOf ls ∣ ccCreds (EnactState.cc es)
                , DepositsOf (GStateOf ls)
                  -- ∣ mapˢ (RewardAddress.stake ∘ GovActionState.returnAddr ∘ proj₂) removed' ᶜ
                ⟧

      certState' : CertState
      certState' = record { dState = dState' ; pState = pState' ; gState = gState' }

      -- utxoSt' = ⟦ utxoSt .utxo , utxoSt .fees , utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧
      utxoSt' = UTxOStateOf ls

      acnt' = record acnt
        { treasury  = TreasuryOf acnt ∸ totWithdrawals + DonationsOf utxoSt + unclaimed }

      stakeDistrs : StakeDistrs
      stakeDistrs = mkStakeDistrs (Snapshots.mark ss') e utxoSt' govSt' (GStateOf ls) (DStateOf ls)

      ratifyΓ : RatifyEnv
      ratifyΓ = record { stakeDistrs  = stakeDistrs
                       ; currentEpoch = e
                       ; dreps        = DRepsOf ls
                       ; ccHotKeys    = CCHotKeysOf ls
                       ; treasury     = TreasuryOf acnt
                       ; pools        = PoolsOf ls
                       ; delegatees   = VoteDelegsOf ls }

    in
    ∙ ratifyΓ ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
    ∙ ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      ────────────────────────────────
      _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈ ⟦ acnt' , ss' , ⟦ utxoSt' , govSt' , certState' ⟧ , es , fut' ⟧

data _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Type where

  NEWEPOCH-New :
    ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    let
       eps' = applyRUpd ru eps
       ss   = EpochState.ss eps''
       pd'  = calculatePoolDelegatedStake (Snapshots.set ss)
     in
       ∙ e ≡ lastEpoch + 1
       ∙ _ ⊢ eps' ⇀⦇ e ,EPOCH⦈ eps''
       ────────────────────────────────
       _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , just ru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ  , eps'' , nothing , pd' ⟧

  NEWEPOCH-Not-New : ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    ∙ e ≢ lastEpoch + 1
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧

  NEWEPOCH-No-Reward-Update :
    ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    let
      ss  = EpochState.ss eps'
      pd' = calculatePoolDelegatedStake (Snapshots.set ss)
    in
      ∙ e ≡ lastEpoch + 1
      ∙ _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , nothing , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ , eps' , nothing , pd' ⟧
```
