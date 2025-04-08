\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Chain.Properties.CHAINgovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Ledger.Properties txs abs
open import Ledger.Ledger.Properties.LEDGERgovDepsMatch txs abs
open import Ledger.Epoch.Properties.EPOCHgovDepsMatch txs abs
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure

-- GA Deposits Invariance Property for CHAIN STS -----------------------------------------------
module _
\end{code}

\begin{property}[%
  \LedgerMod{Chain/Properties/CHAINgovDepsMatch.lagda}{\AgdaModule{CHAINgovDepsMatch}}:
  \AgdaFunction{govDepsMatch} is a chain invariant;
  \textbf{proved}%
]\

\noindent Assume
\begin{AgdaMultiCode}
\begin{code}
    { b   : Block }
    { cs  : ChainState}
\end{code}
\begin{code}[hide]
  where
  open Block b; open ChainState cs
  open NewEpochState newEpochState
  open EPOCH-Body epochState
  open EnactState es using (pparams)
  pp = pparams .proj₁

  updateChainState : ChainState → NewEpochState → ChainState
  updateChainState s nes =
    record s { newEpochState =
      record nes { epochState =
        record (NewEpochState.epochState (ChainState.newEpochState s))
          { ls = EpochState.ls (NewEpochState.epochState nes) }
      }
    }

  CHAIN-govDepsMatch :
\end{code}
\begin{code}
    {nes  : NewEpochState}
\end{code}
\begin{code}[hide]
    →
\end{code}
\\[4pt]
If 
\begin{code}[inline]
    mapˢ (GovActionDeposit ∘ proj₁) removed' ⊆ mapˢ proj₁ (UTxOState.deposits (LState.utxoSt ls) ˢ)
\end{code}
\begin{code}[hide]
    →
\end{code}
\\[4pt]
and
\begin{code}[inline]
    totalRefScriptsSize ls ts ≤ (PParams.maxRefScriptSizePerBlock pp)
\end{code}
\begin{code}[hide]
    →
\end{code}
\\[4pt]
and
\begin{code}[inline]
    _ ⊢ cs ⇀⦇ b ,CHAIN⦈ (updateChainState cs nes)
\end{code}
\begin{code}[hide]
    →
\end{code}
\\[4pt]
and
\begin{code}[inline]
    govDepsMatch ls
\end{code}
\begin{code}[hide]
    →
\end{code}
,\\[4pt]
then
\begin{code}[inline]
    govDepsMatch (EpochState.ls (NewEpochState.epochState nes))
\end{code}
\begin{code}[hide]
  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-New (_ , eps₁→eps₂)) ledgers) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch {ratify-removed = rrm} eps₁→eps₂

  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-Not-New _) ledgers) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers

  CHAIN-govDepsMatch rrm rss (CHAIN x (NEWEPOCH-No-Reward-Update (_ , eps₁→eps₂)) ledgers) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch {ratify-removed = rrm} eps₁→eps₂
\end{code}
\end{AgdaMultiCode}
\end{property}
