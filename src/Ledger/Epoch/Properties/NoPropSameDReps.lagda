\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Epoch.Properties.NoPropSameDReps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Epoch txs abs
open import Ledger.Prelude
open import Ledger.Properties txs abs

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\EpochPropConstDReps}{Epoch/Properties/NoPropSameDReps}


\begin{claim}[%
  \LedgerMod{\EpochPropConstDReps.lagda}{\AgdaModule{\EpochPropConstDReps{}}}:
  DReps unchanged if no gov proposals%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
\begin{code}
prop≡∅⇒activeDReps-const : Epoch → (es es' : NewEpochState) → Type
prop≡∅⇒activeDReps-const e es es' = NewEpochState-GovState es ≡ [] → activeDReps e es ≡ᵉ activeDReps (sucᵉ e) es'
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\EpochPropConstDReps.lagda}{\AgdaModule{\EpochPropConstDReps{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}
