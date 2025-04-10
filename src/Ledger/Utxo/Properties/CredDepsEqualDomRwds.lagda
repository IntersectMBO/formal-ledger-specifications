\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Utxo.Properties.CredDepsEqualDomRwds
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where
\end{code}

\begin{property}[%
  \LedgerMod{Utxo/Properties/CredDepsEqualDomRwds.lagda}{\AgdaModule{CredDepsEqualDomRwds}}:
  Credential deposits equal domain of rewards;
  \textbf{to prove}%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
  \begin{verbatim}
    filterˢ isCredDeposit (dom (UTxOState.deposits utxoSt)) 
      ≡ mapˢ CredentialDeposit (dom rewards)
  \end{verbatim}
% \begin{AgdaMultiCode}
% \begin{code}
% -- formal statement and proof go here
% \end{code}
% \end{AgdaMultiCode}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{Utxo/Properties/CredDepsEqualDomRwds.lagda}{\AgdaModule{CredDepsEqualDomRwds}} module
      of the \href{\repourl}{formal ledger GitHub repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item TODO
      \end{enumerate}
  \end{itemize}
\end{property}

