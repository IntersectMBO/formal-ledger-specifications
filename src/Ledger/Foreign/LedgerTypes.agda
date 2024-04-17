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
  import Data.TreeDiff
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

HSMap : Set → Set → Set
HSMap K V = List (Pair K V)
Rational = Pair ℤ ℕ

record TxId : Set where
  field txid : ℕ

Coin          = ℕ
Addr          = ℕ -- just payment credential

Ix            = ℕ
Epoch         = ℕ
ScriptHash    = ℕ

AuxiliaryData = ⊤
DataHash      = ⊤
Datum         = ⊤
Redeemer      = ⊤
Anchor        = ⊤
Network       = ⊤
PParamsUpdate = ℕ
Script        = ⊤

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

  type TxId    = Integer
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
  type UTxO  = [(TxIn, TxOut)]
  type Hash  = Integer

  data Tag     = Spend | Mint | Cert | Rewrd | Vote | Propose deriving (Show, Generic)
  type RdmrPtr = (Tag, Ix)
  type ExUnits = (Integer, Integer)
  type ProtVer = (Integer, Integer)
  type GovActionID = (TxId, Integer)
  newtype TxId = MkTxId Integer
#-}
{-# COMPILE GHC Tag = data Tag (Spend | Mint | Cert | Rewrd | Vote | Propose) #-}
{-# COMPILE GHC TxId = data TxId (MkTxId) #-}

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
    { esCC           :: (Maybe ([(Credential, Epoch)], Rational), GovActionID)
    , esConstitution :: ((DataHash, Maybe ScriptHash), GovActionID)
    , esPV           :: (ProtVer, GovActionID)
    , esPParams      :: (PParams, GovActionID)
    , esWithdrawals  :: [(RwdAddr, Coin)]
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
    | NewCommittee [(Credential, Epoch)] [Credential] Rational
    | NewConstitution DataHash (Maybe ScriptHash)
    | TriggerHF ProtVer
    | ChangePParams PParamsUpdate
    | TreasuryWdrl [(RwdAddr, Coin)]
    | Info

  data Vote
    = VoteYes
    | VoteNo
    | VoteAbstain

  data GovActionState = MkGovActionState
    { gasVotes :: [(Voter, Vote)]
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
