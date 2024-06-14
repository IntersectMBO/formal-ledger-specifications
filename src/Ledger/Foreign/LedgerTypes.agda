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

data Empty : Type where

{-# FOREIGN GHC
  data AgdaEmpty deriving (Show, Generic)
#-}

data ComputationResult E A : Type where
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

record HSMap K V : Type where
  constructor MkHSMap
  field assocList : List (Pair K V)

record HSSet A : Type where
  constructor MkHSSet
  field elems : List A

Rational = Pair ℤ ℕ

record TxId : Type where
  field txid : ℕ

Coin          = ℕ
Addr          = ℕ -- just payment credential

Ix            = ℕ
Epoch         = ℕ
ScriptHash    = ℕ
Slot          = ℕ

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

HashProtected : Type → Type
HashProtected A = Pair A GovActionID

data Tag : Type where Spend Mint Cert Rewrd VoteTag Propose : Tag
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
  type Slot = Integer

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
data Credential : Type where
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
data GovRole : Type where
  CC DRep SPO : GovRole
{-# COMPILE GHC GovRole = data GovRole (CC | DRep | SPO) #-}

{-# FOREIGN GHC
  data VDeleg
    = CredVoter GovRole Credential
    | AbstainRep
    | NoConfidenceRep
    deriving (Show, Eq, Generic)
#-}
data VDeleg : Type where
  CredVoter        : GovRole → Credential →  VDeleg
  AbstainRep       :                         VDeleg
  NoConfidenceRep  :                         VDeleg
{-# COMPILE GHC VDeleg = data VDeleg (CredVoter | AbstainRep | NoConfidenceRep) #-}

{-# FOREIGN GHC
  data TxCert
    = Delegate Credential (Maybe VDeleg) (Maybe Integer) Coin
    | Dereg Credential
    | RegPool Integer PoolParams
    | RetirePool Integer Epoch
    | RegDRep Credential Coin Anchor
    | DeRegDRep Credential
    | CCRegHot Credential (Maybe Credential)
    deriving (Show, Eq, Generic)
#-}
data TxCert : Type where
  Delegate    : Credential → Maybe VDeleg → Maybe Hash → Coin → TxCert
  Dereg       : Credential → TxCert
  RegPool     : Hash → PoolParams → TxCert
  RetirePool  : Hash → Epoch → TxCert
  RegDRep     : Credential → Coin → Anchor → TxCert
  DeRegDRep   : Credential → TxCert
  CCRegHot    : Credential → Maybe Credential → TxCert
{-# COMPILE GHC TxCert = data TxCert (Delegate | Dereg | RegPool | RetirePool | RegDRep | DeRegDRep | CCRegHot) #-}

record TxBody : Type where
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

record TxWitnesses : Type where
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

record Tx : Type where
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

record DrepThresholds : Type where
  field P1 P2a P2b P3 P4 P5a P5b P5c P5d P6 : Rational

record PoolThresholds : Type where
  field Q1 Q2a Q2b Q4 Q5e : Rational

record PParams : Type where
  field a                      : ℕ
        b                      : ℕ
        maxBlockSize           : ℕ
        maxTxSize              : ℕ
        maxHeaderSize          : ℕ
        maxValSize             : ℕ
        minUTxOValue           : Coin
        poolDeposit            : Coin
        keyDeposit             : Coin
        Emax                   : Epoch
        nopt                   : ℕ
        pv                     : Pair ℕ ℕ
        poolVotingThresholds   : PoolThresholds
        drepVotingThresholds   : DrepThresholds
        govActionLifetime      : ℕ
        govActionDeposit       : Coin
        drepDeposit            : Coin
        drepActivity           : Epoch
        ccMinSize              : ℕ
        ccMaxTermLength        : ℕ
        costmdls               : ⊤
        prices                 : ⊤
        maxTxExUnits           : ExUnits
        maxBlockExUnits        : ExUnits
        coinsPerUTxOByte       : Coin
        -- collateralPercent   : ℕ
        maxCollateralInputs    : ℕ

record PParamsUpdate : Type where
  field a                      : Maybe ℕ
        b                      : Maybe ℕ
        maxBlockSize           : Maybe ℕ
        maxTxSize              : Maybe ℕ
        maxHeaderSize          : Maybe ℕ
        maxValSize             : Maybe ℕ
        minUTxOValue           : Maybe Coin
        poolDeposit            : Maybe Coin
        keyDeposit             : Maybe Coin
        Emax                   : Maybe Epoch
        nopt                   : Maybe ℕ
        pv                     : Maybe (Pair ℕ ℕ)
        poolVotingThresholds   : Maybe PoolThresholds
        drepVotingThresholds   : Maybe DrepThresholds
        govActionLifetime      : Maybe ℕ
        govActionDeposit       : Maybe Coin
        drepDeposit            : Maybe Coin
        drepActivity           : Maybe Epoch
        ccMinSize              : Maybe ℕ
        ccMaxTermLength        : Maybe ℕ
        costmdls               : Maybe ⊤
        prices                 : Maybe ⊤
        maxTxExUnits           : Maybe ExUnits
        maxBlockExUnits        : Maybe ExUnits
        coinsPerUTxOByte       : Maybe Coin
        -- collateralPercent   : Maybe ℕ
        maxCollateralInputs    : Maybe ℕ

{-# FOREIGN GHC
  data DrepThresholds = MkDrepThresholds
    { p1      :: Rational
    , p2a     :: Rational
    , p2b     :: Rational
    , p3      :: Rational
    , p4      :: Rational
    , p5a     :: Rational
    , p5b     :: Rational
    , p5c     :: Rational
    , p5d     :: Rational
    , p6      :: Rational
    }
    deriving Show

  data PoolThresholds = MkPoolThresholds
    { q1  :: Rational
    , q2a :: Rational
    , q2b :: Rational
    , q4  :: Rational
    , q5e :: Rational
    }
    deriving Show

  data PParams = MkPParams
    { ppA                   :: Integer
    , ppB                   :: Integer
    , ppMaxBlockSize        :: Integer
    , ppMaxTxSize           :: Integer
    , ppMaxHeaderSize       :: Integer
    , ppMaxValSize          :: Integer
    , ppMinUTxOValue        :: Coin
    , ppPoolDeposit         :: Coin
    , ppKeyDeposit          :: Coin
    , ppEmax                :: Epoch
    , ppNopt                :: Integer
    , ppPv                  :: (Integer, Integer)
    , ppPoolVotingThresholds :: PoolThresholds
    , ppDrepVotingThresholds :: DrepThresholds
    , ppGovActionLifetime   :: Integer
    , ppGovActionDeposit    :: Coin
    , ppDrepDeposit         :: Coin
    , ppDrepActivity        :: Epoch
    , ppCCMinSize           :: Integer
    , ppCCMaxTermLength     :: Integer
    , ppCostmdls            :: ()
    , ppPrices              :: ()
    , ppMaxTxExUnits        :: ExUnits
    , ppMaxBlockExUnits     :: ExUnits
    , ppCoinsPerUTxOByte    :: Coin
    , ppMaxCollateralInputs :: Integer
    } deriving (Show, Generic)

  data PParamsUpdate = MkPParamsUpdate
    { ppuA                    :: Maybe Integer
    , ppuB                    :: Maybe Integer
    , ppuMaxBlockSize         :: Maybe Integer
    , ppuMaxTxSize            :: Maybe Integer
    , ppuMaxHeaderSize        :: Maybe Integer
    , ppuMaxValSize           :: Maybe Integer
    , ppuMinUTxOValue         :: Maybe Coin
    , ppuPoolDeposit          :: Maybe Coin
    , ppuKeyDeposit           :: Maybe Coin
    , ppuEmax                 :: Maybe Epoch
    , ppuNopt                 :: Maybe Integer
    , ppuPv                   :: Maybe (Integer, Integer)
    , ppuPoolVotingThresholds :: Maybe PoolThresholds
    , ppuDrepVotingThresholds :: Maybe DrepThresholds
    , ppuGovActionLifetime    :: Maybe Integer
    , ppuGovActionDeposit     :: Maybe Coin
    , ppuDrepDeposit          :: Maybe Coin
    , ppuDrepActivity         :: Maybe Epoch
    , ppuCCMinSize            :: Maybe Integer
    , ppuCCMaxTermLength      :: Maybe Integer
    , ppuCostmdls             :: Maybe ()
    , ppuPrices               :: Maybe ()
    , ppuMaxTxExUnits         :: Maybe ExUnits
    , ppuMaxBlockExUnits      :: Maybe ExUnits
    , ppuCoinsPerUTxOByte     :: Maybe Coin
    , ppuMaxCollateralInputs  :: Maybe Integer
    } deriving (Show, Generic)
#-}
{-# COMPILE GHC DrepThresholds = data DrepThresholds (MkDrepThresholds) #-}
{-# COMPILE GHC PoolThresholds = data PoolThresholds (MkPoolThresholds) #-}
{-# COMPILE GHC PParams = data PParams (MkPParams) #-}
{-# COMPILE GHC PParamsUpdate = data PParamsUpdate (MkPParamsUpdate) #-}

record UTxOEnv : Type where
  field slot     : ℕ
        pparams  : PParams
        treasury : Coin
{-# FOREIGN GHC
  data UTxOEnv = MkUTxOEnv
    { ueSlot     :: Integer
    , uePparams  :: PParams
    , ueTreasury :: Coin
    } deriving (Show, Generic)
#-}
{-# COMPILE GHC UTxOEnv = data UTxOEnv (MkUTxOEnv) #-}

record UTxOState : Type where
  field utxo : UTxO
        fees : Coin
{-# FOREIGN GHC
  data UTxOState = MkUTxOState
    { utxo :: UTxO
    , fees :: Coin
    } deriving (Show, Generic)
#-}
{-# COMPILE GHC UTxOState = data UTxOState (MkUTxOState) #-}

record EnactState : Type where
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

record GovEnv : Type where
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

data GovAction : Type where
  NoConfidence     :                                                         GovAction
  NewCommittee     : (HSMap Credential Epoch) → List Credential → Rational → GovAction
  NewConstitution  : DataHash → Maybe ScriptHash                           → GovAction
  TriggerHF        : ProtVer                                               → GovAction
  ChangePParams    : PParamsUpdate                                         → GovAction
  TreasuryWdrl     : HSMap RwdAddr Coin                                    → GovAction
  Info             :                                                         GovAction

data Vote : Type where
  VoteYes     : Vote
  VoteNo      : Vote
  VoteAbstain : Vote

record GovActionState : Type where
  field gasVotes       : HSMap Voter Vote
        gasReturnAddr  : RwdAddr
        gasExpiresIn   : Epoch
        gasAction      : GovAction
        gasPrevAction  : GovActionID

record GovVote : Type where
  field gvGid         : GovActionID
        gvVoter       : Voter
        gvVote        : Vote
        gvAnchor      : Maybe Anchor

record GovProposal : Type where
  field gpAction      : GovAction
        gpPrevAction  : GovActionID
        gpPolicy      : Maybe ScriptHash
        gpDeposit     : Coin
        gpReturnAddr  : RwdAddr
        gpAnchor      : Anchor

data GovSignal : Type where
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

record CertEnv : Type where
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

record DState : Type where
  field
    voteDelegs   : HSMap Credential VDeleg
    stakeDelegs  : HSMap Credential Hash
    rewards      : HSMap Credential Coin
{-# FOREIGN GHC
  data DState = MkDState
    { voteDelegs  :: HSMap Credential VDeleg
    , stakeDelegs :: HSMap Integer Credential
    , rewards     :: HSMap Credential Coin
    }
#-}
{-# COMPILE GHC DState = data DState (MkDState) #-}

record PState : Type where
  field pools     : HSMap Hash PoolParams
        retiring  : HSMap Hash Epoch
{-# FOREIGN GHC
  data PState = MkPState
    { pools :: HSMap Credential PoolParams
    , retiring :: HSMap Credential Epoch
    }
#-}
{-# COMPILE GHC PState = data PState (MkPState) #-}

record GState : Type where
  field dreps      : HSMap Credential Epoch
        ccHotKeys  : HSMap Credential (Maybe Credential)
{-# FOREIGN GHC
  data GState = MkGState
    { dreps     :: HSMap Credential Epoch
    , ccHotKeys :: HSMap Credential (Maybe Credential)
    }
#-}
{-# COMPILE GHC GState = data GState (MkGState) #-}

record CertState : Type where
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

record StakeDistrs : Type where
  field stakeDistr  : HSMap VDeleg Coin
{-# FOREIGN GHC
  newtype StakeDistrs = MkStakeDistrs (HSMap VDeleg Coin)
#-}
{-# COMPILE GHC StakeDistrs = data StakeDistrs (MkStakeDistrs) #-}

record RatifyEnv : Type where
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

record RatifyState : Type where
  field es              : EnactState
        removed         : HSSet (Pair GovActionID GovActionState)
        delay           : Bool
{-# FOREIGN GHC
  data RatifyState = MkRatifyState
   { rsEnactState :: EnactState
   , rsRemoved    :: HSSet (GovActionID, GovActionState)
   , rsDelay      :: Bool
   }
#-}
{-# COMPILE GHC RatifyState = data RatifyState (MkRatifyState) #-}

record LEnv : Type where
  field slot        : Slot
        ppolicy     : Maybe ScriptHash
        pparams     : PParams
        enactState  : EnactState
        treasury    : Coin
{-# FOREIGN GHC
  data LedgerEnv = MkLedgerEnv
    { leSlot       :: Slot
    , lePPolicy    :: Maybe ScriptHash
    , lePParams    :: PParams
    , leEnactState :: EnactState
    , leTreasury   :: Coin
    }
#-}
{-# COMPILE GHC LEnv = data LedgerEnv (MkLedgerEnv) #-}

record LState : Type where
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

record EnactEnv : Type where
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

record Acnt : Type where
  field treasury reserves : Coin
{-# FOREIGN GHC
  data Acnt = MkAcnt
    { treasury :: Coin
    , reserves :: Coin
    }
#-}
{-# COMPILE GHC Acnt = data Acnt (MkAcnt) #-}

record Snapshot : Set where
  field
    stake        : HSMap Credential Coin
    delegations  : HSMap Credential Hash
    -- poolParameters : KeyHash ⇀ PoolParam
{-# FOREIGN GHC
  data Snapshot = MkSnapshot
    { sStake       :: Map Credential Coin
    , sDelegations :: Map Credential Integer
    }
#-}
{-# COMPILE GHC Snapshot = data Snapshot (MkSnapshot) #-}

record Snapshots : Set where
  field
    mark set go  : Snapshot
    feeSS        : Coin
{-# FOREIGN GHC
  data Snapshots = MkSnapshots
    { ssMark  :: Snapshot
    , ssSet   :: Snapshot
    , ssGo    :: Snapshot
    , ssFeeSS :: SnapShot
    }
#-}
{-# COMPILE GHC Snapshots = data Snapshots (MkSnapshots) #-}

record EpochState : Type where
  field acnt       : Acnt
        ss         : Snapshots
        ls         : LState
        es         : EnactState
        fut        : RatifyState
{-# FOREIGN GHC
  data EpochState = MkEpochState
    { esAcnt       :: Acnt
    , esSs         :: Snapshots
    , esLState     :: LedgerState
    , esEnactState :: EnactState
    , esFut        :: RatifyState
    }
#-}
{-# COMPILE GHC EpochState = data EpochState (MkEpochState) #-}

record NewEpochEnv : Type where
  field stakeDistrs : StakeDistrs
{-# FOREIGN GHC
  newtype NewEpochEnv = MkNewEpochEnv {stakeDistrs :: StakeDistrs}
#-}
{-# COMPILE GHC NewEpochEnv = data NewEpochEnv (MkNewEpochEnv) #-}

record NewEpochState : Type where
  field lastEpoch   : Epoch
        epochState  : EpochState
{-# FOREIGN GHC
  data NewEpochState = MkNewEpochState
    { lastEpoch  :: Epoch
    , epochState :: EpochState
    }
#-}
{-# COMPILE GHC NewEpochState = data NewEpochState (MkNewEpochState) #-}

record ChainState : Type where
  field csNewEpochState : NewEpochState
{-# FOREIGN GHC
  newtype ChainState = MkChainState
    { csNewEpochState :: NewEpochState
    }
#-}
{-# COMPILE GHC ChainState = data ChainState (MkChainState) #-}

record Block : Type where
  field blockTxs : List Tx
        blockSlot : Slot
{-# FOREIGN GHC
  data Block = MkBlock
    { blockTxs :: [Tx]
    , blockSlot :: Slot
    }
#-}
{-# COMPILE GHC Block = data Block (MkBlock) #-}

record DelegEnv : Type where
  field dePParams  : PParams
        dePools    : HSMap Hash PoolParams
{-# FOREIGN GHC
  data DelegEnv = MkDelegEnv
    { dePParams :: PParams
    , dePools :: HSMap Integer PoolParams
    }
#-}
{-# COMPILE GHC DelegEnv = data DelegEnv (MkDelegEnv) #-}

