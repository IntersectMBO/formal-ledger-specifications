{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE EmptyDataDeriving #-}

module MAlonzo.Code.Ledger.Foreign.LedgerTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair

import GHC.Generics (Generic)
import Prelude hiding (Rational)
data AgdaEmpty deriving (Show, Generic)
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
data Credential
  = KeyHashObj Integer
  | ScriptObj Integer
  deriving (Show, Eq, Generic)
type PoolParams = Credential
type RwdAddr = (Network, Credential)

data GovRole
  = CC
  | DRep
  | SPO
  deriving (Show, Eq, Generic)
data VDeleg
  = CredVoter GovRole Credential
  | AbstainRep
  | NoConfidenceRep
  deriving (Show, Eq, Generic)
data TxCert
  = Delegate Credential (Maybe VDeleg) (Maybe Integer) Coin
  | Dereg Credential Coin
  | RegPool Integer PoolParams
  | RetirePool Integer Epoch
  | RegDRep Credential Coin Anchor
  | DeRegDRep Credential Coin
  | CCRegHot Credential (Maybe Credential)
  deriving (Show, Eq, Generic)
type Wdrl = HSMap RwdAddr Coin
data TxBody = MkTxBody
  { txins  :: [TxIn]
  , refInputs :: [TxIn]
  , txouts :: HSMap Ix TxOut
  , txfee  :: Coin
  , txvldt :: (Maybe Integer, Maybe Integer)
  , txwdrls :: Wdrl
  , txsize :: Integer
  , txid   :: TxId
  , collateral    :: [TxIn]
  , reqSigHash    :: [Hash]
  , scriptIntHash :: Maybe Hash
  , txcerts :: [TxCert]
  } deriving (Show, Generic)
data TxWitnesses = MkTxWitnesses
  { vkSigs  :: [(Integer, Integer)]
  , scripts :: [AgdaEmpty]
  , txdats  :: HSMap DataHash Datum
  , txrdmrs :: HSMap RdmrPtr (Redeemer, ExUnits)
  } deriving (Show, Generic)
data Tx = MkTx
  { body :: TxBody
  , wits :: TxWitnesses
  , txAD :: Maybe AuxiliaryData
  } deriving (Show, Generic)
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
  , ppKeyDeposit          :: Coin
  , ppPoolDeposit         :: Coin
  , ppEmax                :: Epoch
  , ppNopt                :: Integer
  , ppPv                  :: (Integer, Integer)
  , ppMinUTxOValue        :: Coin
  , ppCoinsPerUTxOByte    :: Coin
  , ppCostmdls            :: ()
  , ppPrices              :: ()
  , ppMaxTxExUnits        :: ExUnits
  , ppMaxBlockExUnits     :: ExUnits
  , ppMaxValSize          :: Integer
  , ppMaxCollateralInputs :: Integer
  , ppPoolVotingThresholds :: PoolThresholds
  , ppDrepVotingThresholds :: DrepThresholds
  , ppCCMinSize           :: Integer
  , ppCCMaxTermLength     :: Integer
  , ppGovActionLifetime   :: Integer
  , ppGovActionDeposit    :: Coin
  , ppDrepDeposit         :: Coin
  , ppDrepActivity        :: Epoch
  } deriving (Show, Generic)

data PParamsUpdate = MkPParamsUpdate
  { ppuA                    :: Maybe Integer
  , ppuB                    :: Maybe Integer
  , ppuMaxBlockSize         :: Maybe Integer
  , ppuMaxTxSize            :: Maybe Integer
  , ppuMaxHeaderSize        :: Maybe Integer
  , ppuKeyDeposit           :: Maybe Coin
  , ppuPoolDeposit          :: Maybe Coin
  , ppuEmax                 :: Maybe Epoch
  , ppuNopt                 :: Maybe Integer
  , ppuPv                   :: Maybe (Integer, Integer)
  , ppuMinUTxOValue         :: Maybe Coin
  , ppuCoinsPerUTxOByte     :: Maybe Coin
  , ppuCostmdls             :: Maybe ()
  , ppuPrices               :: Maybe ()
  , ppuMaxTxExUnits         :: Maybe ExUnits
  , ppuMaxBlockExUnits      :: Maybe ExUnits
  , ppuMaxValSize           :: Maybe Integer
  , ppuMaxCollateralInputs  :: Maybe Integer
  , ppuPoolVotingThresholds :: Maybe PoolThresholds
  , ppuDrepVotingThresholds :: Maybe DrepThresholds
  , ppuCCMinSize            :: Maybe Integer
  , ppuCCMaxTermLength      :: Maybe Integer
  , ppuGovActionLifetime    :: Maybe Integer
  , ppuGovActionDeposit     :: Maybe Coin
  , ppuDrepDeposit          :: Maybe Coin
  , ppuDrepActivity         :: Maybe Epoch
  } deriving (Show, Generic)
data UTxOEnv = MkUTxOEnv
  { ueSlot     :: Integer
  , uePparams  :: PParams
  , ueTreasury :: Coin
  } deriving (Show, Generic)
data UTxOState = MkUTxOState
  { utxo :: UTxO
  , fees :: Coin
  } deriving (Show, Generic)
data EnactState = MkEnactState
  { esCC           :: (Maybe (HSMap Credential Epoch, Rational), GovActionID)
  , esConstitution :: ((DataHash, Maybe ScriptHash), GovActionID)
  , esPV           :: (ProtVer, GovActionID)
  , esPParams      :: (PParams, GovActionID)
  , esWithdrawals  :: HSMap RwdAddr Coin
  }
data GovEnv = MkGovEnv
  { geTxId :: TxId
  , geEpoch :: Epoch
  , gePParams :: PParams
  , gePPolicy :: Maybe ScriptHash
  , geEnactState :: EnactState
  }
type Voter = (GovRole, Credential)
type GovState = [(GovActionID, GovActionState)]

data GovAction
  = NoConfidence
  | UpdateCommittee (HSMap Credential Epoch) [Credential] Rational
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
data DepositPurpose
  = CredentialDeposit Credential
  | PoolDeposit Integer
  | DRepDeposit Credential
  | GovActionDeposit GovActionID
data CertEnv = MkCertEnv
  { epoch      :: Epoch
  , pp         :: PParams
  , votes      :: [GovVote]
  , wdrls      :: HSMap RwdAddr Coin
  , ceDeposits :: HSMap DepositPurpose Coin
  }
data CertEnv' = MkCertEnv'
  { epoch'      :: Epoch
  , pp'         :: PParams
  , votes'      :: [GovVote]
  , wdrls'      :: HSMap RwdAddr Coin
  }
data DState = MkDState
  { voteDelegs  :: HSMap Credential VDeleg
  , stakeDelegs :: HSMap Credential Integer
  , rewards     :: HSMap Credential Coin
  }
data DState' = MkDState'
  { voteDelegs'  :: HSMap Credential VDeleg
  , stakeDelegs' :: HSMap Credential Integer
  , rewards'     :: HSMap Credential Coin
  , ddeposits'   :: HSMap DepositPurpose Coin
  }
data PState = MkPState
  { pools :: HSMap Integer PoolParams
  , retiring :: HSMap Integer Epoch
  }
data GState = MkGState
  { dreps     :: HSMap Credential Epoch
  , ccHotKeys :: HSMap Credential (Maybe Credential)
  }
data GState' = MkGState'
  { dreps'     :: HSMap Credential Epoch
  , ccHotKeys' :: HSMap Credential (Maybe Credential)
  , gdeposits' :: HSMap DepositPurpose Coin
  }
data CertState = MkCertState
  { dState :: DState
  , pState :: PState
  , gState :: GState
  }
data CertState' = MkCertState'
  { dState' :: DState'
  , pState' :: PState
  , gState' :: GState'
  }
newtype StakeDistrs = MkStakeDistrs (HSMap VDeleg Coin)
data RatifyEnv = MkRatifyEnv
  { reStakeDistrs   :: StakeDistrs
  , reCurrentEpoch  :: Epoch
  , reDReps         :: HSMap Credential Epoch
  , reCCHotKeys     :: HSMap Credential (Maybe Credential)
  , reTreasury      :: Coin
  }
