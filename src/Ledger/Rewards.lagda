\section{Rewards}
\label{sec:rewards}
\modulenote{\LedgerModule{Rewards}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Builtin.FromNat

open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _-_)
import Data.Rational as ℚ renaming (_⊓_ to min; _⊔_ to max)
open import Data.Rational.Literals using (number)
import Data.Rational.Properties as ℚ
import Data.Nat as ℕ renaming (_⊔_ to max)
import Data.Integer as ℤ renaming (_⊔_ to max)
open import Data.Integer.Ext using (posPart)
import Data.Integer.Properties as ℤ
open Number number renaming (fromNat to fromℕ)

open import Ledger.Prelude hiding (_/_; _*_; _-_)
open import Ledger.Types.GovStructure
open import Ledger.Types.Numeric.UnitInterval

module Ledger.Rewards
  (gs : _) (open GovStructure gs)
  where

open import Ledger.Certs gs
\end{code}
This section defines how rewards for stake pools and their delegators
are calculated and paid out.

\subsection{Rewards Motivation}
\label{sec:rewards-motivation}
In order to operate, any blockchain needs to attract parties that are
willing to spend computational and network resources
on receiving transactions and producing new blocks.
These parties, called \defn{block producers},
are incentivized by monetary \defn{rewards}.

Cardano is a proof of stake (PoS) blockchain:
Through a random lottery,
one block producer is selected to produce one particular block.
The probability for being select depends on their \defn{stake} of Ada,
that is their attributed amount of Ada relative to the total amount of Ada.
After successful block production,
the block producer is eligible for a share of the rewards.

The rewards for block producers come from two sources:
During an initial period, rewards are paid out from the \defn{reserve},
which is an initial allocation of Ada created for this very purpose.
Over time, the reserve is depleted,
and rewards are sourced from transaction fees.

Rewards are paid out epoch by epoch.

Rewards are collective, but depend on performance:
After every epoch, a fraction of the available reserve
and the transaction fees accumulated during that epoch
are added together. This sum is paid out to the block producers
proportionally to how many blocks they have created each.
In order to avoid perverse incentives, block producers
do not receive individual rewards that depend on the content
of their blocks.

Not all people can or want to set up and administier a dedicated computer
that produces blocks. However, these people still own Ada,
and their stake is relevant for block production.
Specifically, these people have the option to \defn{delegate} their stake
to a \defn{stake pool}, which belongs to a block producer.
The rewards of the block producer are shared proportionally with the
people that delegate to its stake pool, after fees.
By design, delegation and ownership are separate
--- delegation counts towards the stake of the block producer,
but delegators remain in full control of their Ada,
stake pools cannot spend delegated Ada.

Stake pools compete for delegators based on fees and performance.
In order to achieve stable blockchain operation,
the rewards are chosen such that they incentivize the system to evolve into a
large, but fixed number of stake pools that attract most of the stake.
For more details about the design and rationale of the rewards and delegation
system, see Ref.~\parencite{shelley-delegation-design}.

\subsection{Rewards Distribution Calculation}
\label{sec:rewards-distribution-calculation}
This section defines the amount of rewards that are paid out
to stake pools and their delegators.

\Cref{fig:functions:maxPool} defines the function \AgdaFunction{maxPool}
which gives the maximum reward a stake pool can receive in an epoch.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{rewardPot}: Total rewards to be paid out after the epoch.
  \item \AgdaArgument{stake}: Relative stake of the pool.
  \item \AgdaArgument{pledge}: Relative stake that the pool owner has pledged themselves to the pool.
  \item \AgdaFunction{z0}: Relative stake of a fully saturated pool.
  \item \AgdaFunction{nopt}: Protocol parameter, planned number of block producers.
  \item \AgdaFunction{a0}: Protocol parameter that incentivizes higher pledges.
  \item \AgdaFunction{rewardℚ}: Pool rewards as a rational number.
  \item \AgdaFunction{rewardℕ}: Pool rewards after rounding to a natural number of lovelace.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
nonZero-max-1 : ∀ (n : ℕ) → ℕ.NonZero (ℕ.max 1 n)
nonZero-max-1 zero = ℕ.nonZero
nonZero-max-1 (suc n) = ℕ.nonZero

