\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.Chain.Properties.EpochStep
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Chain txs abs
open import Ledger.Conway.Enact govStructure
open import Ledger.Conway.Epoch txs abs
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
      Let \AgdaBound{cs} and \AgdaBound{cs'} be \ChainState{}s and \AgdaBound{b} a \Block{}.
      If \AgdaBound{cs}~\AgdaDatatype{⇀⦇}~\AgdaBound{b}~\AgdaDatatype{,CHAIN⦈}~\AgdaBound{cs'}
      and if the enact states of \AgdaBound{cs} and \AgdaBound{cs'} differ, then
      the epoch of the slot of \AgdaBound{b} is the successor of the last epoch of \AgdaBound{cs}.
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
      module of the \href{https://github.com/IntersectMBO/formal-ledger-specifications}{formal ledger repository}).
  \end{itemize}
\end{claim}
