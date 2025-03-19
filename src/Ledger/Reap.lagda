\section{Reaping Transition}
\label{sec:reaping-transition}
\modulenote{\LedgerModule{Reap}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Reap
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where
open import Ledger.Prelude
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure

\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record ReapState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_,_,_⟧ʳˢ
\end{code}
\begin{code}
  field
    utxost     : UTxOState
    acnt       : Acnt
    dstate     : DState
    gstate     : GState
    pstate     : PState
    govst      : GovState
\end{code}
