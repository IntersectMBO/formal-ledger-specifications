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
on processing transactions and producing new blocks.
These parties, called \defn{block producers},
are incentivized by monetary \defn{rewards}.

Cardano is a proof-of-stake (PoS) blockchain:
through a random lottery,
one block producer is selected to produce one particular block.
The probability for being select depends on their \defn{stake} of Ada,
that is the amount of Ada that they (and their delegators) own
relative to the total amount of Ada. (We will explain delegation below.)
After successful block production,
the block producer is eligible for a share of the rewards.

The rewards for block producers come from two sources:
during an initial period, rewards are paid out from the \defn{reserve},
which is an initial allocation of Ada created for this very purpose.
Over time, the reserve is depleted,
and rewards are sourced from transaction fees.

Rewards are paid out epoch by epoch.

Rewards are collective, but depend on performance:
after every epoch, a fraction of the available reserve
and the transaction fees accumulated during that epoch
are added together. This sum is paid out to the block producers
proportionally to how many blocks they have created each.
In order to avoid perverse incentives, block producers
do not receive individual rewards that depend on the content
of their blocks.

Not all people can or want to set up and administer a dedicated computer
that produces blocks. However, these people still own Ada,
and their stake is relevant for block production.
Specifically, these people have the option to \defn{delegate} their stake
to a \defn{stake pool}, which belongs to a block producer.
This stake counts towards the stake of the pool in the block production lottery.
In turn, the protocol distributes the rewards for produced blocks
to the stake pool owner and their delegators.
The owner receives a fixed fee (``cost'') and a share of the rewards (``margin'').
The remainder is distributed among delegators in proportion to their stake.
By design, delegation and ownership are separate
--- delegation counts towards the stake of the pool,
but delegators remain in full control of their Ada,
stake pools cannot spend delegated Ada.

Stake pools compete for delegators based on fees and performance.
In order to achieve stable blockchain operation,
the rewards are chosen such that they incentivize the system to evolve into a
large, but fixed number of stake pools that attract most of the stake.
For more details about the design and rationale of the rewards and delegation
system, see \textcite{shelley-delegation-design}.

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