data RatifyState = MkRatifyState
 { rsEnactState :: EnactState
 , rsRemoved    :: HSSet (GovActionID, GovActionState)
 , rsDelay      :: Bool
 }
data LedgerEnv = MkLedgerEnv
  { leSlot       :: Slot
  , lePPolicy    :: Maybe ScriptHash
  , lePParams    :: PParams
  , leEnactState :: EnactState
  , leTreasury   :: Coin
  }
data LedgerState = MkLedgerState
  { utxoSt    :: UTxOState
  , govSt     :: GovState
  , certState :: CertState
  }
data EnactEnv = MkEnactEnv
  { eeGid :: GovActionID
  , eeTreasury :: Coin
  , eeEpoch :: Epoch
  }
data Acnt = MkAcnt
  { treasury :: Coin
  , reserves :: Coin
  }
data Snapshot = MkSnapshot
  { sStake       :: HSMap Credential Coin
  , sDelegations :: HSMap Credential Integer
  }
data Snapshots = MkSnapshots
  { ssMark  :: Snapshot
  , ssSet   :: Snapshot
  , ssGo    :: Snapshot
  , ssFeeSS :: Integer
  }
data EpochState = MkEpochState
  { esAcnt       :: Acnt
  , esSs         :: Snapshots
  , esLState     :: LedgerState
  , esEnactState :: EnactState
  , esFut        :: RatifyState
  }
newtype NewEpochEnv = MkNewEpochEnv {stakeDistrs :: StakeDistrs}
data RewardUpdate = MkRewardUpdate
  { deltaT  :: Integer
  , deltaR  :: Integer
  , deltaF  :: Integer
  , rs      :: HSMap Credential Coin
  }
data NewEpochState = MkNewEpochState
  { lastEpoch  :: Epoch
  , epochState :: EpochState
  , ru         :: Maybe RewardUpdate
  }
newtype ChainState = MkChainState
  { csNewEpochState :: NewEpochState
  }
data Block = MkBlock
  { blockTxs :: [Tx]
  , blockSlot :: Slot
  }
data DelegEnv = MkDelegEnv
  { dePParams :: PParams
  , dePools :: HSMap Integer PoolParams
  , deDeposits :: HSMap DepositPurpose Coin
  }
data DelegEnv' = MkDelegEnv'
  { dePParams' :: PParams
  , dePools' :: HSMap Integer PoolParams
  }
-- Ledger.Foreign.LedgerTypes.Empty
d_Empty_6 = ()
type T_Empty_6 = AgdaEmpty
cover_Empty_6 :: AgdaEmpty -> ()
cover_Empty_6 x = case x of
-- Ledger.Foreign.LedgerTypes.ComputationResult
d_ComputationResult_12 a0 a1 = ()
type T_ComputationResult_12 a0 a1 = ComputationResult a0 a1
pattern C_Success_18 a0 = Success a0
pattern C_Failure_20 a0 = Failure a0
check_Success_18 ::
  forall xE. forall xA. xA -> T_ComputationResult_12 xE xA
check_Success_18 = Success
check_Failure_20 ::
  forall xE. forall xA. xE -> T_ComputationResult_12 xE xA
check_Failure_20 = Failure
cover_ComputationResult_12 :: ComputationResult a1 a2 -> ()
cover_ComputationResult_12 x
  = case x of
      Success _ -> ()
      Failure _ -> ()
-- Ledger.Foreign.LedgerTypes.HSMap
d_HSMap_26 a0 a1 = ()
type T_HSMap_26 a0 a1 = HSMap a0 a1
pattern C_MkHSMap_36 a0 = MkHSMap a0
check_MkHSMap_36 ::
  forall xK.
    forall xV.
      MAlonzo.Code.Agda.Builtin.List.T_List_10
        () (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () xK xV) ->
      T_HSMap_26 xK xV
check_MkHSMap_36 = MkHSMap
cover_HSMap_26 :: HSMap a1 a2 -> ()
cover_HSMap_26 x
  = case x of
      MkHSMap _ -> ()
-- Ledger.Foreign.LedgerTypes.HSMap.assocList
d_assocList_34 ::
  T_HSMap_26 AgdaAny AgdaAny ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny AgdaAny AgdaAny]
d_assocList_34 v0
  = case coe v0 of
      C_MkHSMap_36 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.HSSet
d_HSSet_40 a0 = ()
type T_HSSet_40 a0 = HSSet a0
pattern C_MkHSSet_48 a0 = MkHSSet a0
check_MkHSSet_48 ::
  forall xA.
    MAlonzo.Code.Agda.Builtin.List.T_List_10 () xA -> T_HSSet_40 xA
check_MkHSSet_48 = MkHSSet
cover_HSSet_40 :: HSSet a1 -> ()
cover_HSSet_40 x
  = case x of
      MkHSSet _ -> ()
-- Ledger.Foreign.LedgerTypes.HSSet.elems
d_elems_46 :: T_HSSet_40 AgdaAny -> [AgdaAny]
d_elems_46 v0
  = case coe v0 of
      C_MkHSSet_48 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Rational
d_Rational_50 :: ()
d_Rational_50 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_52 = ()
type T_TxId_52 = TxId
pattern C_TxId'46'constructor_223 a0 = MkTxId a0
check_TxId'46'constructor_223 :: Integer -> T_TxId_52
check_TxId'46'constructor_223 = MkTxId
cover_TxId_52 :: TxId -> ()
cover_TxId_52 x
  = case x of
      MkTxId _ -> ()
-- Ledger.Foreign.LedgerTypes.TxId.txid
d_txid_56 :: T_TxId_52 -> Integer
d_txid_56 v0
  = case coe v0 of
      C_TxId'46'constructor_223 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_58 :: ()
d_Coin_58 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_60 :: ()
d_Addr_60 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_62 :: ()
d_Ix_62 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_64 :: ()
d_Epoch_64 = erased
-- Ledger.Foreign.LedgerTypes.ScriptHash
d_ScriptHash_66 :: ()
d_ScriptHash_66 = erased
-- Ledger.Foreign.LedgerTypes.Slot
d_Slot_68 :: ()
d_Slot_68 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_70 :: ()
d_Anchor_70 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_72 :: ()
d_AuxiliaryData_72 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_74 :: ()
d_Datum_74 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_76 :: ()
d_Redeemer_76 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_78 :: ()
d_Network_78 = erased
-- Ledger.Foreign.LedgerTypes.Script
d_Script_80 :: ()
d_Script_80 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_82 :: ()
d_DataHash_82 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_84 :: ()
d_TxIn_84 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_86 :: ()
d_TxOut_86 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_88 :: ()
d_UTxO_88 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_90 :: ()
d_Hash_90 = erased
-- Ledger.Foreign.LedgerTypes.GovActionID
d_GovActionID_92 :: ()
d_GovActionID_92 = erased
-- Ledger.Foreign.LedgerTypes.HashProtected
d_HashProtected_94 :: () -> ()
d_HashProtected_94 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_98 = ()
type T_Tag_98 = Tag
pattern C_Spend_100 = Spend
pattern C_Mint_102 = Mint
pattern C_Cert_104 = Cert
pattern C_Rewrd_106 = Rewrd
pattern C_VoteTag_108 = Vote
pattern C_Propose_110 = Propose
check_Spend_100 :: T_Tag_98
check_Spend_100 = Spend
check_Mint_102 :: T_Tag_98
check_Mint_102 = Mint
check_Cert_104 :: T_Tag_98
check_Cert_104 = Cert
check_Rewrd_106 :: T_Tag_98
check_Rewrd_106 = Rewrd
check_VoteTag_108 :: T_Tag_98
check_VoteTag_108 = Vote
check_Propose_110 :: T_Tag_98
check_Propose_110 = Propose
cover_Tag_98 :: Tag -> ()
cover_Tag_98 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_112 :: ()
d_RdmrPtr_112 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_114 :: ()
d_ExUnits_114 = erased
-- Ledger.Foreign.LedgerTypes.ProtVer
d_ProtVer_116 :: ()
d_ProtVer_116 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_118 = ()
type T_Credential_118 = Credential
pattern C_KeyHashObj_120 a0 = KeyHashObj a0
pattern C_ScriptObj_122 a0 = ScriptObj a0
check_KeyHashObj_120 :: Integer -> T_Credential_118
check_KeyHashObj_120 = KeyHashObj
check_ScriptObj_122 :: Integer -> T_Credential_118
check_ScriptObj_122 = ScriptObj
cover_Credential_118 :: Credential -> ()
cover_Credential_118 x
  = case x of
      KeyHashObj _ -> ()
      ScriptObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_124 :: ()
