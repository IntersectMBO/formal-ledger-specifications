open import Data.Unit
open import Data.Nat
open import Data.Product
open import Data.Maybe
open import Data.List
open import Function
open import Function.Bundles
open import FinSet
open import FinMap
open import FiniteMap
open import Function.Definitions
open import Relation.Binary.PropositionalEquality
open import Function.Construct.Composition

open import DecEq
open import Foreign.Haskell
open import Foreign.Haskell.Coerce

module HSLedger where

Coin Slot Ix TxId Addr VKey Sig TxIn TxOut UTxO : Set
Ix = ℕ
TxId = ℕ
Addr = ℕ
VKey = ℕ
Sig = ℕ

TxIn = Pair TxId Ix
TxOut = Pair Addr Coin
UTxO = List (Pair TxIn TxOut)

PParams = Pair ℕ (Pair ℕ ℕ)

Tx TxBody TxWitnesses : Set
TxBody = Pair (List TxIn) (Pair (List (Pair Ix TxOut)) (Pair Coin (Pair (Pair (Maybe Slot) (Maybe Slot)) ℕ)))

TxWitnesses = List (Pair VKey Sig)

Tx = Pair TxBody TxWitnesses

import Ledger Ix TxId Addr VKey Sig {{DecEq-Nat}} {{DecEq-Nat}} {{DecEq-Nat}} {{DecEq-Nat}} {{DecEq-Nat}} as L
Coin = L.Coin
Slot = L.Slot

instance
  _ = coerce-list

postulate
  txidFun : TxBody → TxId
  txidInj : Injective _≡_ _≡_ txidFun
{-# COMPILE GHC txidFun = \ _ -> 0 #-}

txid : TxBody ↣ TxId
txid = mk↣ txidInj

convertUTxO : UTxO → L.UTxO
convertUTxO u = fromList' (coerce u)

convertUTxO' : L.UTxO → UTxO
convertUTxO' u = coerce (listOfᵐ u)

convertTxBody : TxBody → L.TxBody
convertTxBody (txins , txouts , txfee , txvldt , txsize) = record
  { txins  = fromList (coerce txins)
  ; txouts = fromList' (coerce txouts)
  ; txfee  = txfee
  ; txvldt = coerce txvldt
  ; txsize = txsize }

convertTx : Tx → L.Tx
convertTx (txb , txw) = record
  { body = convertTxBody txb
  ; wits = record { vkSigs = fromList' (coerce txw) } }

convertTxBody' : L.TxBody → TxBody
convertTxBody' txb = (coerce (elements txins) , coerce (listOfᵐ txouts) , txfee , coerce txvldt , txsize)
  where open L.TxBody txb

convertTx' : L.Tx → Tx
convertTx' tx = (convertTxBody' body , coerce (listOfᵐ vkSigs))
  where open L.Tx tx
        open L.TxWitnesses wits

convertPParams : PParams → L.PParams
convertPParams (a , b , maxTxSize) = record { a = a ; b = b ; maxTxSize = maxTxSize }

postulate
  convertTxInj : Injective _≡_ _≡_ convertTxBody'

convertTxInj' : L.TxBody ↣ TxBody
convertTxInj' = mk↣ convertTxInj

hashVKey : VKey → Addr
hashVKey = id

isSigned : VKey → L.TxBody → Addr → Set
isSigned k txb sig = ⊤

UTXO-step : Pair ℕ PParams → Pair UTxO Coin → TxBody → Maybe (Pair UTxO Coin)
UTXO-step (slot , pp) s txb =
  Data.Maybe.map
    (coerce ∘ map₁ convertUTxO')
    (L.UTXO-step (convertTxInj' ↣-∘ txid) hashVKey isSigned (slot , convertPParams pp) (map₁ convertUTxO (coerce s)) (convertTxBody txb))

{-# COMPILE GHC UTXO-step as utxoStep' #-}

{-# FOREIGN GHC
  type Coin = Integer
  type Slot = Integer
  type Ix = Integer
  type TxIn = (Integer, Integer)
  type TxOut = (Integer, Integer)
  type UTxO = [(TxIn, TxOut)]
  type PParams = (Integer, (Integer, Integer))
  type TxBody = ([TxIn], ([(Ix, TxOut)], (Coin, ((Maybe Slot, Maybe Slot), Integer))))

  utxoStep :: (Slot, PParams) -> (UTxO, Coin) -> TxBody -> Maybe (UTxO, Coin)
  utxoStep = utxoStep'
#-}
