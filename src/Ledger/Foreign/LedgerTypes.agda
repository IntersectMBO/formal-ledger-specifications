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
Anchor        = ⊤

TxIn          = Pair TxId Ix
TxOut         = Pair Addr $ Pair Coin $ Maybe DataHash
UTxO          = HSMap TxIn TxOut

Hash          = ℕ

data Tag : Set where Spend Mint Cert Rewrd Vote Propose : Tag
RdmrPtr = Pair Tag Ix
ExUnits = Pair ℕ ℕ

{-# FOREIGN GHC
  type Coin  = Integer
  type Addr  = Integer

  type TxId    = Integer
  type Ix      = Integer
  type Epoch   = Integer

  type AuxiliaryData = ()
  type DataHash      = ()
  type Datum         = ()
  type Redeemer      = ()
  type Anchor        = ()

  type TxIn  = (TxId, Ix)
  type TxOut = (Addr, (Coin, Maybe DataHash))
  type UTxO  = [(TxIn, TxOut)]
  type Hash  = Integer

  data Tag     = Spend | Mint | Cert | Rewrd | Vote | Propose deriving (Show, Generic)
  instance ToExpr Tag
  type RdmrPtr = (Tag, Ix)
  type ExUnits = (Integer, Integer)
#-}
{-# COMPILE GHC Tag = data Tag (Spend | Mint | Cert | Rewrd | Vote | Propose) #-}

{-# FOREIGN GHC
  data Credential
    = ScriptObj Integer
    | KeyHashObj Integer
    deriving (Show, Eq, Generic)
  instance ToExpr Credential
#-}
data Credential : Set where
  ScriptObj  : Hash → Credential
  KeyHashObj : Hash → Credential
{-# COMPILE GHC Credential = data Credential (ScriptObj | KeyHashObj) #-}

PoolParams = Credential

{-# FOREIGN GHC
  type PoolParams = Credential

  data GovRole
    = CC
    | DRep
    | SPO
    deriving (Show, Eq, Generic)
  instance ToExpr GovRole
#-}
data GovRole : Set where
  CC DRep SPO : GovRole
{-# COMPILE GHC GovRole = data GovRole (CC | DRep | SPO) #-}

{-# FOREIGN GHC
  data VDeleg
    = CredVoter GovRole Credential
    | AbstainRep
    | NoConfidenceRep
    deriving (Show, Eq, Generic)
  instance ToExpr VDeleg
#-}
data VDeleg : Set where
  CredVoter        : GovRole → Credential →  VDeleg
  AbstainRep       :                         VDeleg
  NoConfidenceRep  :                         VDeleg
{-# COMPILE GHC VDeleg = data VDeleg (CredVoter | AbstainRep | NoConfidenceRep) #-}

{-# FOREIGN GHC
  data TxCert
    = Delegate Credential (Maybe VDeleg) (Maybe Credential) Coin
    | Dereg Credential
    | RegPool Credential PoolParams
    | RetirePool Credential Epoch
    | RegDRep Credential Coin Anchor
    | DeRegDRep Credential
    | CCRegHot Credential (Maybe Credential)
    deriving (Show, Eq, Generic)
  instance ToExpr TxCert
#-}
data TxCert : Set where
  Delegate    : Credential → Maybe VDeleg → Maybe Credential → Coin → TxCert
  Dereg       : Credential → TxCert
  RegPool     : Credential → PoolParams → TxCert
  RetirePool  : Credential → Epoch → TxCert
  RegDRep     : Credential → Coin → Anchor → TxCert
  DeRegDRep   : Credential → TxCert
  CCRegHot    : Credential → Maybe Credential → TxCert
{-# COMPILE GHC TxCert = data TxCert (Delegate | Dereg | RegPool | RetirePool | RegDRep | DeRegDRep | CCRegHot) #-}

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
        txcerts : List TxCert
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
    , txcerts :: [TxCert]
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