nonZero-1/n : ∀ (n : ℕ) → .{{_ : ℕ.NonZero n}} → ℚ.NonZero (1 / n)
nonZero-1/n n {{prf}} =
  ℚ.pos⇒nonZero (1 / n) {{ℚ.normalize-pos 1 n {{prf}} {{_}} }}

nonZero-1+max0-x : ∀ (x : ℚ) → ℚ.NonZero (1 + ℚ.max 0 x)
nonZero-1+max0-x x =
  ℚ.>-nonZero (ℚ.+-mono-<-≤ (ℚ.positive⁻¹ 1) (ℚ.p≤p⊔q 0 x))

private instance
  nonNegative : ∀ {i} → ℤ.NonNegative (ℤ.max 0 i)
  nonNegative {i} = ℤ.nonNegative (ℤ.i≤i⊔j 0 i)
\end{code}
\begin{code}
maxPool : PParams → Coin → UnitInterval → UnitInterval → Coin
maxPool pparams rewardPot stake pledge = rewardℕ
  where
    a0      = ℚ.max 0 (pparams .PParams.a0)
    1+a0    = 1 + a0
    nopt    = ℕ.max 1 (pparams .PParams.nopt)
\end{code}
\begin{code}[hide]
    instance
      nonZero-nopt : ℕ.NonZero nopt
      nonZero-nopt = nonZero-max-1 (pparams .PParams.nopt)
\end{code}
\begin{code}
    z0       = 1 / nopt
    stake'   = ℚ.min (fromUnitInterval stake) z0
    pledge'  = ℚ.min (fromUnitInterval pledge) z0
\end{code}
\begin{code}[hide]
    instance
      nonZeroz0 : ℚ.NonZero z0
      nonZeroz0 = nonZero-1/n nopt

      nonZero-1+a0 : ℚ.NonZero (1+a0)
      nonZero-1+a0 = nonZero-1+max0-x (pparams .PParams.a0)
