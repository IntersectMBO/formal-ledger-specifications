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
open import Data.Maybe using (fromMaybe)
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

  HasDReps-EpochState : HasDReps EpochState
  HasDReps-EpochState .DRepsOf = DRepsOf ∘ CertStateOf ∘ LStateOf

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

## Computing Reward Updates

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


## Applying Reward Updates {#sec:applying-reward-updates}

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

## Stake Distributions {#sec:stake-distributions}

This section defines the functions
`calculatePoolDelegatedState`{.AgdaFunction},
`calculateVDelegDelegatedStake`{.AgdaFunction}, and
`mkStakeDistrs`{.AgdaFunction}, which calculates stake distributions
for voting purposes.

<!--
```agda
open RwdAddr using (stake)
opaque
```
-->
```agda
  calculatePoolDelegatedStake
    : Snapshot
    → PoolDelegatedStake
  calculatePoolDelegatedStake ss =
      -- Shelley spec: the output map must contain keys appearing in both
      -- sd and the pool parameters.
      sd ∣ dom (PoolsOf ss)
    where
      -- stake credentials delegating to each pool
      stakeCredentialsPerPool : Rel KeyHash Credential
      stakeCredentialsPerPool = (StakeDelegsOf ss ˢ) ⁻¹ʳ

      -- delegated stake per pool
      sd : KeyHash ⇀ Coin
      sd = aggregate₊ ((stakeCredentialsPerPool ∘ʳ (StakeOf ss ˢ)) ᶠˢ)
```

The function `calculatePoolDelegatedState`{.AgdaFunction} calculates the delegated
stake to `SPOs`{.AgdaInductiveConstructor}.  This function is used both in the
`EPOCH`{.AgdaDatatype} rule (via
`calculatePoolDelegatedStateForVoting`{.AgdaFunction}, see below) and in the
`NEWEPOCH`{.AgdaDatatype} rule.


```agda
  stakeFromGADeposits
    : GovState
    → UTxOState
    → Stake
  stakeFromGADeposits govSt utxoSt = aggregateBy
     (mapˢ (λ (gaid , addr) → (gaid , addr) , stake addr) govSt')
     (mapFromPartialFun (λ (gaid , _) → lookupᵐ? deposits (GovActionDeposit gaid)) govSt')
     where
       open UTxOState utxoSt

       govSt' : ℙ (GovActionID × RwdAddr)
       govSt' = mapˢ (map₂ returnAddr) (fromList govSt)
```

The function `stakeFromGADeposits`{.AgdaFunction} computes the stake
pertaining to governance action deposits. It returns a map which, for
each governance action, maps its `returnAddr` (as a staking
credential) to the deposit.

```agda
module VDelegDelegatedStake
  (currentEpoch : Epoch)
  (utxoSt       : UTxOState)
  (govSt        : GovState)
  (gState       : GState)
  (dState       : DState)
  where
```
<!--
```agda
  open UTxOState utxoSt
  open DState dState
  open GState gState
```
-->
```agda
  -- active DReps
  activeDReps : ℙ Credential
  activeDReps = dom (filterᵐ (λ (_ , e) → currentEpoch ≤ e) dreps)

  -- active vote delegations
  activeVDelegs : ℙ VDeleg
  activeVDelegs = mapˢ vDelegCredential activeDReps ∪ ❴ vDelegNoConfidence ❵ ∪ ❴ vDelegAbstain ❵

  -- compute the stake for a credential
  stakePerCredential : Credential → Coin
  stakePerCredential c = cbalance (utxo ∣^' λ txout → getStakeCred txout ≡ just c)
                         + fromMaybe 0 (lookupᵐ? (stakeFromGADeposits govSt utxoSt) c)
                         + fromMaybe 0 (lookupᵐ? (RewardsOf dState) c)

  calculate : VDeleg ⇀ Coin
  calculate = mapFromFun (λ vd → ∑ˢ[ c ← voteDelegs ⁻¹ vd ] (stakePerCredential c))
                         activeVDelegs
```
<!--
```agda
opaque
```
-->
```agda
  calculateVDelegDelegatedStake
    : Epoch
    → UTxOState
    → GovState
    → GState
    → DState
    → VDeleg ⇀ Coin
  calculateVDelegDelegatedStake = VDelegDelegatedStake.calculate
```
<!--
```agda
opaque
```
-->
```agda
  calculatePoolDelegatedStakeForVoting
    : Snapshot
    → UTxOState
    → GovState
    → KeyHash ⇀ Coin
  calculatePoolDelegatedStakeForVoting ss utxoSt govSt
    = calculatePoolDelegatedStake ss ∪⁺ (stakeFromDeposits ∣ dom (PoolsOf ss))
    where
      stakeFromDeposits : KeyHash ⇀ Coin
      stakeFromDeposits = aggregate₊ (((StakeDelegsOf ss ˢ) ⁻¹ʳ
                                      ∘ʳ (stakeFromGADeposits govSt utxoSt ˢ)) ᶠˢ)
```

