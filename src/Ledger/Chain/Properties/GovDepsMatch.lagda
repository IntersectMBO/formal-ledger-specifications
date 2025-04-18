\begin{code}[hide]
{-# OPTIONS --safe #-}

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
open import Ledger.Certs govStructure
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Epoch.Properties.GovDepsMatch txs abs
open import Ledger.Ledger.Properties txs abs
open import Ledger.Ledger.Properties.GovDepsMatch txs abs
open import Ledger.Prelude hiding (map) renaming (mapˢ to map)
open import Ledger.Interface.HasLedgerField txs abs

module _
  { b   : Block }
  { nes : NewEpochState}
  { cs  : ChainState}
  where
  open Block b; open ChainState cs
  open NewEpochState -- nes renaming (epochState to nesEpochState; lastEpoch to nesLastEpoch; ru to nesRu)
  open EPOCH-Body (getEpochState cs) renaming (epsLState to csLState)
  open EnactState ens using (pparams)
  pp = pparams .proj₁
  open PParams pp using (maxRefScriptSizePerBlock)
\end{code}

\begin{theorem}[%
  \LedgerMod{\ChainPropGov.lagda}{\AgdaModule{\ChainPropGov{}}}:
  \AgdaFunction{govDepsMatch} is invariant of \CHAIN{} rule%
  ]\
  \label{thm:ChainGovDepsMatch}

  \begin{itemize}
    \item \textit{Informally}.
      Fix a \Block{} \ab{b}, a \ChainState{} \ab{cs}, and a \NewEpochState{} \ab{nes}.
      Let \AgdaFunction{csLState} be the ledger state of \ab{cs}.
      Recall, a \ChainState{} has just one field, \AgdaField{newEpochState}~:~\NewEpochState{}.
      Consider the chain state \AgdaFunction{cs'} defined as follows:
\begin{code}
  cs' : ChainState
  cs' .newEpochState =
    record { lastEpoch   = nes .lastEpoch
           ; epochState  = record (getEpochState cs) {ls = getLState nes}
           ; ru          = nes .ru }
\end{code}
      That is \AgdaFunction{cs'} is essentially \ab{nes}, but the \EpochState{} field is
      set to the \AgdaField{epochState} of \ab{cs} with the exception of the
      \LState{} field, which is set to that of \ab{nes}.
      \\[4pt]
      Let \ab{utxoSt} and \ab{utxoSt'} be the respective \UTxOState{}s of the ledger
      states of \ab{cs} and \AgdaFunction{cs'}, respectively, and let \ab{govSt} and \ab{govSt'}
      be their respective \GovState{}s.
      \\[4pt]
      Assume the following conditions hold:
      \begin{itemize}
      \item the \ab{ratify-removed} hypothesis (described in \cref{lem:EpochGovDepsMatch});
      \item the total reference script size of \AgdaFunction{csLState} is not greater than the
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
    map (GovActionDeposit ∘ proj₁) removed' ⊆ map proj₁ (getDeposits cs ˢ)
    →  totalRefScriptsSize csLState ts ≤ maxRefScriptSizePerBlock
    →  tt ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
    →  govDepsMatch csLState → govDepsMatch (getLState nes)
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
