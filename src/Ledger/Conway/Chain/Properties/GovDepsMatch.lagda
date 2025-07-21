\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Transaction
open import Ledger.Conway.Abstract

module Ledger.Conway.Chain.Properties.GovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\ChainPropGov}{Conway/Chain/Properties/GovDepsMatch}

\begin{code}[hide]
open import Ledger.Conway.Certs govStructure
open import Ledger.Conway.Chain txs abs
open import Ledger.Conway.Enact govStructure
open import Ledger.Conway.Epoch txs abs
open import Ledger.Conway.Epoch.Properties.GovDepsMatch txs abs
open import Ledger.Conway.Ledger txs abs
open import Ledger.Conway.Ledger.Properties txs abs
open import Ledger.Conway.Ledger.Properties.GovDepsMatch txs abs
open import Ledger.Prelude hiding (map) renaming (mapˢ to map)

module _
  {b   : Block }
  {nes : NewEpochState}
  {cs  : ChainState}
  where
  open Block b; open ChainState cs
  open NewEpochState
  open EPOCH-Body (EpochStateOf cs) renaming (epsLState to csLState)
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
      Fix a \Block{} \AgdaBound{b}, a \ChainState{} \AgdaBound{cs}, and a \NewEpochState{} \AgdaBound{nes}.
      Let \AgdaFunction{csLState} be the ledger state of \AgdaBound{cs}.
      Recall, a \ChainState{} has just one field, \AgdaField{newEpochState}~:~\NewEpochState{}.
      Consider the chain state \AgdaFunction{cs'} defined as follows:
\begin{code}
  cs' : ChainState
  cs' .newEpochState =
    record { lastEpoch   = nes .lastEpoch
           ; epochState  = record (EpochStateOf cs) {ls = LStateOf nes}
           ; ru          = nes .ru }
\end{code}
      That is \AgdaFunction{cs'} is essentially \AgdaBound{nes}, but the \EpochState{} field is
      set to the \AgdaField{epochState} of \AgdaBound{cs} with the exception of the
      \LState{} field, which is set to that of \AgdaBound{nes}.
      \\[4pt]
      Let \AgdaBound{utxoSt} and \AgdaBound{utxoSt'} be the respective \UTxOState{}s of the ledger
      states of \AgdaBound{cs} and \AgdaFunction{cs'}, respectively, and let \AgdaBound{govSt} and \AgdaBound{govSt'}
      be their respective \GovState{}s.
      \\[4pt]
      Assume the following conditions hold:
      \begin{itemize}
        \item let \AgdaFunction{removed'}~:~\AgdaFunction{ℙ}(\AgdaDatatype{GovActionID}~×~\AgdaDatatype{GovActionState})
          be the union of
          \begin{itemize}
            \item the governance actions in the \AgdaField{removed} field of the ratify
              state of \AgdaBound{eps}, and
            \item the orphaned governance actions in the \GovState{} of \AgdaBound{eps}.
          \end{itemize}
          Let $\mathcal{G}$ be the set
          $\{\mbox{\GovActionDeposit{}~\AgdaBound{id}} : \mbox{\AgdaBound{id}} ∈ \mbox{proj}₁~\mbox{\AgdaFunction{removed'}}\}$.
          $\mathcal{G}$ is a subset of the set of deposits of the chain state \AgdaBound{cs};
          that is,\\[4pt]
          \AgdaFunction{map}~(\AgdaInductiveConstructor{GovActionDeposit}~$∘$~\AgdaField{proj₁})~\AgdaFunction{removed'}~\AgdaField{$⊆$}~
          \AgdaFunction{dom}~(\AgdaField{DepositsOf}~\AgdaBound{cs});
        \item the total reference script size of \AgdaFunction{csLState} is not greater than the
          maximum allowed size per block (as specified in \PParams{});
        \item \AgdaBound{cs}~\AgdaDatatype{⇀⦇}~\AgdaBound{b}~\AgdaDatatype{,CHAIN⦈}~\AgdaFunction{cs'}.
      \end{itemize}
      Under these conditions, if the governance action deposits of \AgdaBound{utxoSt}
      equal those of \AgdaBound{govSt}, then the same holds for \AgdaBound{utxoSt'} and \AgdaBound{govSt'}.
      In other terms,
      \AgdaFunction{govDepsMatch}~\AgdaFunction{csLState} implies \AgdaFunction{govDepsMatch}~\AgdaFunction{nesState}.
    \item \textit{Formally}.
\begin{code}
  CHAIN-govDepsMatch :
    map (GovActionDeposit ∘ proj₁) removed' ⊆ dom (DepositsOf cs)
    →  totalRefScriptsSize csLState ts ≤ maxRefScriptSizePerBlock
    →  _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
    →  govDepsMatch csLState → govDepsMatch (LStateOf nes)
\end{code}
    \item \textit{Proof}.  See the
      \LedgerMod{\ChainPropGov.lagda}{\AgdaModule{\ChainPropGov{}}}
       module in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
  -- Proof.
  CHAIN-govDepsMatch rrm rss (CHAIN (x , NEWEPOCH-New (_ , eps₁→eps₂) , ledgers)) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch rrm eps₁→eps₂

  CHAIN-govDepsMatch rrm rss (CHAIN (x , NEWEPOCH-Not-New _ , ledgers)) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers

  CHAIN-govDepsMatch rrm rss (CHAIN (x , NEWEPOCH-No-Reward-Update (_ , eps₁→eps₂) , ledgers)) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch rrm eps₁→eps₂
\end{code}
  \end{itemize}
\end{theorem}
