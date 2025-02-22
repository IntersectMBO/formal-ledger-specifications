\section{Bootstrapping the Governance System}
\label{sec:conway-bootstrap}

\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.PDF.ConwayBootstrap where
\end{code}

As described in \hrefCIP{1694}, the governance system needs to be
bootstrapped. During the bootstrap period, the following changes will
be made to the ledger described in this document.

\begin{itemize}
\item Transactions containing any proposal except \TriggerHF{},
      \ChangePParams{} or \Info{} will be rejected.
\item Transactions containing a vote other than a \CC{} vote,
      a \SPO{} vote on a \TriggerHF{} action or any vote on an \Info{}
      action will be rejected.
\item \Qfour{}, \Pfive{} and \Qfivee{} are set to $0$.
\item An SPO that does not vote is assumed to have voted \abstain{}.
\end{itemize}

This allows for a governance mechanism similar to the old, Shelley-era
governance during the bootstrap phase, where the constitutional
committee is mostly in charge (see~\cite{shelley-delegation-design}).
These restrictions will be removed during a subsequent hard fork,
once enough DRep stake is present in the system to properly govern
and secure itself.
