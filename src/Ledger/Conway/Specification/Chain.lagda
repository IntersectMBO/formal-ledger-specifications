\section{Blockchain Layer}
\label{sec:blockchain-layer}
\modulenote{\ConwayModule{Chain}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Chain
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude; open Equivalence
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.Utxo txs abs

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)
\end{code}
\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
record ChainState : Type where
  field
    newEpochState  : NewEpochState

record Block : Type where
  field
    ts    : List Tx
    slot  : Slot
\end{code}
\end{AgdaMultiCode}
\caption{Definitions CHAIN transition system}
\end{figure*}
\begin{code}[hide]
instance
  HasNewEpochState-ChainState : HasNewEpochState ChainState
  HasNewEpochState-ChainState .NewEpochStateOf = ChainState.newEpochState

  HasLastEpoch-ChainState : HasLastEpoch ChainState
  HasLastEpoch-ChainState .LastEpochOf = LastEpochOf ∘ NewEpochStateOf

  HasEpochState-ChainState : HasEpochState ChainState
  HasEpochState-ChainState .EpochStateOf = EpochStateOf ∘ NewEpochStateOf

  HasEnactState-ChainState : HasEnactState ChainState
  HasEnactState-ChainState .EnactStateOf = EnactStateOf ∘ EpochStateOf

  HasLState-ChainState : HasLState ChainState
  HasLState-ChainState .LStateOf = LStateOf ∘ EpochStateOf

  HasUTxOState-ChainState : HasUTxOState ChainState
  HasUTxOState-ChainState .UTxOStateOf = UTxOStateOf ∘ LStateOf

  HasCertState-ChainState : HasCertState ChainState
  HasCertState-ChainState .CertStateOf = CertStateOf ∘ LStateOf

  HasDeposits-ChainState : HasDeposits ChainState
  HasDeposits-ChainState .DepositsOf = DepositsOf ∘ UTxOStateOf

  HasRewards-ChainState : HasRewards ChainState
  HasRewards-ChainState .RewardsOf = RewardsOf ∘ CertStateOf

  HasPParams-ChainState : HasPParams ChainState
  HasPParams-ChainState .PParamsOf = PParamsOf ∘ EnactStateOf

totalRefScriptsSize : LState → List Tx → ℕ
totalRefScriptsSize lst txs = sum $ map (refScriptsSize utxo) txs
  where open UTxOState (LState.utxoSt lst)

private variable
  ls' : LState 
data
\end{code}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Type
\end{code}
\end{AgdaSuppressSpace}
\caption{Type of the CHAIN transition system}
\end{figure*}
\begin{code}[hide]
  where
\end{code}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  CHAIN : {b : Block} {nes : NewEpochState} {cs : ChainState}
\end{code}
\begin{code}[hide]
    → let open ChainState cs; open Block b; open NewEpochState nes
          open EpochState epochState; open EnactState es renaming (pparams to pp)
          open PParams ∣ pp ∣ using (maxRefScriptSizePerBlock) in
\end{code}
\begin{code}
    let  cs'  = record cs {  newEpochState
                             = record nes {  epochState
                                             = record epochState {ls = ls'} } }
         Γ    = ⟦ slot , ∣ constitution ∣ , ∣ pp ∣ , es , TreasuryOf nes ⟧
    in
    ∙ totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock
    ∙ _ ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    ∙ Γ ⊢ ls ⇀⦇ ts ,LEDGERS⦈ ls'
      ────────────────────────────────
      _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
\end{code}
\end{AgdaSuppressSpace}
\caption{CHAIN transition system}
\end{figure*}
