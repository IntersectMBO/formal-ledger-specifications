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
  = ScriptObj Integer
  | KeyHashObj Integer
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
  | DeRegDRep Credential
  | CCRegHot Credential (Maybe Credential)
  deriving (Show, Eq, Generic)
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
pattern C_ScriptObj_120 a0 = ScriptObj a0
pattern C_KeyHashObj_122 a0 = KeyHashObj a0
check_ScriptObj_120 :: Integer -> T_Credential_118
check_ScriptObj_120 = ScriptObj
check_KeyHashObj_122 :: Integer -> T_Credential_118
check_KeyHashObj_122 = KeyHashObj
cover_Credential_118 :: Credential -> ()
cover_Credential_118 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
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
pattern C_DeRegDRep_156 a0 = DeRegDRep a0
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
check_DeRegDRep_156 :: T_Credential_118 -> T_TxCert_144
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
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_160 = ()
type T_TxBody_160 = TxBody
pattern C_TxBody'46'constructor_955 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
check_TxBody'46'constructor_955 ::
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
  Integer ->
  T_TxId_52 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_144 ->
  T_TxBody_160
check_TxBody'46'constructor_955 = MkTxBody
cover_TxBody_160 :: TxBody -> ()
cover_TxBody_160 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_184 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_txins_184 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_186 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_refInputs_186 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_188 ::
  T_TxBody_160 ->
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
d_txouts_188 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_190 :: T_TxBody_160 -> Integer
d_txfee_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_192 ::
  T_TxBody_160 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_192 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_194 :: T_TxBody_160 -> Integer
d_txsize_194 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_196 :: T_TxBody_160 -> T_TxId_52
d_txid_196 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_198 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_collateral_198 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_200 :: T_TxBody_160 -> [Integer]
d_reqSigHash_200 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_202 :: T_TxBody_160 -> Maybe Integer
d_scriptIntHash_202 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_204 :: T_TxBody_160 -> [T_TxCert_144]
d_txcerts_204 v0
  = case coe v0 of
      C_TxBody'46'constructor_955 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_206 = ()
type T_TxWitnesses_206 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1299 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1299 ::
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
  T_TxWitnesses_206
check_TxWitnesses'46'constructor_1299 = MkTxWitnesses
cover_TxWitnesses_206 :: TxWitnesses -> ()
cover_TxWitnesses_206 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_216 ::
  T_TxWitnesses_206 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_216 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1299 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_218 :: T_TxWitnesses_206 -> [T_Empty_6]
d_scripts_218 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1299 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_220 ::
  T_TxWitnesses_206 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_220 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1299 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_222 ::
  T_TxWitnesses_206 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_Tag_98 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer))
d_txrdmrs_222 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1299 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_224 = ()
type T_Tx_224 = Tx
pattern C_Tx'46'constructor_1365 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1365 ::
  T_TxBody_160 ->
  T_TxWitnesses_206 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_224
check_Tx'46'constructor_1365 = MkTx
cover_Tx_224 :: Tx -> ()
cover_Tx_224 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_232 :: T_Tx_224 -> T_TxBody_160
d_body_232 v0
  = case coe v0 of
      C_Tx'46'constructor_1365 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_234 :: T_Tx_224 -> T_TxWitnesses_206
d_wits_234 v0
  = case coe v0 of
      C_Tx'46'constructor_1365 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_236 ::
  T_Tx_224 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_236 v0
  = case coe v0 of
      C_Tx'46'constructor_1365 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds
d_DrepThresholds_238 = ()
type T_DrepThresholds_238 = DrepThresholds
pattern C_DrepThresholds'46'constructor_1485 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkDrepThresholds a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_DrepThresholds'46'constructor_1485 ::
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
  T_DrepThresholds_238
check_DrepThresholds'46'constructor_1485 = MkDrepThresholds
cover_DrepThresholds_238 :: DrepThresholds -> ()
cover_DrepThresholds_238 x
  = case x of
      MkDrepThresholds _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P1
d_P1_260 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P1_260 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2a
d_P2a_262 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2a_262 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2b
d_P2b_264 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2b_264 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P3
d_P3_266 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P3_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P4
d_P4_268 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P4_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5a
d_P5a_270 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5a_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5b
d_P5b_272 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5b_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5c
d_P5c_274 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5c_274 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5d
d_P5d_276 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5d_276 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P6
d_P6_278 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P6_278 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds
d_PoolThresholds_280 = ()
type T_PoolThresholds_280 = PoolThresholds
pattern C_PoolThresholds'46'constructor_1731 a0 a1 a2 a3 a4 = MkPoolThresholds a0 a1 a2 a3 a4
check_PoolThresholds'46'constructor_1731 ::
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
  T_PoolThresholds_280
check_PoolThresholds'46'constructor_1731 = MkPoolThresholds
cover_PoolThresholds_280 :: PoolThresholds -> ()
cover_PoolThresholds_280 x
  = case x of
      MkPoolThresholds _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q1
d_Q1_292 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q1_292 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1731 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2a
d_Q2a_294 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2a_294 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1731 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2b
d_Q2b_296 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2b_296 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1731 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q4
d_Q4_298 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q4_298 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1731 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q5e
d_Q5e_300 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q5e_300 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1731 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_302 = ()
type T_PParams_302 = PParams
pattern C_PParams'46'constructor_2559 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
check_PParams'46'constructor_2559 ::
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
  T_PoolThresholds_280 ->
  T_DrepThresholds_238 ->
  Integer ->
  Integer ->
  Integer -> Integer -> Integer -> Integer -> T_PParams_302
