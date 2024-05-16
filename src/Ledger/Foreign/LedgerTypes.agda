module Ledger.Foreign.LedgerTypes where
{-# FOREIGN GHC
  {-# LANGUAGE DeriveGeneric #-}
  {-# LANGUAGE DeriveFunctor #-}
  {-# LANGUAGE EmptyDataDeriving #-}
#-}

open import Prelude

open import Foreign.Haskell
open import Foreign.Haskell.Coerce
open import Foreign.Haskell.Either
open import Data.Rational.Base

{-# FOREIGN GHC
  import GHC.Generics (Generic)
  import Prelude hiding (Rational)
#-}

data Empty : Set where

{-# FOREIGN GHC
  data AgdaEmpty deriving (Show, Generic)
#-}

data ComputationResult E A : Set where
  Success : A → ComputationResult E A
  Failure : E → ComputationResult E A
{-# FOREIGN GHC
  data ComputationResult e a = Success a | Failure e
    deriving (Functor, Eq, Show, Generic)

  instance Applicative (ComputationResult e) where
    pure = Success
    (Success f) <*> x = f <$> x
    (Failure e) <*> _ = Failure e

  instance Monad (ComputationResult e) where
    return = pure
    (Success a) >>= m = m a
    (Failure e) >>= _ = Failure e
#-}
{-# COMPILE GHC ComputationResult = data ComputationResult (Success | Failure) #-}

{-# COMPILE GHC Empty = data AgdaEmpty () #-}

record HSMap K V : Set where
  constructor MkHSMap
  field assocList : List (Pair K V)

record HSSet A : Set where
  constructor MkHSSet
  field elems : List A

Rational = Pair ℤ ℕ

record TxId : Set where
  field txid : ℕ

Coin          = ℕ
Addr          = ℕ -- just payment credential

Ix            = ℕ
Epoch         = ℕ
ScriptHash    = ℕ
Slot          = ℕ
PParamsUpdate = ℕ

Anchor        = ⊤
AuxiliaryData = ⊤
Datum         = ⊤
Redeemer      = ⊤
Network       = ⊤
Script        = ⊤
DataHash      = ⊤

TxIn          = Pair TxId Ix
TxOut         = Pair Addr $ Pair Coin $ Pair (Maybe (Either Datum DataHash)) $ Maybe Script
UTxO          = HSMap TxIn TxOut

Hash          = ℕ

GovActionID   = Pair TxId ℕ

HashProtected : Set → Set
HashProtected A = Pair A GovActionID

data Tag : Set where Spend Mint Cert Rewrd VoteTag Propose : Tag
RdmrPtr = Pair Tag Ix
ExUnits = Pair ℕ ℕ
ProtVer = Pair ℕ ℕ

{-# FOREIGN GHC
  type Rational = (Integer, Integer)
  type Coin  = Integer
  type Addr  = Integer

  newtype TxId = MkTxId Integer
    deriving (Generic, Show, Eq, Ord)
  newtype HSMap k v = MkHSMap [(k, v)]
    deriving (Generic, Show, Eq, Ord)
  newtype HSSet a = MkHSSet [a]

  type Ix      = Integer
  type Epoch   = Integer
  type ScriptHash    = Integer
  type PParamsUpdate = Integer

  type AuxiliaryData = ()
  type DataHash      = ()
  type Datum         = ()
  type Redeemer      = ()
  type Anchor        = ()
  type Network       = ()
  type Script        = ()

  type TxIn  = (TxId, Ix)
  type TxOut = (Addr, (Coin, (Maybe (Either Datum DataHash), Maybe Script)))
  type UTxO  = HSMap TxIn TxOut
  type Hash  = Integer

  data Tag     = Spend | Mint | Cert | Rewrd | Vote | Propose deriving (Show, Generic)
  type RdmrPtr = (Tag, Ix)
  type ExUnits = (Integer, Integer)
  type ProtVer = (Integer, Integer)
  type GovActionID = (TxId, Integer)
#-}
{-# COMPILE GHC Tag = data Tag (Spend | Mint | Cert | Rewrd | Vote | Propose) #-}
{-# COMPILE GHC TxId = data TxId (MkTxId) #-}
{-# COMPILE GHC HSMap = data HSMap (MkHSMap) #-}
{-# COMPILE GHC HSSet = data HSSet (MkHSSet) #-}

{-# FOREIGN GHC
  data Credential
    = ScriptObj Integer
    | KeyHashObj Integer
    deriving (Show, Eq, Generic)
#-}
data Credential : Set where
  ScriptObj  : Hash → Credential
  KeyHashObj : Hash → Credential
{-# COMPILE GHC Credential = data Credential (ScriptObj | KeyHashObj) #-}

PoolParams = Credential
RwdAddr = Pair Network Credential

{-# FOREIGN GHC
  type PoolParams = Credential
  type RwdAddr = (Network, Credential)

  data GovRole
    = CC
    | DRep
    | SPO
    deriving (Show, Eq, Generic)
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
        refInputs : List TxIn
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
    , refInputs :: [TxIn]
    , txouts :: HSMap Ix TxOut
    , txfee  :: Coin
    , txvldt :: (Maybe Integer, Maybe Integer)
    , txsize :: Integer
    , txid   :: TxId
    , collateral    :: [TxIn]
    , reqSigHash    :: [Hash]
    , scriptIntHash :: Maybe Hash
    , txcerts :: [TxCert]
    } deriving (Show, Generic)
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
    , txdats  :: HSMap DataHash Datum
    , txrdmrs :: HSMap RdmrPtr (Redeemer, ExUnits)
    } deriving (Show, Generic)
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
        keyDeposit          : Coin
        Emax                : Epoch
        nopt                : ℕ
        pv                  : Pair ℕ ℕ
        votingThresholds    : ⊤ -- TODO: foreign rational numbers
        govActionLifetime   : ℕ
        govActionDeposit    : Coin
        drepDeposit         : Coin
        drepActivity        : Epoch
        ccMinSize           : ℕ
        ccMaxTermLength     : ℕ
        costmdls            : ⊤
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
    , keyDeposit          :: Coin
    , emax                :: Epoch
    , nopt                :: Integer
    , pv                  :: (Integer, Integer)
    , votingThresholds    :: ()
    , govActionLifetime   :: Integer
    , govActionDeposit    :: Coin
    , drepDeposit         :: Coin
    , drepActivity        :: Epoch
    , ccMinSize           :: Integer
    , ccMaxTermLength     :: Integer
    , costmdls            :: ()
    , prices              :: ()
    , maxTxExUnits        :: ExUnits
    , maxBlockExUnits     :: ExUnits
    , coinsPerUTxOWord    :: Coin
    , maxCollateralInputs :: Integer
    } deriving (Show, Generic)
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
#-}
{-# COMPILE GHC UTxOState = data UTxOState (MkUTxOState) #-}

record EnactState : Set where
  field esCC           : HashProtected (Maybe (Pair (HSMap Credential Epoch) Rational))
        esConstitution : HashProtected (Pair DataHash (Maybe ScriptHash))
        esPV           : HashProtected ProtVer
        esPParams      : HashProtected PParams
        esWithdrawals  : HSMap RwdAddr Coin
{-# FOREIGN GHC
  data EnactState = MkEnactState
    { esCC           :: (Maybe (HSMap Credential Epoch, Rational), GovActionID)
    , esConstitution :: ((DataHash, Maybe ScriptHash), GovActionID)
    , esPV           :: (ProtVer, GovActionID)
    , esPParams      :: (PParams, GovActionID)
    , esWithdrawals  :: HSMap RwdAddr Coin
    }
#-}
{-# COMPILE GHC EnactState = data EnactState (MkEnactState) #-}

record GovEnv : Set where
  field geTxId       : TxId
        geEpoch      : Epoch
        gePParams    : PParams
        gePPolicy    : Maybe ScriptHash
        geEnactState : EnactState
{-# FOREIGN GHC
  data GovEnv = MkGovEnv
    { geTxId :: TxId
    , geEpoch :: Epoch
    , gePParams :: PParams
    , gePPolicy :: Maybe ScriptHash
    , geEnactState :: EnactState
    }
#-}
{-# COMPILE GHC GovEnv = data GovEnv (MkGovEnv) #-}

Voter = Pair GovRole Credential

data GovAction : Set where
  NoConfidence     :                                                         GovAction
  NewCommittee     : (HSMap Credential Epoch) → List Credential → Rational → GovAction
  NewConstitution  : DataHash → Maybe ScriptHash                           → GovAction
  TriggerHF        : ProtVer                                               → GovAction
  ChangePParams    : PParamsUpdate                                         → GovAction
  TreasuryWdrl     : HSMap RwdAddr Coin                                    → GovAction
  Info             :                                                         GovAction

data Vote : Set where
  VoteYes     : Vote
  VoteNo      : Vote
  VoteAbstain : Vote

record GovActionState : Set where
  field gasVotes       : HSMap Voter Vote
        gasReturnAddr  : RwdAddr
        gasExpiresIn   : Epoch
        gasAction      : GovAction
        gasPrevAction  : GovActionID

record GovVote : Set where
  field gvGid         : GovActionID
        gvVoter       : Voter
        gvVote        : Vote
        gvAnchor      : Maybe Anchor

record GovProposal : Set where
  field gpAction      : GovAction
        gpPrevAction  : GovActionID
        gpPolicy      : Maybe ScriptHash
        gpDeposit     : Coin
        gpReturnAddr  : RwdAddr
        gpAnchor      : Anchor

data GovSignal : Set where
  GovSignalVote : GovVote → GovSignal
  GovSignalProposal : GovProposal → GovSignal

GovState = List (Pair GovActionID GovActionState)
{-# FOREIGN GHC
  type Voter = (GovRole, Credential)
  type GovState = [(GovActionID, GovActionState)]

  data GovAction
    = NoConfidence
    | NewCommittee (HSMap Credential Epoch) [Credential] Rational
    | NewConstitution DataHash (Maybe ScriptHash)
    | TriggerHF ProtVer
    | ChangePParams PParamsUpdate
    | TreasuryWdrl (HSMap RwdAddr Coin)
    | Info

  data Vote
    = VoteYes
    | VoteNo
    | VoteAbstain

  data GovActionState = MkGovActionState
    { gasVotes :: HSMap Voter Vote
    , gasReturnAddr :: RwdAddr
    , gasExpiresIn :: Epoch
    , gasAction :: GovAction
    , gasPrevAction :: GovActionID
    }

  data GovVote = MkGovVote
    { gvGid    :: GovActionID
    , gvVoter  :: Voter
    , gvVote   :: Vote
    , gvAnchor :: Maybe Anchor
    }
  
  data GovProposal = MkGovProposal
    { gpAction     :: GovAction
    , gpPrevAction :: GovActionID
    , gpPolicy     :: Maybe ScriptHash
    , gpDeposit    :: Coin
    , gpReturnAddr :: RwdAddr
    , gpAnchor     :: Anchor
    }

  data GovSignal
    = GovSignalVote GovVote
    | GovSignalProposal GovProposal
#-}
{-# COMPILE GHC GovAction = data GovAction
  ( NoConfidence
  | NewCommittee
  | NewConstitution
  | TriggerHF
  | ChangePParams
  | TreasuryWdrl
  | Info
  )
 #-}
{-# COMPILE GHC Vote = data Vote (VoteYes|VoteNo|VoteAbstain) #-}
{-# COMPILE GHC GovActionState = data GovActionState (MkGovActionState) #-}
{-# COMPILE GHC GovVote = data GovVote (MkGovVote) #-}
{-# COMPILE GHC GovProposal = data GovProposal (MkGovProposal) #-}
{-# COMPILE GHC GovSignal = data GovSignal (GovSignalVote|GovSignalProposal) #-}

record CertEnv : Set where
  field epoch  : Epoch
        pp     : PParams
        votes  : List GovVote
        wdrls  : HSMap RwdAddr Coin
{-# FOREIGN GHC
  data CertEnv = MkCertEnv
    { epoch :: Epoch
    , pp    :: PParams
    , votes :: [GovVote]
    , wdrls :: HSMap RwdAddr Coin
    }
#-}
{-# COMPILE GHC CertEnv = data CertEnv (MkCertEnv) #-}

record DState : Set where
  field
    voteDelegs   : HSMap Credential VDeleg
    stakeDelegs  : HSMap Credential Credential
    rewards      : HSMap Credential Coin
{-# FOREIGN GHC
  data DState = MkDState
    { voteDelegs  :: HSMap Credential VDeleg
    , stakeDelegs :: HSMap Credential Credential
    , rewards     :: HSMap Credential Coin
    }
#-}
{-# COMPILE GHC DState = data DState (MkDState) #-}

record PState : Set where
  field pools     : HSMap Credential PoolParams
        retiring  : HSMap Credential Epoch
{-# FOREIGN GHC
  data PState = MkPState
    { pools :: HSMap Credential PoolParams
    , retiring :: HSMap Credential Epoch
    }
#-}
{-# COMPILE GHC PState = data PState (MkPState) #-}

record GState : Set where
  field dreps      : HSMap Credential Epoch
        ccHotKeys  : HSMap Credential (Maybe Credential)
{-# FOREIGN GHC
  data GState = MkGState
    { dreps     :: HSMap Credential Epoch
    , ccHotKeys :: HSMap Credential (Maybe Credential)
    }
#-}
{-# COMPILE GHC GState = data GState (MkGState) #-}

record CertState : Set where
  field dState : DState
        pState : PState
        gState : GState
{-# FOREIGN GHC
  data CertState = MkCertState
    { dState :: DState
    , pState :: PState
    , gState :: GState
    }
#-}
{-# COMPILE GHC CertState = data CertState (MkCertState) #-}

record StakeDistrs : Set where
  field stakeDistr  : HSMap VDeleg Coin
{-# FOREIGN GHC
  newtype StakeDistrs = MkStakeDistrs (HSMap VDeleg Coin)
#-}
{-# COMPILE GHC StakeDistrs = data StakeDistrs (MkStakeDistrs) #-}

record RatifyEnv : Set where
  field reStakeDistrs   : StakeDistrs
        reCurrentEpoch  : Epoch
        reDReps         : HSMap Credential Epoch
        reCCHotKeys     : HSMap Credential (Maybe Credential)
        reTreasury      : Coin
{-# FOREIGN GHC
  data RatifyEnv = MkRatifyEnv
    { reStakeDistrs   :: StakeDistrs
    , reCurrentEpoch  :: Epoch
    , reDReps         :: HSMap Credential Epoch
    , reCCHotKeys     :: HSMap Credential (Maybe Credential)
    , reTreasury      :: Coin
    }
#-}
{-# COMPILE GHC RatifyEnv = data RatifyEnv (MkRatifyEnv) #-}

open import Ledger.Set.Theory

record RatifyState : Set where
  field es              : EnactState
        removed         : HSSet (Pair GovActionID GovActionState)
        delay           : Bool
{-# FOREIGN GHC
  data RatifyState = MkRatifyState
   { es      :: EnactState
   , removed :: HSSet (GovActionID, GovActionState)
   , delay   :: Bool
   }
#-}
{-# COMPILE GHC RatifyState = data RatifyState (MkRatifyState) #-}

record LEnv : Set where
  field slot        : Slot
        ppolicy     : Maybe ScriptHash
        pparams     : PParams
        enactState  : EnactState
{-# FOREIGN GHC
  data LedgerEnv = MkLedgerEnv
    { slot       :: Slot
    , ppolicy    :: Maybe ScriptHash
    , pparams    :: PParams
    , enactState :: EnactState
    }
#-}
{-# COMPILE GHC LEnv = data LedgerEnv (MkLedgerEnv) #-}

record LState : Set where
  field utxoSt     : UTxOState
        govSt      : GovState
        certState  : CertState
{-# FOREIGN GHC
  data LedgerState = MkLedgerState
    { utxoSt    :: UTxOState
    , govSt     :: GovState
    , certState :: CertState
    }
#-}
{-# COMPILE GHC LState = data LedgerState (MkLedgerState) #-}

record EnactEnv : Set where
  field gid       : GovActionID
        treasury  : Coin
        epoch     : Epoch
{-# FOREIGN GHC
  data EnactEnv = MkEnactEnv
    { eeGid :: GovActionID
    , eeTreasury :: Coin
    , eeEpoch :: Epoch
    }
#-}
{-# COMPILE GHC EnactEnv = data EnactEnv (MkEnactEnv) #-}
