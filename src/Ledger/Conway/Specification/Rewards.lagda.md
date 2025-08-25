# Rewards {#sec:rewards}

This section is part of the
[`Ledger.Conway.Specification.Rewards`](https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/src/Ledger/Conway/Specification/Rewards.lagda)
module of the [formal ledger specification](https://github.com/IntersectMBO/formal-ledger-specifications)


<!--
```agda

{-# OPTIONS --safe #-}

open import Data.Integer using () renaming (+_ to pos)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _-_; >-nonZero; _⊓_)
                          renaming (_⊔_ to _⊔ℚ_; NonZero to NonZeroℚ)
open import Data.Rational.Literals using (number; fromℤ)
open import Data.Rational.Properties using (pos⇒nonZero; positive⁻¹; +-mono-<-≤; normalize-pos; p≤p⊔q)
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction
open import Ledger.Prelude.Numeric.UnitInterval

open import Agda.Builtin.FromNat
open        Number number renaming (fromNat to fromℕ)

module Ledger.Conway.Specification.Rewards
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude hiding (_/_; _*_; _-_; >-nonZero; _⊓_)
open import Ledger.Conway.Specification.Utxo txs abs
```
-->

This section defines how rewards for stake pools and their delegators are calculated
and paid out. This calculation has two main aspects:

- The *amount* of rewards to be paid out. This is defined in
  the section [Amount of Rewards to be Paid Out](Ledger.Conway.Specification.Rewards.md#sec:rewards-amount).

- The *time* when rewards are paid out. This is defined in the
  section [Timing of Rewards Payout](Ledger.Conway.Specification.Rewards.md#sec:rewards-time).

## Rewards Motivation {#sec:rewards-motivation}

In order to operate, any blockchain needs to attract parties that are
willing to spend computational and network resources on processing
transactions and producing new blocks. These parties, called *block producers*, are
incentivized by monetary *rewards*.

Cardano is a *proof-of-stake* (PoS) blockchain: through a random lottery,
one block producer is selected to produce one particular block. The
probability for being select depends on their *stake* of Ada, that is the
amount of Ada that they (and their delegators) own relative to the total
amount of Ada. (We will explain delegation below.) After successful
block production, the block producer is eligible for a share of the
rewards.

The rewards for block producers come from two sources: during an initial
period, rewards are paid out from the *reserve*, which is an initial
allocation of Ada created for this very purpose. Over time, the reserve
is depleted, and rewards are sourced from transaction fees.

Rewards are paid out epoch by epoch.

Rewards are collective, but depend on performance: after every epoch, a
fraction of the available reserve and the transaction fees accumulated
during that epoch are added together. This sum is paid out to the block
producers proportionally to how many blocks they have created each. In
order to avoid perverse incentives, block producers do not receive
individual rewards that depend on the content of their blocks.

Not all people can or want to set up and administer a dedicated computer
that produces blocks. However, these people still own Ada, and their
stake is relevant for block production. Specifically, these people have
the option to *delegate* their stake to a *stake pool*, which belongs to a
block producer. This stake counts towards the stake of the pool in the
block production lottery. In turn, the protocol distributes the rewards
for produced blocks to the stake pool owner and their delegators. The
owner receives a fixed fee (“cost”) and a share of the rewards
(“margin”). The remainder is distributed among delegators in proportion
to their stake. By design, delegation and ownership are separate---delegation counts
towards the stake of the pool, but delegators remain in full control of their Ada,
stake pools cannot spend delegated Ada.

Stake pools compete for delegators based on fees and performance. In
order to achieve stable blockchain operation, the rewards are chosen
such that they incentivize the system to evolve into a large, but fixed
number of stake pools that attract most of the stake. For more details
about the design and rationale of the rewards and delegation system, see
[Team18](#shelley-delegation-design).

## Amount of Rewards to be Paid Out {#sec:rewards-amount}

### Precision of Arithmetic Operations {#sec:precision-rewards}

When computing rewards, all intermediate results are computed using
rational numbers, `ℚ`{.AgdaDatatype}, and converted to
`Coin`{.AgdaFunction} using the `floor`{.AgdaFunction} function at the
very end of the computation.

!!! note "Note for implementors"

    Values in `ℚ`{.AgdaDatatype} can have arbitrarily
    large nominators and denominators. Please use an appropriate type that
    represents rational numbers as fractions of unbounded nominators and
    denominators. Types such as `Double`{.AgdaFunction},
    `Float`{.AgdaFunction}, `BigDecimal`{.AgdaFunction} (Java Platform), or
    `Fixed`{.AgdaFunction} (fixed-precision arithmetic) do *not* faithfully
    represent the rational numbers, and are *not* suitable for computing
    rewards according to this specification!

We use the following arithmetic operations besides basic arithmetic:

- `fromℕ`{.AgdaFunction}: Interpret a natural number as a rational
  number.

- `floor`{.AgdaFunction}: Round a rational number to the next smaller
  integer.

- `posPart`{.AgdaFunction}: Convert an integer to a natural number by
  mapping all negative numbers to zero.

- `÷`{.AgdaFunction}: Division of rational numbers.

- `÷₀`{.AgdaFunction}: Division operator that returns zero when the
  denominator is zero.

- `/`{.AgdaFunction}: Division operator that maps integer arguments to a
  rational number.

- `/₀`{.AgdaFunction}: Like `÷₀`{.AgdaFunction}, but with integer
  arguments.

### Rewards Distribution Calculation {#sec:rewards-distribution-calculation}

This section defines the amount of rewards that are paid out to stake
pools and their delegators.

Section [Function maxPool used for computing a Reward Update](Ledger.Conway.Specification.Rewards.md#function-maxpool-used-for-computing-a-reward-update) defines the
function `maxPool`{.AgdaFunction} which gives the maximum reward a stake
pool can receive in an epoch. Relevant quantities are:

- `rewardPot`{.AgdaArgument}: Total rewards to be paid out after the
  epoch.

- `stake`{.AgdaArgument}: Relative stake of the pool.

- `pledge`{.AgdaArgument}: Relative stake that the pool owner has
  pledged themselves to the pool.

- `z0`{.AgdaFunction}: Relative stake of a fully saturated pool.

- `nopt`{.AgdaFunction}: Protocol parameter, planned number of block
  producers.

- `a0`{.AgdaFunction}: Protocol parameter that incentivizes higher
  pledges.

- `rewardℚ`{.AgdaFunction}: Pool rewards as a rational number.

- `rewardℕ`{.AgdaFunction}: Pool rewards after rounding to a natural
  number of lovelace.


### Function maxPool used for computing a Reward Update



<!--
```agda

nonZero-max-1 : ∀ (n : ℕ) → NonZero (1 ⊔ n)
nonZero-max-1 zero = nonZero
nonZero-max-1 (suc n) = nonZero

nonZero-1/n : ∀ (n : ℕ) → .{{_ : NonZero n}} → NonZeroℚ (1 / n)
nonZero-1/n n {{prf}} =
  pos⇒nonZero (1 / n) {{normalize-pos 1 n {{prf}} {{_}} }}

nonZero-1+max0-x : ∀ (x : ℚ) → NonZeroℚ (1 + (0 ⊔ℚ x))
nonZero-1+max0-x x =
  >-nonZero (+-mono-<-≤ (positive⁻¹ 1 {{_}}) (p≤p⊔q 0 x))
```
-->
 
```agda

maxPool : PParams → Coin → UnitInterval → UnitInterval → Coin
maxPool pparams rewardPot stake pledge = rewardℕ
  where
    a0    = 0 ⊔ℚ pparams .PParams.a0
    1+a0  = 1 + a0
    nopt  = 1 ⊔ pparams .PParams.nopt
```
 
<!--
```agda

    instance
      nonZero-nopt : NonZero nopt
      nonZero-nopt = nonZero-max-1 (pparams .PParams.nopt)
```
-->


```agda

    z0       = 1 / nopt
    stake'   = fromUnitInterval stake ⊓ z0
    pledge'  = fromUnitInterval pledge ⊓ z0
```
 
<!--
```agda

    instance
      nonZeroz0 : NonZeroℚ z0
      nonZeroz0 = nonZero-1/n nopt

      nonZero-1+a0 : NonZeroℚ (1+a0)
      nonZero-1+a0 = nonZero-1+max0-x (pparams .PParams.a0)
```
-->

```agda

    rewardℚ =
        fromℕ rewardPot ÷ 1+a0
        * (stake' + pledge' * a0 * (stake' - pledge' * (z0 - stake') ÷ z0) ÷ z0)
    rewardℕ = posPart (floor rewardℚ)
```

Section [Function mkApparentPerformance used for computing a Reward Update](Ledger.Conway.Specification.Rewards.md#function-mkapparentperformance-used-for-computing-a-reward-update)
defines the function `mkApparentPerformance`{.AgdaFunction} which
computes the apparent performance of a stake pool. Relevant quantities
are:

- `stake`{.AgdaArgument}: Relative active stake of the pool.

- `poolBlocks`{.AgdaArgument}: Number of blocks that the pool added to
  the chain in the last epoch.

- `totalBlocks`{.AgdaArgument}: Total number of blocks added in the last
  epoch.


### Function mkApparentPerformance used for computing a Reward Update



```agda

mkApparentPerformance : UnitInterval → ℕ → ℕ → ℚ
mkApparentPerformance stake poolBlocks totalBlocks = ratioBlocks ÷₀ stake'
  where
    stake' = fromUnitInterval stake
```

<!--
```agda

    instance
      nonZero-totalBlocks : NonZero (1 ⊔ totalBlocks)
      nonZero-totalBlocks = nonZero-max-1 totalBlocks
```
-->

```agda

    ratioBlocks = (pos poolBlocks) / (1 ⊔ totalBlocks)
```

Section [Functions rewardOwners and rewardMember](Ledger.Conway.Specification.Rewards.md#functions-rewardowners-and-rewardmember)
defines the functions `rewardOwners`{.AgdaFunction} and
`rewardMember`{.AgdaFunction}. Their purpose is to divide the reward for
one pool between pool owners and individual delegators by taking into
account a fixed pool cost, a relative pool margin, and the stake of each
member. The rewards will be distributed as follows:

- `rewardOwners`{.AgdaArgument}: These funds will go to the
  `rewardAccount`{.AgdaField} specified in the pool registration
  certificate.

- `rewardMember`{.AgdaArgument}: These funds will go to the reward
  accounts of the individual delegators.

Relevant quantities for the functions are:

- `rewards`{.AgdaArgument}: Rewards paid out to this pool.

- `pool`{.AgdaArgument}: Pool parameters, such as cost and margin.

- `ownerStake`{.AgdaArgument}: Stake of the pool owners relative to the
  total amount of Ada.

- `memberStake`{.AgdaArgument}: Stake of the pool member relative to the
  total amount of Ada.

- `stake`{.AgdaArgument}: Stake of the whole pool relative to the total
  amount of Ada.


### Functions rewardOwners and rewardMember



```agda

rewardOwners : Coin → StakePoolParams → UnitInterval → UnitInterval → Coin
rewardOwners rewards pool ownerStake stake = if rewards ≤ cost
  then rewards
  else cost + posPart (floor (
        (fromℕ rewards - fromℕ cost) * (margin + (1 - margin) * ratioStake)))
  where
    ratioStake  = fromUnitInterval ownerStake ÷₀ fromUnitInterval stake
    cost        = pool .StakePoolParams.cost
    margin      = fromUnitInterval (pool .StakePoolParams.margin)
```

```agda

rewardMember : Coin → StakePoolParams → UnitInterval → UnitInterval → Coin
rewardMember rewards pool memberStake stake = if rewards ≤ cost
  then 0
  else posPart (floor (
         (fromℕ rewards - fromℕ cost) * ((1 - margin) * ratioStake)))
  where
    ratioStake  = fromUnitInterval memberStake ÷₀ fromUnitInterval stake
    cost        = pool .StakePoolParams.cost
    margin      = fromUnitInterval (pool .StakePoolParams.margin)
```

Section [Function rewardOnePool used for computing a Reward Update](Ledger.Conway.Specification.Rewards.md#function-rewardonepool-used-for-computing-a-reward-update) defines
the function `rewardOnePool`{.AgdaFunction} which calculates the rewards
given out to each member of a given pool. Relevant quantities are:

- `rewardPot`{.AgdaArgument}: Total rewards to be paid out for this
  epoch.

- `n`{.AgdaArgument}: Number of blocks produced by the pool in the last
  epoch.

- `N`{.AgdaArgument}: Expectation value of the number of blocks to be
  produced by the pool.

- `stakeDistr`{.AgdaArgument}: Distribution of stake, as mapping from
  `Credential`{.AgdaInductiveConstructor} to `Coin`{.AgdaFunction}.

- `σ`{.AgdaArgument}: Total relative stake controlled by the pool.

- `σa`{.AgdaArgument}: Total active relative stake controlled by the
  pool, used for selecting block producers.

- `tot`{.AgdaArgument}: Total amount of Ada in circulation, for
  computing the relative stake.

- `mkRelativeStake`{.AgdaFunction}: Compute stake relative to the total
  amount in circulation.

- `ownerStake`{.AgdaFunction}: Total amount of stake controlled by the
  stake pool operator and owners.

- `maxP`{.AgdaFunction}: Maximum rewards the pool can claim if the
  pledge is met, and zero otherwise.

- `poolReward`{.AgdaFunction}: Actual rewards to be paid out to this
  pool.


### Function rewardOnePool used for computing a Reward Update



```agda

Stake = Credential ⇀ Coin

rewardOnePool : PParams → Coin → ℕ → ℕ → StakePoolParams
  → Stake → UnitInterval → UnitInterval → Coin → (Credential ⇀ Coin)
rewardOnePool pparams rewardPot n N pool stakeDistr σ σa tot = rewards
  where
    mkRelativeStake = λ coin → clamp (coin /₀ tot)
    owners = mapˢ KeyHashObj (pool .StakePoolParams.owners)
    ownerStake = ∑[ c ← stakeDistr ∣ owners ] c
    pledge = pool .StakePoolParams.pledge
    maxP = if pledge ≤ ownerStake
      then maxPool pparams rewardPot σ (mkRelativeStake pledge)
      else 0
    apparentPerformance = mkApparentPerformance σa n N
    poolReward = posPart (floor (apparentPerformance * fromℕ maxP))
    memberRewards =
      mapValues (λ coin → rewardMember poolReward pool (mkRelativeStake coin) σ)
        (stakeDistr ∣ owners ᶜ)
    ownersRewards  =
      ❴ pool .StakePoolParams.rewardAccount
      , rewardOwners poolReward pool (mkRelativeStake ownerStake) σ ❵ᵐ
    rewards = memberRewards ∪⁺ ownersRewards
```

Section [Function poolStake](Ledger.Conway.Specification.Rewards.md#function-poolstake) defines the
function `poolStake`{.AgdaFunction} which filters the stake distribution
to one stake pool. Relevant quantities are:

- `hk`{.AgdaArgument}: `KeyHash`{.AgdaDatatype} of the stake pool to be
  filtered by.

- `delegs`{.AgdaArgument}: Mapping from `Credential`{.AgdaDatatype}s to
  stake pool that they delegate to.

- `stake`{.AgdaArgument}: Distribution of stake for all
  `Credential`{.AgdaDatatype}s.


### Function poolStake



```agda

Delegations = Credential ⇀ KeyHash

poolStake  : KeyHash → Delegations → Stake → Stake
poolStake hk delegs stake = stake ∣ dom (delegs ∣^ ❴ hk ❵)
```

Section [Function reward used for computing a Reward Update](Ledger.Conway.Specification.Rewards.md#function-reward-used-for-computing-a-reward-update) defines the
function `reward`{.AgdaFunction} which applies
`rewardOnePool`{.AgdaFunction} to each registered stake pool. Relevant
quantities are:

- `uncurryᵐ`{.AgdaFunction}: Helper function to rearrange a nested
  mapping.

- `blocks`{.AgdaArgument}: Number of blocks produced by pools in the
  last epoch, as a mapping from pool `KeyHash`{.AgdaDatatype} to number.

- `poolParams`{.AgdaArgument}: Parameters of all known stake pools.

- `stake`{.AgdaArgument}: Distribution of stake, as mapping from
  `Credential`{.AgdaDatatype} to `Coin`{.AgdaFunction}.

- `delegs`{.AgdaArgument}: Mapping from `Credential`{.AgdaDatatype}s to
  stake pool that they delegate to.

- `total`{.AgdaArgument}: Total stake $=$ amount of Ada in circulation,
  for computing the relative stake.

- `active`{.AgdaFunction}: Active stake $=$ amount of Ada that was used
  for selecting block producers.

- `Σ_/total`{.AgdaFunction}: Sum of stake divided by total stake.

- `Σ_/active`{.AgdaFunction}: Sum of stake divided by active stake.

- `N`{.AgdaFunction}: Total number of blocks produced in the last epoch.

- `pdata`{.AgdaFunction}: Data needed to compute rewards for each pool.


### Function reward used for computing a Reward Update



```agda

BlocksMade = KeyHash ⇀ ℕ

uncurryᵐ :
```
 
<!--
```agda

  ∀ {A B C : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ →
```
-->
 
```agda

  A ⇀ (B ⇀ C) → (A × B) ⇀ C
```


<!--
```agda

uncurryᵐ {A} {B} {C} abc = mapFromPartialFun lookup' domain'
  where
    lookup' : (A × B) → Maybe C
    lookup' (a , b) = lookupᵐ? abc a >>= (λ bc → lookupᵐ? bc b)

    joinˢ : ∀ {X} → ℙ (ℙ X) → ℙ X
    joinˢ = concatMapˢ id

    domain' : ℙ (A × B)
    domain' = joinˢ (range (mapWithKey (λ a bc → range (mapWithKey (λ b _ → (a , b)) bc)) abc))
```
-->
 
```agda


reward : PParams → BlocksMade → Coin → (KeyHash ⇀ StakePoolParams)
  → Stake → Delegations → Coin → (Credential ⇀ Coin)
reward pp blocks rewardPot poolParams stake delegs total = rewards
  where
    active = ∑[ c ← stake ] c
    Σ_/total = λ st → clamp ((∑[ c ← st ] c) /₀ total)
    Σ_/active = λ st → clamp ((∑[ c ← st ] c) /₀ active)
    N = ∑[ m ← blocks ] m
    mkPoolData = λ hk p →
      map (λ n → (n , p , poolStake hk delegs stake)) (lookupᵐ? blocks hk)
    pdata = mapMaybeWithKeyᵐ mkPoolData poolParams

    results  : (KeyHash × Credential) ⇀ Coin
    results = uncurryᵐ (mapValues (λ (n , p , s)
      → rewardOnePool pp rewardPot n N p s (Σ s /total) (Σ s /active) total)
      pdata)
    rewards  = aggregateBy
      (mapˢ (λ (kh , cred) → (kh , cred) , cred) (dom results))
      results
```


### Reward Update {#sec:reward-update}

This section defines the `RewardUpdate`{.AgdaRecord} type, which records
the net flow of Ada due to paying out rewards after an epoch. This type
is defined in
Section [RewardUpdate type](Ledger.Conway.Specification.Rewards.md#rewardupdate-type). The
update consists of four net flows:

- `Δt`{.AgdaField}: The change to the treasury. This will be a positive
  value.

- `Δr`{.AgdaField}: The change to the reserves. We typically expect this
  to be a negative value.

- `Δf`{.AgdaField}: The change to the fee pot. This will be a negative
  value.

- `rs`{.AgdaField}: The map of new individual rewards, to be added to
  the existing rewards.

We require these net flows to satisfy certain constraints that are also
stored in the `RewardUpdate`{.AgdaRecord} data type. Specifically,
`flowConservation`{.AgdaField} states that all four net flows add up to
zero, and we state the directions of `Δt`{.AgdaField} and
`Δf`{.AgdaField}.


### RewardUpdate type



```agda

record RewardUpdate : Set where
  field
    Δt Δr Δf          : ℤ
    rs                : Credential ⇀ Coin
    flowConservation  : Δt + Δr + Δf + pos (∑[ c ← rs ] c) ≡ 0
    Δt-nonnegative    : 0 ≤ Δt
    Δf-nonpositive    : Δf ≤ 0
```
 The function `createRUpd`{.AgdaFunction} calculates
the `RewardUpdate`{.AgdaRecord}, but requires the definition of the type
`EpochState`{.AgdaRecord}, so we have to defer the definition of this
function to Section [Epoch Boundary](Ledger.Conway.Specification.Epoch.md#sec:epoch-boundary).

Section [Rewards](Ledger.Conway.Specification.Rewards.md#sec:diagram-rewards) captures the
potential movement of funds in the entire system that can happen during
one transition step as described in this document. Exception:
Withdrawals from the “Treasury” are not shown in this diagram, they can
move funds into “Reward accounts”. Value is moved between accounting
pots, but the total amount of value in the system remains constant. In
particular, the red subgraph represents the inputs and outputs to the
`rewardPot`{.AgdaFunction}, a temporary variable used during the reward
update calculation in the function `createRUpd`{.AgdaFunction}. Each red
arrow corresponds to one field of the `RewardUpdate`{.AgdaRecord} data
type. The blue arrows represent the movement of funds after they have
passed through the `rewardPot`{.AgdaFunction}.

### Diagram: preservation of funds and rewards {#sec:diagram-rewards}

### Stake Distribution Calculation {#sec:stake-distribution-calculation}

This section defines the calculation of the stake distribution for the
purpose of calculating rewards.

Section [Definitions of the Snapshot type](Ledger.Conway.Specification.Rewards.md#definitions-of-the-snapshot-type) defines the type
`Snapshot`{.AgdaField} that represents a stake distribution snapshot.
Such a snapshot contains the essential data needed to compute rewards:

- `stake`{.AgdaField} A stake distribution, that is a mapping from
  credentials to coin.

- `delegations`{.AgdaField}: A delegation map, that is a mapping from
  credentials to the stake pools that they delegate to.

- `poolParameters`{.AgdaField}: A mapping that stores the pool
  parameters of each stake pool.


### Definitions of the Snapshot type



```agda

record Snapshot : Set where
  field
    stake           : Credential ⇀ Coin
    delegations     : Credential ⇀ KeyHash
    poolParameters  : KeyHash ⇀ StakePoolParams
```
 
<!--
```agda

instance
  unquoteDecl HasCast-Snapshot =
    derive-HasCast [ (quote Snapshot , HasCast-Snapshot) ]
```
-->


Section [Functions for computing stake distributions](Ledger.Conway.Specification.Rewards.md#functions-for-computing-stake-distributions) defines
the calculation of the stake distribution from the data contained in a
ledger state. Here,

- `utxoBalance`{.AgdaFunction} computes the coin balance of all those
  UTxO with a given stake `Credential`{.AgdaDatatype}.

- `activeDelegs`{.AgdaFunction} represents the active stake
  `Credential`{.AgdaDatatype}s, i.e. those that delegate to an existing
  pool and that have a registered reward account.

- `activeRewards`{.AgdaFunction} is a mapping from active stake
  `Credential`{.AgdaDatatype}s to the balance of their reward account.

- `activeStake`{.AgdaFunction} stores the stake for each active
  `Credential`{.AgdaDatatype}, i.e. the sum of coins from the UTxO set
  plus the reward account balance.


### Functions for computing stake distributions



<!--
```agda

private
  getStakeCred : TxOut → Maybe Credential
  getStakeCred (a , _ , _ , _) = stakeCred a

opaque
```
-->
 
```agda


  stakeDistr : UTxO → DState → PState → Snapshot
  stakeDistr utxo dState pState =
      ⟦ activeStake , stakeDelegs , poolParams ⟧
    where
```
 
<!--
```agda

      poolParams    : KeyHash ⇀ StakePoolParams
      utxoBalance   : Credential → Coin
      activeDelegs  : Credential ⇀ KeyHash
      activeRewards : Credential ⇀ Coin
      activeStake   : Credential ⇀ Coin
```
-->


```agda

      poolParams     = pState .PState.pools
      open DState dState using (stakeDelegs; rewards)
      utxoBalance    = λ cred → cbalance (utxo ∣^' λ txout → getStakeCred txout ≡ just cred)
      activeDelegs   = (stakeDelegs ∣ dom rewards) ∣^ dom poolParams
      activeRewards  = rewards ∣ dom activeDelegs
      activeStake    =
        mapWithKey (λ c rewardBalance → utxoBalance c + rewardBalance) activeRewards
```


## Timing of Rewards Payout {#sec:rewards-time}

### Timeline of the Rewards Calculation {#sec:rewards-timeline}

As described in
Section [Rewards](Ledger.Conway.Specification.Rewards.md#sec:rewards-motivation), the
probability of producing a block depends on the stake delegated to the
block producer. However, the stake distribution changes over time, as
funds are transferred between parties. This raises the question: What is
the point in time from which we take the stake distribution? Right at
the moment of producing a block? Some time in the past? How do we deal
with the fact that the blockchain is only *eventually consistent*,
i.e. blocks can be rolled back before a stable consensus on the chain is
formed?

On Cardano, the answer to these questions is to group time into
*epochs*. An epoch is long enough such that at the beginning of a new
epoch, the beginning of the previous epoch has become stable. An epoch
is also long enough for human users to react to parameter changes, such
as stake pool costs or performance. But an epoch is also short enough so
that changes to the stake distribution will be reflected in block
production within a reasonable timeframe.

The rewards for the blocks produced during a given epoch $e_i$ involve
the two epochs surrounding it. In particular, the stake distribution
will come from the previous epoch and the rewards will be calculated in
the following epoch. At each epoch boundary, one snapshot of the stake
distribution is taken; changes to the stake distribution within an epoch
are not considered until the next snapshot is taken. More concretely:

1.  A stake distribution snapshot is taken at the begining of epoch
    $e_{i-1}$.

2.  The randomness for leader election is fixed during epoch $e_{i-1}$

3.  Epoch $e_{i}$ begins, blocks are produced using the snapshot taken
    at (A).

4.  Epoch $e_{i}$ ends. A snapshot is taken of the stake pool
    performance during epoch $e_{i}$. A snapshot is also taken of the
    fee pot.

5.  The snapshots from (D) are stable and the reward calculation can
    begin.

6.  The reward calculation is finished and an update to the ledger state
    is ready to be applied.

7.  Rewards are given out.

In order to specify this logic, we store the last three snapshots of the
stake distributions. The mnemonic “mark, set, go” will be used to keep
track of the snapshots, where the label “mark” refers to the most recent
snapshot, and “go” refers to the snapshot that is ready to be used in
the reward calculation.

In the above diagram, the snapshot taken at (A) is labeled “mark” during
epoch $e_{i-1}$, “set” during epoch $e_i$ and “go” during epoch
$e_{i+1}$. At (G) the snapshot taken at (A) is no longer needed and will
be discarded.

In other words, blocks will be produced using the snapshot labeled
“set”, whereas rewards are computed from the snapshot labeled “go”.

<div class="note">

Between time D and E we are concerned with chain growth and stability.
Therefore this duration can be stated as 2k blocks (to state it in slots
requires details about the particular version of the Ouroboros
protocol). The duration between F and G is also 2k blocks. Between E and
F a single honest block is enough to ensure a random nonce.

</div>

### Example Illustration of the Reward Cycle {#sec:illustration-reward-cycle}

For better understanding, here an example of the logic described in the
previous section:

1.00,0.50,0.00 0.65,0.00,0.00 0.00,0.50,0.00 0.00,0.95,0.00
0.00,0.00,0.90 0.00,0.60,0.90

Bob registers his stake pool in epoch $e_1$. Alice delegates to Bob’s
stake pool in epoch $e_1$. Just before the end of epoch $e_1$, Bob
submits a stake pool re-registration, changing his pool parameters. The
change in parameters is not immediate, as shown by the curved arrow
around the epoch boundary.

A snapshot is taken on the $e_1$/$e_2$ boundary. It is labeled “mark”
initially. This snapshot includes Alice’s delegation to Bob’s pool, and
Bob’s pool parameters and listed in the initial pool registration
certificate.

If Alice changes her delegation choice any time during epoch $e_2$, she
will never be effected by Bob’s change of parameters.

A new snapshot is taken on the $e_2$/$e_3$ boundary. The previous
(darker blue) snapshot is now labeled “set”, and the new one labeled
“mark”. The “set” snapshot is used for leader election in epoch $e_3$.

On the $e_3$/$e_4$ boundary, the darker blue snapshot is labeled “go”
and the lighter blue snapshot is labeled “set”. Bob’s stake pool
performance during epoch $e_3$ (he produced 4 blocks) will be used with
the darker blue snapshot for the rewards which will be handed out at the
beginning of epoch $e_5$.

### Stake Distribution Snapshots {#sec:stake-distribution-snapshots}

This section defines the SNAP transition rule for stake distribution
snapshots.

Section [Definitions for the SNAP transition system](Ledger.Conway.Specification.Rewards.md#definitions-for-the-snap-transition-system) defines the type
`Snapshots`{.AgdaField} that contains the data that needs to be saved at
the end of an epoch. This data is:

- `mark`{.AgdaField}, `set`{.AgdaField}, `go`{.AgdaField}: Three stake
  distribution snapshots as explained in
  Section [Rewards](Ledger.Conway.Specification.Rewards.md#sec:rewards-timeline).

- `feeSS`{.AgdaField}: stores the fees which are added to the reward pot
  during the next reward update calculation, which is then subtracted
  from the fee pot on the epoch boundary.


### Definitions for the SNAP transition system



```agda

record Snapshots : Set where
  field
    mark set go  : Snapshot
    feeSS        : Coin
```
 
<!--
```agda

instance
  unquoteDecl HasCast-Snapshots =
    derive-HasCast [ (quote Snapshots , HasCast-Snapshots) ]
```
-->


Section [SNAP transition system](Ledger.Conway.Specification.Rewards.md#snap-transition-system) defines the snapshot
transition rule. This transition has no preconditions and results in the
following state change:

- The oldest snapshot is replaced with the penultimate one.

- The penultimate snapshot is replaced with the newest one.

- The newest snapshot is replaced with one just calculated.

- The current fees pot is stored in `feeSS`{.AgdaField}. Note that this
  value will not change during the epoch, unlike the `fees`{.AgdaField}
  value in the UTxO state.


<!--
```agda

private variable
  lstate : LState
  mark set go : Snapshot
  feeSS : Coin
```
-->



### SNAP transition system



```agda

data _⊢_⇀⦇_,SNAP⦈_ : LState → Snapshots → ⊤ → Snapshots → Type where
  SNAP : let open LState lstate; open UTxOState utxoSt; open CertState certState
             stake = stakeDistr utxo dState pState
    in
    lstate ⊢ ⟦ mark , set , go , feeSS ⟧ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , fees ⟧
```


# References {#references .unnumbered}

**\[Team18\]** <span id="shelley-delegation-design"
label="shelley-delegation-design"></span> IOHK Formal Methods Team.
*Design Specification for Delegation and Incentives in Cardano, IOHK
Deliverable SL-D1*. 2018.