check_PParams'46'constructor_2559 = MkPParams
cover_PParams_302 :: PParams -> ()
cover_PParams_302 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_356 :: T_PParams_302 -> Integer
d_a_356 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_358 :: T_PParams_302 -> Integer
d_b_358 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_360 :: T_PParams_302 -> Integer
d_maxBlockSize_360 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_362 :: T_PParams_302 -> Integer
d_maxTxSize_362 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_364 :: T_PParams_302 -> Integer
d_maxHeaderSize_364 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_366 :: T_PParams_302 -> Integer
d_keyDeposit_366 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_368 :: T_PParams_302 -> Integer
d_poolDeposit_368 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_370 :: T_PParams_302 -> Integer
d_Emax_370 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_372 :: T_PParams_302 -> Integer
d_nopt_372 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_374 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_374 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_376 :: T_PParams_302 -> Integer
d_minUTxOValue_376 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_378 :: T_PParams_302 -> Integer
d_coinsPerUTxOByte_378 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_380 ::
  T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_380 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_382 ::
  T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_382 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_384 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_384 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_386 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_386 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_388 :: T_PParams_302 -> Integer
d_maxValSize_388 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_390 :: T_PParams_302 -> Integer
d_maxCollateralInputs_390 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolVotingThresholds
d_poolVotingThresholds_392 :: T_PParams_302 -> T_PoolThresholds_280
d_poolVotingThresholds_392 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepVotingThresholds
d_drepVotingThresholds_394 :: T_PParams_302 -> T_DrepThresholds_238
d_drepVotingThresholds_394 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_396 :: T_PParams_302 -> Integer
d_ccMinSize_396 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_398 :: T_PParams_302 -> Integer
d_ccMaxTermLength_398 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_400 :: T_PParams_302 -> Integer
d_govActionLifetime_400 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_402 :: T_PParams_302 -> Integer
d_govActionDeposit_402 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_404 :: T_PParams_302 -> Integer
d_drepDeposit_404 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_406 :: T_PParams_302 -> Integer
d_drepActivity_406 v0
  = case coe v0 of
      C_PParams'46'constructor_2559 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_408 = ()
type T_PParamsUpdate_408 = PParamsUpdate
pattern C_PParamsUpdate'46'constructor_6733 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 = MkPParamsUpdate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
check_PParamsUpdate'46'constructor_6733 ::
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
    () T_PoolThresholds_280 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_DrepThresholds_238 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParamsUpdate_408
check_PParamsUpdate'46'constructor_6733 = MkPParamsUpdate
cover_PParamsUpdate_408 :: PParamsUpdate -> ()
cover_PParamsUpdate_408 x
  = case x of
      MkPParamsUpdate _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.a
d_a_462 :: T_PParamsUpdate_408 -> Maybe Integer
d_a_462 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.b
d_b_464 :: T_PParamsUpdate_408 -> Maybe Integer
d_b_464 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockSize
d_maxBlockSize_466 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxBlockSize_466 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxSize
d_maxTxSize_468 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxTxSize_468 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_470 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxHeaderSize_470 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.keyDeposit
d_keyDeposit_472 :: T_PParamsUpdate_408 -> Maybe Integer
d_keyDeposit_472 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolDeposit
d_poolDeposit_474 :: T_PParamsUpdate_408 -> Maybe Integer
d_poolDeposit_474 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.Emax
d_Emax_476 :: T_PParamsUpdate_408 -> Maybe Integer
d_Emax_476 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.nopt
d_nopt_478 :: T_PParamsUpdate_408 -> Maybe Integer
d_nopt_478 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.pv
d_pv_480 ::
  T_PParamsUpdate_408 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_pv_480 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.minUTxOValue
d_minUTxOValue_482 :: T_PParamsUpdate_408 -> Maybe Integer
d_minUTxOValue_482 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_484 :: T_PParamsUpdate_408 -> Maybe Integer
d_coinsPerUTxOByte_484 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.costmdls
d_costmdls_486 ::
  T_PParamsUpdate_408 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_486 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.prices
d_prices_488 ::
  T_PParamsUpdate_408 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_488 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_490 ::
  T_PParamsUpdate_408 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxTxExUnits_490 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_492 ::
  T_PParamsUpdate_408 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxBlockExUnits_492 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxValSize
d_maxValSize_494 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxValSize_494 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_496 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxCollateralInputs_496 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolVotingThresholds
d_poolVotingThresholds_498 ::
  T_PParamsUpdate_408 -> Maybe T_PoolThresholds_280
d_poolVotingThresholds_498 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepVotingThresholds
d_drepVotingThresholds_500 ::
  T_PParamsUpdate_408 -> Maybe T_DrepThresholds_238
d_drepVotingThresholds_500 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMinSize
d_ccMinSize_502 :: T_PParamsUpdate_408 -> Maybe Integer
d_ccMinSize_502 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_504 :: T_PParamsUpdate_408 -> Maybe Integer
d_ccMaxTermLength_504 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionLifetime
d_govActionLifetime_506 :: T_PParamsUpdate_408 -> Maybe Integer
d_govActionLifetime_506 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionDeposit
d_govActionDeposit_508 :: T_PParamsUpdate_408 -> Maybe Integer
d_govActionDeposit_508 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepDeposit
d_drepDeposit_510 :: T_PParamsUpdate_408 -> Maybe Integer
d_drepDeposit_510 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepActivity
d_drepActivity_512 :: T_PParamsUpdate_408 -> Maybe Integer
d_drepActivity_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_514 = ()
type T_UTxOEnv_514 = UTxOEnv
pattern C_UTxOEnv'46'constructor_8149 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_UTxOEnv'46'constructor_8149 ::
  Integer -> T_PParams_302 -> Integer -> T_UTxOEnv_514
