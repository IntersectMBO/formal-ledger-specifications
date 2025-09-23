---
source_branch: master
source_path: src/Ledger/Conway/Specification/Epoch.lagda.md
---

# Epoch Boundary {#sec:epoch-boundary}

This module introduces the epoch boundary transition system and the related
reward calculation.

<!--
```agda
{-# OPTIONS --safe #-}

open import Data.Integer using () renaming (+_ to pos)
import      Data.Integer as ℤ
open import Data.Integer.Properties using (module ≤-Reasoning; +-mono-≤; neg-mono-≤; +-identityˡ)
                                    renaming (nonNegative⁻¹ to nonNegative⁻¹ℤ)
open import Data.Nat.GeneralisedArithmetic using (iterate)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _⊓_; _≟_; ≢-nonZero)
open import Data.Rational.Literals using (number; fromℤ)
open import Data.Rational.Properties using (nonNegative⁻¹; pos⇒nonNeg; ⊓-glb)
open import stdlib.Data.Rational.Properties using (0≤⇒0≤floor; ÷-0≤⇒0≤; fromℕ-0≤; *-0≤⇒0≤; fromℤ-0≤)

open import Data.Integer.Tactic.RingSolver using (solve-∀)

open import Agda.Builtin.FromNat

open import Ledger.Prelude hiding (iterate; _/_; _*_; _⊓_; _≟_; ≢-nonZero)
open Filter using (filter)
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction
open import Ledger.Prelude.Numeric.UnitInterval using (fromUnitInterval; UnitInterval-*-0≤)

open Number number renaming (fromNat to fromℕ)

module Ledger.Conway.Specification.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.Rewards txs abs
open import Ledger.Conway.Specification.Utxo txs abs
```
-->

## <span class="AgdaDatatype">EPOCH</span> and <span class="AgdaDatatype">NEWEPOCH</span> Transition System Types

```agda
record EpochState : Type where
```

<!--
```agda
  constructor ⟦_,_,_,_,_⟧ᵉ'
```
-->

```agda
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState
```

<!--
```agda
record HasEpochState {a} (A : Type a) : Type a where
  field EpochStateOf : A → EpochState
open HasEpochState ⦃...⦄ public

instance
  HasSnapshots-EpochState : HasSnapshots EpochState
  HasSnapshots-EpochState .SnapshotsOf = EpochState.ss

  HasLState-EpochState : HasLState EpochState
  HasLState-EpochState .LStateOf = EpochState.ls

  HasEnactState-EpochState : HasEnactState EpochState
  HasEnactState-EpochState .EnactStateOf = EpochState.es

  HasDeposits-EpochState : HasDeposits EpochState
  HasDeposits-EpochState .DepositsOf = DepositsOf ∘ LStateOf

  HasTreasury-EpochState : HasTreasury EpochState
  HasTreasury-EpochState .TreasuryOf = Acnt.treasury ∘ EpochState.acnt

  HasReserves-EpochState : HasReserves EpochState
  HasReserves-EpochState .ReservesOf = Acnt.reserves ∘ EpochState.acnt

  HasPParams-EpochState : HasPParams EpochState
  HasPParams-EpochState .PParamsOf = PParamsOf ∘ EnactStateOf

  HasRatifyState-EpochState : HasRatifyState EpochState
  HasRatifyState-EpochState .RatifyStateOf = EpochState.fut

  HasPState-EpochState : HasPState EpochState
  HasPState-EpochState .PStateOf = PStateOf ∘ CertStateOf ∘ LStateOf
```
-->

```agda
PoolDelegatedStake : Type
PoolDelegatedStake = KeyHash ⇀ Coin

record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    bprev       : BlocksMade
    bcur        : BlocksMade
    epochState  : EpochState
    ru          : Maybe RewardUpdate
    pd          : PoolDelegatedStake
```

