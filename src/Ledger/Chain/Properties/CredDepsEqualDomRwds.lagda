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
open import Ledger.Interface.HasLedgerField txs abs

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropCredDeps}{Chain/Properties/CredDepsEqualDomRwds}

\begin{claim}[%
  \LedgerMod{\ChainPropCredDeps.lagda}{\AgdaModule{\ChainPropCredDeps{}}}:
  Equality of credential depsoits is a \CHAIN{} invariant%
  ]\

  \begin{itemize}
    \item \textit{Informally}.  This property concerns two quantities associated with
    a given \ChainState{} \ab{cs}: the credential deposits of the \UTxOState{} of \ab{cs} and
    the credential deposits of the rewards in the ledger state of \ab{cs}.
    The predicate \AgdaFunction{credDeposits≡dom-rwds}~\ab{cs} asserts that these
    quantities are equal for \ab{cs}.  Formally,
\begin{code}
credDeposits≡dom-rwds : ChainState → Type
credDeposits≡dom-rwds cs =  filterˢ isCredDeposit (dom (DepositsOf cs))
                            ≡ mapˢ CredentialDeposit (dom (RewardsOf cs))
\end{code}
    The property
    \AgdaFunction{credDeposits≡dom-rwds-inv} asserts that
    \AgdaFunction{credDeposits≡dom-rwds} is a chain invariant.  That is, if \ab{cs}
    and \ab{cs'} are two \ChainState{}s such that
    \ab{cs}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,CHAIN⦈}~\ab{cs'},
    then \AgdaFunction{credDeposits≡dom-rwds}~\ab{cs} only if
    \AgdaFunction{credDeposits≡dom-rwds}~\ab{cs'}.
    \item \textit{Formally}.
\begin{code}    
credDeposits≡dom-rwds-inv : Type
credDeposits≡dom-rwds-inv = LedgerInvariant _⊢_⇀⦇_,CHAIN⦈_ credDeposits≡dom-rwds
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChainPropCredDeps.lagda}{\AgdaModule{\ChainPropCredDeps{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}