check_UTxOEnv'46'constructor_8149 = MkUTxOEnv
cover_UTxOEnv_514 :: UTxOEnv -> ()
cover_UTxOEnv_514 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_522 :: T_UTxOEnv_514 -> Integer
d_slot_522 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8149 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_524 :: T_UTxOEnv_514 -> T_PParams_302
d_pparams_524 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8149 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.treasury
d_treasury_526 :: T_UTxOEnv_514 -> Integer
d_treasury_526 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8149 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_528 = ()
type T_UTxOState_528 = UTxOState
pattern C_UTxOState'46'constructor_8181 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_8181 ::
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
  Integer -> T_UTxOState_528
check_UTxOState'46'constructor_8181 = MkUTxOState
cover_UTxOState_528 :: UTxOState -> ()
cover_UTxOState_528 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_534 ::
  T_UTxOState_528 ->
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
d_utxo_534 v0
  = case coe v0 of
      C_UTxOState'46'constructor_8181 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_536 :: T_UTxOState_528 -> Integer
d_fees_536 v0
  = case coe v0 of
      C_UTxOState'46'constructor_8181 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_538 = ()
type T_EnactState_538 = EnactState
pattern C_EnactState'46'constructor_8265 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_8265 ::
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
    () () T_PParams_302
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_EnactState_538
check_EnactState'46'constructor_8265 = MkEnactState
cover_EnactState_538 :: EnactState -> ()
cover_EnactState_538 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_550 ::
  T_EnactState_538 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_118 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esCC_550 v0
  = case coe v0 of
      C_EnactState'46'constructor_8265 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_552 ::
  T_EnactState_538 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esConstitution_552 v0
  = case coe v0 of
      C_EnactState'46'constructor_8265 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_554 ::
  T_EnactState_538 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPV_554 v0
  = case coe v0 of
      C_EnactState'46'constructor_8265 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_556 ::
  T_EnactState_538 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_302
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPParams_556 v0
  = case coe v0 of
      C_EnactState'46'constructor_8265 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_558 ::
  T_EnactState_538 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_esWithdrawals_558 v0
  = case coe v0 of
      C_EnactState'46'constructor_8265 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_560 = ()
type T_GovEnv_560 = GovEnv
pattern C_GovEnv'46'constructor_8371 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_8371 ::
  T_TxId_52 ->
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_538 -> T_GovEnv_560
check_GovEnv'46'constructor_8371 = MkGovEnv
cover_GovEnv_560 :: GovEnv -> ()
cover_GovEnv_560 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_572 :: T_GovEnv_560 -> T_TxId_52
d_geTxId_572 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_574 :: T_GovEnv_560 -> Integer
d_geEpoch_574 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_576 :: T_GovEnv_560 -> T_PParams_302
d_gePParams_576 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_578 :: T_GovEnv_560 -> Maybe Integer
d_gePPolicy_578 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_580 :: T_GovEnv_560 -> T_EnactState_538
d_geEnactState_580 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8371 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_582 :: ()
d_Voter_582 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_584 = ()
type T_GovAction_584 = GovAction
pattern C_NoConfidence_586 = NoConfidence
pattern C_UpdateCommittee_588 a0 a1 a2 = UpdateCommittee a0 a1 a2
pattern C_NewConstitution_590 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_592 a0 = TriggerHF a0
pattern C_ChangePParams_594 a0 = ChangePParams a0
pattern C_TreasuryWdrl_596 a0 = TreasuryWdrl a0
pattern C_Info_598 = Info
check_NoConfidence_586 :: T_GovAction_584
check_NoConfidence_586 = NoConfidence
check_UpdateCommittee_588 ::
  T_HSMap_26 T_Credential_118 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_118 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_584
check_UpdateCommittee_588 = UpdateCommittee
check_NewConstitution_590 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_584
check_NewConstitution_590 = NewConstitution
check_TriggerHF_592 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_584
check_TriggerHF_592 = TriggerHF
check_ChangePParams_594 :: T_PParamsUpdate_408 -> T_GovAction_584
check_ChangePParams_594 = ChangePParams
check_TreasuryWdrl_596 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_GovAction_584
check_TreasuryWdrl_596 = TreasuryWdrl
check_Info_598 :: T_GovAction_584
check_Info_598 = Info
cover_GovAction_584 :: GovAction -> ()
cover_GovAction_584 x
  = case x of
      NoConfidence -> ()
      UpdateCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_600 = ()
type T_Vote_600 = Vote
pattern C_VoteYes_602 = VoteYes
pattern C_VoteNo_604 = VoteNo
pattern C_VoteAbstain_606 = VoteAbstain
check_VoteYes_602 :: T_Vote_600
check_VoteYes_602 = VoteYes
check_VoteNo_604 :: T_Vote_600
check_VoteNo_604 = VoteNo
check_VoteAbstain_606 :: T_Vote_600
check_VoteAbstain_606 = VoteAbstain
cover_Vote_600 :: Vote -> ()
cover_Vote_600 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_608 = ()
type T_GovActionState_608 = GovActionState
pattern C_GovActionState'46'constructor_8541 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_8541 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_128 T_Credential_118)
    T_Vote_600 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  Integer ->
  T_GovAction_584 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_GovActionState_608
check_GovActionState'46'constructor_8541 = MkGovActionState
cover_GovActionState_608 :: GovActionState -> ()
cover_GovActionState_608 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_620 ::
  T_GovActionState_608 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_128 T_Credential_118)
    T_Vote_600
d_gasVotes_620 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8541 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_622 ::
  T_GovActionState_608 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gasReturnAddr_622 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8541 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_624 :: T_GovActionState_608 -> Integer
d_gasExpiresIn_624 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8541 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_626 :: T_GovActionState_608 -> T_GovAction_584
d_gasAction_626 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8541 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_628 ::
  T_GovActionState_608 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gasPrevAction_628 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8541 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_630 = ()
