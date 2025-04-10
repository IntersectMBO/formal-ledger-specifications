\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Chain.Properties.PParamsWellFormed
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where
\end{code}

\begin{property}[%
  \LedgerMod{Chain/Properties/PParamsWellFormed.lagda}{\AgdaModule{PParamsWellFormed}}:
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
      \LedgerMod{Chain/Properties/PParamsWellFormed.lagda}{\AgdaModule{PParamsWellFormed}} module
      of the \href{\repourl}{formal ledger GitHub repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item TODO
      \end{enumerate}
  \end{itemize}
\end{property}


\begin{property}[%
  \LedgerMod{Ledger.Chain.Properties.PParamsWellFormed.lagda}{\AgdaModule{PParamsWellFormed}}:
  Well-formedness of \PParams{} is a \CHAIN{} invariant;
  \textbf{to prove}%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
  \begin{verbatim}
    ChainInvariant pp-wellFormed
  \end{verbatim}
% \begin{AgdaMultiCode}
% \begin{code}
% -- formal statement and proof go here
% \end{code}
% \end{AgdaMultiCode}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{Ledger.Chain.Properties.PParamsWellFormed.lagda}{\AgdaModule{PParamsWellFormed}} module
      of the \href{\repourl}{formal ledger GitHub repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item TODO
      \end{enumerate}
  \end{itemize}
\end{property}
