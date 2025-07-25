\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Chain.Properties.EpochStep
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Prelude
open Block

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropEpoch}{Conway/Chain/Properties/EpochStep}

\begin{claim}[%
  \LedgerMod{\ChainPropEpoch.lagda}{\AgdaModule{\ChainPropEpoch{}}}:
  New enact state only if new epoch%
  ]\

  \begin{itemize}
    \item \textit{Informally}.
      Let \ab{cs} and \ab{cs'} be \ChainState{}s and \ab{b} a \Block{}.
      If \ab{cs}~\AgdaDatatype{⇀⦇}~\ab{b}~\AgdaDatatype{,CHAIN⦈}~\ab{cs'}
      and if the enact states of \ab{cs} and \ab{cs'} differ, then
      the epoch of the slot of \ab{b} is the successor of the last epoch of \ab{cs}.
    \item \textit{Formally}.
\begin{AgdaMultiCode}
\begin{code}
enact-change⇒newEpoch : (b : Block) {cs cs'  : ChainState} 
  → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs' → EnactStateOf cs ≢ EnactStateOf cs'
  → Type

enact-change⇒newEpoch b {cs} h es≢es' = epoch (b .slot) ≡ sucᵉ (LastEpochOf cs) 
\end{code}
\end{AgdaMultiCode}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChainPropEpoch.lagda}{\AgdaModule{\ChainPropEpoch{}}}
      module of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}