type T_GovVote_630 = GovVote
pattern C_GovVote'46'constructor_8639 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_8639 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_128 T_Credential_118 ->
  T_Vote_600 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_630
check_GovVote'46'constructor_8639 = MkGovVote
cover_GovVote_630 :: GovVote -> ()
cover_GovVote_630 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_640 ::
  T_GovVote_630 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gvGid_640 v0
  = case coe v0 of
      C_GovVote'46'constructor_8639 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_642 ::
  T_GovVote_630 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_128 T_Credential_118
d_gvVoter_642 v0
  = case coe v0 of
      C_GovVote'46'constructor_8639 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_644 :: T_GovVote_630 -> T_Vote_600
d_gvVote_644 v0
  = case coe v0 of
      C_GovVote'46'constructor_8639 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_646 ::
  T_GovVote_630 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_646 v0
  = case coe v0 of
      C_GovVote'46'constructor_8639 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_648 = ()
type T_GovProposal_648 = GovProposal
pattern C_GovProposal'46'constructor_8729 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_8729 ::
  T_GovAction_584 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_648
check_GovProposal'46'constructor_8729 = MkGovProposal
cover_GovProposal_648 :: GovProposal -> ()
cover_GovProposal_648 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_662 :: T_GovProposal_648 -> T_GovAction_584
d_gpAction_662 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8729 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_664 ::
  T_GovProposal_648 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gpPrevAction_664 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8729 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_666 :: T_GovProposal_648 -> Maybe Integer
d_gpPolicy_666 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8729 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_668 :: T_GovProposal_648 -> Integer
d_gpDeposit_668 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8729 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_670 ::
  T_GovProposal_648 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gpReturnAddr_670 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8729 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_672 ::
  T_GovProposal_648 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_672 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8729 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_674 = ()
type T_GovSignal_674 = GovSignal
pattern C_GovSignalVote_676 a0 = GovSignalVote a0
pattern C_GovSignalProposal_678 a0 = GovSignalProposal a0
check_GovSignalVote_676 :: T_GovVote_630 -> T_GovSignal_674
check_GovSignalVote_676 = GovSignalVote
check_GovSignalProposal_678 :: T_GovProposal_648 -> T_GovSignal_674
check_GovSignalProposal_678 = GovSignalProposal
cover_GovSignal_674 :: GovSignal -> ()
cover_GovSignal_674 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_680 :: ()
d_GovState_680 = erased
-- Ledger.Foreign.LedgerTypes.DepositPurpose
d_DepositPurpose_682 = ()
type T_DepositPurpose_682 = DepositPurpose
pattern C_CredentialDeposit_684 a0 = CredentialDeposit a0
pattern C_PoolDeposit_686 a0 = PoolDeposit a0
pattern C_DRepDeposit_688 a0 = DRepDeposit a0
pattern C_GovActionDeposit_690 a0 = GovActionDeposit a0
check_CredentialDeposit_684 ::
  T_Credential_118 -> T_DepositPurpose_682
check_CredentialDeposit_684 = CredentialDeposit
check_PoolDeposit_686 :: Integer -> T_DepositPurpose_682
check_PoolDeposit_686 = PoolDeposit
check_DRepDeposit_688 :: T_Credential_118 -> T_DepositPurpose_682
check_DRepDeposit_688 = DRepDeposit
check_GovActionDeposit_690 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_DepositPurpose_682
check_GovActionDeposit_690 = GovActionDeposit
cover_DepositPurpose_682 :: DepositPurpose -> ()
cover_DepositPurpose_682 x
  = case x of
      CredentialDeposit _ -> ()
      PoolDeposit _ -> ()
      DRepDeposit _ -> ()
      GovActionDeposit _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_692 = ()
type T_CertEnv_692 = CertEnv
pattern C_CertEnv'46'constructor_8915 a0 a1 a2 a3 a4 = MkCertEnv a0 a1 a2 a3 a4
check_CertEnv'46'constructor_8915 ::
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_630 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_HSMap_26 T_DepositPurpose_682 Integer -> T_CertEnv_692
check_CertEnv'46'constructor_8915 = MkCertEnv
cover_CertEnv_692 :: CertEnv -> ()
cover_CertEnv_692 x
  = case x of
      MkCertEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_704 :: T_CertEnv_692 -> Integer
d_epoch_704 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8915 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_706 :: T_CertEnv_692 -> T_PParams_302
d_pp_706 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8915 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_708 :: T_CertEnv_692 -> [T_GovVote_630]
d_votes_708 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8915 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_710 ::
  T_CertEnv_692 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_710 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8915 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.deposits
d_deposits_712 ::
  T_CertEnv_692 -> T_HSMap_26 T_DepositPurpose_682 Integer
d_deposits_712 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8915 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'
d_CertEnv''_714 = ()
type T_CertEnv''_714 = CertEnv'
pattern C_CertEnv'''46'constructor_9011 a0 a1 a2 a3 = MkCertEnv' a0 a1 a2 a3
check_CertEnv'''46'constructor_9011 ::
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_630 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_CertEnv''_714
check_CertEnv'''46'constructor_9011 = MkCertEnv'
cover_CertEnv''_714 :: CertEnv' -> ()
cover_CertEnv''_714 x
  = case x of
      MkCertEnv' _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv'.epoch
d_epoch_724 :: T_CertEnv''_714 -> Integer
d_epoch_724 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9011 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.pp
d_pp_726 :: T_CertEnv''_714 -> T_PParams_302
d_pp_726 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9011 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.votes
d_votes_728 :: T_CertEnv''_714 -> [T_GovVote_630]
d_votes_728 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9011 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.wdrls
d_wdrls_730 ::
  T_CertEnv''_714 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_730 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_9011 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_732 = ()
type T_DState_732 = DState
pattern C_DState'46'constructor_9075 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_9075 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_DState_732
check_DState'46'constructor_9075 = MkDState
cover_DState_732 :: DState -> ()
cover_DState_732 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_740 ::
  T_DState_732 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_740 v0
  = case coe v0 of
      C_DState'46'constructor_9075 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_742 ::
  T_DState_732 -> T_HSMap_26 T_Credential_118 Integer
d_stakeDelegs_742 v0
  = case coe v0 of
      C_DState'46'constructor_9075 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_744 ::
  T_DState_732 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_744 v0
  = case coe v0 of
      C_DState'46'constructor_9075 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'
d_DState''_746 = ()
type T_DState''_746 = DState'
pattern C_DState'''46'constructor_9133 a0 a1 a2 a3 = MkDState' a0 a1 a2 a3
check_DState'''46'constructor_9133 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_DepositPurpose_682 Integer -> T_DState''_746
check_DState'''46'constructor_9133 = MkDState'
cover_DState''_746 :: DState' -> ()
cover_DState''_746 x
  = case x of
      MkDState' _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState'.voteDelegs
