\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Utxo.Properties.PoV
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\thismodpath}{Utxo/Properties/PoV}

\begin{code}[hide]
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs using (φ; module DepositHelpers)
open UTxOState; open Tx; open TxBody
\end{code}

\begin{property}[%
  \LedgerMod{\thismodpath{}.lagda}{\AgdaModule{\thismodpath{}}}:
  \UTXO{} rule preserves value;
  \textbf{proved}%
  ]\
  \begin{itemize}
    \item \textit{Informally}.
      Let \ab{tx}~:~\Tx{} be a transaction, with withdrawals in the amount of
      \ab{txwdrls}, and let \ab{s}, \ab{s'} be \UTxOState{}s.
      Suppose the \AgdaField{txid} of \ab{tx} is not in the
      the domain of the \UTxO{} map of \ab{s} and suppose
      \ab{s}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,UTXO⦈}~\ab{s'}.  Then,
      the value of \ab{s} plus the value of the withdrawals in \ab{tx} (if \ab{tx} is valid) is equal to the
      value of \ab{s'}.  In other terms,
      \\[4pt]
      \AgdaFunction{getCoin}~\ab{s}
      + \AgdaFunction{φ}(\AgdaFunction{getCoin} \ab{txwdrls} , \ab{tx}~.\AgdaField{isValid})
      $≡$ \AgdaFunction{getCoin} \ab{s'}.
    \item \textit{Formally}.
\begin{code}
UTXOpov :  {Γ : UTxOEnv}
           {tx : Tx}
           {s s' : UTxOState}
           → tx .body .txid ∉ mapˢ proj₁ (dom (s .utxo))
           → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
           → getCoin s + φ(getCoin (tx .body .txwdrls) , tx .isValid) ≡ getCoin s'
\end{code}
  \item \textit{Proof}. See the
  \LedgerMod{\thismodpath{}.lagda}{\AgdaModule{\thismodpath{}}} module
  in the \href{\repourl}{formal ledger GitHub repository}.
\begin{code}[hide]
-- Proof.
UTXOpov h' step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , valid)))
  = DepositHelpers.pov-scripts step h' refl valid

UTXOpov h' step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , invalid)))
  = DepositHelpers.pov-no-scripts step h' invalid
\end{code}
  \item \textit{Remarks}.
    \begin{enumerate}
      \item The \ab{utxo}~:~\UTxO{} field of a \UTxOState{} is a map from \TxIn{} to \TxOut{}.
      \item The domain type of \ab{utxo}, \TxIn{}, is a pair of type \TxId{} × \Ix{}.
      \item The present property is an equation relating the coin balance of \ab{s} to
        that of another \UTxOState{} \ab{s'} under the following hypotheses:
        \begin{itemize}
          \item the \AgdaField{txid} of the transaction \ab{tx} is not in the
            (first projection of) the domain of the \UTxO{} map of \ab{s};
          \item \ab{s} and \ab{s'} are related by the \UTXO{} rule; specifically,
            \ab{s}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,UTXO⦈}~\ab{s'}.
        \end{itemize}
      \item The equation involves a function \ab{φ}~:~$ℕ$~×~\AgdaDatatype{Bool}~→~$ℕ$
        defined as follows:\\[4pt]
        \(
          φ (n , b) = \left\{
            \begin{array}{ll}
              n & \text{if } b = \mbox{true}, \\
              0 & \text{if } b = \mbox{false}.
            \end{array}\right.
        \)     
    \end{enumerate}
  \end{itemize}
\end{property}
