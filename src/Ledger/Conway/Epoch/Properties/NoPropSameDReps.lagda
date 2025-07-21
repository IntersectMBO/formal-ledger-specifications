\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Transaction
open import Ledger.Conway.Abstract

module Ledger.Conway.Epoch.Properties.NoPropSameDReps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Epoch txs abs
open import Ledger.Conway.Gov txs
open import Ledger.Prelude
open import Ledger.Conway.Properties txs abs
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\EpochPropConstDReps}{Conway/Epoch/Properties/NoPropSameDReps}


\begin{claim}[%
  \LedgerMod{\EpochPropConstDReps.lagda}{\AgdaModule{\EpochPropConstDReps{}}}:
  DReps unchanged if no gov proposals%
  ]
  \begin{itemize}
    \item \textit{Informally}. 
      If there are no governance proposals in the \GovState{} of \AgdaBound{es}, then the
      \AgdaField{activeDReps} of \AgdaBound{es} in \Epoch{} \AgdaBound{e} are the same as the
      \AgdaField{activeDReps} of \AgdaBound{es'} in the next epoch.
    \item \textit{Formally}.  
\begin{code}
prop≡∅⇒activeDReps-const : Epoch → (es es' : NewEpochState) → Type
prop≡∅⇒activeDReps-const e es es' =
  GovStateOf es ≡ [] → activeDReps e es ≡ᵉ activeDReps (sucᵉ e) es'
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\EpochPropConstDReps.lagda}{\AgdaModule{\EpochPropConstDReps{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}
