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