\end{code}
\begin{code}
    rewardℚ =
        ((fromℕ rewardPot) ÷ 1+a0)
        * (stake' + pledge' * a0 * (stake' - pledge' * (z0 - stake') ÷ z0) ÷ z0)
    rewardℕ = posPart (floor rewardℚ)
\end{code}
\end{AgdaMultiCode}
\caption{Function maxPool used for computing a Reward Update}
\label{fig:functions:maxPool}
\end{figure*}

\Cref{fig:functions:mkApparentPerformance} defines
the function \AgdaFunction{mkApparentPerformance}
which computes the apparent performance of a stake pool.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{stake}: Relative stake of the pool.
  \item \AgdaArgument{poolBlocks}: Number of blocks that the pool added to the chain in the last epoch.
  \item \AgdaArgument{totalBlocks}: Total number of blocks added in the last epoch.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
mkApparentPerformance : UnitInterval → ℕ → ℕ → ℚ
mkApparentPerformance stake poolBlocks totalBlocks = case stake' ℚ.≟ 0 of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (yes stake≡0) → 0
      (no stake≢0) →
\end{code}
\begin{code}[hide]
        let instance nonZero-stake = ℚ.≢-nonZero stake≢0 in
\end{code}
\begin{code}
          ratioBlocks ÷ stake'
  where
    stake' = fromUnitInterval stake
\end{code}
\begin{code}[hide]
    instance
      nonZero-totalBlocks : ℕ.NonZero (ℕ.max 1 totalBlocks)
      nonZero-totalBlocks = nonZero-max-1 totalBlocks
\end{code}
\begin{code}
    ratioBlocks = (ℤ.+ poolBlocks) / (ℕ.max 1 totalBlocks)
\end{code}
\end{AgdaMultiCode}
\caption{Function mkApparentPerformance used for computing a Reward Update}
\label{fig:functions:mkApparentPerformance}
\end{figure*}

\Cref{fig:functions:rewardOwners-rewardMember} defines
the functions \AgdaFunction{rewardOwners} and \AgdaFunction{rewardMember}.
Their purpose is to divide the reward for one pool
between pool owners and individual delegators
by taking into account a fixed pool cost, a relative pool margin,
and the stake of each member.
The rewards will be distributed as follows:
\begin{itemize}
  \item \AgdaArgument{rewardOwners}:
    These funds will go to the \AgdaField{rewardAccount}
    specified in the pool registration certificate.
  \item \AgdaArgument{rewardMember}:
    These funds will go to the reward accounts of the individual delegators.
\end{itemize}
Relevant quantities for the functions are:
\begin{itemize}
  \item \AgdaArgument{rewards}: Rewards paid out to this pool.
  \item \AgdaArgument{pool}: Pool parameters, such as cost and margin.
  \item \AgdaArgument{memberStake}: Stake of the pool member relative to the total amount of Ada.
  \item \AgdaArgument{ownerStake}: Stake of the pool owners relative to the total amount of Ada.
  \item \AgdaArgument{stake}: Stake of the pool relative to the total amount of Ada.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
rewardOwners : Coin → PoolParams → UnitInterval → UnitInterval → Coin
rewardOwners rewards pool ownerStake stake = case cost ≤? rewards of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (yes _) → rewards
      (no _) → cost + posPart (floor (
        (fromℕ rewards - fromℕ cost) * (margin + (1 - margin) * ratioStake)))
  where
    ownerStake'  = fromUnitInterval ownerStake
    stake'       = fromUnitInterval stake
    ratioStake   = case stake' ≟ 0 of
\end{code}
\begin{code}[hide]
      λ where
\end{code}
\begin{code}
        (yes stake≡0) → 0
        (no stake≢0) →
\end{code}
\begin{code}[hide]
          let instance nonZero-stake = ℚ.≢-nonZero stake≢0 in
\end{code}
\begin{code}
            ownerStake' ÷ stake'
\end{code}
\begin{code}
    cost = pool .PoolParams.cost
    margin = fromUnitInterval (pool .PoolParams.margin)
\end{code}
\end{AgdaMultiCode}
\begin{AgdaMultiCode}
\begin{code}
rewardMember : Coin → PoolParams → UnitInterval → UnitInterval → Coin
rewardMember rewards pool memberStake stake = case cost ≤? rewards of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (yes _) → 0
      (no _) → posPart (floor (
        (fromℕ rewards - fromℕ cost) * ((1 - margin) * ratioStake)))
  where
    memberStake'  = fromUnitInterval memberStake
    stake'        = fromUnitInterval stake
    ratioStake    = case stake' ≟ 0 of
\end{code}
\begin{code}[hide]
      λ where
\end{code}
\begin{code}
        (yes stake≡0) → 0
        (no stake≢0) →
\end{code}
\begin{code}[hide]
          let instance nonZero-stake = ℚ.≢-nonZero stake≢0 in
\end{code}
\begin{code}
            memberStake' ÷ stake'
\end{code}
\begin{code}
    cost = pool .PoolParams.cost
    margin = fromUnitInterval (pool .PoolParams.margin)
\end{code}
\end{AgdaMultiCode}
\caption{Function rewardOwners and rewardMember}
\label{fig:functions:rewardOwners-rewardMember}
\end{figure*}

\Cref{fig:functions:rewardOnePool} defines
the function \AgdaFunction{rewardOnePool}
which calculates the rewards given out to each member of a given pool.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{rewardPot}: Total rewards to be paid out for this epoch.
  \item \AgdaArgument{n}: Number of blocks produced by the pool in the last epoch.
  \item \AgdaArgument{N}: Expectation value of the number of blocks to be produced by the pool.
  \item \AgdaArgument{stakeDistr}: Distribution of stake,
    as mapping from \AgdaInductiveConstructor{Credential} to \Coin{}.
  \item \AgdaArgument{σ}: Total relative stake controlled by the pool.
  \item \AgdaArgument{σa}: Total active relative stake controlled by the pool, used for selecting block producers.
  \item \AgdaArgument{tot}: Total amount of Ada in circulation, for computing the relative stake.
  \item \AgdaFunction{mkRelativeStake}: Compute stake relative to the total amount in circulation.
  \item \AgdaFunction{ownerStake}: Total amount of stake controlled by the stake pool operator and owners.
  \item \AgdaFunction{maxP}: Maximum rewards the pool can claim if the pledge is met,
    and zero otherwise.
  \item \AgdaFunction{poolReward}: Actual rewards to be paid out to this pool.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
  -- division of natural numbers with completion by 0.
abstract
  _/₀_ : ℕ → ℕ → ℚ
  x /₀ 0 = 0
  x /₀ y@(suc _) = ℤ.+ x ℚ./ y
\end{code}
\begin{code}
Stake = Credential ⇀ Coin

rewardOnePool : PParams → Coin → ℕ → ℕ → PoolParams
  → Stake → UnitInterval → UnitInterval → Coin → (Credential ⇀ Coin)
rewardOnePool pparams rewardPot n N pool stakeDistr σ σa tot = rewards
  where
    mkRelativeStake = λ coin → clamp (coin /₀ tot)
    owners = mapˢ KeyHashObj (pool .PoolParams.owners) 
    ownerStake = ∑[ c ← stakeDistr ∣ owners ] c
    pledge = pool .PoolParams.pledge
    maxP  = case pledge ≤? ownerStake of
\end{code}
\begin{code}[hide]
      λ where
\end{code}
\begin{code}
        (yes _) → maxPool pparams rewardPot σ (mkRelativeStake pledge)
        (no  _)  → 0
    apparentPerformance = mkApparentPerformance σa n N
    poolReward = posPart (floor (apparentPerformance * fromℕ maxP))
    memberRewards =
      mapValues (λ coin → rewardMember poolReward pool (mkRelativeStake coin) σ)
        (stakeDistr ∣ owners ᶜ)
    ownersRewards  =
      ❴ pool .PoolParams.rewardAccount
      , rewardOwners poolReward pool (mkRelativeStake ownerStake) σ ❵ᵐ
    rewards = memberRewards ∪⁺ ownersRewards
\end{code}
\end{AgdaMultiCode}
\caption{Function rewardOnePool used for computing a Reward Update}
\label{fig:functions:rewardOnePool}
\end{figure*}

\Cref{fig:functions:reward} defines
the function \AgdaFunction{reward}
which applies \AgdaFunction{rewardOnePool} to each registered stake pool.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{blocks}: Number of blocks produced by pools in the last epoch,
    as mapping from \AgdaInductiveConstructor{KeyHash} to \Coin{}.
  \item \AgdaArgument{stake}: Distribution of stake,
    as mapping from \AgdaInductiveConstructor{Credential} to \Coin{}.
  \item \AgdaArgument{total}: Total amount of Ada in circulation, for computing the relative stake.
  \item \AgdaFunction{totalActive}: Total amount of Ada that was used for selecting block producers.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
BlocksMade = KeyHash ⇀ ℕ
Delegations = Credential ⇀ KeyHash

-- FIXME Correct definition of poolStake
poolStake : PoolParams → Delegations → Stake → Stake
poolStake pool _ _ =
  ❴ pool .PoolParams.rewardAccount
  , pool .PoolParams.pledge
  ❵ᵐ

reward : PParams → BlocksMade → Coin → (KeyHash ⇀ PoolParams)
  → Stake → Delegations → Coin → (Credential ⇀ Coin)
reward pp blocks rewardPot poolParams stake delegs total = rewards
  where -- FIXME Clean this up
    totalActive = ∑[ c ← stake ] c
    mkRelative = λ coin → clamp (coin /₀ total)
    mkRelativeActive = λ coin → clamp (coin /₀ totalActive)
    sums : Stake → Coin -- FIXME Get rid of this definition
    sums s = ∑[ c ← s ] c
    N = ∑[ m ← blocks ] m
    -- FIXME Fetch n from blocks, implied filter.
    pdata   = mapWithKey (λ hk p → let n = N in (n , p , poolStake p delegs stake)) poolParams
    results = mapValues (λ { (n , p , s)
      → rewardOnePool pp rewardPot n N p s (mkRelative (sums s)) (mkRelativeActive (sums s)) total
      }) pdata
    -- FIXME clean up the notation for rewards
    rewards = foldl _∪⁺_ ∅ $ setToList $ range results
\end{code}
\end{AgdaMultiCode}
\caption{Function reward used for computing a Reward Update}
\label{fig:functions:reward}
\end{figure*}

\subsection{Reward Update}
\label{sec:reward-update}
TODO: This section defines the \AgdaRecord{RewardUpdate} type,
which records the net flow of Ada due to paying out rewards
after an epoch.
NOTE: The function \AgdaFunction{createRUpd} calculates the
\AgdaRecord{RewardUpdate},
but requires the definition \AgdaRecord{EpochState},
so we have to defer its definition to a later section.

\subsection{Stake Distribution Snapshots}
\label{sec:stake-dstribution-snapshots-}
TODO: This section defines the SNAP transition rule
for the stake distribution snapshots.
   