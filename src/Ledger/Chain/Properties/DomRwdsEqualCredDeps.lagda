\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Chain.Properties.DomRwdsEqualCredDeps
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Ledger txs abs
open import Ledger.Properties txs abs
open import Ledger.Utxo txs abs
open import Ledger.Epoch txs abs
open import Ledger.Certs govStructure

\end{code}

\begin{claim}[%
  \LedgerMod{Ledger.Chain.Properties.DomRwdsEqualCredDeps.lagda}{\AgdaModule{DomRwdsEqualCredDeps}}:
  Equality of rewards and credential depsoits is a \CHAIN{} invariant%
  ]\

  \begin{itemize}
    \item \textit{Informally}. TODO
    \item \textit{Formally}.  
  \begin{verbatim}
    ChainInvariant dom-rwds≡credDeposits
  \end{verbatim}
\begin{code}
module _ (s : ChainState) where
  open ChainState s; open NewEpochState newEpochState; open EpochState epochState
  open LState ls
  
  -- PROPERTY (TO PROVE) --
  open EnactState es renaming (pparams to pparams')
  open CertState certState; open DState dState
  dom-rwds≡credDeposits : Type
  dom-rwds≡credDeposits = filterˢ isCredDeposit (dom (UTxOState.deposits utxoSt))
    ≡ mapˢ CredentialDeposit (dom rewards)

-- PROPERTY (TO PROVE) --
dom-rwds≡credDeposits-inv : Type
dom-rwds≡credDeposits-inv = LedgerInvariant _⊢_⇀⦇_,CHAIN⦈_ dom-rwds≡credDeposits
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{Ledger.Chain.Properties.DomRwdsEqualCredDeps.lagda}{\AgdaModule{DomRwdsEqualCredDeps}} module
      of the \href{\repourl}{formal ledger repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item TODO
      \end{enumerate}
  \end{itemize}
\end{claim}
