\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.Utxo.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\UtxoPoV}{Conway/Utxo/Properties/PoV}

\begin{code}[hide]
open import Ledger.Conway.Certs govStructure
open import Ledger.Prelude
open import Ledger.Conway.Utxo txs abs
open import Ledger.Conway.Utxo.Properties txs abs using (χ; module DepositHelpers)
open UTxOState; open Tx; open TxBody
\end{code}

\begin{lemma}[\LedgerMod{\UtxoPoV.lagda}{\AgdaModule{\UtxoPoV{}}}: \UTXO{} rule preserves value]
  \begin{itemize}
    \item \textit{Informally}.
    Let \AgdaBound{s} and \AgdaBound{s'} be \UTxOState{}s, let \AgdaBound{tx}~:~\Tx{} be
    a fresh transaction with withdrawals \AgdaBound{txwdrls}, and suppose
    \AgdaBound{s}~\AgdaDatatype{⇀⦇}~\AgdaBound{tx}~\AgdaDatatype{,UTXO⦈}~\AgdaBound{s'}.
    If \AgdaBound{tx} is valid, then the coin value of \AgdaBound{s'} is equal to the sum of the
    coin values of \AgdaBound{s} and \AgdaBound{txwdrls}.  If \AgdaBound{tx} is not valid, then the coin
    values of \AgdaBound{s} and \AgdaBound{s'} are equal.
    We can express this concisely as follows:
    \[\mbox{\AgdaField{getCoin}~\AgdaBound{s}} + \mbox{\AgdaField{getCoin}~\AgdaBound{txwdrls}}
      · \mbox{\AgdaFunction{χ}} (\mbox{\AgdaBound{tx}~.\AgdaField{isValid}})
      ≡ \mbox{\AgdaField{getCoin} \AgdaBound{s'}},\]
    where $χ~:~\AgdaDatatype{Bool}~→~{0, 1}$ is the \textit{characteristic function},
    which returns 0 for false and 1 for true.
    \item \textit{Formally}.
\begin{code}
UTXOpov : {Γ : UTxOEnv} {tx : Tx} {s s' : UTxOState}
  → txidOf tx ∉ mapˢ proj₁ (dom (UTxOOf s))
  → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
  → getCoin s + getCoin (wdrlsOf tx) * χ (tx .isValid) ≡ getCoin s'
\end{code}
  \item \textit{Proof}. See the
  \LedgerMod{\UtxoPoV.lagda}{\AgdaModule{\UtxoPoV{}}} module
  in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
-- Proof.
UTXOpov h' step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , valid)))
  = DepositHelpers.pov-scripts step h' refl valid

UTXOpov h' step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , invalid)))
  = DepositHelpers.pov-no-scripts step h' invalid
\end{code}
  \end{itemize}
\end{lemma}
