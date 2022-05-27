open import Data.Nat
open import Data.Product
open import Data.Maybe
open import Data.List
open import Function
open import Function.Bundles
open import FinSet
open import Function.Definitions
open import Relation.Binary.PropositionalEquality
open import Function.Construct.Composition

open import DecEq
import Ledger ℕ ℕ ℕ {{DecEq-Nat}} {{DecEq-Nat}} {{DecEq-Nat}} as L
open import Foreign.Haskell
open import Foreign.Haskell.Coerce

module HSLedger where

instance
  _ = coerce-list

Ix TxIn TxOut UTxO Coin : Set
Ix = ℕ
TxIn = Pair ℕ ℕ
TxOut = Pair ℕ ℕ
UTxO = List (Pair TxIn TxOut)
Coin = L.Coin
PParams = Pair ℕ ℕ

Tx : Set
Tx = Pair (List TxIn) (Pair (List (Pair Ix TxOut)) Coin)

postulate
  txidFun : Tx → ℕ
  txidInj : Injective _≡_ _≡_ txidFun
{-# COMPILE GHC txidFun = \ _ -> 0 #-}

txid : Tx ↣ ℕ
txid = mk↣ txidInj

convertUTxO : UTxO → L.UTxO
convertUTxO u = fromList (coerce u)

convertUTxO' : L.UTxO → UTxO
convertUTxO' u = coerce (elements u)

convertTx : Tx → L.Tx
convertTx (txins , txouts , txfee) = record
  { txins = fromList (coerce txins)
  ; txouts = fromList (coerce txouts)
  ; txfee = txfee
  ; txsize = 0 } -- TODO

convertTx' : L.Tx → Tx
convertTx' tx = (coerce (elements txins) , coerce (elements txouts) , txfee)
  where open L.Tx tx

convertPParams : PParams → L.PParams
convertPParams (a , b) = record { a = a ; b = b }

postulate
  convertTxInj : Injective _≡_ _≡_ convertTx'

convertTxInj' : L.Tx ↣ Tx
convertTxInj' = mk↣ convertTxInj

UTXO-step : PParams → Pair UTxO Coin → Tx → Maybe (Pair UTxO Coin)
UTXO-step Γ s tx =
  Data.Maybe.map
    (coerce ∘ map₁ convertUTxO')
    (L.UTXO-step (convertTxInj' ↣-∘ txid) (convertPParams Γ) (map₁ convertUTxO (coerce s)) (convertTx tx))

{-# COMPILE GHC UTXO-step as utxoStep' #-}

{-# FOREIGN GHC
  type Coin = Integer
  type Ix = Integer
  type TxIn = (Integer, Integer)
  type TxOut = (Integer, Integer)
  type UTxO = [(TxIn, TxOut)]
  type PParams = (Integer, Integer)
  type Tx = ([TxIn], ([(Ix, TxOut)], Coin))

  utxoStep :: PParams -> (UTxO, Coin) -> Tx -> Maybe (UTxO, Coin)
  utxoStep = utxoStep'
#-}
