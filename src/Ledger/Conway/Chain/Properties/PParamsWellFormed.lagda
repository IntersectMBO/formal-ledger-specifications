\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.Chain.Properties.PParamsWellFormed
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Chain txs abs
open import Ledger.Prelude

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropWF}{Conway/Chain/Properties/PParamsWellFormed}


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
pp-wellFormed = paramsWellFormed ∘ PParamsOf
\end{code}
      This property asserts that \AgdaFunction{pp-wellFormed} is a chain invariant.
      That is, if \AgdaBound{cs} and \AgdaBound{cs'} are chain states such that
      \AgdaBound{cs}~\AgdaDatatype{⇀⦇}~\AgdaBound{tx}~\AgdaDatatype{,CHAIN⦈}~\AgdaBound{cs'}, and if
      the \PParams{} of \AgdaBound{cs} are well-formed, then so are the \PParams{} of \AgdaBound{cs'}.
    \item \textit{Formally}.
\begin{code}
pp-wellFormed-invariant : Type
pp-wellFormed-invariant = LedgerInvariant _⊢_⇀⦇_,CHAIN⦈_ pp-wellFormed
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChainPropWF.lagda}{\AgdaModule{\ChainPropWF{}}} module
      of the \href{https://github.com/IntersectMBO/formal-ledger-specifications}{formal ledger repository}).
  \end{itemize}
\end{claim}
