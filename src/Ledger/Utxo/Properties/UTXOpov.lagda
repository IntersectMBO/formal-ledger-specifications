\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Utxo.Properties.UTXOpov
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs using (φ; module DepositHelpers)
\end{code}

\begin{property}[%
  \LedgerMod{Utxo/Properties/UTXOpov.lagda}{\AgdaModule{UTXOpov}}:
  \textbf{UTXO rule preserves value};
  \textbf{proved}%
]\

\noindent Assume
\begin{AgdaMultiCode}
\begin{code}[hide]
module _
\end{code}  
\begin{code}
  {tx : Tx}
\end{code}  
\begin{code}[hide]
  (open Tx tx)(open TxBody body)
\end{code}  
\begin{code}
  {utxo utxo' : UTxO}
  {Γ : UTxOEnv}
  {fees fees' donations donations' : Coin}
  {deposits deposits' : DepositPurpose ⇀ Coin}

\end{code}  
\begin{code}[hide]
  where
  UTXOpov :
\end{code}  
and
\begin{code}
    let  s   = ⟦ utxo , fees , deposits , donations ⟧
         s'  = ⟦ utxo'  , fees'  , deposits'  , donations' ⟧
\end{code}  
\begin{code}[hide]
    in
\end{code}  

\noindent If
\begin{code}[inline]
    txid ∉ mapˢ proj₁ (dom utxo)
\end{code}
\begin{code}[hide]
      →
\end{code}  
~and
\begin{code}[inline]
    Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
\end{code}
\begin{code}[hide]
      →
\end{code}  
, then
\begin{code}
    getCoin s + φ(getCoin txwdrls , isValid) ≡ getCoin s'
\end{code}
\begin{code}[hide]
  UTXOpov h' step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , valid)))
    = DepositHelpers.pov-scripts step h' refl valid

  UTXOpov h' step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , invalid)))
    = DepositHelpers.pov-no-scripts step h' invalid
\end{code}
\end{AgdaMultiCode}
\end{property}