The function `calculatePoolDelegatedStakeForVoting`{.AgdaFunction} computes the
delegated stake to `SPOs`{.AgdaInductiveConstructor} that will be used for counting
votes. It complements the result of `calculatePoolDelegatedStake`{.AgdaFunction} with
the deposits made to governance actions.

??? erratum
    [CIP-1694](https://cips.cardano.org/cip/CIP-1694) specifies that
    deposits of governance actions should count towards the stake for
    voting purposes:

    > The deposit amount will be added to the deposit pot, similar to
    > stake key deposits. It will also be counted towards the stake of
    > the reward address it will be paid back to, to not reduce the
    > submitter's voting power to vote on their own (and competing)
    > actions.

    While originally _intended_ for `DReps`{.AgdaInductiveConstructor}
    only, the Haskell implementation and the formal specification
    count deposits on governance actions towards the stake of
    `SPOs`{.AgdaInductiveConstructor} as well.

```agda
mkStakeDistrs
  : Snapshot
  → Epoch
  → UTxOState
  → GovState
  → GState
  → DState
  → StakeDistrs
mkStakeDistrs ss currentEpoch utxoSt govSt gState dState =
  ⟦ calculateVDelegDelegatedStake currentEpoch utxoSt govSt gState dState
  , calculatePoolDelegatedStakeForVoting ss utxoSt govSt ⟧
```

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
  pState'' : PState
  dState' : DState
  acnt acnt' : Acnt
  utxoSt'' : UTxOState
  ss ss' : Snapshots
  ru : RewardUpdate
  mru : Maybe RewardUpdate
  pd : PoolDelegatedStake
```
-->

## The <span class="AgdaDatatype">EPOCH</span> Transition System {#sec:the-epoch-transition-system}

Before presenting the `EPOCH`{.AgdaDatatype} transition system, we must first define some
functions that are needed to update various values in the states involved in the transition.

### Update Modules and Functions

We organize the `EPOCH`{.AgdaInductiveConstructor} rule using three modules
which roughly correspond to:

- `GovernanceUpdate`{.AgdaModule}: Used to compute the set of governance
  actions to be removed and updating accordingly the governance state.

- `Pre-POOLREAPUpdate`{.AgdaModule}: Used to update the `PState`, `GState`
  and `utxoSt` which are the inputs to the `POOLREAP`{.AgdaDatatype} transition
  system.

- `Post-POOLREAPUpdate`{.AgdaModule}: Used to update `Acnt` and `DState` from
  the output of `POOLREAP`{.AgdaDatatype} part of which is in the environment of
  the `RATIFY`{.AgdaDatatype} transition system and part of which belongs to the
  returned `EpochState`{.AgdaRecord}.

#### Helper Functions

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

```agda
record Governance-Update : Type where
  constructor GovernanceUpdate
  field
    removedGovActions : ℙ (RwdAddr × DepositPurpose × Coin)
    govSt'            : GovState

module GovernanceUpdate (ls : LState)
                        (fut : RatifyState)
                        where
```
<!--
```agda
  open LState ls
  open RatifyState fut
```
-->
```agda
  tmpGovSt : GovState
  tmpGovSt = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed) govSt

  orphans : ℙ (GovActionID × GovActionState)
  orphans  = fromList (getOrphans es tmpGovSt)

  removed' : ℙ (GovActionID × GovActionState)
  removed' = removed ∪ orphans

  removedGovActions : ℙ (RwdAddr × DepositPurpose × Coin)
  removedGovActions =
    flip concatMapˢ removed' λ (gaid , gaSt) →
      mapˢ
        (returnAddr gaSt ,_)
        ((DepositsOf utxoSt ∣ ❴ GovActionDeposit gaid ❵) ˢ)

  govSt' : GovState
  govSt' = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed') govSt

  updates : Governance-Update
  updates = GovernanceUpdate removedGovActions govSt'

