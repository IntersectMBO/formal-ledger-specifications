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
  { txins = fromList (coerce txins) ; txouts = fromList (coerce txouts) ; txfee = txfee }

convertTx' : L.Tx → Tx
convertTx' tx = (coerce (elements txins) , coerce (elements txouts) , txfee)
  where open L.Tx tx

postulate
  convertTxInj : Injective _≡_ _≡_ convertTx'

convertTxInj' : L.Tx ↣ Tx
convertTxInj' = mk↣ convertTxInj

UTXO-step : Coin → Pair UTxO Coin → Tx → Foreign.Haskell.Maybe (Pair UTxO Coin)
UTXO-step Γ s tx =
  toForeignMaybe (Data.Maybe.map
    (coerce ∘ map₁ convertUTxO')
    (L.UTXO-step (convertTxInj' ∘-↣ txid) Γ (map₁ convertUTxO (coerce s)) (convertTx tx)))

{-# COMPILE GHC UTXO-step as utxoStep' #-}

{-# FOREIGN GHC
  type Coin = Integer
  type Ix = Integer
  type TxIn = (Integer, Integer)
  type TxOut = (Integer, Integer)
  type UTxO = [(TxIn, TxOut)]
  type Tx = ([TxIn], ([(Ix, TxOut)], Coin))

  utxoStep :: Coin -> (UTxO, Coin) -> Tx -> Maybe (UTxO, Coin)
  utxoStep = utxoStep'
#-}