d_PoolParams_124 = erased
-- Ledger.Foreign.LedgerTypes.RwdAddr
d_RwdAddr_126 :: ()
d_RwdAddr_126 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_128 = ()
type T_GovRole_128 = GovRole
pattern C_CC_130 = CC
pattern C_DRep_132 = DRep
pattern C_SPO_134 = SPO
check_CC_130 :: T_GovRole_128
check_CC_130 = CC
check_DRep_132 :: T_GovRole_128
check_DRep_132 = DRep
check_SPO_134 :: T_GovRole_128
check_SPO_134 = SPO
cover_GovRole_128 :: GovRole -> ()
cover_GovRole_128 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_136 = ()
type T_VDeleg_136 = VDeleg
pattern C_CredVoter_138 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_140 = AbstainRep
pattern C_NoConfidenceRep_142 = NoConfidenceRep
check_CredVoter_138 ::
  T_GovRole_128 -> T_Credential_118 -> T_VDeleg_136
check_CredVoter_138 = CredVoter
check_AbstainRep_140 :: T_VDeleg_136
check_AbstainRep_140 = AbstainRep
check_NoConfidenceRep_142 :: T_VDeleg_136
check_NoConfidenceRep_142 = NoConfidenceRep
cover_VDeleg_136 :: VDeleg -> ()
cover_VDeleg_136 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_144 = ()
type T_TxCert_144 = TxCert
pattern C_Delegate_146 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_148 a0 a1 = Dereg a0 a1
pattern C_RegPool_150 a0 a1 = RegPool a0 a1
pattern C_RetirePool_152 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_154 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_156 a0 a1 = DeRegDRep a0 a1
pattern C_CCRegHot_158 a0 a1 = CCRegHot a0 a1
check_Delegate_146 ::
  T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_136 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer -> T_TxCert_144
check_Delegate_146 = Delegate
check_Dereg_148 :: T_Credential_118 -> Integer -> T_TxCert_144
check_Dereg_148 = Dereg
check_RegPool_150 :: Integer -> T_Credential_118 -> T_TxCert_144
check_RegPool_150 = RegPool
check_RetirePool_152 :: Integer -> Integer -> T_TxCert_144
check_RetirePool_152 = RetirePool
check_RegDRep_154 ::
  T_Credential_118 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_144
check_RegDRep_154 = RegDRep
check_DeRegDRep_156 :: T_Credential_118 -> Integer -> T_TxCert_144
check_DeRegDRep_156 = DeRegDRep
check_CCRegHot_158 ::
  T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118 ->
  T_TxCert_144
check_CCRegHot_158 = CCRegHot
cover_TxCert_144 :: TxCert -> ()
cover_TxCert_144 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Wdrl
d_Wdrl_160 :: ()
d_Wdrl_160 = erased
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_162 = ()
type T_TxBody_162 = TxBody
pattern C_TxBody'46'constructor_1013 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
check_TxBody'46'constructor_1013 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  T_HSMap_26
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  Integer ->
  T_TxId_52 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_144 ->
  T_TxBody_162
check_TxBody'46'constructor_1013 = MkTxBody
cover_TxBody_162 :: TxBody -> ()
cover_TxBody_162 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_188 ::
  T_TxBody_162 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_txins_188 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_190 ::
  T_TxBody_162 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_refInputs_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_192 ::
  T_TxBody_162 ->
  T_HSMap_26
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
             (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))
d_txouts_192 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_194 :: T_TxBody_162 -> Integer
d_txfee_194 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_196 ::
  T_TxBody_162 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_196 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txwdrls
d_txwdrls_198 ::
  T_TxBody_162 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_txwdrls_198 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_200 :: T_TxBody_162 -> Integer
d_txsize_200 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_202 :: T_TxBody_162 -> T_TxId_52
d_txid_202 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_204 ::
  T_TxBody_162 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_collateral_204 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_206 :: T_TxBody_162 -> [Integer]
d_reqSigHash_206 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_208 :: T_TxBody_162 -> Maybe Integer
d_scriptIntHash_208 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_210 :: T_TxBody_162 -> [T_TxCert_144]
d_txcerts_210 v0
  = case coe v0 of
      C_TxBody'46'constructor_1013 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_212 = ()
type T_TxWitnesses_212 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1405 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1405 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Empty_6 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Tag_98 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_212
check_TxWitnesses'46'constructor_1405 = MkTxWitnesses
cover_TxWitnesses_212 :: TxWitnesses -> ()
cover_TxWitnesses_212 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_222 ::
  T_TxWitnesses_212 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_222 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1405 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_224 :: T_TxWitnesses_212 -> [T_Empty_6]
d_scripts_224 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1405 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_226 ::
  T_TxWitnesses_212 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_226 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1405 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_228 ::
  T_TxWitnesses_212 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_Tag_98 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer))
d_txrdmrs_228 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1405 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_230 = ()
type T_Tx_230 = Tx
pattern C_Tx'46'constructor_1471 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1471 ::
  T_TxBody_162 ->
  T_TxWitnesses_212 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_230
check_Tx'46'constructor_1471 = MkTx
cover_Tx_230 :: Tx -> ()
cover_Tx_230 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_238 :: T_Tx_230 -> T_TxBody_162
d_body_238 v0
  = case coe v0 of
      C_Tx'46'constructor_1471 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_240 :: T_Tx_230 -> T_TxWitnesses_212
d_wits_240 v0
  = case coe v0 of
      C_Tx'46'constructor_1471 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_242 ::
  T_Tx_230 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_242 v0
  = case coe v0 of
      C_Tx'46'constructor_1471 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds
d_DrepThresholds_244 = ()
type T_DrepThresholds_244 = DrepThresholds
pattern C_DrepThresholds'46'constructor_1591 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkDrepThresholds a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_DrepThresholds'46'constructor_1591 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_DrepThresholds_244
check_DrepThresholds'46'constructor_1591 = MkDrepThresholds
cover_DrepThresholds_244 :: DrepThresholds -> ()
cover_DrepThresholds_244 x
  = case x of
      MkDrepThresholds _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P1
d_P1_266 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P1_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2a
d_P2a_268 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2a_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2b
d_P2b_270 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2b_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P3
d_P3_272 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P3_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P4
d_P4_274 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P4_274 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5a
d_P5a_276 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5a_276 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5b
d_P5b_278 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5b_278 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5c
d_P5c_280 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5c_280 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5d
d_P5d_282 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5d_282 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P6
d_P6_284 ::
  T_DrepThresholds_244 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P6_284 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1591 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds
d_PoolThresholds_286 = ()
type T_PoolThresholds_286 = PoolThresholds
pattern C_PoolThresholds'46'constructor_1837 a0 a1 a2 a3 a4 = MkPoolThresholds a0 a1 a2 a3 a4
check_PoolThresholds'46'constructor_1837 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_PoolThresholds_286
check_PoolThresholds'46'constructor_1837 = MkPoolThresholds
cover_PoolThresholds_286 :: PoolThresholds -> ()
cover_PoolThresholds_286 x
  = case x of
      MkPoolThresholds _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q1
d_Q1_298 ::
  T_PoolThresholds_286 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q1_298 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1837 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2a
d_Q2a_300 ::
  T_PoolThresholds_286 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2a_300 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1837 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2b
d_Q2b_302 ::
  T_PoolThresholds_286 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2b_302 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1837 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q4
d_Q4_304 ::
  T_PoolThresholds_286 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q4_304 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1837 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q5e
