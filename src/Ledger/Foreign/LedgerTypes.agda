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
DataHash      = ⊤
Datum         = ⊤
Redeemer      = ⊤

TxIn          = Pair TxId Ix
TxOut         = Pair Addr $ Pair Coin $ Maybe DataHash
UTxO          = HSMap TxIn TxOut

Hash          = ℕ

data Tag : Set where Spend Mint Cert Rewrd : Tag
RdmrPtr = Pair Tag Ix
ExUnits = Pair ℕ ℕ

{-# FOREIGN GHC
  type Coin  = Integer
  type Addr  = Integer

  type TxId  = Integer
  type Ix    = Integer
  type Epoch = Integer

  type AuxiliaryData = ()
  type DataHash      = ()
  type Datum         = ()
  type Redeemer      = ()

  type TxIn  = (TxId, Ix)
  type TxOut = (Addr, (Coin, Maybe DataHash))
  type UTxO  = [(TxIn, TxOut)]
  type Hash  = Integer

  data Tag     = Spend | Mint | Cert | Rewrd deriving (Show, Generic)
  instance ToExpr Tag
  type RdmrPtr = (Tag, Ix)
  type ExUnits = (Integer, Integer)
#-}
{-# COMPILE GHC Tag = data Tag (Spend | Mint | Cert | Rewrd) #-}

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
        collateral     : List TxIn
        reqSigHash     : List Hash
        scriptIntHash  : Maybe Hash
{-# FOREIGN GHC
  data TxBody = MkTxBody
    { txins  :: [TxIn]
    , txouts :: [(Ix, TxOut)]
    , txfee  :: Coin
    , txvldt :: (Maybe Integer, Maybe Integer)
    , txsize :: Integer
    , txid   :: TxId
    , collateral    :: [TxIn]
    , reqSigHash    :: [Hash]
    , scriptIntHash :: Maybe Hash
    } deriving (Show, Generic)
  instance ToExpr TxBody
#-}
{-# COMPILE GHC TxBody = data TxBody (MkTxBody) #-}

record TxWitnesses : Set where
  field vkSigs  : List (Pair ℕ ℕ)
        scripts : List Empty
        txdats  : HSMap DataHash Datum
        txrdmrs : HSMap RdmrPtr (Pair Redeemer ExUnits)
{-# FOREIGN GHC
  data TxWitnesses = MkTxWitnesses
    { vkSigs  :: [(Integer, Integer)]
    , scripts :: [AgdaEmpty]
    , txdats  :: [(DataHash, Datum)]
    , txrdmrs :: [(RdmrPtr, (Redeemer, ExUnits))]
    } deriving (Show, Generic)
  instance ToExpr TxWitnesses
#-}
{-# COMPILE GHC TxWitnesses = data TxWitnesses (MkTxWitnesses) #-}

record Tx : Set where
  field body : TxBody
        wits : TxWitnesses
        txAD : Maybe AuxiliaryData
{-# FOREIGN GHC
  data Tx = MkTx
    { body :: TxBody
    , wits :: TxWitnesses
    , txAD :: Maybe AuxiliaryData
    } deriving (Show, Generic)
  instance ToExpr Tx
#-}
{-# COMPILE GHC Tx = data Tx (MkTx) #-}

record PParams : Set where
  field a                   : ℕ
        b                   : ℕ
        maxBlockSize        : ℕ
        maxTxSize           : ℕ
        maxHeaderSize       : ℕ
        maxValSize          : ℕ
        minUTxOValue        : Coin
        poolDeposit         : Coin
        Emax                : Epoch
        pv                  : Pair ℕ ℕ
        votingThresholds    : ⊤ -- TODO: foreign rational numbers
        govActionLifetime   : ℕ
        govActionDeposit    : Coin
        drepDeposit         : Coin
        drepActivity        : Epoch
        ccMinSize           : ℕ
        ccMaxTermLength     : ℕ
        minimumAVS          : Coin
        costmdls            : Empty
        prices              : ⊤
        maxTxExUnits        : ExUnits
        maxBlockExUnits     : ExUnits
        coinsPerUTxOWord    : Coin
        -- collateralPercent   : ℕ
        maxCollateralInputs : ℕ
{-# FOREIGN GHC
  data PParams = MkPParams
    { a                   :: Integer
    , b                   :: Integer
    , maxBlockSize        :: Integer
    , maxTxSize           :: Integer
    , maxHeaderSize       :: Integer
    , maxValSize          :: Integer
    , minUTxOValue        :: Coin
    , poolDeposit         :: Coin
    , emax                :: Epoch
    , pv                  :: (Integer, Integer)
    , votingThresholds    :: ()
    , govActionLifetime   :: Integer
    , govActionDeposit    :: Coin
    , drepDeposit         :: Coin
    , drepActivity        :: Epoch
    , ccMinSize           :: Integer
    , ccMaxTermLength     :: Integer
    , minimumAVS          :: Coin
    , costmdls            :: AgdaEmpty
    , prices              :: ()
    , maxTxExUnits        :: ExUnits
    , maxBlockExUnits     :: ExUnits
    , coinsPerUTxOWord    :: Coin
    , maxCollateralInputs :: Integer
    } deriving (Show, Generic)
  instance ToExpr PParams
#-}
{-# COMPILE GHC PParams = data PParams (MkPParams) #-}

record UTxOEnv : Set where
  field slot    : ℕ
        pparams : PParams
{-# FOREIGN GHC
  data UTxOEnv = MkUTxOEnv
    { slot    :: Integer
    , pparams :: PParams
    } deriving (Show, Generic)
  instance ToExpr UTxOEnv
#-}
{-# COMPILE GHC UTxOEnv = data UTxOEnv (MkUTxOEnv) #-}

record UTxOState : Set where
  field utxo : UTxO
        fees : Coin
{-# FOREIGN GHC
  data UTxOState = MkUTxOState
    { utxo :: UTxO
    , fees :: Coin
    } deriving (Show, Generic)
  instance ToExpr UTxOState
#-}
{-# COMPILE GHC UTxOState = data UTxOState (MkUTxOState) #-}
