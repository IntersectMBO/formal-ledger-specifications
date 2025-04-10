\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Chain.Properties.ActionDepsEqualActionsProp
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where
\end{code}

\begin{claim}[%
  \LedgerMod{Ledger.Chain.Properties.ActionDepsEqualActionsProp.lagda}{\AgdaModule{ActionDepsEqualActionsProp}}:
  Equality of action deposits and action proposals is a \CHAIN{} invariant%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
  \begin{verbatim}
    ChainInvariant action-deposits ≡ actions-prop
  \end{verbatim}
% \begin{AgdaMultiCode}
% \begin{code}
% -- formal statement and proof go here
% \end{code}
% \end{AgdaMultiCode}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{Ledger.Chain.Properties.ActionDepsEqualActionsProp.lagda}{\AgdaModule{ActionDepsEqualActionsProp}} module
      of the \href{\repourl}{formal ledger GitHub repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item TODO
      \end{enumerate}
  \end{itemize}
\end{claim}