d_Q5e_306 ::
  T_PoolThresholds_286 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q5e_306 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1837 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_308 = ()
type T_PParams_308 = PParams
pattern C_PParams'46'constructor_2665 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
check_PParams'46'constructor_2665 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer ->
  Integer ->
  T_PoolThresholds_286 ->
  T_DrepThresholds_244 ->
  Integer ->
  Integer ->
  Integer -> Integer -> Integer -> Integer -> T_PParams_308
check_PParams'46'constructor_2665 = MkPParams
cover_PParams_308 :: PParams -> ()
cover_PParams_308 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_362 :: T_PParams_308 -> Integer
d_a_362 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_364 :: T_PParams_308 -> Integer
d_b_364 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_366 :: T_PParams_308 -> Integer
d_maxBlockSize_366 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_368 :: T_PParams_308 -> Integer
d_maxTxSize_368 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_370 :: T_PParams_308 -> Integer
d_maxHeaderSize_370 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_372 :: T_PParams_308 -> Integer
d_keyDeposit_372 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_374 :: T_PParams_308 -> Integer
d_poolDeposit_374 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_376 :: T_PParams_308 -> Integer
d_Emax_376 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_378 :: T_PParams_308 -> Integer
d_nopt_378 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_380 ::
  T_PParams_308 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_380 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_382 :: T_PParams_308 -> Integer
d_minUTxOValue_382 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_384 :: T_PParams_308 -> Integer
d_coinsPerUTxOByte_384 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_386 ::
  T_PParams_308 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_386 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_388 ::
  T_PParams_308 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_388 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_390 ::
  T_PParams_308 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_390 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_392 ::
  T_PParams_308 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_392 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_394 :: T_PParams_308 -> Integer
d_maxValSize_394 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_396 :: T_PParams_308 -> Integer
d_maxCollateralInputs_396 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolVotingThresholds
d_poolVotingThresholds_398 :: T_PParams_308 -> T_PoolThresholds_286
d_poolVotingThresholds_398 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepVotingThresholds
d_drepVotingThresholds_400 :: T_PParams_308 -> T_DrepThresholds_244
d_drepVotingThresholds_400 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_402 :: T_PParams_308 -> Integer
d_ccMinSize_402 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_404 :: T_PParams_308 -> Integer
d_ccMaxTermLength_404 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_406 :: T_PParams_308 -> Integer
d_govActionLifetime_406 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_408 :: T_PParams_308 -> Integer
d_govActionDeposit_408 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_410 :: T_PParams_308 -> Integer
d_drepDeposit_410 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_412 :: T_PParams_308 -> Integer
d_drepActivity_412 v0
  = case coe v0 of
      C_PParams'46'constructor_2665 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_414 = ()
type T_PParamsUpdate_414 = PParamsUpdate
pattern C_PParamsUpdate'46'constructor_6839 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 = MkPParamsUpdate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
check_PParamsUpdate'46'constructor_6839 ::
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_PoolThresholds_286 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_DrepThresholds_244 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParamsUpdate_414
check_PParamsUpdate'46'constructor_6839 = MkPParamsUpdate
cover_PParamsUpdate_414 :: PParamsUpdate -> ()
cover_PParamsUpdate_414 x
  = case x of
      MkPParamsUpdate _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.a
d_a_468 :: T_PParamsUpdate_414 -> Maybe Integer
d_a_468 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.b
d_b_470 :: T_PParamsUpdate_414 -> Maybe Integer
d_b_470 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockSize
d_maxBlockSize_472 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_472 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxSize
d_maxTxSize_474 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_474 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_476 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_476 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.keyDeposit
d_keyDeposit_478 :: T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_478 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolDeposit
d_poolDeposit_480 :: T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_480 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.Emax
d_Emax_482 :: T_PParamsUpdate_414 -> Maybe Integer
d_Emax_482 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.nopt
d_nopt_484 :: T_PParamsUpdate_414 -> Maybe Integer
d_nopt_484 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.pv
d_pv_486 ::
  T_PParamsUpdate_414 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_pv_486 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.minUTxOValue
d_minUTxOValue_488 :: T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_488 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_490 :: T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_490 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.costmdls
d_costmdls_492 ::
  T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_492 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.prices
d_prices_494 ::
  T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_494 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_496 ::
  T_PParamsUpdate_414 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxTxExUnits_496 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_498 ::
  T_PParamsUpdate_414 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxBlockExUnits_498 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxValSize
d_maxValSize_500 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_500 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_502 :: T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_502 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolVotingThresholds
d_poolVotingThresholds_504 ::
  T_PParamsUpdate_414 -> Maybe T_PoolThresholds_286
d_poolVotingThresholds_504 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepVotingThresholds
d_drepVotingThresholds_506 ::
  T_PParamsUpdate_414 -> Maybe T_DrepThresholds_244
d_drepVotingThresholds_506 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMinSize
d_ccMinSize_508 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_508 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_510 :: T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_510 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionLifetime
d_govActionLifetime_512 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionDeposit
d_govActionDeposit_514 :: T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_514 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepDeposit
d_drepDeposit_516 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_516 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepActivity
d_drepActivity_518 :: T_PParamsUpdate_414 -> Maybe Integer
d_drepActivity_518 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6839 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_520 = ()
type T_UTxOEnv_520 = UTxOEnv
pattern C_UTxOEnv'46'constructor_8255 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_UTxOEnv'46'constructor_8255 ::
  Integer -> T_PParams_308 -> Integer -> T_UTxOEnv_520
check_UTxOEnv'46'constructor_8255 = MkUTxOEnv
cover_UTxOEnv_520 :: UTxOEnv -> ()
cover_UTxOEnv_520 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_528 :: T_UTxOEnv_520 -> Integer
d_slot_528 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8255 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_530 :: T_UTxOEnv_520 -> T_PParams_308
d_pparams_530 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8255 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.treasury
d_treasury_532 :: T_UTxOEnv_520 -> Integer
d_treasury_532 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8255 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_534 = ()
type T_UTxOState_534 = UTxOState
pattern C_UTxOState'46'constructor_8287 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_8287 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer -> T_UTxOState_534
check_UTxOState'46'constructor_8287 = MkUTxOState
cover_UTxOState_534 :: UTxOState -> ()
cover_UTxOState_534 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_540 ::
  T_UTxOState_534 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny
             (Maybe
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
             (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))
d_utxo_540 v0
  = case coe v0 of
      C_UTxOState'46'constructor_8287 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_542 :: T_UTxOState_534 -> Integer
d_fees_542 v0
  = case coe v0 of
      C_UTxOState'46'constructor_8287 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_544 = ()
