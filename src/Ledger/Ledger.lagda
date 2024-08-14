\section{Ledger State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)
open import Data.Integer.Ext     using (posPart; negPart)

module Ledger.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Swaps txs abs
open import Ledger.Utxow txs abs

-- open Tx
-- open TxBody
-- open TxWitnesses
\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  u u' : UTxOState
  g g' : GovState
  c c' : CertState
  tx : Tx
\end{code}

\begin{code}

feesOK : PParams → Tx → UTxO → Bool
feesOK pp tx utxo = minfee pp utxo tx ≤ᵇ txfee
                  ∧ (not (≟-∅ᵇ (txrdmrs ˢ)) ∧ isTopLevel)
                  =>ᵇ ( allᵇ (λ (addr , _) → ¿ isVKeyAddr addr ¿) collateralRange
                      ∧ isAdaOnlyᵇ bal
                      ∧ (coin bal * 100) ≥ᵇ (txfee * collateralPercentage)
                      ∧ not (≟-∅ᵇ collateral)
                      -- ∧ sum of specified fees in txfee fields in subTxs <= top-level txfee
                      )
  where
    open Tx tx; open TxBody body; open TxWitnesses wits; open PParams pp
    collateralRange  = range    ((mapValues txOutHash utxo) ∣ collateral)
    bal              = balance  (utxo ∣ collateral)
\end{code}

\begin{figure*}
\begin{code}[hide]
module _ (let open UTxOState) where
\end{code}
\begin{code}
        -- mkTxList makes a list of transactions that is tx ++ mkSubTxs 
        -- it constructs full transaction from TxBody in subTx and witnesses attached to tx
        -- sets each subTx isValid to true ( subTxs with bad scripts are not allowed)
        -- sets isTopLevel to false for each subTx
  mkTxList : Tx → List Tx 
  mkTxList tx = {!   !}

  chkCorInputs : UTxO → List TxOut → Bool 
  chkCorInputs uu ls = {!   !}

  mkListSpendOuts : Tx → List TxOut
  mkListSpendOuts t = {!   !}

  depositRefunds : PParams → UTxOState → TxBody → Coin
  depositRefunds pp st txb = let open TxBody in negPart (depositsChange pp txb (st .deposits))

  newDeposits : PParams → UTxOState → TxBody → Coin
  newDeposits pp st txb = let open TxBody in posPart (depositsChange pp txb (st .deposits))

  consumed : PParams → UTxOState → TxBody → Value
  consumed pp st txb
    =  let open TxBody in balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)
    +  balance (st .utxo ∣ txb .corInputs)

  produced : PParams → UTxOState → TxBody → Value
  produced pp st txb
    =  let open TxBody in balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)
\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-conway}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
open RwdAddr
open DState
open CertState
open UTxOState

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,CHKTX⦈_ : LEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the CHKTX transition system}
\end{figure*}

\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  CHKTX : let open UTxOState u renaming (utxo to utx); open Tx tx; open TxBody body; open LEnv Γ renaming (pparams to pp); open PParams pp; txs = (mkTxList tx)
    in
    ∙ feesOK pp tx utx ≡ true               ∙ consumed pp u body ≡ produced pp u body
    ∙ txsize ≤ maxTxSize 
    -- ∙ ∀[ tb ∈ ((proj₁ (range subTxBodies))  ) ] tb .TxBody.txins ∪ tb .TxBody.corInputs ⊆ dom utx 
    -- ∙ ∀[ tb ∈ range (proj₁ subTxBodies) ∪ body ] tb .TxBody.txins ∩ body .TxBody.corInputs ≢ ∅
    -- ∙ ∀[ t ∈ subTxs ] subTxs .TxBody.requiredTxs  ⊆ tb .TxBody.subTxs
    -- ∙ chkCorInputs (utxo ∣ corInputs) (mkListSpendOuts tx) ≡ true
       ────────────────────────────────
       Γ ⊢  ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,CHKTX⦈ ⟦ u , g , c ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{CHKTX transition system}
\end{figure*}
\begin{code}[hide]
-- pattern CHKTX-V⋯ w x y z = CHKTX-V (w , x , y , z)
\end{code}


\begin{figure*}[h]
\begin{code}[hide]

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the LEDGER transition system}
\end{figure*}

\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  LEDGER-V : let open Tx tx ; txs = mkTxList tx
    in
    ∙  isValid ≡ true
    ∙  txs ≢ []
    ∙  Γ ⊢  ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,CHKTX⦈ ⟦ u , g , c ⟧ˡ
    ∙  Γ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ txs ,SWAPS⦈  ⟦ u' , g' , c' ⟧ˡ
       ────────────────────────────────
       Γ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,LEDGER⦈  ⟦ u' , g' , c' ⟧ˡ

  LEDGER-I : let open Tx tx ; txs = mkTxList tx
    in
    ∙  isValid ≡ false
    -- TODO this check could be in CHKTX if we didnt also need to construct it here
    ∙  txs ≢ []
    -- TODO this rule does nothing except for some checks, should we do this another way?
    ∙  Γ ⊢  ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,CHKTX⦈ ⟦ u , g , c ⟧ˡ
    ∙  Γ ⊢  ⟦ u , g , c ⟧ˡ ⇀⦇ txs ,SWAPS⦈  ⟦ u' , g , c ⟧ˡ
       ────────────────────────────────
       Γ ⊢  ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,LEDGER⦈ ⟦ u' , g , c ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
-- pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
-- pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}