record Pre-POOLREAP-Update : Type where
  inductive
  constructor Pre-POOLREAPUpdate
  field
    pState' : PState
    gState' : GState
    utxoSt' : UTxOState

module Pre-POOLREAPUpdate (ls : LState)
                          (es : EnactState)
                          (govUpdate : Governance-Update)
                          where
```
<!--
```agda
  open LState ls
  open CertState certState using (pState; gState)
  open PState pState
  open Governance-Update govUpdate
```
-->
```agda
  utxoSt' : UTxOState
  utxoSt' = ⟦ UTxOOf utxoSt , FeesOf utxoSt , DepositsOf utxoSt ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧

  pState' : PState
  pState' = ⟦ fPools ∪ˡ pools , ∅ , retiring ⟧

  gState' : GState
  gState' =
    ⟦ (if null govSt' then mapValues sucᵉ (DRepsOf gState) else DRepsOf gState)
    , CCHotKeysOf gState ∣ ccCreds (EnactState.cc es)
    ⟧

  updates : Pre-POOLREAP-Update
  updates = Pre-POOLREAPUpdate pState' gState' utxoSt'

record Post-POOLREAP-Update : Type where
  inductive
  constructor Post-POOLREAPUpdate
  field
    dState''       : DState
    acnt''         : Acnt

module Post-POOLREAPUpdate (es : EnactState)
                           (ls : LState)
                           (dState' : DState)
                           (acnt' : Acnt)
                           (govUpd : Governance-Update)
                           where
```
<!--
```agda
  open LState
  open Governance-Update govUpd
  opaque
```
-->
```agda
    govActionReturns : RwdAddr ⇀ Coin
    govActionReturns =
      aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

    payout : RwdAddr ⇀ Coin
    payout = govActionReturns ∪⁺ WithdrawalsOf es

    refunds : Credential ⇀ Coin
    refunds = pullbackMap payout toRwdAddr (dom (RewardsOf dState'))

    dState'' : DState
    dState'' = ⟦ VoteDelegsOf dState' , StakeDelegsOf dState' , RewardsOf dState' ∪⁺ refunds ⟧

    unclaimed : Coin
    unclaimed = getCoin payout - getCoin refunds

    totWithdrawals : Coin
    totWithdrawals = ∑[ x ← WithdrawalsOf es ] x

    acnt'' : Acnt
    acnt'' = ⟦ TreasuryOf acnt' ∸ totWithdrawals + DonationsOf ls + unclaimed , ReservesOf acnt' ⟧

    updates : Post-POOLREAP-Update
    updates = Post-POOLREAPUpdate dState'' acnt''
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
    let
      es = EnactStateOf fut

      govUpd : Governance-Update
      govUpd = GovernanceUpdate.updates ls fut

      Pre-POOLREAPUpdate pState' gState' utxoSt' = Pre-POOLREAPUpdate.updates ls es govUpd
      Post-POOLREAPUpdate dState'' acnt'' = Post-POOLREAPUpdate.updates es ls dState' acnt' govUpd

      es' : EnactState
      es' = record es { withdrawals = ∅ }

      govSt' : GovState
      govSt' = Governance-Update.govSt' govUpd

      stakeDistrs : StakeDistrs
      stakeDistrs = mkStakeDistrs (Snapshots.mark ss') e utxoSt'
                                  govSt' (GStateOf ls) (DStateOf ls)

      Γ : RatifyEnv
      Γ = ⟦ stakeDistrs , e , DRepsOf ls , CCHotKeysOf ls , TreasuryOf acnt'' , PoolsOf ls , VoteDelegsOf ls ⟧

    in
        ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      ∙ _  ⊢ ⟦ utxoSt' , acnt , DStateOf ls , pState' ⟧ ⇀⦇ e ,POOLREAP⦈ ⟦ utxoSt'' , acnt' , dState' , pState'' ⟧
      ∙ Γ  ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
      ──────────────────────────────────────────────
      _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈ ⟦ acnt'' , ss' , ⟦ utxoSt'' , govSt' , ⟦ dState'' , pState'' , gState' ⟧ᶜˢ ⟧ , es' , fut' ⟧
```

## The <span class="AgdaDatatype">NEWEPOCH</span> Transition System {#sec:the-newepoch-transition-system}

Finally, we define the `NEWEPOCH`{.AgdaDatatype} transition system.

```agda
data _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Type where

  NEWEPOCH-New : ∀ {bprev bcur : BlocksMade} →
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

  NEWEPOCH-No-Reward-Update : ∀ {bprev bcur : BlocksMade} →
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