type T_EnactState_544 = EnactState
pattern C_EnactState'46'constructor_8371 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_8371 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () (T_HSMap_26 T_Credential_118 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_PParams_308
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_EnactState_544
check_EnactState'46'constructor_8371 = MkEnactState
cover_EnactState_544 :: EnactState -> ()
cover_EnactState_544 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_556 ::
  T_EnactState_544 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_118 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esCC_556 v0
  = case coe v0 of
      C_EnactState'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_558 ::
  T_EnactState_544 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esConstitution_558 v0
  = case coe v0 of
      C_EnactState'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_560 ::
  T_EnactState_544 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPV_560 v0
  = case coe v0 of
      C_EnactState'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_562 ::
  T_EnactState_544 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_308
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPParams_562 v0
  = case coe v0 of
      C_EnactState'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_564 ::
  T_EnactState_544 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_esWithdrawals_564 v0
  = case coe v0 of
      C_EnactState'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_566 = ()
type T_GovEnv_566 = GovEnv
pattern C_GovEnv'46'constructor_8477 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_8477 ::
  T_TxId_52 ->
  Integer ->
  T_PParams_308 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_544 -> T_GovEnv_566
check_GovEnv'46'constructor_8477 = MkGovEnv
cover_GovEnv_566 :: GovEnv -> ()
cover_GovEnv_566 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_578 :: T_GovEnv_566 -> T_TxId_52
d_geTxId_578 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8477 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_580 :: T_GovEnv_566 -> Integer
d_geEpoch_580 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8477 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_582 :: T_GovEnv_566 -> T_PParams_308
d_gePParams_582 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8477 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_584 :: T_GovEnv_566 -> Maybe Integer
d_gePPolicy_584 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8477 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_586 :: T_GovEnv_566 -> T_EnactState_544
d_geEnactState_586 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8477 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_588 :: ()
d_Voter_588 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_590 = ()
type T_GovAction_590 = GovAction
pattern C_NoConfidence_592 = NoConfidence
pattern C_UpdateCommittee_594 a0 a1 a2 = UpdateCommittee a0 a1 a2
pattern C_NewConstitution_596 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_598 a0 = TriggerHF a0
pattern C_ChangePParams_600 a0 = ChangePParams a0
pattern C_TreasuryWdrl_602 a0 = TreasuryWdrl a0
pattern C_Info_604 = Info
check_NoConfidence_592 :: T_GovAction_590
check_NoConfidence_592 = NoConfidence
check_UpdateCommittee_594 ::
  T_HSMap_26 T_Credential_118 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_118 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_590
check_UpdateCommittee_594 = UpdateCommittee
check_NewConstitution_596 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_590
check_NewConstitution_596 = NewConstitution
check_TriggerHF_598 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_590
check_TriggerHF_598 = TriggerHF
check_ChangePParams_600 :: T_PParamsUpdate_414 -> T_GovAction_590
check_ChangePParams_600 = ChangePParams
check_TreasuryWdrl_602 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_GovAction_590
check_TreasuryWdrl_602 = TreasuryWdrl
check_Info_604 :: T_GovAction_590
check_Info_604 = Info
cover_GovAction_590 :: GovAction -> ()
cover_GovAction_590 x
  = case x of
      NoConfidence -> ()
      UpdateCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_606 = ()
type T_Vote_606 = Vote
pattern C_VoteYes_608 = VoteYes
pattern C_VoteNo_610 = VoteNo
pattern C_VoteAbstain_612 = VoteAbstain
check_VoteYes_608 :: T_Vote_606
check_VoteYes_608 = VoteYes
check_VoteNo_610 :: T_Vote_606
check_VoteNo_610 = VoteNo
check_VoteAbstain_612 :: T_Vote_606
check_VoteAbstain_612 = VoteAbstain
cover_Vote_606 :: Vote -> ()
cover_Vote_606 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_614 = ()
type T_GovActionState_614 = GovActionState
pattern C_GovActionState'46'constructor_8647 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_8647 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_128 T_Credential_118)
    T_Vote_606 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  Integer ->
  T_GovAction_590 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_GovActionState_614
check_GovActionState'46'constructor_8647 = MkGovActionState
cover_GovActionState_614 :: GovActionState -> ()
cover_GovActionState_614 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_626 ::
  T_GovActionState_614 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_128 T_Credential_118)
    T_Vote_606
d_gasVotes_626 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8647 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_628 ::
  T_GovActionState_614 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gasReturnAddr_628 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8647 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_630 :: T_GovActionState_614 -> Integer
d_gasExpiresIn_630 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8647 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_632 :: T_GovActionState_614 -> T_GovAction_590
d_gasAction_632 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8647 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_634 ::
  T_GovActionState_614 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gasPrevAction_634 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8647 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_636 = ()
type T_GovVote_636 = GovVote
pattern C_GovVote'46'constructor_8745 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_8745 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_128 T_Credential_118 ->
  T_Vote_606 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_636
check_GovVote'46'constructor_8745 = MkGovVote
cover_GovVote_636 :: GovVote -> ()
cover_GovVote_636 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_646 ::
  T_GovVote_636 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gvGid_646 v0
  = case coe v0 of
      C_GovVote'46'constructor_8745 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_648 ::
  T_GovVote_636 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_128 T_Credential_118
d_gvVoter_648 v0
  = case coe v0 of
      C_GovVote'46'constructor_8745 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_650 :: T_GovVote_636 -> T_Vote_606
d_gvVote_650 v0
  = case coe v0 of
      C_GovVote'46'constructor_8745 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_652 ::
  T_GovVote_636 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_652 v0
  = case coe v0 of
      C_GovVote'46'constructor_8745 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_654 = ()
type T_GovProposal_654 = GovProposal
pattern C_GovProposal'46'constructor_8835 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_8835 ::
  T_GovAction_590 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_654
check_GovProposal'46'constructor_8835 = MkGovProposal
cover_GovProposal_654 :: GovProposal -> ()
cover_GovProposal_654 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_668 :: T_GovProposal_654 -> T_GovAction_590
d_gpAction_668 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8835 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_670 ::
  T_GovProposal_654 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gpPrevAction_670 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8835 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_672 :: T_GovProposal_654 -> Maybe Integer
d_gpPolicy_672 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8835 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_674 :: T_GovProposal_654 -> Integer
d_gpDeposit_674 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8835 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_676 ::
  T_GovProposal_654 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gpReturnAddr_676 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8835 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_678 ::
  T_GovProposal_654 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_678 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8835 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_680 = ()
type T_GovSignal_680 = GovSignal
pattern C_GovSignalVote_682 a0 = GovSignalVote a0
pattern C_GovSignalProposal_684 a0 = GovSignalProposal a0
check_GovSignalVote_682 :: T_GovVote_636 -> T_GovSignal_680
check_GovSignalVote_682 = GovSignalVote
check_GovSignalProposal_684 :: T_GovProposal_654 -> T_GovSignal_680
check_GovSignalProposal_684 = GovSignalProposal
cover_GovSignal_680 :: GovSignal -> ()
cover_GovSignal_680 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_686 :: ()
d_GovState_686 = erased
-- Ledger.Foreign.LedgerTypes.DepositPurpose
d_DepositPurpose_688 = ()
type T_DepositPurpose_688 = DepositPurpose
pattern C_CredentialDeposit_690 a0 = CredentialDeposit a0
pattern C_PoolDeposit_692 a0 = PoolDeposit a0
pattern C_DRepDeposit_694 a0 = DRepDeposit a0
pattern C_GovActionDeposit_696 a0 = GovActionDeposit a0
check_CredentialDeposit_690 ::
  T_Credential_118 -> T_DepositPurpose_688
check_CredentialDeposit_690 = CredentialDeposit
check_PoolDeposit_692 :: Integer -> T_DepositPurpose_688
check_PoolDeposit_692 = PoolDeposit
check_DRepDeposit_694 :: T_Credential_118 -> T_DepositPurpose_688
check_DRepDeposit_694 = DRepDeposit
check_GovActionDeposit_696 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_DepositPurpose_688
check_GovActionDeposit_696 = GovActionDeposit
cover_DepositPurpose_688 :: DepositPurpose -> ()
cover_DepositPurpose_688 x
  = case x of
      CredentialDeposit _ -> ()
      PoolDeposit _ -> ()
      DRepDeposit _ -> ()
      GovActionDeposit _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_698 = ()
type T_CertEnv_698 = CertEnv
pattern C_CertEnv'46'constructor_9021 a0 a1 a2 a3 a4 = MkCertEnv a0 a1 a2 a3 a4
check_CertEnv'46'constructor_9021 ::
  Integer ->
  T_PParams_308 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_636 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_HSMap_26 T_DepositPurpose_688 Integer -> T_CertEnv_698
check_CertEnv'46'constructor_9021 = MkCertEnv
cover_CertEnv_698 :: CertEnv -> ()
cover_CertEnv_698 x
  = case x of
      MkCertEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_710 :: T_CertEnv_698 -> Integer
d_epoch_710 v0
  = case coe v0 of
      C_CertEnv'46'constructor_9021 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_712 :: T_CertEnv_698 -> T_PParams_308
d_pp_712 v0
  = case coe v0 of
      C_CertEnv'46'constructor_9021 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_714 :: T_CertEnv_698 -> [T_GovVote_636]
d_votes_714 v0
  = case coe v0 of
      C_CertEnv'46'constructor_9021 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_716 ::
  T_CertEnv_698 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_716 v0
  = case coe v0 of
      C_CertEnv'46'constructor_9021 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.deposits
