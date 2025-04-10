\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Chain.Properties.DomRwdsEqualCredDeps
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where
\end{code}

\begin{claim}[%
  \LedgerMod{Ledger.Chain.Properties.DomRwdsEqualCredDeps.lagda}{\AgdaModule{DomRwdsEqualCredDeps}}:
  Equality of rewards and credential depsoits is a \CHAIN{} invariant%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
  \begin{verbatim}
    ChainInvariant dom-rwds≡credDeposits
  \end{verbatim}
% \begin{AgdaMultiCode}
% \begin{code}
% -- formal statement and proof go here
% \end{code}
% \end{AgdaMultiCode}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{Ledger.Chain.Properties.DomRwdsEqualCredDeps.lagda}{\AgdaModule{DomRwdsEqualCredDeps}} module
      of the \href{\repourl}{formal ledger repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item TODO
      \end{enumerate}
  \end{itemize}
\end{claim}
