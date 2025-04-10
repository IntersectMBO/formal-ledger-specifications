\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Chain.Properties.EpochStep
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropEpoch}{Chain/Properties/EpochStep}

\begin{property}[%
  \LedgerMod{\ChainPropEpoch{}.lagda}{\AgdaModule{\ChainPropEpoch{}}}:
  Chain state epoch step;
  \textbf{to prove}%
  ]\

  \begin{itemize}
    \item \textit{Informally}.
      Let

      \(\begin{array}{rcl}
        \ab{s}&=&\text{a \AgdaRecord{ChainState}},\\
        \ab{nes}&=&\text{the \AgdaField{newEpochState} of \ab{s}},\\
        \ab{es}&=&\text{the \AgdaField{epochState} of \ab{nes} (= the \AgdaField{epochState} of \ab{s})},\\
        \ab{le}&=&\text{the \AgdaField{lastEpoch} of \ab{nes}}.
      \end{array}\)

      Suppose there exists a chain state \ab{s'} with \AgdaField{epochState} \ab{es'} such that
      \ab{s} \AgdaDatatype{⇀⦇}~\ab{b}~\AgdaDatatype{,CHAIN⦈}~\ab{s'}.  Then the following
      implication holds: if \(\ab{es} ≢ \ab{es'}\), then the epoch of the slot of \ab{b} is
      \AgdaFunction{sucᵉ}~\ab{le} (where \AgdaFunction{sucᵉ} is the epoch successor function). 
    \item \textit{Formally}.  TODO
% \begin{AgdaMultiCode}
% \begin{code}
% -- formal statement and proof go here
% \end{code}
% \end{AgdaMultiCode}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChainPropEpoch{}.lagda}{\AgdaModule{\ChainPropEpoch{}}}
      module of the \href{\repourl}{formal ledger GitHub repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item The \ab{utxo}~:~\UTxO field of a \UTxOState{} is a map from \TxIn{} to \TxOut{}.
      \end{enumerate}
  \end{itemize}
\end{property}
