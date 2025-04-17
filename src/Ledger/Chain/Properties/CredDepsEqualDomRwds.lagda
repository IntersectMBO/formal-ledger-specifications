\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Chain.Properties.CredDepsEqualDomRwds
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Certs govStructure
open import Ledger.Chain txs abs
open import Ledger.Prelude
open import Ledger.Properties txs abs

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropCredDeps}{Chain/Properties/CredDepsEqualDomRwds}

\begin{claim}[%
  \LedgerMod{\ChainPropCredDeps.lagda}{\AgdaModule{\ChainPropCredDeps{}}}:
  Equality of credential depsoits%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
\begin{code}
dom-rwds≡credDeposits : ChainState → Type
dom-rwds≡credDeposits cs = filterˢ isCredDeposit (dom (Chain-Deposits cs))
  ≡ mapˢ CredentialDeposit (dom (Chain-Rewards cs))
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChainPropCredDeps.lagda}{\AgdaModule{\ChainPropCredDeps{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}

\begin{claim}[%
  \LedgerMod{\ChainPropCredDeps.lagda}{\AgdaModule{\ChainPropCredDeps{}}}:
  Equality of credential depsoits is a \CHAIN{} invariant%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
\begin{code}
dom-rwds≡credDeposits-inv : Type
dom-rwds≡credDeposits-inv = LedgerInvariant _⊢_⇀⦇_,CHAIN⦈_ dom-rwds≡credDeposits
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChainPropCredDeps.lagda}{\AgdaModule{\ChainPropCredDeps{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}


