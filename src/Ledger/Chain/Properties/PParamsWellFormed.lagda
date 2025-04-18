\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Chain.Properties.PParamsWellFormed
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Chain txs abs
open import Ledger.Prelude
open import Ledger.Interface.HasLedgerField txs abs

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropWF}{Chain/Properties/PParamsWellFormed}


\begin{claim}[%
  \LedgerMod{\ChainPropWF.lagda}{\AgdaModule{\ChainPropWF{}}}:
  Well-formedness of \PParams{} is a \CHAIN{} invariant%
  ]
  \begin{itemize}
    \item \textit{Informally}. We say the \PParams{} of a chain state are \textit{well-formed} if
    each of the following parameters is non-zero:
    maxBlockSize, maxTxSize, maxHeaderSize, maxValSize, refScriptCostStride, coinsPerUTxOByte,
    poolDeposit, collateralPercentage, ccMaxTermLength, govActionLifetime,
    govActionDeposit, drepDeposit.  Formally,
\begin{code}
pp-wellFormed : ChainState → Type
pp-wellFormed = paramsWellFormed ∘ getPParams
\end{code}
      This property asserts that \AgdaFunction{pp-wellFormed} is a chain invariant.
      That is, if \ab{cs} and \ab{cs'} are chain states such that
      \ab{cs}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,CHAIN⦈}~\ab{cs'}, and if
      the \PParams{} of \ab{cs} are well-formed, then so are the \PParams{} of \ab{cs'}.
    \item \textit{Formally}.  
\begin{code}
pp-wellFormed-invariant : Type
pp-wellFormed-invariant = LedgerInvariant _⊢_⇀⦇_,CHAIN⦈_ pp-wellFormed
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChainPropWF.lagda}{\AgdaModule{\ChainPropWF{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}