d_deposits_718 ::
  T_CertEnv_698 -> T_HSMap_26 T_DepositPurpose_688 Integer
d_deposits_718 v0
  = case coe v0 of
      C_CertEnv'46'constructor_9021 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'
d_CertEnv''_720 = ()
type T_CertEnv''_720 = CertEnv'
pattern C_CertEnv'''46'constructor_9117 a0 a1 a2 a3 = MkCertEnv' a0 a1 a2 a3
check_CertEnv'''46'constructor_9117 ::
  Integer ->
  T_PParams_308 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_636 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_CertEnv''_720
check_CertEnv'''46'constructor_9117 = MkCertEnv'
cover_CertEnv''_720 :: CertEnv' -> ()
cover_CertEnv''_720 x
  = case x of
      MkCertEnv' _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv'.epoch
d_epoch_730 :: T_CertEnv''_720 -> Integer
d_epoch_730 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9117 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.pp
d_pp_732 :: T_CertEnv''_720 -> T_PParams_308
d_pp_732 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9117 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.votes
d_votes_734 :: T_CertEnv''_720 -> [T_GovVote_636]
d_votes_734 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9117 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.wdrls
d_wdrls_736 ::
  T_CertEnv''_720 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_736 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9117 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_738 = ()
type T_DState_738 = DState
pattern C_DState'46'constructor_9181 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_9181 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_DState_738
check_DState'46'constructor_9181 = MkDState
cover_DState_738 :: DState -> ()
cover_DState_738 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_746 ::
  T_DState_738 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_746 v0
  = case coe v0 of
      C_DState'46'constructor_9181 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_748 ::
  T_DState_738 -> T_HSMap_26 T_Credential_118 Integer
d_stakeDelegs_748 v0
  = case coe v0 of
      C_DState'46'constructor_9181 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_750 ::
  T_DState_738 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_750 v0
  = case coe v0 of
      C_DState'46'constructor_9181 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'
d_DState''_752 = ()
type T_DState''_752 = DState'
pattern C_DState'''46'constructor_9239 a0 a1 a2 a3 = MkDState' a0 a1 a2 a3
check_DState'''46'constructor_9239 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_DepositPurpose_688 Integer -> T_DState''_752
check_DState'''46'constructor_9239 = MkDState'
cover_DState''_752 :: DState' -> ()
cover_DState''_752 x
  = case x of
      MkDState' _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState'.voteDelegs
d_voteDelegs_762 ::
  T_DState''_752 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_762 v0
  = case coe v0 of
      C_DState'''46'constructor_9239 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.stakeDelegs
d_stakeDelegs_764 ::
  T_DState''_752 -> T_HSMap_26 T_Credential_118 Integer
d_stakeDelegs_764 v0
  = case coe v0 of
      C_DState'''46'constructor_9239 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.rewards
d_rewards_766 ::
  T_DState''_752 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_766 v0
  = case coe v0 of
      C_DState'''46'constructor_9239 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.deposits
d_deposits_768 ::
  T_DState''_752 -> T_HSMap_26 T_DepositPurpose_688 Integer
d_deposits_768 v0
  = case coe v0 of
      C_DState'''46'constructor_9239 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_770 = ()
type T_PState_770 = PState
pattern C_PState'46'constructor_9295 a0 a1 = MkPState a0 a1
check_PState'46'constructor_9295 ::
  T_HSMap_26 Integer T_Credential_118 ->
  T_HSMap_26 Integer Integer -> T_PState_770
check_PState'46'constructor_9295 = MkPState
cover_PState_770 :: PState -> ()
cover_PState_770 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_776 :: T_PState_770 -> T_HSMap_26 Integer T_Credential_118
d_pools_776 v0
  = case coe v0 of
      C_PState'46'constructor_9295 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_778 :: T_PState_770 -> T_HSMap_26 Integer Integer
d_retiring_778 v0
  = case coe v0 of
      C_PState'46'constructor_9295 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_780 = ()
type T_GState_780 = GState
pattern C_GState'46'constructor_9331 a0 a1 = MkGState a0 a1
check_GState'46'constructor_9331 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_GState_780
check_GState'46'constructor_9331 = MkGState
cover_GState_780 :: GState -> ()
cover_GState_780 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_786 :: T_GState_780 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_786 v0
  = case coe v0 of
      C_GState'46'constructor_9331 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_788 ::
  T_GState_780 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_788 v0
  = case coe v0 of
      C_GState'46'constructor_9331 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'
d_GState''_790 = ()
type T_GState''_790 = GState'
pattern C_GState'''46'constructor_9375 a0 a1 a2 = MkGState' a0 a1 a2
check_GState'''46'constructor_9375 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_HSMap_26 T_DepositPurpose_688 Integer -> T_GState''_790
check_GState'''46'constructor_9375 = MkGState'
cover_GState''_790 :: GState' -> ()
cover_GState''_790 x
  = case x of
      MkGState' _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState'.dreps
d_dreps_798 ::
  T_GState''_790 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_798 v0
  = case coe v0 of
      C_GState'''46'constructor_9375 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'.ccHotKeys
d_ccHotKeys_800 ::
  T_GState''_790 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_800 v0
  = case coe v0 of
      C_GState'''46'constructor_9375 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'.deposits
d_deposits_802 ::
  T_GState''_790 -> T_HSMap_26 T_DepositPurpose_688 Integer
d_deposits_802 v0
  = case coe v0 of
      C_GState'''46'constructor_9375 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_804 = ()
type T_CertState_804 = CertState
pattern C_CertState'46'constructor_9411 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_9411 ::
  T_DState_738 -> T_PState_770 -> T_GState_780 -> T_CertState_804
check_CertState'46'constructor_9411 = MkCertState
cover_CertState_804 :: CertState -> ()
cover_CertState_804 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_812 :: T_CertState_804 -> T_DState_738
d_dState_812 v0
  = case coe v0 of
      C_CertState'46'constructor_9411 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_814 :: T_CertState_804 -> T_PState_770
d_pState_814 v0
  = case coe v0 of
      C_CertState'46'constructor_9411 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_816 :: T_CertState_804 -> T_GState_780
d_gState_816 v0
  = case coe v0 of
      C_CertState'46'constructor_9411 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'
d_CertState''_818 = ()
type T_CertState''_818 = CertState'
pattern C_CertState'''46'constructor_9447 a0 a1 a2 = MkCertState' a0 a1 a2
check_CertState'''46'constructor_9447 ::
  T_DState''_752 ->
  T_PState_770 -> T_GState''_790 -> T_CertState''_818
check_CertState'''46'constructor_9447 = MkCertState'
cover_CertState''_818 :: CertState' -> ()
cover_CertState''_818 x
  = case x of
      MkCertState' _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState'.dState
d_dState_826 :: T_CertState''_818 -> T_DState''_752
d_dState_826 v0
  = case coe v0 of
      C_CertState'''46'constructor_9447 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'.pState
d_pState_828 :: T_CertState''_818 -> T_PState_770
d_pState_828 v0
  = case coe v0 of
      C_CertState'''46'constructor_9447 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'.gState
d_gState_830 :: T_CertState''_818 -> T_GState''_790
d_gState_830 v0
  = case coe v0 of
      C_CertState'''46'constructor_9447 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.StakeDistrs
d_StakeDistrs_832 = ()
type T_StakeDistrs_832 = StakeDistrs
pattern C_StakeDistrs'46'constructor_9481 a0 = MkStakeDistrs a0
check_StakeDistrs'46'constructor_9481 ::
  T_HSMap_26 T_VDeleg_136 Integer -> T_StakeDistrs_832
check_StakeDistrs'46'constructor_9481 = MkStakeDistrs
cover_StakeDistrs_832 :: StakeDistrs -> ()
cover_StakeDistrs_832 x
  = case x of
      MkStakeDistrs _ -> ()
-- Ledger.Foreign.LedgerTypes.StakeDistrs.stakeDistr
d_stakeDistr_836 ::
  T_StakeDistrs_832 -> T_HSMap_26 T_VDeleg_136 Integer
