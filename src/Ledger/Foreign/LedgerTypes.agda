module Ledger.Foreign.LedgerTypes where
{-# FOREIGN GHC
  {-# LANGUAGE DeriveGeneric #-}
  {-# LANGUAGE EmptyDataDeriving #-}
#-}

open import Prelude

open import Foreign.Haskell
open import Foreign.Haskell.Coerce

{-# FOREIGN GHC
  import GHC.Generics (Generic)
  import Data.TreeDiff
#-}

data Empty : Set where

{-# FOREIGN GHC
  data AgdaEmpty deriving (Show, Generic)
  instance ToExpr AgdaEmpty
#-}
{-# COMPILE GHC Empty = data AgdaEmpty () #-}

HSMap : Set → Set → Set
HSMap K V = List (Pair K V)

Coin          = ℕ
Addr          = ℕ -- just payment credential

TxId          = ℕ
Ix            = ℕ
Epoch         = ℕ
AuxiliaryData = ⊤
Network       = ⊤

TxIn          = Pair TxId Ix
TxOut         = Pair Addr Coin
UTxO          = HSMap TxIn TxOut

{-# FOREIGN GHC
  type Coin  = Integer
  type Addr  = Integer

  type TxId  = Integer
  type Ix    = Integer
  type TxIn  = (TxId, Ix)
  type TxOut = (Addr, Coin)
  type UTxO  = [(TxIn, TxOut)]
#-}

record TxBody : Set where
  field txins    : List TxIn
        txouts   : HSMap Ix TxOut
        txfee    : Coin
        txvldt   : Pair (Maybe ℕ) (Maybe ℕ)
        --txwdrls  : Wdrl
        --txup     : Maybe Update
        --txADhash : Maybe ADHash
        txsize   : ℕ
        txid     : TxId

{-# FOREIGN GHC
  data TxBody = MkTxBody
    { txins  :: [TxIn]
    , txouts :: [(Ix, TxOut)]
    , txfee  :: Coin
    , txvldt :: (Maybe Integer, Maybe Integer)
    , txsize :: Integer
    , txid   :: TxId } deriving (Show, Generic)
  instance ToExpr TxBody
#-}
{-# COMPILE GHC TxBody = data TxBody (MkTxBody) #-}

record TxWitnesses : Set where
  field vkSigs  : List (Pair ℕ ℕ)
        scripts : List Empty

{-# FOREIGN GHC
  data TxWitnesses = MkTxWitnesses
    { vkSigs :: [(Integer, Integer)], scripts :: [AgdaEmpty] } deriving (Show, Generic)
  instance ToExpr TxWitnesses
#-}
{-# COMPILE GHC TxWitnesses = data TxWitnesses (MkTxWitnesses) #-}

record Tx : Set where
  field body : TxBody
        wits : TxWitnesses
        txAD : Maybe ⊤

{-# FOREIGN GHC
  data Tx = MkTx
    { body :: TxBody, wits :: TxWitnesses, txAD :: Maybe () } deriving (Show, Generic)
  instance ToExpr Tx
#-}
{-# COMPILE GHC Tx = data Tx (MkTx) #-}

record PParams : Set where
  field a                : ℕ
        b                : ℕ
        maxBlockSize     : ℕ
        maxTxSize        : ℕ
        maxHeaderSize    : ℕ
        maxValSize       : ℕ
        minUTxOValue     : Coin
        poolDeposit      : Coin
        Emax             : Epoch
        pv               : Pair ℕ ℕ
        votingThresholds : ⊤ -- TODO: foreign rational numbers
        minCCSize        : ℕ
        ccTermLimit      : ℕ
        govExpiration    : ℕ
        govDeposit       : Coin
        drepDeposit      : Coin
        drepActivity     : Epoch

{-# FOREIGN GHC
  data PParams = MkPParams
    { a                :: Integer
    , b                :: Integer
    , maxBlockSize     :: Integer
    , maxTxSize        :: Integer
    , maxHeaderSize    :: Integer
    , maxValSize       :: Integer
    , minUTxOValue     :: Integer
    , poolDeposit      :: Integer
    , emax             :: Integer
    , pv               :: (Integer, Integer)
    , votingThresholds :: ()
    , minCCSize        :: Integer
    , ccTermLimit      :: Integer
    , govExpiration    :: Integer
    , govDeposit       :: Integer
    , drepDeposit      :: Integer
    , drepActivity     :: Integer
    } deriving (Show, Generic)
  instance ToExpr PParams
#-}
{-# COMPILE GHC PParams = data PParams (MkPParams) #-}

record UTxOEnv : Set where
  field slot    : ℕ
        pparams : PParams

{-# FOREIGN GHC
  data UTxOEnv = MkUTxOEnv
    { slot :: Integer, pparams :: PParams } deriving (Show, Generic)
  instance ToExpr UTxOEnv
#-}
{-# COMPILE GHC UTxOEnv = data UTxOEnv (MkUTxOEnv) #-}

record UTxOState : Set where
  field utxo : UTxO
        fees : Coin

{-# FOREIGN GHC
  data UTxOState = MkUTxOState
    { utxo :: UTxO, fees :: Coin } deriving (Show, Generic)
  instance ToExpr UTxOState
#-}
{-# COMPILE GHC UTxOState = data UTxOState (MkUTxOState) #-}
