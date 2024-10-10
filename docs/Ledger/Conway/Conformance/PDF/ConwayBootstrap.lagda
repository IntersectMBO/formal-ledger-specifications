\section{Bootstrapping the Governance System}

\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.Conway.Conformance.PDF.ConwayBootstrap where
\end{code}

As described in \cite{cip1694}, the governance system needs to be
bootstrapped. During the bootstrap period, the following changes will
be made to the ledger described in this document.

\begin{itemize}
\item Transactions containing any proposal except \TriggerHF,
      \ChangePParams or \Info will be rejected.
\item Transactions containing a vote other than a \CC vote,
      a \SPO vote on a \TriggerHF action or any vote on an \Info
      action will be rejected.
\item \Qfour, \Pfive and \Qfivee are set to $0$.
\end{itemize}

This allows for a governance mechanism similar to the old, Shelley-era
governance during the bootstrap phase, where the constitutional
committee is mostly in charge. These restrictions will be removed
during a subsequent hard fork, once enough DRep stake is present in
the system to properly govern and secure itself.
