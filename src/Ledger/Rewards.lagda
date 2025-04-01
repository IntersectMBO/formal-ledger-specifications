\section{Rewards}
\label{sec:rewards}
\modulenote{\LedgerModule{Rewards}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Builtin.FromNat

open import Ledger.Prelude
open import Ledger.Types.GovStructure

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
