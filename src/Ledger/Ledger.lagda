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
open import Ledger.Utxow txs abs

-- open Tx
-- open TxBody
-- open TxWitnesses
\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
record LEnv : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_,_⟧ˡᵉ
  field
\end{code}
\begin{code}
    slot        : Slot
    ppolicy     : Maybe ScriptHash
    pparams     : PParams
    enactState  : EnactState
    treasury    : Coin

record LState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ˡ
  field
\end{code}
\begin{code}
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txprop ++ map inj₁ txvote
  where open TxBody txb
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the LEDGER and SWAP transition systems}
\end{figure*}
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

  consumed : PParams → UTxOState → List TxBody → Value
  consumed pp st txbls
    =  foldr  (λ txb → (let open TxBody in balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)
    +  balance (st .utxo ∣ txb .corInputs)) +_) (inject 0) txbls

  produced : PParams → UTxOState → List TxBody → Value
  produced pp st txbls
    =  foldr (λ txb → (let open TxBody in balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)) +_) (inject 0) txbls
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
  _⊢_⇀⦇_,SWAP⦈_ : LEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the SWAP transition system}
\end{figure*}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  SWAP-V : let open Tx tx renaming (body to txb); open TxBody txb; open LEnv Γ renaming (slot to sl)
    in
    ∙  record { LEnv Γ } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
    ∙  ⟦ epoch sl , pparams , txvote , txwdrls , deposits u ⟧ᶜ ⊢ c ⇀⦇ txcerts ,CERTS⦈ c'
    ∙  ⟦ txid , epoch sl , pparams , ppolicy , enactState ⟧ᵍ ⊢ g ⇀⦇ txgov txb ,GOV⦈ g'
       ────────────────────────────────
       Γ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , g' , c' ⟧ˡ

  SWAP-I :     
    ∙  record { LEnv Γ } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
      ────────────────────────────────
       Γ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , g , c ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{SWAP transition system}
\end{figure*}
\begin{code}[hide]
-- pattern SWAP-V⋯ w x y z = SWAP-V (w , x , y , z)
-- pattern SWAP-I⋯ y z     = SWAP-I (y , z)
\end{code}


\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,SWAPS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,SWAPS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,SWAP⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}


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
  LEDGER-Ind : let open UTxOState u renaming (utxo to utx); open Tx tx; open TxBody body; open LEnv Γ renaming (pparams to pp); open PParams pp; txs = (mkTxList tx); txBods = (map proj₁ (map proj₂ (setToList (proj₁ subTxBodies))))
    in
    ∙ Γ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ txs ,SWAPS⦈ ⟦ u' , g' , c' ⟧ˡ
    ∙ feesOK pp tx utx ≡ true               
    ∙ consumed pp u (body ∷ txBods) ≡ produced pp u (body ∷ txBods)
    ∙ txsize ≤ maxTxSize 
    ∙ txs ≢ [] 
    -- ∙ ∀[ tb ∈ ((proj₁ (range subTxBodies))  ) ] tb .TxBody.txins ∪ tb .TxBody.corInputs ⊆ dom utx 
    -- ∙ ∀[ tb ∈ range (proj₁ subTxBodies) ∪ body ] tb .TxBody.txins ∩ body .TxBody.corInputs ≢ ∅
    -- ∙ ∀[ t ∈ subTxBodies ] body  ⊆ (proj₁ (proj₂ (proj₁ (subTxBodies)))) -- (proj₁ (proj₂ (proj₁ t))) .TxBody.requiredTxs ⊆ body .TxBody.subTxs
    -- ∙ chkCorInputs (utx ∣ corInputs) (mkListSpendOuts tx) ≡ true
       ────────────────────────────────
       Γ ⊢  ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,LEDGER⦈ ⟦ u' , g' , c' ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
-- pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
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