d_stakeDistr_836 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_9481 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv
d_RatifyEnv_838 = ()
type T_RatifyEnv_838 = RatifyEnv
pattern C_RatifyEnv'46'constructor_9539 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_RatifyEnv'46'constructor_9539 ::
  T_StakeDistrs_832 ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  Integer -> T_RatifyEnv_838
check_RatifyEnv'46'constructor_9539 = MkRatifyEnv
cover_RatifyEnv_838 :: RatifyEnv -> ()
cover_RatifyEnv_838 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reStakeDistrs
d_reStakeDistrs_850 :: T_RatifyEnv_838 -> T_StakeDistrs_832
d_reStakeDistrs_850 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9539 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCurrentEpoch
d_reCurrentEpoch_852 :: T_RatifyEnv_838 -> Integer
d_reCurrentEpoch_852 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9539 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reDReps
d_reDReps_854 ::
  T_RatifyEnv_838 -> T_HSMap_26 T_Credential_118 Integer
d_reDReps_854 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9539 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCCHotKeys
d_reCCHotKeys_856 ::
  T_RatifyEnv_838 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_reCCHotKeys_856 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9539 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reTreasury
d_reTreasury_858 :: T_RatifyEnv_838 -> Integer
d_reTreasury_858 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9539 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState
d_RatifyState_860 = ()
type T_RatifyState_860 = RatifyState
pattern C_RatifyState'46'constructor_9629 a0 a1 a2 = MkRatifyState a0 a1 a2
check_RatifyState'46'constructor_9629 ::
  T_EnactState_544 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_614) ->
  Bool -> T_RatifyState_860
check_RatifyState'46'constructor_9629 = MkRatifyState
cover_RatifyState_860 :: RatifyState -> ()
cover_RatifyState_860 x
  = case x of
      MkRatifyState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyState.es
d_es_868 :: T_RatifyState_860 -> T_EnactState_544
d_es_868 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9629 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.removed
d_removed_870 ::
  T_RatifyState_860 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny T_TxId_52 Integer)
       T_GovActionState_614)
d_removed_870 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9629 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.delay
d_delay_872 :: T_RatifyState_860 -> Bool
d_delay_872 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9629 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv
d_LEnv_874 = ()
type T_LEnv_874 = LedgerEnv
pattern C_LEnv'46'constructor_9687 a0 a1 a2 a3 a4 = MkLedgerEnv a0 a1 a2 a3 a4
check_LEnv'46'constructor_9687 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParams_308 -> T_EnactState_544 -> Integer -> T_LEnv_874
check_LEnv'46'constructor_9687 = MkLedgerEnv
cover_LEnv_874 :: LedgerEnv -> ()
cover_LEnv_874 x
  = case x of
      MkLedgerEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LEnv.slot
d_slot_886 :: T_LEnv_874 -> Integer
d_slot_886 v0
  = case coe v0 of
      C_LEnv'46'constructor_9687 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.ppolicy
d_ppolicy_888 :: T_LEnv_874 -> Maybe Integer
d_ppolicy_888 v0
  = case coe v0 of
      C_LEnv'46'constructor_9687 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.pparams
d_pparams_890 :: T_LEnv_874 -> T_PParams_308
d_pparams_890 v0
  = case coe v0 of
      C_LEnv'46'constructor_9687 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.enactState
d_enactState_892 :: T_LEnv_874 -> T_EnactState_544
d_enactState_892 v0
  = case coe v0 of
      C_LEnv'46'constructor_9687 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.treasury
d_treasury_894 :: T_LEnv_874 -> Integer
d_treasury_894 v0
  = case coe v0 of
      C_LEnv'46'constructor_9687 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState
d_LState_896 = ()
type T_LState_896 = LedgerState
pattern C_LState'46'constructor_9759 a0 a1 a2 = MkLedgerState a0 a1 a2
check_LState'46'constructor_9759 ::
  T_UTxOState_534 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_614) ->
  T_CertState_804 -> T_LState_896
check_LState'46'constructor_9759 = MkLedgerState
cover_LState_896 :: LedgerState -> ()
cover_LState_896 x
  = case x of
      MkLedgerState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LState.utxoSt
d_utxoSt_904 :: T_LState_896 -> T_UTxOState_534
d_utxoSt_904 v0
  = case coe v0 of
      C_LState'46'constructor_9759 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.govSt
d_govSt_906 ::
  T_LState_896 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_TxId_52 Integer)
     T_GovActionState_614]
d_govSt_906 v0
  = case coe v0 of
      C_LState'46'constructor_9759 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.certState
d_certState_908 :: T_LState_896 -> T_CertState_804
d_certState_908 v0
  = case coe v0 of
      C_LState'46'constructor_9759 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv
d_EnactEnv_910 = ()
type T_EnactEnv_910 = EnactEnv
pattern C_EnactEnv'46'constructor_9795 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_EnactEnv'46'constructor_9795 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  Integer -> Integer -> T_EnactEnv_910
check_EnactEnv'46'constructor_9795 = MkEnactEnv
cover_EnactEnv_910 :: EnactEnv -> ()
cover_EnactEnv_910 x
  = case x of
      MkEnactEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactEnv.gid
d_gid_918 ::
  T_EnactEnv_910 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gid_918 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9795 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.treasury
d_treasury_920 :: T_EnactEnv_910 -> Integer
d_treasury_920 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9795 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.epoch
d_epoch_922 :: T_EnactEnv_910 -> Integer
d_epoch_922 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9795 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt
d_Acnt_924 = ()
type T_Acnt_924 = Acnt
pattern C_Acnt'46'constructor_9827 a0 a1 = MkAcnt a0 a1
check_Acnt'46'constructor_9827 :: Integer -> Integer -> T_Acnt_924
check_Acnt'46'constructor_9827 = MkAcnt
cover_Acnt_924 :: Acnt -> ()
cover_Acnt_924 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Acnt.treasury
d_treasury_930 :: T_Acnt_924 -> Integer
d_treasury_930 v0
  = case coe v0 of
      C_Acnt'46'constructor_9827 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt.reserves
d_reserves_932 :: T_Acnt_924 -> Integer
d_reserves_932 v0
  = case coe v0 of
      C_Acnt'46'constructor_9827 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshot
d_Snapshot_934 = ()
type T_Snapshot_934 = Snapshot
pattern C_Snapshot'46'constructor_9855 a0 a1 = MkSnapshot a0 a1
check_Snapshot'46'constructor_9855 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_Snapshot_934
check_Snapshot'46'constructor_9855 = MkSnapshot
cover_Snapshot_934 :: Snapshot -> ()
cover_Snapshot_934 x
  = case x of
      MkSnapshot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Snapshot.stake
d_stake_940 ::
  T_Snapshot_934 -> T_HSMap_26 T_Credential_118 Integer
d_stake_940 v0
  = case coe v0 of
      C_Snapshot'46'constructor_9855 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshot.delegations
d_delegations_942 ::
  T_Snapshot_934 -> T_HSMap_26 T_Credential_118 Integer
d_delegations_942 v0
  = case coe v0 of
      C_Snapshot'46'constructor_9855 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots
d_Snapshots_944 = ()
type T_Snapshots_944 = Snapshots
pattern C_Snapshots'46'constructor_9885 a0 a1 a2 a3 = MkSnapshots a0 a1 a2 a3
check_Snapshots'46'constructor_9885 ::
  T_Snapshot_934 ->
  T_Snapshot_934 -> T_Snapshot_934 -> Integer -> T_Snapshots_944
check_Snapshots'46'constructor_9885 = MkSnapshots
cover_Snapshots_944 :: Snapshots -> ()
cover_Snapshots_944 x
  = case x of
      MkSnapshots _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Snapshots.mark
