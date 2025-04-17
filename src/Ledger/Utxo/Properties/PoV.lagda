\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxo.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\UtxoPoV}{Utxo/Properties/PoV}

\begin{code}[hide]
open import Ledger.Certs govStructure
open import Ledger.Prelude
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs using (φ; module DepositHelpers)
open UTxOState; open Tx; open TxBody
\end{code}

\begin{theorem}[%
  \LedgerMod{\UtxoPoV.lagda}{\AgdaModule{\UtxoPoV{}}}:
  \UTXO{} rule preserves value%
  ]\
  \begin{itemize}
    \item \textit{Informally}.
    Let \ab{s} and \ab{s'} be \UTxOState{}s, let \ab{tx}~:~\Tx{} be
    a fresh transaction with withdrawals \ab{txwdrls}, and suppose
    \ab{s}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,UTXO⦈}~\ab{s'}.
    If \ab{tx} is valid, then the coin value of \ab{s'} is equal to the sum of the
    coin values of \ab{s} and \ab{txwdrls}.  If \ab{tx} is not valid, then the coin
    values of \ab{s} and \ab{s'} are equal.  
    We can express this more formally as follows:
    \\[4pt]
    \AgdaField{getCoin}~\ab{s}
    + \AgdaFunction{φ}(\AgdaField{getCoin} \ab{txwdrls} , \ab{tx}~.\AgdaField{isValid})
    $≡$ \AgdaField{getCoin} \ab{s'},
    \\[4pt]
    where \AgdaFunction{φ}~:~$ℕ$~×~\AgdaDatatype{Bool}~→~$ℕ$ is the function that returns
    the first argument when the second argument is true, and returns zero when the second
    argument is false. That is,
        \[
          \mbox{\AgdaFunction{φ}} (n , b) = \left\{
            \begin{array}{ll}
              n & \text{if } b = \mbox{true}, \\
              0 & \text{if } b = \mbox{false}.
            \end{array}\right.
        \]     
    \item \textit{Formally}.
\begin{code}
UTXOpov : {Γ : UTxOEnv} {tx : Tx} {s s' : UTxOState}
  → tx .body .txid ∉ mapˢ proj₁ (dom (s .utxo))
  → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
  → getCoin s + φ(getCoin (tx .body .txwdrls) , tx .isValid) ≡ getCoin s'
\end{code}
  \item \textit{Proof}. See the
  \LedgerMod{\UtxoPoV.lagda}{\AgdaModule{\UtxoPoV{}}} module
  in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
-- Proof.
UTXOpov h' step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , valid)))
  = DepositHelpers.pov-scripts step h' refl valid

UTXOpov h' step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , invalid)))
  = DepositHelpers.pov-no-scripts step h' invalid
\end{code}
  \end{itemize}
\end{theorem}