d_voteDelegs_756 ::
  T_DState''_746 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_756 v0
  = case coe v0 of
      C_DState'''46'constructor_9133 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.stakeDelegs
d_stakeDelegs_758 ::
  T_DState''_746 -> T_HSMap_26 T_Credential_118 Integer
d_stakeDelegs_758 v0
  = case coe v0 of
      C_DState'''46'constructor_9133 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.rewards
d_rewards_760 ::
  T_DState''_746 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_760 v0
  = case coe v0 of
      C_DState'''46'constructor_9133 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.deposits
d_deposits_762 ::
  T_DState''_746 -> T_HSMap_26 T_DepositPurpose_682 Integer
d_deposits_762 v0
  = case coe v0 of
      C_DState'''46'constructor_9133 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_764 = ()
type T_PState_764 = PState
pattern C_PState'46'constructor_9189 a0 a1 = MkPState a0 a1
check_PState'46'constructor_9189 ::
  T_HSMap_26 Integer T_Credential_118 ->
  T_HSMap_26 Integer Integer -> T_PState_764
check_PState'46'constructor_9189 = MkPState
cover_PState_764 :: PState -> ()
cover_PState_764 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_770 :: T_PState_764 -> T_HSMap_26 Integer T_Credential_118
d_pools_770 v0
  = case coe v0 of
      C_PState'46'constructor_9189 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_772 :: T_PState_764 -> T_HSMap_26 Integer Integer
d_retiring_772 v0
  = case coe v0 of
      C_PState'46'constructor_9189 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_774 = ()
type T_GState_774 = GState
pattern C_GState'46'constructor_9225 a0 a1 = MkGState a0 a1
check_GState'46'constructor_9225 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_GState_774
check_GState'46'constructor_9225 = MkGState
cover_GState_774 :: GState -> ()
cover_GState_774 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_780 :: T_GState_774 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_780 v0
  = case coe v0 of
      C_GState'46'constructor_9225 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_782 ::
  T_GState_774 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_782 v0
  = case coe v0 of
      C_GState'46'constructor_9225 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'
d_GState''_784 = ()
type T_GState''_784 = GState'
pattern C_GState'''46'constructor_9269 a0 a1 a2 = MkGState' a0 a1 a2
check_GState'''46'constructor_9269 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_HSMap_26 T_DepositPurpose_682 Integer -> T_GState''_784
check_GState'''46'constructor_9269 = MkGState'
cover_GState''_784 :: GState' -> ()
cover_GState''_784 x
  = case x of
      MkGState' _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState'.dreps
d_dreps_792 ::
  T_GState''_784 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_792 v0
  = case coe v0 of
      C_GState'''46'constructor_9269 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'.ccHotKeys
d_ccHotKeys_794 ::
  T_GState''_784 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_794 v0
  = case coe v0 of
      C_GState'''46'constructor_9269 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'.deposits
d_deposits_796 ::
  T_GState''_784 -> T_HSMap_26 T_DepositPurpose_682 Integer
d_deposits_796 v0
  = case coe v0 of
      C_GState'''46'constructor_9269 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_798 = ()
type T_CertState_798 = CertState
pattern C_CertState'46'constructor_9305 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_9305 ::
  T_DState_732 -> T_PState_764 -> T_GState_774 -> T_CertState_798
check_CertState'46'constructor_9305 = MkCertState
cover_CertState_798 :: CertState -> ()
cover_CertState_798 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_806 :: T_CertState_798 -> T_DState_732
d_dState_806 v0
  = case coe v0 of
      C_CertState'46'constructor_9305 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_808 :: T_CertState_798 -> T_PState_764
d_pState_808 v0
  = case coe v0 of
      C_CertState'46'constructor_9305 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_810 :: T_CertState_798 -> T_GState_774
d_gState_810 v0
  = case coe v0 of
      C_CertState'46'constructor_9305 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'
d_CertState''_812 = ()
type T_CertState''_812 = CertState'
pattern C_CertState'''46'constructor_9341 a0 a1 a2 = MkCertState' a0 a1 a2
check_CertState'''46'constructor_9341 ::
  T_DState''_746 ->
  T_PState_764 -> T_GState''_784 -> T_CertState''_812
check_CertState'''46'constructor_9341 = MkCertState'
cover_CertState''_812 :: CertState' -> ()
cover_CertState''_812 x
  = case x of
      MkCertState' _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState'.dState
d_dState_820 :: T_CertState''_812 -> T_DState''_746
d_dState_820 v0
  = case coe v0 of
      C_CertState'''46'constructor_9341 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'.pState
