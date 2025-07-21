\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.Chain.Properties.CredDepsEqualDomRwds
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Certs govStructure
open import Ledger.Conway.Chain txs abs
open import Ledger.Prelude hiding (map) renaming (mapˢ to map; filterˢ to filter)
open import Ledger.Conway.Properties txs abs

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropCredDeps}{Conway/Chain/Properties/CredDepsEqualDomRwds}

\begin{claim}[%
  \LedgerMod{\ChainPropCredDeps.lagda}{\AgdaModule{\ChainPropCredDeps{}}}:
  Equality of credential depsoits is a \CHAIN{} invariant%
  ]
  \begin{itemize}
    \item \textit{Informally}.  This property concerns two quantities associated with
    a given \ChainState{} \AgdaBound{cs},
    \begin{itemize}
      \item the credential deposits of the \UTxOState{} of \AgdaBound{cs} and
      \item the credential deposits of the rewards in the ledger state of \AgdaBound{cs}.
    \end{itemize}
    The predicate \AgdaFunction{credDeposits≡dom-rwds}~\AgdaBound{cs} asserts that these
    quantities are equal for \AgdaBound{cs}.  Formally,
\begin{code}
credDeposits≡dom-rwds : ChainState → Type
credDeposits≡dom-rwds cs =  filter isCredDeposit (dom (DepositsOf cs))
                            ≡ map CredentialDeposit (dom (RewardsOf cs))
\end{code}
    The property
    \AgdaFunction{credDeposits≡dom-rwds-inv} asserts that
    \AgdaFunction{credDeposits≡dom-rwds} is a chain invariant.  That is, if \AgdaBound{cs}
    and \AgdaBound{cs'} are two \ChainState{}s such that
    \AgdaBound{cs}~\AgdaDatatype{⇀⦇}~\AgdaBound{tx}~\AgdaDatatype{,CHAIN⦈}~\AgdaBound{cs'},
    then \AgdaFunction{credDeposits≡dom-rwds}~\AgdaBound{cs} only if
    \AgdaFunction{credDeposits≡dom-rwds}~\AgdaBound{cs'}.
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