??? info "Differences with the Shelley Specification"

    The formal specification utilizes the type `PoolDelegatedStake`{.AgdaDatatype}
    in lieu of the derived type `PoolDistr`{.AgdaDatatype} (Figure 5, Shelley
    specification [CVG19](#shelley-ledger-spec)). The latter can be computed from the
    former by divinding the associated `Coin`{.AgdaDatatype} to each `KeyHash`{.AgdaDatatype}
    by the total stake in the map.

    In addition, the formal specification omits the VRF key hashes in the
    codomain of `PoolDelegatedStake`{.AgdaDatatype} as they are not implemented at
    the moment.

<!--
```agda
record HasNewEpochState {a} (A : Type a) : Type a where
  field NewEpochStateOf : A → NewEpochState
open HasNewEpochState ⦃...⦄ public
record HasLastEpoch     {a} (A : Type a) : Type a where field LastEpochOf     : A → Epoch
open HasLastEpoch     ⦃...⦄ public

instance
  HasLastEpoch-NewEpochState : HasLastEpoch NewEpochState
  HasLastEpoch-NewEpochState .LastEpochOf = NewEpochState.lastEpoch

  HasEpochState-NewEpochState : HasEpochState NewEpochState
  HasEpochState-NewEpochState .EpochStateOf = NewEpochState.epochState

  HasEnactState-NewEpochState : HasEnactState NewEpochState
  HasEnactState-NewEpochState .EnactStateOf = EnactStateOf ∘ EpochStateOf

  Hastreasury-NewEpochState : HasTreasury NewEpochState
  Hastreasury-NewEpochState .TreasuryOf = TreasuryOf ∘ EpochStateOf

  HasLState-NewEpochState : HasLState NewEpochState
  HasLState-NewEpochState .LStateOf = LStateOf ∘ EpochStateOf

  HasGovState-NewEpochState : HasGovState NewEpochState
  HasGovState-NewEpochState .GovStateOf = GovStateOf ∘ LStateOf

  HasCertState-NewEpochState : HasCertState NewEpochState
  HasCertState-NewEpochState .CertStateOf = CertStateOf ∘ LStateOf

  HasDReps-NewEpochState : HasDReps NewEpochState
  HasDReps-NewEpochState .DRepsOf = DRepsOf ∘ CertStateOf

  HasRewards-NewEpochState : HasRewards NewEpochState
  HasRewards-NewEpochState .RewardsOf = RewardsOf ∘ CertStateOf

  HasPParams-NewEpochState : HasPParams NewEpochState
  HasPParams-NewEpochState .PParamsOf = PParamsOf ∘ EpochStateOf

  unquoteDecl HasCast-EpochState HasCast-NewEpochState = derive-HasCast
    ( (quote EpochState     , HasCast-EpochState)
    ∷ [ (quote NewEpochState  , HasCast-NewEpochState)])

toRwdAddr : Credential → RwdAddr
toRwdAddr x = record { net = NetworkId ; stake = x }

getStakeCred : TxOut → Maybe Credential
getStakeCred (a , _ , _ , _) = stakeCred a

open GovActionState using (returnAddr)

opaque
```
-->

## <span class="AgdaDatatype">RewardUpdate</span>

### Computing <span class="AgdaDatatype">RewardUpdate</span>

This section defines the function `createRUpd`{.AgdaFunction} which creates a
`RewardUpdate`{.AgdaRecord}, i.e. the net flow of Ada due to paying out rewards
after an epoch:

```agda
  createRUpd : ℕ → BlocksMade → EpochState → Coin → RewardUpdate
  createRUpd slotsPerEpoch b es total =
    record  { Δt = Δt₁
            ; Δr = 0 - Δr₁ + Δr₂
            ; Δf = 0 - pos feeSS
            ; rs = rs
```
<!--
```agda

            ; flowConservation = flowConservation
            ; Δt-nonnegative = Δt-nonneg
            ; Δf-nonpositive = Δf-nonpos
```
-->
```agda
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
```
<!--
```agda
      -- Proofs
      -- Note: Overloading of + and - seems to interfere with
      -- the ring solver.
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
```
-->

Relevant quantities are:

- `prevPp`{.AgdaFunction}: Previous protocol parameters, which
  correspond to the parameters during the epoch for which we are
  creating rewards.

- `ActiveSlotCoeff`{.AgdaFunction}: Global constant, equal to the
  probability that a party holding all the stake will be selected to be
  a leader for given slot. Equals $1/20$ during the Shelley era on the
  Cardano Mainnet.

- `Δr₁`{.AgdaFunction}: Ada taken out of the reserves for paying
  rewards, as determined by the `monetaryExpansion`{.AgdaField} protocol
  parameter.

- `rewardPot`{.AgdaFunction}: Total amount of coin available for rewards
  this epoch, as described in [Team18](#shelley-delegation-design).

- `feeSS`{.AgdaFunction}: The fee pot which, together with the reserves,
  funds the `rewardPot`{.AgdaFunction}. We use the fee pot that
  accumulated during the epoch for which we now compute block production
  rewards. Note that fees are not explicitly removed from any account:
  the fees come from transactions paying them and are accounted for
  whenever transactions are processed.

- `Δt₁`{.AgdaFunction}: The proportion of the reward pot that will move
  to the treasury, as determined by the `treasuryCut`{.AgdaField}
  protocol parameter. The remaining pot is called the
  `R`{.AgdaFunction}, just as in [Team18](#shelley-delegation-design).

- `pstakego`{.AgdaFunction}: Stake distribution used for calculating the
  rewards. This is the oldest stake distribution snapshot, labeled
  `go`{.AgdaField}.

- `rs`{.AgdaFunction}: The rewards, as calculated by the function
  `reward`{.AgdaFunction}.

- `Δr₂`{.AgdaFunction}: The difference between the maximal amount of
  rewards that could have been paid out if pools had been optimal, and
  the actual rewards paid out. This difference is returned to the
  reserves.

- `÷₀`{.AgdaFunction}: Division operator that returns zero when the
  denominator is zero.

### Applying <span class="AgdaDatatype">RewardUpdate</span>

This section defines the function `applyRUpd`{.AgdaFunction}, which applies a
`RewardUpdate`{.AgdaDatatype} to the `EpochState`{.AgdaFunction}.

```agda
applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd rewardUpdate ⟦ ⟦ treasury , reserves ⟧ᵃ
                       , ss
                       , ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ
                         , govSt
                         , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ
                       , es
                       , fut
                       ⟧ᵉ' = ⟦ ⟦ posPart (pos treasury + Δt + pos unregRU')
                               , posPart (pos reserves + Δr) ⟧
                             , ss
                             , ⟦ ⟦ utxo , posPart (pos fees + Δf) , deposits , donations ⟧
                               , govSt
                               , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU ⟧ , pState , gState ⟧ ⟧
                             , es
                             , fut ⟧
  where
    open RewardUpdate rewardUpdate using (Δt; Δr; Δf; rs)
    regRU     = rs ∣ dom rewards
    unregRU   = rs ∣ dom rewards ᶜ
    unregRU'  = ∑[ x ← unregRU ] x
```

## Stake Distributions

This section defines the functions
`calculatePoolDelegatedState`{.AgdaFunction},
`calculateVDelegDelegatedStake`{.AgdaFunction}, and
`mkStakeDistrs`{.AgdaFunction}.

<!--
```agda
open RwdAddr using (stake)
opaque
```
-->
```agda
  calculatePoolDelegatedStake : Snapshot → PoolDelegatedStake
  calculatePoolDelegatedStake ss =
      -- Shelley spec: the output map must contain keys appearing in both
      -- sd and the pool parameters.
      sd ∣ dom (ss .pools)
    where
      open Snapshot

      -- stake credentials delegating to each pool
      stakeCredentialsPerPool : Rel KeyHash Credential
      stakeCredentialsPerPool = (StakeDelegsOf ss ˢ) ⁻¹ʳ

      -- delegated stake per pool
      sd : KeyHash ⇀ Coin
      sd = aggregate₊ ((stakeCredentialsPerPool ∘ʳ (StakeOf ss ˢ)) ᶠˢ)

  calculateVDelegDelegatedStake
    : Epoch
    → UTxOState
    → GovState
    → GState
    → DState
    → VDeleg ⇀ Coin
  calculateVDelegDelegatedStake currentEpoch utxoSt govSt gState dState
    = aggregate₊ (((activeVoteDelegs ˢ) ⁻¹ʳ
                  ∘ʳ (stakePerCredential ∪⁺ stakeFromRewards ∪⁺ stakeFromGADeposits) ˢ) ᶠˢ)
    where
      open UTxOState utxoSt
      open DState dState
      open GState gState

      -- active DReps
      activeDReps : ℙ Credential
      activeDReps = dom (filterᵐ (λ (_ , e) → currentEpoch ≤ e) dreps)

      -- active vote delegations
      activeVoteDelegs : VoteDelegs
      activeVoteDelegs = voteDelegs ∣^ ((mapˢ vDelegCredential activeDReps)
                                        ∪ ❴ vDelegNoConfidence ❵ ∪ ❴ vDelegAbstain ❵)

      -- stake per delegated credential
      stakePerCredential : Stake
      stakePerCredential = mapFromFun (λ c → cbalance (utxo ∣^' λ txout → getStakeCred txout ≡ just c))
                                      (dom activeVoteDelegs)

      -- stake from governance action deposits
      stakeFromGADeposits : Stake
      stakeFromGADeposits = aggregateBy
        (mapˢ (λ (gaid , addr) → (gaid , addr) , stake addr) govSt')
        (mapFromPartialFun (λ (gaid , _) → lookupᵐ? deposits (GovActionDeposit gaid)) govSt')
        where
          govSt' : ℙ (GovActionID × RwdAddr)
          govSt' = mapˢ (map₂ returnAddr) (fromList govSt)

      -- stake from rewards
      stakeFromRewards : Stake
      stakeFromRewards = RewardsOf dState

  mkStakeDistrs
    : Snapshot
    → Epoch
    → UTxOState
    → GovState
    → GState
    → DState
    → StakeDistrs
  mkStakeDistrs ss currentEpoch utxoSt govSt gState dState =
    ⟦ calculateVDelegDelegatedStake currentEpoch utxoSt govSt gState dState , poolDelegatedStake ⟧
    where
      poolDelegatedStake : PoolDelegatedStake
      poolDelegatedStake =
        mapWithKey (λ kh c → maybe (c +_) c (lookupᵐ? (RewardsOf dState) (KeyHashObj kh)))
                   (calculatePoolDelegatedStake ss)
```

The function `mkStakeDistrs`{.AgdaFunction} calculates the stake distributions
for voting purposes.


<!--
```agda
private variable
  e lastEpoch : Epoch
  fut fut' : RatifyState
  poolReapState : PoolReapState
  eps eps' eps'' : EpochState
  ls : LState
  es₀ : EnactState
  mark set go : Snapshot
  feeSS : Fees
  lstate : LState
  ss ss' : Snapshots
  ru : RewardUpdate
  mru : Maybe RewardUpdate
  pd : PoolDelegatedStake
```
-->

## <span class="AgdaDatatype">EPOCH</span> Transition System

The `EPOCH`{.AgdaDatatype} transition has a few updates that are encapsulated
in the following functions. We need these functions to bring them in scope for
some proofs about `EPOCH`{.AgdaDatatype}.

### Helper Functions

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
```

### Update Functions

```agda
record EPOCH-Updates0 : Type where
  constructor EPOCHUpdates0
  field
    es             : EnactState
    govSt'         : GovState
    payout         : Withdrawals
    gState'        : GState
    utxoSt'        : UTxOState
    totWithdrawals : Coin

EPOCH-updates0 : RatifyState → LState → EPOCH-Updates0
EPOCH-updates0 fut ls =
    EPOCHUpdates0 es govSt' payout gState' utxoSt' totWithdrawals
  where
    open LState ls public
    open CertState certState using (gState) public
    open RatifyState fut renaming (es to esW)

    es : EnactState
    es = record esW { withdrawals = ∅ }

    tmpGovSt : GovState
    tmpGovSt = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed) govSt

    orphans : ℙ (GovActionID × GovActionState)
    orphans  = fromList (getOrphans es tmpGovSt)

    removed' : ℙ (GovActionID × GovActionState)
    removed' = removed ∪ orphans

    govSt' : GovState
    govSt' = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed') govSt

    removedGovActions : ℙ (RwdAddr × DepositPurpose × Coin)
    removedGovActions =
      flip concatMapˢ removed' λ (gaid , gaSt) →
        mapˢ
          (returnAddr gaSt ,_)
          ((DepositsOf utxoSt ∣ ❴ GovActionDeposit gaid ❵) ˢ)

    govActionReturns : RwdAddr ⇀ Coin
    govActionReturns =
      aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

    payout : RwdAddr ⇀ Coin
    payout = govActionReturns ∪⁺ WithdrawalsOf esW

    gState' : GState
    gState' =
      ⟦ (if null govSt' then mapValues (1 +_) (DRepsOf gState) else DRepsOf gState)
      , CCHotKeysOf gState ∣ ccCreds (EnactState.cc es)
      ⟧

    utxoSt' : UTxOState
    utxoSt' = record utxoSt
      { deposits = DepositsOf utxoSt ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ
      ; donations = 0
      }

    totWithdrawals : Coin
    totWithdrawals = ∑[ x ← WithdrawalsOf esW ] x

record EPOCH-Updates : Type where
  constructor EPOCHUpdates
  field
    es             : EnactState
    govSt'         : GovState
    dState''       : DState
    gState'        : GState
    utxoSt'        : UTxOState
    acnt''         : Acnt

EPOCH-updates
  : RatifyState → LState → DState → Acnt → EPOCH-Updates
EPOCH-updates fut ls dState' acnt' =
    EPOCHUpdates (u0 .es) (u0 .govSt') dState'' (u0 .gState') (u0 .utxoSt') acnt''
  where
    open LState
    open EPOCH-Updates0

    u0 = EPOCH-updates0 fut ls

    refunds : Credential ⇀ Coin
    refunds = pullbackMap (u0 .payout) toRwdAddr (dom (RewardsOf dState'))

    dState'' : DState
    dState'' = record dState' { rewards = RewardsOf dState' ∪⁺ refunds }

    unclaimed : Coin
    unclaimed = getCoin (u0 .payout) - getCoin refunds

    acnt'' : Acnt
    acnt'' = record acnt'
      { treasury =
          TreasuryOf acnt' ∸ u0 .totWithdrawals + DonationsOf ls + unclaimed
      }
```

### Transition Rule

This section defines the `EPOCH`{.AgdaDatatype} transition rule.

In Conway, the `EPOCH`{.AgdaDatatype} rule invokes `RATIFIES`{.AgdaDatatype},
and carries out the following tasks:

- Payout all the enacted treasury withdrawals.

- Remove expired and enacted governance actions, and refund deposits.

- If `govSt’`{.AgdaBound} is empty, increment the activity counter for
  `DRep`{.AgdaInductiveConstructor}s.

- Remove all hot keys from the constitutional committee delegation map
  that do not belong to currently elected members.

- Apply the resulting enact state from the previous epoch boundary
  `fut`{.AgdaBound} and store the resulting enact state
  `fut’`{.AgdaBound}.

```agda
data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where
```
```agda
  EPOCH :
```
<!--
```agda
    ∀ {acnt : Acnt} {utxoSt'' : UTxOState} {acnt' dState' pState'} →
```
-->
```agda
    let
      EPOCHUpdates es govSt' dState'' gState' utxoSt' acnt'' =
        EPOCH-updates fut ls dState' acnt'

      stakeDistrs : StakeDistrs
      stakeDistrs = mkStakeDistrs (Snapshots.mark ss') e utxoSt'
                                  govSt' (GStateOf ls) (DStateOf ls)

      Γ : RatifyEnv
      Γ = ⟦ stakeDistrs , e , DRepsOf ls , CCHotKeysOf ls , TreasuryOf acnt , PoolsOf ls , VoteDelegsOf ls ⟧

    in
        ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      ∙ Γ  ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
      ∙ _  ⊢ ⟦ utxoSt' , acnt , DStateOf ls , PStateOf ls ⟧ ⇀⦇ e ,POOLREAP⦈ ⟦ utxoSt'' , acnt' , dState' , pState' ⟧
      ──────────────────────────────────────────────
      _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈ ⟦ acnt'' , ss' , ⟦ utxoSt'' , govSt' , ⟦ dState'' , pState' , gState' ⟧ᶜˢ ⟧ , es , fut' ⟧
```

## <span class="AgdaDatatype">NEWEPOCH</span> Transition System

This section defines the `NEWEPOCH`{.AgdaDatatype} transition system.

### Transition Rule
<!--
```agda
data
```
-->
```agda
  _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Type
```
<!--
```agda
  where
```
-->
```agda
  NEWEPOCH-New :
```
<!--
```agda
    ∀ {bprev bcur : BlocksMade} →
```
-->
```agda
    let
      eps' = applyRUpd ru eps
      ss   = EpochState.ss eps''
      pd'  = calculatePoolDelegatedStake (Snapshots.set ss)
    in
      ∙ e ≡ lastEpoch + 1
      ∙ _ ⊢ eps' ⇀⦇ e ,EPOCH⦈ eps''
      ──────────────────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , just ru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ  , eps'' , nothing , pd' ⟧

  NEWEPOCH-Not-New : ∀ {bprev bcur : BlocksMade} →
    ∙ e ≢ lastEpoch + 1
      ──────────────────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧

  NEWEPOCH-No-Reward-Update :
```
<!--
```agda
    ∀ {bprev bcur : BlocksMade} →
```
-->
```agda
    let
      ss  = EpochState.ss eps'
      pd' = calculatePoolDelegatedStake (Snapshots.set ss)
    in
      ∙ e ≡ lastEpoch + 1
      ∙ _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      ──────────────────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , nothing , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ , eps' , nothing , pd' ⟧
```

# References {#references .unnumbered}

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.

**\[Team18\]** <span id="shelley-delegation-design"
label="shelley-delegation-design"></span> IOHK Formal Methods Team.
*Design Specification for Delegation and Incentives in Cardano, IOHK
Deliverable SL-D1*. 2018.
