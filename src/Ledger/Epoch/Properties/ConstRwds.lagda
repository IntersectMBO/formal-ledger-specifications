\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Epoch.Properties.ConstRwds
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Epoch txs abs
open import Ledger.Prelude
open import Ledger.Interface.HasLedgerField txs abs

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\EpochPropConstRwds}{Epoch/Properties/ConstRwds}


\begin{claim}[%
  \LedgerMod{\EpochPropConstRwds.lagda}{\AgdaModule{\EpochPropConstRwds{}}}:
  \NEWEPOCH{} rule leaves rewards unchanged%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
\begin{code}
dom-rwds-const : {e : Epoch} (es es' : NewEpochState)
  → _ ⊢ es ⇀⦇ e ,NEWEPOCH⦈ es' → Type

dom-rwds-const es es' step =
  dom (getRewards es) ≡ dom (getRewards es')
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\EpochPropConstRwds.lagda}{\AgdaModule{\EpochPropConstRwds{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}
