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
  \textbf{Preservation of Value: UTXO rule};
    \LedgerMod{Properties/UTXOpov.lagda}{\AgdaModule{Ledger.Properties.UTXOpov}};
    \textbf{proved}%
  ]\

For all
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
\begin{code}
    let  s  = ⟦ utxo , fees , deposits , donations ⟧
         s' = ⟦ utxo'  , fees'  , deposits'  , donations' ⟧
\end{code}  
\begin{code}[hide]
    in
\end{code}  
Then,
\begin{code}
    ∙ txid ∉ mapˢ proj₁ (dom utxo)
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
      ────────────────────────────────
      getCoin s + φ(getCoin txwdrls , isValid) ≡ getCoin s'
\end{code}
\begin{code}[hide]
  UTXOpov ( h'
      , step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , valid)))
      ) = DepositHelpers.pov-scripts step h' refl valid

  UTXOpov ( h'
      , step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , invalid)))
      ) = DepositHelpers.pov-no-scripts step h' invalid
\end{code}
\end{AgdaMultiCode}
\end{property}

