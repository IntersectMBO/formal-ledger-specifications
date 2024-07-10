\section{Zone State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Zone
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs
open import Ledger.Ledger txs abs
open import Ledger.CycleDet txs abs

open Tx
open TxBody
\end{code}

The entire state transformation of the ledger state caused by a valid
zone can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{code}

-- sum up total ExUnits used by all txs in a zone
-- totExUnitsZone : List Tx → ExUnits
-- totExUnitsZone z = ∑(map totExUnits z)
-- -- (tx ∷ []) = 0 , 0
-- -- totExUnitsZone (tx ∷ tx' ∷ t) = totExUnits tx + totExUnitsZone t

sizeTx : Tx → ℕ
sizeTx t = t .body .txsize

-- sum up total size of all txs in a zone
totSizeZone : List Tx → ℕ
totSizeZone z = sum (map sizeTx z)

-- check that all IDs in all requiredTxs groups correspond to Txs in the given zone
chkRqTx : List Tx → Tx → Set
chkRqTx ltx tx = ∀[ txrid ∈ tx .requiredTxs ] Any (txrid ≡_) ( getIDs ltx )

-- check for duplicates in two sets
noDups : ℙ Tx → ℙ Tx → Set
noDups ltx ltx' = ∀[ tx ∈ ltx ] ∀[ tx' ∈ ltx' ] ¬ tx ≡ tx'

-- apply top. sort/cycle detection to graph generated from all transactions in the zone, with forward
-- edges between transactions spending each other's outputs within the zone,
-- and backwards edges between transactions spending each other's requests within the zone
chkLinear : List Tx → Set
chkLinear ltx = topSortTxs (mkAllEdges ltx ltx) (mkAllEdges ltx ltx) (nodesWithNoIncomingEdge ltx (mkAllEdges ltx ltx)) [] ≡ just []

-- sum up the fees (adjusted by collateralPercentage) of transactions in a list
sumCol : List Tx → ℕ → Coin
sumCol ltx cp = foldr (λ { tx c → c + tx .body .txfee * cp }) 0 ltx

-- every tx in the list has enough collateral to cover preceeding ones TODO
-- collForPrec' : List Tx → ℕ → Set
-- collForPrec' [] _ = true
-- collForPrec' (t ∷ ls) tc = ((coin (balance  (utxo ∣ tx .body .collateral)) * 100)
--   ≥ᵇ sumCol ltx (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true ∧
-- ((coin (balance  (utxo ∣ tx .body .collateral)) * 100)
--   ≥ᵇ sumCol ltx (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true

collForPrec : List Tx → Set
collForPrec _ = true ≡ true
-- collForPrec [] = true
-- collForPrec (t ∷ l) = collForPrec' (t ∷ l) (coin (balance  (utxo ∣ t .body .collateral)) * 100)
--
-- collInUTxO : List Tx → UTxO → Set
-- -- TODO
\end{code}
\caption{Functions used for zone validation}
\label{fig:functions:zone}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,ZONE⦈_ : LEnv → LState → List Tx → LState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the ZONE transition system}
\end{figure*}

\begin{code}[hide]
private variable
  Γ : LEnv
  utxo utxo' : UTxO
  fees fees' : Coin
  deposits deposits' : Deposits
  donations donations' : Coin
  govSt govSt' : GovState
  certState certState' : CertState
  ltx lsV : List Tx
  tx : Tx
\end{code}

\begin{figure*}[h]
\begin{code}
  ZONE-V :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ ltx ,LEDGERS⦈
      ⟦ ⟦ (utxo' , ∅) , fees' , deposits' , donations' ⟧ᵘᵘ , govSt' , certState' ⟧ˡˡ
    ∙ All (chkRqTx ltx) (fromList ltx)
    ∙ noCycles ltx
    ∙ All chkIsValid (fromList ltx)
    ∙ ((totSizeZone ltx) ≤ᵇ (Γ .LEnv.pparams .PParams.maxTxSize)) ≡ true
    ∙ collForPrec ltx
    -- ∙ collInUTxO utxo ltx
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ ltx ,ZONE⦈ ⟦ ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ , govSt' , certState' ⟧ˡ
  ZONE-N :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ (lsV ++ [ tx ]) ,LEDGERS⦈ _
    ∙ tx .isValid ≡ false
    ∙ All chkIsValid (fromList lsV)
    ∙ ((totSizeZone ltx) ≤ᵇ (Γ .LEnv.pparams .PParams.maxTxSize)) ≡ true
    ∙ collForPrec (lsV ++ [ tx ])
    -- ∙ collInUTxO utxo (lsV ++ [ tx ])
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ lsV ++ [ tx ] ,ZONE⦈
            ⟦ ⟦ utxo ∣ (tx .body .collateral) ᶜ
            , fees + cbalance (utxo ∣ tx .body .collateral)
            , deposits , donations ⟧ᵘ
            , govSt
            , certState ⟧ˡ
\end{code}
\caption{ZONE transition system}
\end{figure*}
\begin{code}[hide]
-- TODO fix this
-- unquoteDecl ZONE-V-premises = genPremises ZONE-V-premises (quote ZONE-V)
-- unquoteDecl ZONE-N-premises  = genPremises ZONE-N-premises  (quote ZONE-N)
-- pattern ZONE-V⋯ x y z w = ZONE (x , y , z , w)
-- unquoteDecl ZONE-premises = genPremises ZONE-premises (quote ZONE)
\end{code}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,ZONES⦈_ : LEnv → LState → List (List Tx) → LState → Set
_⊢_⇀⦇_,ZONES⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,ZONE⦈_
\end{code}
\caption{ZONES transition system}
\end{figure*}
