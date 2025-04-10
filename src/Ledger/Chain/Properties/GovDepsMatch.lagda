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
\end{code}

\begin{theorem}[%
  \LedgerMod{\ChainPropGov{}.lagda}{\AgdaModule{\ChainPropGov{}}}:
  \AgdaFunction{govDepsMatch} is invariant of \CHAIN{} rule%
  ]\

  \begin{itemize}
    \item \textit{Informally}.
      Fix a \ChainState{} \ab{cs} and let \ab{cs'} be the updated chain state,
      \ab{cs'} = \AgdaFunction{updateChainState}~\ab{cs}~\ab{nes}.
      Let \ab{csLStates} and \ab{csLStates'} be the respective ledger states of these
      chain states, let
      \ab{utxoSt} and \ab{utxoSt'} be the respective \UTxOState{}s of \ab{csLStates}
      and \ab{csLStates'} and let \ab{govSt} and \ab{govSt'} be their respective \GovState{}s.
      \\[4pt]
      Suppose that the conditions described above hold and that \ab{cs}~\AgdaDatatype{⇀⦇}~\ab{b}~\AgdaDatatype{,CHAIN⦈}~\ab{cs'}.
      If the governance action deposits of \ab{utxoSt} are the same as those
      of \ab{govSt}, then the same holds for \ab{utxoSt'} and \ab{govSt'}.
      In other terms,\\
      \AgdaFunction{govDepsMatch}~\ab{csLState} implies
      \AgdaFunction{govDepsMatch}~(\AgdaFunction{LStateOfCState}~\ab{cs'}).
    \item \textit{Formally}.
\begin{AgdaMultiCode}
\begin{code}
  { b   : Block }
  { cs  : ChainState}
\end{code}
\begin{code}[hide]
  where
  open Block b; open ChainState cs
  open NewEpochState newEpochState
  open EPOCH-Body epochState renaming (epsLState to csLState)
  open EnactState ens using (pparams)
  pp = pparams .proj₁
\end{code}
\begin{code}
  updateNewEpochState : ChainState → NewEpochState → NewEpochState
  updateNewEpochState s nes =
    record { lastEpoch   = NewEpochState.lastEpoch nes
           ; epochState  = record  (EStateOfCState s)
                                   { ls = EpochState.ls (NewEpochState.epochState nes) }
           ; ru          = NewEpochState.ru nes }

  updateChainState : ChainState → NewEpochState → ChainState
  updateChainState s nes = record { newEpochState = updateNewEpochState s nes}

  CHAIN-govDepsMatch :
      {nes  : NewEpochState}
      (let cs' = updateChainState cs nes)
      →  map (GovActionDeposit ∘ proj₁) removed'
         ⊆ map proj₁ (UTxOState.deposits (LState.utxoSt csLState) ˢ)
      →  totalRefScriptsSize csLState ts ≤ (PParams.maxRefScriptSizePerBlock pp)
      →  tt ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
      →  govDepsMatch csLState → govDepsMatch (LStateOfCState cs')
\end{code}
\end{AgdaMultiCode}
    \item \textit{Proof}.  See the
      \LedgerMod{\ChainPropGov{}.lagda}{\AgdaModule{\ChainPropGov{}}}
       module in the \href{\repourl}{formal ledger GitHub repository}.
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
    \item \textit{Remarks}.
      \begin{enumerate}
        \item A \ChainState{} has just one field, \ab{newEpochState}~:~\NewEpochState{}.
        \item A \NewEpochState{} has three fields, \ab{lastEpoch}~:~\Epoch{},
          \ab{epochState}~:~\EpochState{}, and \ab{ru}~:~\Maybe{}~\RewardUpdate{} (not relevant here).
        \item An \EpochState{} has five fields, \ab{acnt}~:~\Acnt{},
          \ab{ss}~:~\Snapshots{}, \ab{ls}~:~\LState{}, \ab{es}~:~\EnactState{}, and
          \ab{fut}~:~\RatifyState{} (not relevant here).
          We focus on the \ab{ls} field, which is an \LState{}.
        \item An inhabitant of the \LState{} type has three fields; the two 
          relevant here are \ab{utxoSt}~:~\UTxOState{} and \ab{govSt}~:~\GovState{}.
          The present property asserts that the \AgdaDatatype{CHAIN} rule preserves a
          certain relation between the \ab{utxoSt} and \ab{govSt} fields.
        \item The crucial point here is that the chain state will be updated.
      \end{enumerate}
  \end{itemize}
\end{theorem}
