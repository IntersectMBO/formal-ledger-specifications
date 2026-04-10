---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Rewards.lagda.md
---

# Rewards {#sec:rewards}

In this section we define how rewards for stake pools and their delegators
are calculated and paid out.

```agda

{-# OPTIONS --safe #-}

open import Data.Integer using () renaming (+_ to pos)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _-_; >-nonZero; _⊓_)
                          renaming (_⊔_ to _⊔ℚ_; NonZero to NonZeroℚ)
open import Data.Rational.Literals using (number; fromℤ)
open import Data.Rational.Properties using (pos⇒nonZero; positive⁻¹; +-mono-<-≤; normalize-pos; p≤p⊔q)
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Prelude.Numeric.UnitInterval

open import Agda.Builtin.FromNat
open        Number number renaming (fromNat to fromℕ)

module Ledger.Dijkstra.Specification.Rewards
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Prelude hiding (_/_; _*_; _-_; >-nonZero; _⊓_)
open import Ledger.Dijkstra.Specification.Utxo txs abs

nonZero-max-1 : ∀ (n : ℕ) → NonZero (1 ⊔ n)
nonZero-max-1 zero = nonZero
nonZero-max-1 (suc n) = nonZero

nonZero-1/n : ∀ (n : ℕ) → .{{_ : NonZero n}} → NonZeroℚ (1 / n)
nonZero-1/n n {{prf}} =
  pos⇒nonZero (1 / n) {{normalize-pos 1 n {{prf}} {{_}} }}

nonZero-1+max0-x : ∀ (x : ℚ) → NonZeroℚ (1 + (0 ⊔ℚ x))
nonZero-1+max0-x x =
  >-nonZero (+-mono-<-≤ (positive⁻¹ 1 {{_}}) (p≤p⊔q 0 x))

maxPool : PParams → Coin → UnitInterval → UnitInterval → Coin
maxPool pparams rewardPot stake pledge = rewardℕ
  where
    a0    = 0 ⊔ℚ pparams .PParams.a0
    1+a0  = 1 + a0
    nopt  = 1 ⊔ pparams .PParams.nopt

    instance
      nonZero-nopt : NonZero nopt
      nonZero-nopt = nonZero-max-1 (pparams .PParams.nopt)

    z0       = 1 / nopt
    stake'   = fromUnitInterval stake ⊓ z0
    pledge'  = fromUnitInterval pledge ⊓ z0

    instance
      nonZeroz0 : NonZeroℚ z0
      nonZeroz0 = nonZero-1/n nopt

      nonZero-1+a0 : NonZeroℚ (1+a0)
      nonZero-1+a0 = nonZero-1+max0-x (pparams .PParams.a0)

    rewardℚ =  fromℕ rewardPot ÷ 1+a0
               *  (  stake' + pledge' * a0
                    * ( stake' - pledge' * (z0 - stake') ÷ z0 )
                    ÷ z0
                  )
    rewardℕ = posPart (floor rewardℚ)

mkApparentPerformance : UnitInterval → ℕ → ℕ → ℚ
mkApparentPerformance stake poolBlocks totalBlocks = ratioBlocks ÷₀ (fromUnitInterval stake)
  where
    instance
      nonZero-totalBlocks : NonZero (1 ⊔ totalBlocks)
      nonZero-totalBlocks = nonZero-max-1 totalBlocks

    ratioBlocks : .⦃ _ : NonZero (1 ⊔ totalBlocks) ⦄ → ℚ
    ratioBlocks = (pos poolBlocks) / (1 ⊔ totalBlocks)

rewardOwners : Coin → StakePoolParams → UnitInterval → UnitInterval → Coin
rewardOwners rewards poolParams ownerStake stake = if rewards ≤ cost
  then rewards
  else cost + posPart (floor (
        (fromℕ rewards - fromℕ cost) * (margin + (1 - margin) * ratioStake)))
  where
    ratioStake  = fromUnitInterval ownerStake ÷₀ fromUnitInterval stake
    cost        = poolParams .StakePoolParams.cost
    margin      = fromUnitInterval (poolParams .StakePoolParams.margin)

rewardMember : Coin → StakePoolParams → UnitInterval → UnitInterval → Coin
rewardMember rewards poolParams memberStake stake = if rewards ≤ cost
  then 0
  else posPart (floor (
         (fromℕ rewards - fromℕ cost) * ((1 - margin) * ratioStake)))
  where
    ratioStake  = fromUnitInterval memberStake ÷₀ fromUnitInterval stake
    cost        = poolParams .StakePoolParams.cost
    margin      = fromUnitInterval (poolParams .StakePoolParams.margin)

rewardOnePool :  PParams → Coin → ℕ → ℕ → StakePoolParams
                 → Stake → UnitInterval → UnitInterval → Coin → Stake

rewardOnePool pp rewardPot n N poolParams stakeDistr σ σa tot = memberRewards ∪⁺ ownersRewards
  where
  mkRelativeStake : Coin → UnitInterval
  mkRelativeStake = λ coin → clamp (coin /₀ tot)

  owners : ℙ Credential
  owners = mapˢ KeyHashObj (poolParams .StakePoolParams.owners)

  ownerStake pledge maxP poolReward : Coin
  ownerStake  = ∑[ c ← stakeDistr ∣ owners ] c
  pledge      = poolParams .StakePoolParams.pledge
  maxP        =  if pledge ≤ ownerStake
                 then maxPool pp rewardPot σ (mkRelativeStake pledge)
                 else 0
  poolReward  = posPart $ floor $ (mkApparentPerformance σa n N) * fromℕ maxP

  stakeMap[_] :  (Coin → StakePoolParams → UnitInterval → UnitInterval → Coin)
                 → Coin → UnitInterval → Coin
  stakeMap[ f ] = (f poolReward poolParams) ∘ mkRelativeStake

  memberRewards : Stake
  memberRewards = mapValues (λ coin → stakeMap[ rewardMember ] coin σ)
                            (stakeDistr ∣ owners ᶜ)

  ownersRewards : Stake
  ownersRewards =  ❴ poolParams .StakePoolParams.rewardAccount
                   , stakeMap[ rewardOwners ] ownerStake σ ❵ᵐ

poolStake  : KeyHash → StakeDelegs → Stake → Stake
poolStake hk delegs stake = stake ∣ dom (delegs ∣^ ❴ hk ❵)

BlocksMade : Type
BlocksMade = KeyHash ⇀ ℕ

uncurryᵐ :
  ∀ {A B C : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ →
  A ⇀ (B ⇀ C) → (A × B) ⇀ C
uncurryᵐ {A} {B} {C} abc = mapFromPartialFun lookup' domain'
  where
    lookup' : (A × B) → Maybe C
    lookup' (a , b) = lookupᵐ? abc a >>= (λ bc → lookupᵐ? bc b)

    joinˢ : ∀ {X} → ℙ (ℙ X) → ℙ X
    joinˢ = concatMapˢ id

    domain' : ℙ (A × B)
    domain' = joinˢ (range (mapWithKey (λ a bc → range (mapWithKey (λ b _ → (a , b)) bc)) abc))

reward :  PParams → BlocksMade → Coin → Pools → Stake → StakeDelegs → Coin → Stake
reward pp blocks rewardPot pools stake delegs total = rewards
  where
    active      = ∑[ c ← stake ] c
    Σ_/total    = λ st → clamp ((∑[ c ← st ] c) /₀ total)
    Σ_/active   = λ st → clamp ((∑[ c ← st ] c) /₀ active)
    N           = ∑[ m ← blocks ] m
    mkPoolData  = λ hk p → map  (λ n → (n , p , poolStake hk delegs stake))
                                (lookupᵐ? blocks hk)
    pdata       = mapMaybeWithKeyᵐ mkPoolData pools

    f : ℕ × StakePoolParams × Stake → Stake
    f = (λ (n , p , s) → rewardOnePool pp rewardPot n N p s (Σ s /total) (Σ s /active) total)

    results : (KeyHash × Credential) ⇀ Coin
    results =  uncurryᵐ (mapValues f pdata)
    rewards  = aggregateBy (mapˢ (λ (kh , cred) → (kh , cred) , cred) (dom results)) results

record RewardUpdate : Set where
  field
    Δt Δr Δf          : ℤ
    rs                : Stake
    flowConservation  : Δt + Δr + Δf + pos (∑[ c ← rs ] c) ≡ 0
    Δt-nonnegative    : 0 ≤ Δt
    Δf-nonpositive    : Δf ≤ 0

record Snapshot : Set where
  field
    stake        : Stake
    delegations  : StakeDelegs
    pools        : Pools

instance
  HasStake-Snapshot : HasStake Snapshot
  HasStake-Snapshot .StakeOf = Snapshot.stake

  HasStakeDelegs-Snapshot : HasStakeDelegs Snapshot
  HasStakeDelegs-Snapshot .StakeDelegsOf = Snapshot.delegations

  HasPools-Snapshot : HasPools Snapshot
  HasPools-Snapshot .PoolsOf = Snapshot.pools

  unquoteDecl HasCast-Snapshot =
    derive-HasCast [ (quote Snapshot , HasCast-Snapshot) ]

private
  getStakeCred : TxOut → Maybe Credential
  getStakeCred (a , _ , _ , _) = stakeCred a

opaque
  stakeDistr : UTxO → DState → PState → Snapshot
  stakeDistr utxo dState pState = ⟦ activeStake , StakeDelegsOf dState , pools ⟧
    where
    pools : Pools
    pools = PoolsOf pState

    utxoBalance : Credential → Coin
    utxoBalance = λ cred → cbalance (utxo ∣^' λ txout → getStakeCred txout ≡ just cred)

    activeDelegs : StakeDelegs
    activeDelegs = (StakeDelegsOf dState ∣ dom (RewardsOf dState)) ∣^ dom pools

    activeRewards : Rewards
    activeRewards = RewardsOf dState ∣ dom activeDelegs

    activeStake : Stake
    activeStake = mapWithKey (λ c rewardBalance → utxoBalance c + rewardBalance) activeRewards

record Snapshots : Set where
  field
    mark set go  : Snapshot
    feeSS        : Fees

record HasSnapshots {a} (A : Type a) : Type a where
  field SnapshotsOf : A → Snapshots
open HasSnapshots ⦃...⦄ public

instance
  HasFees-Snapshots : HasFees Snapshots
  HasFees-Snapshots .FeesOf = Snapshots.feeSS

  unquoteDecl HasCast-Snapshots =
    derive-HasCast [ (quote Snapshots , HasCast-Snapshots) ]

private variable
  ls : LedgerState
  mark set go : Snapshot
  feeSS : Coin

data _⊢_⇀⦇_,SNAP⦈_ : LedgerState → Snapshots → ⊤ → Snapshots → Type where
  SNAP :
    let stake = stakeDistr (UTxOOf ls) (DStateOf ls) (PStateOf ls) in
    ls ⊢ ⟦ mark , set , go , feeSS ⟧ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , FeesOf ls ⟧
```