d_pState_822 :: T_CertState''_812 -> T_PState_764
d_pState_822 v0
  = case coe v0 of
      C_CertState'''46'constructor_9341 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'.gState
d_gState_824 :: T_CertState''_812 -> T_GState''_784
d_gState_824 v0
  = case coe v0 of
      C_CertState'''46'constructor_9341 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.StakeDistrs
d_StakeDistrs_826 = ()
type T_StakeDistrs_826 = StakeDistrs
pattern C_StakeDistrs'46'constructor_9375 a0 = MkStakeDistrs a0
check_StakeDistrs'46'constructor_9375 ::
  T_HSMap_26 T_VDeleg_136 Integer -> T_StakeDistrs_826
check_StakeDistrs'46'constructor_9375 = MkStakeDistrs
cover_StakeDistrs_826 :: StakeDistrs -> ()
cover_StakeDistrs_826 x
  = case x of
      MkStakeDistrs _ -> ()
-- Ledger.Foreign.LedgerTypes.StakeDistrs.stakeDistr
d_stakeDistr_830 ::
  T_StakeDistrs_826 -> T_HSMap_26 T_VDeleg_136 Integer
d_stakeDistr_830 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_9375 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv
d_RatifyEnv_832 = ()
type T_RatifyEnv_832 = RatifyEnv
pattern C_RatifyEnv'46'constructor_9433 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_RatifyEnv'46'constructor_9433 ::
  T_StakeDistrs_826 ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  Integer -> T_RatifyEnv_832
check_RatifyEnv'46'constructor_9433 = MkRatifyEnv
cover_RatifyEnv_832 :: RatifyEnv -> ()
cover_RatifyEnv_832 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reStakeDistrs
d_reStakeDistrs_844 :: T_RatifyEnv_832 -> T_StakeDistrs_826
d_reStakeDistrs_844 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9433 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCurrentEpoch
d_reCurrentEpoch_846 :: T_RatifyEnv_832 -> Integer
d_reCurrentEpoch_846 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9433 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reDReps
d_reDReps_848 ::
  T_RatifyEnv_832 -> T_HSMap_26 T_Credential_118 Integer
d_reDReps_848 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9433 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCCHotKeys
d_reCCHotKeys_850 ::
  T_RatifyEnv_832 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_reCCHotKeys_850 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9433 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reTreasury
d_reTreasury_852 :: T_RatifyEnv_832 -> Integer
d_reTreasury_852 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9433 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState
d_RatifyState_854 = ()
type T_RatifyState_854 = RatifyState
pattern C_RatifyState'46'constructor_9523 a0 a1 a2 = MkRatifyState a0 a1 a2
check_RatifyState'46'constructor_9523 ::
  T_EnactState_538 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_608) ->
  Bool -> T_RatifyState_854
check_RatifyState'46'constructor_9523 = MkRatifyState
cover_RatifyState_854 :: RatifyState -> ()
cover_RatifyState_854 x
  = case x of
      MkRatifyState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyState.es
d_es_862 :: T_RatifyState_854 -> T_EnactState_538
d_es_862 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9523 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.removed
d_removed_864 ::
  T_RatifyState_854 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny T_TxId_52 Integer)
       T_GovActionState_608)
d_removed_864 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9523 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.delay
d_delay_866 :: T_RatifyState_854 -> Bool
d_delay_866 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9523 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv
d_LEnv_868 = ()
type T_LEnv_868 = LedgerEnv
pattern C_LEnv'46'constructor_9581 a0 a1 a2 a3 a4 = MkLedgerEnv a0 a1 a2 a3 a4
check_LEnv'46'constructor_9581 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParams_302 -> T_EnactState_538 -> Integer -> T_LEnv_868
check_LEnv'46'constructor_9581 = MkLedgerEnv
cover_LEnv_868 :: LedgerEnv -> ()
cover_LEnv_868 x
  = case x of
      MkLedgerEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LEnv.slot
d_slot_880 :: T_LEnv_868 -> Integer
d_slot_880 v0
  = case coe v0 of
      C_LEnv'46'constructor_9581 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.ppolicy
d_ppolicy_882 :: T_LEnv_868 -> Maybe Integer
d_ppolicy_882 v0
  = case coe v0 of
      C_LEnv'46'constructor_9581 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.pparams
d_pparams_884 :: T_LEnv_868 -> T_PParams_302
d_pparams_884 v0
  = case coe v0 of
      C_LEnv'46'constructor_9581 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.enactState
d_enactState_886 :: T_LEnv_868 -> T_EnactState_538
d_enactState_886 v0
  = case coe v0 of
      C_LEnv'46'constructor_9581 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.treasury
d_treasury_888 :: T_LEnv_868 -> Integer
d_treasury_888 v0
  = case coe v0 of
      C_LEnv'46'constructor_9581 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState
d_LState_890 = ()
type T_LState_890 = LedgerState
pattern C_LState'46'constructor_9653 a0 a1 a2 = MkLedgerState a0 a1 a2
check_LState'46'constructor_9653 ::
  T_UTxOState_528 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_608) ->
  T_CertState_798 -> T_LState_890
check_LState'46'constructor_9653 = MkLedgerState
cover_LState_890 :: LedgerState -> ()
cover_LState_890 x
  = case x of
      MkLedgerState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LState.utxoSt
d_utxoSt_898 :: T_LState_890 -> T_UTxOState_528
d_utxoSt_898 v0
  = case coe v0 of
      C_LState'46'constructor_9653 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.govSt
d_govSt_900 ::
  T_LState_890 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_TxId_52 Integer)
     T_GovActionState_608]
d_govSt_900 v0
  = case coe v0 of
      C_LState'46'constructor_9653 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.certState
d_certState_902 :: T_LState_890 -> T_CertState_798
d_certState_902 v0
  = case coe v0 of
      C_LState'46'constructor_9653 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv
d_EnactEnv_904 = ()
type T_EnactEnv_904 = EnactEnv
pattern C_EnactEnv'46'constructor_9689 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_EnactEnv'46'constructor_9689 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  Integer -> Integer -> T_EnactEnv_904
check_EnactEnv'46'constructor_9689 = MkEnactEnv
cover_EnactEnv_904 :: EnactEnv -> ()
cover_EnactEnv_904 x
  = case x of
      MkEnactEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactEnv.gid
d_gid_912 ::
  T_EnactEnv_904 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gid_912 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9689 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.treasury
d_treasury_914 :: T_EnactEnv_904 -> Integer
d_treasury_914 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9689 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.epoch
d_epoch_916 :: T_EnactEnv_904 -> Integer
d_epoch_916 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9689 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt
d_Acnt_918 = ()
type T_Acnt_918 = Acnt
pattern C_Acnt'46'constructor_9721 a0 a1 = MkAcnt a0 a1
check_Acnt'46'constructor_9721 :: Integer -> Integer -> T_Acnt_918
check_Acnt'46'constructor_9721 = MkAcnt
cover_Acnt_918 :: Acnt -> ()
cover_Acnt_918 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Acnt.treasury
d_treasury_924 :: T_Acnt_918 -> Integer
d_treasury_924 v0
  = case coe v0 of
      C_Acnt'46'constructor_9721 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt.reserves
d_reserves_926 :: T_Acnt_918 -> Integer
d_reserves_926 v0
  = case coe v0 of
      C_Acnt'46'constructor_9721 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshot
d_Snapshot_928 = ()
type T_Snapshot_928 = Snapshot
pattern C_Snapshot'46'constructor_9749 a0 a1 = MkSnapshot a0 a1
check_Snapshot'46'constructor_9749 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_Snapshot_928
check_Snapshot'46'constructor_9749 = MkSnapshot
cover_Snapshot_928 :: Snapshot -> ()
cover_Snapshot_928 x
  = case x of
      MkSnapshot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Snapshot.stake
d_stake_934 ::
  T_Snapshot_928 -> T_HSMap_26 T_Credential_118 Integer
d_stake_934 v0
  = case coe v0 of
      C_Snapshot'46'constructor_9749 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshot.delegations
d_delegations_936 ::
  T_Snapshot_928 -> T_HSMap_26 T_Credential_118 Integer
d_delegations_936 v0
  = case coe v0 of
      C_Snapshot'46'constructor_9749 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots
d_Snapshots_938 = ()
type T_Snapshots_938 = Snapshots
pattern C_Snapshots'46'constructor_9779 a0 a1 a2 a3 = MkSnapshots a0 a1 a2 a3
check_Snapshots'46'constructor_9779 ::
  T_Snapshot_928 ->
  T_Snapshot_928 -> T_Snapshot_928 -> Integer -> T_Snapshots_938
check_Snapshots'46'constructor_9779 = MkSnapshots
cover_Snapshots_938 :: Snapshots -> ()
cover_Snapshots_938 x
  = case x of
      MkSnapshots _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Snapshots.mark
d_mark_948 :: T_Snapshots_938 -> T_Snapshot_928
d_mark_948 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9779 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.set
d_set_950 :: T_Snapshots_938 -> T_Snapshot_928
d_set_950 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9779 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.go
d_go_952 :: T_Snapshots_938 -> T_Snapshot_928
d_go_952 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9779 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.feeSS
d_feeSS_954 :: T_Snapshots_938 -> Integer
d_feeSS_954 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9779 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState
d_EpochState_956 = ()
type T_EpochState_956 = EpochState
pattern C_EpochState'46'constructor_9845 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_EpochState'46'constructor_9845 ::
  T_Acnt_918 ->
  T_Snapshots_938 ->
  T_LState_890 ->
  T_EnactState_538 -> T_RatifyState_854 -> T_EpochState_956
check_EpochState'46'constructor_9845 = MkEpochState
cover_EpochState_956 :: EpochState -> ()
cover_EpochState_956 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EpochState.acnt
d_acnt_968 :: T_EpochState_956 -> T_Acnt_918
d_acnt_968 v0
  = case coe v0 of
      C_EpochState'46'constructor_9845 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ss
d_ss_970 :: T_EpochState_956 -> T_Snapshots_938
d_ss_970 v0
  = case coe v0 of
      C_EpochState'46'constructor_9845 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ls
d_ls_972 :: T_EpochState_956 -> T_LState_890
d_ls_972 v0
  = case coe v0 of
      C_EpochState'46'constructor_9845 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.es
d_es_974 :: T_EpochState_956 -> T_EnactState_538
d_es_974 v0
  = case coe v0 of
      C_EpochState'46'constructor_9845 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.fut
d_fut_976 :: T_EpochState_956 -> T_RatifyState_854
d_fut_976 v0
  = case coe v0 of
      C_EpochState'46'constructor_9845 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochEnv
d_NewEpochEnv_978 = ()
type T_NewEpochEnv_978 = NewEpochEnv
pattern C_NewEpochEnv'46'constructor_9911 a0 = MkNewEpochEnv a0
check_NewEpochEnv'46'constructor_9911 ::
  T_StakeDistrs_826 -> T_NewEpochEnv_978
check_NewEpochEnv'46'constructor_9911 = MkNewEpochEnv
cover_NewEpochEnv_978 :: NewEpochEnv -> ()
cover_NewEpochEnv_978 x
  = case x of
      MkNewEpochEnv _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochEnv.stakeDistrs
d_stakeDistrs_982 :: T_NewEpochEnv_978 -> T_StakeDistrs_826
d_stakeDistrs_982 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_9911 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate
d_RewardUpdate_984 = ()
type T_RewardUpdate_984 = RewardUpdate
pattern C_RewardUpdate'46'constructor_9937 a0 a1 a2 a3 = MkRewardUpdate a0 a1 a2 a3
check_RewardUpdate'46'constructor_9937 ::
  Integer ->
  Integer ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_RewardUpdate_984
