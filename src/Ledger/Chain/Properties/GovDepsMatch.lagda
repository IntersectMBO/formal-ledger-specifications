\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (map) renaming (mapˢ to map)
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Chain.Properties.GovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropGov}{Chain/Properties/GovDepsMatch}

\begin{code}[hide]
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Ledger.Properties txs abs
open import Ledger.Ledger.Properties.GovDepsMatch txs abs
open import Ledger.Epoch.Properties.GovDepsMatch txs abs
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure

-- GA Deposits Invariance Property for CHAIN STS -----------------------------------------------
module _
  { b   : Block }
  { nes : NewEpochState}
  { cs  : ChainState}
  where
  open Block b; open ChainState cs
  open NewEpochState newEpochState hiding (lastEpoch) renaming (epochState to csEpochState)
  open NewEpochState nes renaming (epochState to nesEpochState; lastEpoch to nesLastEpoch; ru to nesRu)
  open EpochState nesEpochState renaming (ls to nesLState) 
  open EPOCH-Body csEpochState renaming (epsLState to csLState)
  open EnactState ens using (pparams)
  open LState
  pp = pparams .proj₁
\end{code}

\begin{theorem}[%
  \LedgerMod{\ChainPropGov.lagda}{\AgdaModule{\ChainPropGov{}}}:
  \AgdaFunction{govDepsMatch} is invariant of \CHAIN{} rule%
  ]\
  \label{thm:ChainGovDepsMatch}

  \begin{itemize}
    \item \textit{Informally}.
      Fix a \Block{} \ab{b}, a \NewEpochState{} \ab{nes}, and a \ChainState{} \ab{cs}.
      Let the \AgdaField{lastEpoch}, \AgdaField{ls}, and \AgdaField{ru}
      fields of \ab{nes} be denoted by \AgdaFunction{nesLastEpoch}, \AgdaFunction{nesLState}, and
      \AgdaFunction{nesRu}, respectively. Let \AgdaFunction{csLState} be the ledger state of \ab{cs}.
      \\[4pt]
      Recall, a \ChainState{} has just one field, a \NewEpochState{}.
      Consider the chain state defined as follows:
\begin{code}
  cs' : ChainState
  cs' .newEpochState = record { lastEpoch   = nesLastEpoch
                              ; epochState  = record csEpochState {ls = nesLState}
                              ; ru          = nesRu }
\end{code}
      That is \AgdaFunction{cs'} is essentially \ab{nes}, but the \EpochState{} \textit{field} is
      set to the \AgdaField{epochState} of \ab{cs} with the exception of the
      \LState{} \textit{field}, which is set to that of \ab{nes}.  Keep in mind that
      the ledger state of \AgdaFunction{cs} is \AgdaFunction{nesLState}.
      \\[4pt]
      Let \ab{utxoSt} and \ab{utxoSt'} be the respective \UTxOState{}s of the ledger
      states of \ab{cs} and \AgdaFunction{cs'}, respectively, and let \ab{govSt} and \ab{govSt'}
      be their respective \GovState{}s.
      \\[4pt]
      Assume the following conditions hold:
      \begin{itemize}
      \item the \ab{ratify-removed} hypothesis (described in \cref{thm:EpochGovDepsMatch});
      \item the total reference script size of \ab{csLState} is not greater than the
        maximum allowed size per block (as specified in \PParams{}),
      \item \ab{cs}~\AgdaDatatype{⇀⦇}~\ab{b}~\AgdaDatatype{,CHAIN⦈}~\AgdaFunction{cs'}. 
      \end{itemize}
      Under these conditions, if the governance action deposits of \ab{utxoSt}
      equal those of \ab{govSt}, then the same holds for \ab{utxoSt'} and \ab{govSt'}.
      In other terms,
      \AgdaFunction{govDepsMatch}~\AgdaFunction{csLState} implies \AgdaFunction{govDepsMatch}~\AgdaFunction{nesState}.
    \item \textit{Formally}.
\begin{code}
  CHAIN-govDepsMatch :
    map (GovActionDeposit ∘ proj₁) removed' ⊆ map proj₁ (csLState .utxoSt .deposits ˢ)
    →  totalRefScriptsSize csLState ts ≤ (PParams.maxRefScriptSizePerBlock pp)
    →  tt ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
    →  govDepsMatch csLState → govDepsMatch nesLState
\end{code}
    \item \textit{Proof}.  See the
      \LedgerMod{\ChainPropGov.lagda}{\AgdaModule{\ChainPropGov{}}}
       module in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
  -- Proof.
  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-New (_ , eps₁→eps₂)) ledgers) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch {ratify-removed = rrm} eps₁→eps₂

  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-Not-New _) ledgers) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers

  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-No-Reward-Update (_ , eps₁→eps₂)) ledgers) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch {ratify-removed = rrm} eps₁→eps₂
\end{code}
  \end{itemize}
\end{theorem}
