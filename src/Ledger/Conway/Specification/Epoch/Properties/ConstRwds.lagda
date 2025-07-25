\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.ConstRwds
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Prelude

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\EpochPropConstRwds}{Conway/Epoch/Properties/ConstRwds}


\begin{claim}[%
  \LedgerMod{\EpochPropConstRwds.lagda}{\AgdaModule{\EpochPropConstRwds{}}}:
  \NEWEPOCH{} rule leaves rewards unchanged%
  ]
  \begin{itemize}
    \item \textit{Informally}. Rewards are left unchanged by the \NEWEPOCH{}
      rule.  That is, if \ab{es} and \ab{es'} are two \NewEpochState{}s such that
      \ab{es}~\AgdaDatatype{⇀⦇}~\ab{e}~\AgdaDatatype{,NEWEPOCH⦈}~\ab{es'}, then the
      rewards of \ab{es} and \ab{es'} are equal.
    \item \textit{Formally}.  
\begin{code}
dom-rwds-const : {e : Epoch} (es es' : NewEpochState)
  → _ ⊢ es ⇀⦇ e ,NEWEPOCH⦈ es' → Type

dom-rwds-const es es' step = dom (RewardsOf es) ≡ dom (RewardsOf es')
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\EpochPropConstRwds.lagda}{\AgdaModule{\EpochPropConstRwds{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}