check_RewardUpdate'46'constructor_9937 = MkRewardUpdate
cover_RewardUpdate_984 :: RewardUpdate -> ()
cover_RewardUpdate_984 x
  = case x of
      MkRewardUpdate _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δt
d_Δt_994 :: T_RewardUpdate_984 -> Integer
d_Δt_994 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9937 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δr
d_Δr_996 :: T_RewardUpdate_984 -> Integer
d_Δr_996 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9937 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δf
d_Δf_998 :: T_RewardUpdate_984 -> Integer
d_Δf_998 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9937 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.rs
d_rs_1000 ::
  T_RewardUpdate_984 -> T_HSMap_26 T_Credential_118 Integer
d_rs_1000 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9937 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState
d_NewEpochState_1002 = ()
type T_NewEpochState_1002 = NewEpochState
pattern C_NewEpochState'46'constructor_10003 a0 a1 a2 = MkNewEpochState a0 a1 a2
check_NewEpochState'46'constructor_10003 ::
  Integer ->
  T_EpochState_956 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_RewardUpdate_984 ->
  T_NewEpochState_1002
check_NewEpochState'46'constructor_10003 = MkNewEpochState
cover_NewEpochState_1002 :: NewEpochState -> ()
cover_NewEpochState_1002 x
  = case x of
      MkNewEpochState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochState.lastEpoch
d_lastEpoch_1010 :: T_NewEpochState_1002 -> Integer
d_lastEpoch_1010 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10003 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.epochState
d_epochState_1012 :: T_NewEpochState_1002 -> T_EpochState_956
d_epochState_1012 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10003 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.ru
d_ru_1014 :: T_NewEpochState_1002 -> Maybe T_RewardUpdate_984
d_ru_1014 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10003 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.ChainState
d_ChainState_1016 = ()
type T_ChainState_1016 = ChainState
pattern C_ChainState'46'constructor_10033 a0 = MkChainState a0
check_ChainState'46'constructor_10033 ::
  T_NewEpochState_1002 -> T_ChainState_1016
check_ChainState'46'constructor_10033 = MkChainState
cover_ChainState_1016 :: ChainState -> ()
cover_ChainState_1016 x
  = case x of
      MkChainState _ -> ()
-- Ledger.Foreign.LedgerTypes.ChainState.csNewEpochState
d_csNewEpochState_1020 :: T_ChainState_1016 -> T_NewEpochState_1002
d_csNewEpochState_1020 v0
  = case coe v0 of
      C_ChainState'46'constructor_10033 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block
d_Block_1022 = ()
type T_Block_1022 = Block
pattern C_Block'46'constructor_10047 a0 a1 = MkBlock a0 a1
check_Block'46'constructor_10047 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Tx_224 ->
  Integer -> T_Block_1022
check_Block'46'constructor_10047 = MkBlock
cover_Block_1022 :: Block -> ()
cover_Block_1022 x
  = case x of
      MkBlock _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Block.blockTxs
d_blockTxs_1028 :: T_Block_1022 -> [T_Tx_224]
d_blockTxs_1028 v0
  = case coe v0 of
      C_Block'46'constructor_10047 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block.blockSlot
d_blockSlot_1030 :: T_Block_1022 -> Integer
d_blockSlot_1030 v0
  = case coe v0 of
      C_Block'46'constructor_10047 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv
d_DelegEnv_1032 = ()
type T_DelegEnv_1032 = DelegEnv
pattern C_DelegEnv'46'constructor_10079 a0 a1 a2 = MkDelegEnv a0 a1 a2
check_DelegEnv'46'constructor_10079 ::
  T_PParams_302 ->
  T_HSMap_26 Integer T_Credential_118 ->
  T_HSMap_26 T_DepositPurpose_682 Integer -> T_DelegEnv_1032
check_DelegEnv'46'constructor_10079 = MkDelegEnv
cover_DelegEnv_1032 :: DelegEnv -> ()
cover_DelegEnv_1032 x
  = case x of
      MkDelegEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePParams
d_dePParams_1040 :: T_DelegEnv_1032 -> T_PParams_302
d_dePParams_1040 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10079 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePools
d_dePools_1042 ::
  T_DelegEnv_1032 -> T_HSMap_26 Integer T_Credential_118
d_dePools_1042 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10079 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.deposits
d_deposits_1044 ::
  T_DelegEnv_1032 -> T_HSMap_26 T_DepositPurpose_682 Integer
d_deposits_1044 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10079 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv'
d_DelegEnv''_1046 = ()
type T_DelegEnv''_1046 = DelegEnv'
pattern C_DelegEnv'''46'constructor_10115 a0 a1 = MkDelegEnv' a0 a1
check_DelegEnv'''46'constructor_10115 ::
  T_PParams_302 ->
  T_HSMap_26 Integer T_Credential_118 -> T_DelegEnv''_1046
check_DelegEnv'''46'constructor_10115 = MkDelegEnv'
cover_DelegEnv''_1046 :: DelegEnv' -> ()
cover_DelegEnv''_1046 x
  = case x of
      MkDelegEnv' _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv'.dePParams
d_dePParams_1052 :: T_DelegEnv''_1046 -> T_PParams_302
d_dePParams_1052 v0
  = case coe v0 of
      C_DelegEnv'''46'constructor_10115 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv'.dePools
d_dePools_1054 ::
  T_DelegEnv''_1046 -> T_HSMap_26 Integer T_Credential_118
d_dePools_1054 v0
  = case coe v0 of
      C_DelegEnv'''46'constructor_10115 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