d_mark_954 :: T_Snapshots_944 -> T_Snapshot_934
d_mark_954 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9885 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.set
d_set_956 :: T_Snapshots_944 -> T_Snapshot_934
d_set_956 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9885 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.go
d_go_958 :: T_Snapshots_944 -> T_Snapshot_934
d_go_958 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9885 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.feeSS
d_feeSS_960 :: T_Snapshots_944 -> Integer
d_feeSS_960 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9885 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState
d_EpochState_962 = ()
type T_EpochState_962 = EpochState
pattern C_EpochState'46'constructor_9951 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_EpochState'46'constructor_9951 ::
  T_Acnt_924 ->
  T_Snapshots_944 ->
  T_LState_896 ->
  T_EnactState_544 -> T_RatifyState_860 -> T_EpochState_962
check_EpochState'46'constructor_9951 = MkEpochState
cover_EpochState_962 :: EpochState -> ()
cover_EpochState_962 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EpochState.acnt
d_acnt_974 :: T_EpochState_962 -> T_Acnt_924
d_acnt_974 v0
  = case coe v0 of
      C_EpochState'46'constructor_9951 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ss
d_ss_976 :: T_EpochState_962 -> T_Snapshots_944
d_ss_976 v0
  = case coe v0 of
      C_EpochState'46'constructor_9951 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ls
d_ls_978 :: T_EpochState_962 -> T_LState_896
d_ls_978 v0
  = case coe v0 of
      C_EpochState'46'constructor_9951 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.es
d_es_980 :: T_EpochState_962 -> T_EnactState_544
d_es_980 v0
  = case coe v0 of
      C_EpochState'46'constructor_9951 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.fut
d_fut_982 :: T_EpochState_962 -> T_RatifyState_860
d_fut_982 v0
  = case coe v0 of
      C_EpochState'46'constructor_9951 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochEnv
d_NewEpochEnv_984 = ()
type T_NewEpochEnv_984 = NewEpochEnv
pattern C_NewEpochEnv'46'constructor_10017 a0 = MkNewEpochEnv a0
check_NewEpochEnv'46'constructor_10017 ::
  T_StakeDistrs_832 -> T_NewEpochEnv_984
check_NewEpochEnv'46'constructor_10017 = MkNewEpochEnv
cover_NewEpochEnv_984 :: NewEpochEnv -> ()
cover_NewEpochEnv_984 x
  = case x of
      MkNewEpochEnv _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochEnv.stakeDistrs
d_stakeDistrs_988 :: T_NewEpochEnv_984 -> T_StakeDistrs_832
d_stakeDistrs_988 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_10017 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate
d_RewardUpdate_990 = ()
type T_RewardUpdate_990 = RewardUpdate
pattern C_RewardUpdate'46'constructor_10043 a0 a1 a2 a3 = MkRewardUpdate a0 a1 a2 a3
check_RewardUpdate'46'constructor_10043 ::
  Integer ->
  Integer ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_RewardUpdate_990
check_RewardUpdate'46'constructor_10043 = MkRewardUpdate
cover_RewardUpdate_990 :: RewardUpdate -> ()
cover_RewardUpdate_990 x
  = case x of
      MkRewardUpdate _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δt
d_Δt_1000 :: T_RewardUpdate_990 -> Integer
d_Δt_1000 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_10043 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δr
d_Δr_1002 :: T_RewardUpdate_990 -> Integer
d_Δr_1002 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_10043 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δf
d_Δf_1004 :: T_RewardUpdate_990 -> Integer
d_Δf_1004 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_10043 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.rs
d_rs_1006 ::
  T_RewardUpdate_990 -> T_HSMap_26 T_Credential_118 Integer
d_rs_1006 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_10043 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState
d_NewEpochState_1008 = ()
type T_NewEpochState_1008 = NewEpochState
pattern C_NewEpochState'46'constructor_10109 a0 a1 a2 = MkNewEpochState a0 a1 a2
check_NewEpochState'46'constructor_10109 ::
  Integer ->
  T_EpochState_962 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_RewardUpdate_990 ->
  T_NewEpochState_1008
check_NewEpochState'46'constructor_10109 = MkNewEpochState
cover_NewEpochState_1008 :: NewEpochState -> ()
cover_NewEpochState_1008 x
  = case x of
      MkNewEpochState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochState.lastEpoch
d_lastEpoch_1016 :: T_NewEpochState_1008 -> Integer
d_lastEpoch_1016 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10109 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.epochState
d_epochState_1018 :: T_NewEpochState_1008 -> T_EpochState_962
d_epochState_1018 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10109 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.ru
d_ru_1020 :: T_NewEpochState_1008 -> Maybe T_RewardUpdate_990
d_ru_1020 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10109 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.ChainState
d_ChainState_1022 = ()
type T_ChainState_1022 = ChainState
pattern C_ChainState'46'constructor_10139 a0 = MkChainState a0
check_ChainState'46'constructor_10139 ::
  T_NewEpochState_1008 -> T_ChainState_1022
check_ChainState'46'constructor_10139 = MkChainState
cover_ChainState_1022 :: ChainState -> ()
cover_ChainState_1022 x
  = case x of
      MkChainState _ -> ()
-- Ledger.Foreign.LedgerTypes.ChainState.csNewEpochState
d_csNewEpochState_1026 :: T_ChainState_1022 -> T_NewEpochState_1008
d_csNewEpochState_1026 v0
  = case coe v0 of
      C_ChainState'46'constructor_10139 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block
d_Block_1028 = ()
type T_Block_1028 = Block
pattern C_Block'46'constructor_10153 a0 a1 = MkBlock a0 a1
check_Block'46'constructor_10153 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Tx_230 ->
  Integer -> T_Block_1028
check_Block'46'constructor_10153 = MkBlock
cover_Block_1028 :: Block -> ()
cover_Block_1028 x
  = case x of
      MkBlock _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Block.blockTxs
d_blockTxs_1034 :: T_Block_1028 -> [T_Tx_230]
d_blockTxs_1034 v0
  = case coe v0 of
      C_Block'46'constructor_10153 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block.blockSlot
d_blockSlot_1036 :: T_Block_1028 -> Integer
d_blockSlot_1036 v0
  = case coe v0 of
      C_Block'46'constructor_10153 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv
d_DelegEnv_1038 = ()
type T_DelegEnv_1038 = DelegEnv
pattern C_DelegEnv'46'constructor_10185 a0 a1 a2 = MkDelegEnv a0 a1 a2
check_DelegEnv'46'constructor_10185 ::
  T_PParams_308 ->
  T_HSMap_26 Integer T_Credential_118 ->
  T_HSMap_26 T_DepositPurpose_688 Integer -> T_DelegEnv_1038
check_DelegEnv'46'constructor_10185 = MkDelegEnv
cover_DelegEnv_1038 :: DelegEnv -> ()
cover_DelegEnv_1038 x
  = case x of
      MkDelegEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePParams
d_dePParams_1046 :: T_DelegEnv_1038 -> T_PParams_308
d_dePParams_1046 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10185 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePools
d_dePools_1048 ::
  T_DelegEnv_1038 -> T_HSMap_26 Integer T_Credential_118
d_dePools_1048 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10185 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.deposits
d_deposits_1050 ::
  T_DelegEnv_1038 -> T_HSMap_26 T_DepositPurpose_688 Integer
d_deposits_1050 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10185 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv'
d_DelegEnv''_1052 = ()
type T_DelegEnv''_1052 = DelegEnv'
pattern C_DelegEnv'''46'constructor_10221 a0 a1 = MkDelegEnv' a0 a1
check_DelegEnv'''46'constructor_10221 ::
  T_PParams_308 ->
  T_HSMap_26 Integer T_Credential_118 -> T_DelegEnv''_1052
check_DelegEnv'''46'constructor_10221 = MkDelegEnv'
cover_DelegEnv''_1052 :: DelegEnv' -> ()
cover_DelegEnv''_1052 x
  = case x of
      MkDelegEnv' _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv'.dePParams
d_dePParams_1058 :: T_DelegEnv''_1052 -> T_PParams_308
d_dePParams_1058 v0
  = case coe v0 of
      C_DelegEnv'''46'constructor_10221 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv'.dePools
d_dePools_1060 ::
  T_DelegEnv''_1052 -> T_HSMap_26 Integer T_Credential_118
d_dePools_1060 v0
  = case coe v0 of
      C_DelegEnv'''46'constructor_10221 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
