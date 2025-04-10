\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.PParams.Properties.PParamsWellFormed
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where
\end{code}

\begin{property}[%
  \LedgerMod{PParams/Properties/PParamsWellFormed.lagda}{\AgdaModule{PParamsWellFormed}}:
  \PParams{} are well-formed;
  \textbf{to prove}%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
  \begin{verbatim}
    paramsWellFormed (pparams' .proj₁)
  \end{verbatim}
% \begin{AgdaMultiCode}
% \begin{code}
% -- formal statement and proof go here
% \end{code}
% \end{AgdaMultiCode}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{PParams/Properties/PParamsWellFormed.lagda}{\AgdaModule{PParamsWellFormed}} module
      of the \href{\repourl}{formal ledger GitHub repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item TODO
      \end{enumerate}
  \end{itemize}
\end{property}
