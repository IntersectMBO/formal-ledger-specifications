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
  { ppA                            :: Integer
  , ppB                            :: Integer
  , ppMaxBlockSize                 :: Integer
  , ppMaxTxSize                    :: Integer
  , ppMaxHeaderSize                :: Integer
  , ppKeyDeposit                   :: Coin
  , ppPoolDeposit                  :: Coin
  , ppEmax                         :: Epoch
  , ppNopt                         :: Integer
  , ppPv                           :: (Integer, Integer)
  , ppMinUTxOValue                 :: Coin
  , ppCoinsPerUTxOByte             :: Coin
  , ppCostmdls                     :: ()
  , ppPrices                       :: ()
  , ppMinFeeRefScriptCoinsPerByte  :: Rational
  , ppMaxRefScriptSizePerTx        :: Integer
  , ppMaxRefScriptSizePerBlock     :: Integer
  , ppRefScriptCostStride          :: Integer
  , ppRefScriptCostMultiplier      :: Rational
  , ppMaxTxExUnits                 :: ExUnits
  , ppMaxBlockExUnits              :: ExUnits
  , ppMaxValSize                   :: Integer
  , ppMaxCollateralInputs          :: Integer
  , ppPoolVotingThresholds         :: PoolThresholds
  , ppDrepVotingThresholds         :: DrepThresholds
  , ppCCMinSize                    :: Integer
  , ppCCMaxTermLength              :: Integer
  , ppGovActionLifetime            :: Integer
  , ppGovActionDeposit             :: Coin
  , ppDrepDeposit                  :: Coin
  , ppDrepActivity                 :: Epoch
  } deriving (Show, Generic)

data PParamsUpdate = MkPParamsUpdate
  { ppuA                            :: Maybe Integer
  , ppuB                            :: Maybe Integer
  , ppuMaxBlockSize                 :: Maybe Integer
  , ppuMaxTxSize                    :: Maybe Integer
  , ppuMaxHeaderSize                :: Maybe Integer
  , ppuKeyDeposit                   :: Maybe Coin
  , ppuPoolDeposit                  :: Maybe Coin
  , ppuEmax                         :: Maybe Epoch
  , ppuNopt                         :: Maybe Integer
  , ppuPv                           :: Maybe (Integer, Integer)
  , ppuMinUTxOValue                 :: Maybe Coin
  , ppuCoinsPerUTxOByte             :: Maybe Coin
  , ppuCostmdls                     :: Maybe ()
  , ppuPrices                       :: Maybe ()
  , ppuMinFeeRefScriptCoinsPerByte  :: Maybe Rational
  , ppuMaxRefScriptSizePerTx        :: Maybe Integer
  , ppuMaxRefScriptSizePerBlock     :: Maybe Integer
  , ppuRefScriptCostStride          :: Maybe Integer
  , ppuRefScriptCostMultiplier      :: Maybe Rational
  , ppuMaxTxExUnits                 :: Maybe ExUnits
  , ppuMaxBlockExUnits              :: Maybe ExUnits
  , ppuMaxValSize                   :: Maybe Integer
  , ppuMaxCollateralInputs          :: Maybe Integer
  , ppuPoolVotingThresholds         :: Maybe PoolThresholds
  , ppuDrepVotingThresholds         :: Maybe DrepThresholds
  , ppuCCMinSize                    :: Maybe Integer
  , ppuCCMaxTermLength              :: Maybe Integer
  , ppuGovActionLifetime            :: Maybe Integer
  , ppuGovActionDeposit             :: Maybe Coin
  , ppuDrepDeposit                  :: Maybe Coin
  , ppuDrepActivity                 :: Maybe Epoch
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
  , temporaryDeposits :: HSMap DepositPurpose Coin
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
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_160 = ()
type T_TxBody_160 = TxBody
pattern C_TxBody'46'constructor_963 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
check_TxBody'46'constructor_963 ::
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
check_TxBody'46'constructor_963 = MkTxBody
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
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_186 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_refInputs_186 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
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
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_190 :: T_TxBody_160 -> Integer
d_txfee_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_192 ::
  T_TxBody_160 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_192 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_194 :: T_TxBody_160 -> Integer
d_txsize_194 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_196 :: T_TxBody_160 -> T_TxId_52
d_txid_196 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_198 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_collateral_198 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_200 :: T_TxBody_160 -> [Integer]
d_reqSigHash_200 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_202 :: T_TxBody_160 -> Maybe Integer
d_scriptIntHash_202 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_204 :: T_TxBody_160 -> [T_TxCert_144]
d_txcerts_204 v0
  = case coe v0 of
      C_TxBody'46'constructor_963 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_206 = ()
type T_TxWitnesses_206 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1417 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1417 ::
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
check_TxWitnesses'46'constructor_1417 = MkTxWitnesses
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
      C_TxWitnesses'46'constructor_1417 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_218 :: T_TxWitnesses_206 -> [T_Empty_6]
d_scripts_218 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1417 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_220 ::
  T_TxWitnesses_206 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_220 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1417 v1 v2 v3 v4 -> coe v3
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
      C_TxWitnesses'46'constructor_1417 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_224 = ()
type T_Tx_224 = Tx
pattern C_Tx'46'constructor_1495 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1495 ::
  T_TxBody_160 ->
  T_TxWitnesses_206 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_224
check_Tx'46'constructor_1495 = MkTx
cover_Tx_224 :: Tx -> ()
cover_Tx_224 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_232 :: T_Tx_224 -> T_TxBody_160
d_body_232 v0
  = case coe v0 of
      C_Tx'46'constructor_1495 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_234 :: T_Tx_224 -> T_TxWitnesses_206
d_wits_234 v0
  = case coe v0 of
      C_Tx'46'constructor_1495 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_236 ::
  T_Tx_224 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_236 v0
  = case coe v0 of
      C_Tx'46'constructor_1495 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds
d_DrepThresholds_238 = ()
type T_DrepThresholds_238 = DrepThresholds
pattern C_DrepThresholds'46'constructor_1621 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkDrepThresholds a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_DrepThresholds'46'constructor_1621 ::
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
check_DrepThresholds'46'constructor_1621 = MkDrepThresholds
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
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2a
d_P2a_262 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2a_262 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2b
d_P2b_264 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2b_264 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P3
d_P3_266 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P3_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P4
d_P4_268 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P4_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5a
d_P5a_270 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5a_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5b
d_P5b_272 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5b_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5c
d_P5c_274 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5c_274 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5d
d_P5d_276 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5d_276 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P6
d_P6_278 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P6_278 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1621 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds
d_PoolThresholds_280 = ()
type T_PoolThresholds_280 = PoolThresholds
pattern C_PoolThresholds'46'constructor_1957 a0 a1 a2 a3 a4 = MkPoolThresholds a0 a1 a2 a3 a4
check_PoolThresholds'46'constructor_1957 ::
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
check_PoolThresholds'46'constructor_1957 = MkPoolThresholds
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
      C_PoolThresholds'46'constructor_1957 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2a
d_Q2a_294 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2a_294 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1957 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2b
d_Q2b_296 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2b_296 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1957 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q4
d_Q4_298 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q4_298 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1957 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q5e
d_Q5e_300 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q5e_300 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1957 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_302 = ()
type T_PParams_302 = PParams
pattern C_PParams'46'constructor_3085 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30
check_PParams'46'constructor_3085 ::
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
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
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
check_PParams'46'constructor_3085 = MkPParams
cover_PParams_302 :: PParams -> ()
cover_PParams_302 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_366 :: T_PParams_302 -> Integer
d_a_366 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_368 :: T_PParams_302 -> Integer
d_b_368 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_370 :: T_PParams_302 -> Integer
d_maxBlockSize_370 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_372 :: T_PParams_302 -> Integer
d_maxTxSize_372 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_374 :: T_PParams_302 -> Integer
d_maxHeaderSize_374 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_376 :: T_PParams_302 -> Integer
d_keyDeposit_376 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_378 :: T_PParams_302 -> Integer
d_poolDeposit_378 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_380 :: T_PParams_302 -> Integer
d_Emax_380 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_382 :: T_PParams_302 -> Integer
d_nopt_382 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_384 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_384 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_386 :: T_PParams_302 -> Integer
d_minUTxOValue_386 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_388 :: T_PParams_302 -> Integer
d_coinsPerUTxOByte_388 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_390 ::
  T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_390 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_392 ::
  T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_392 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_394 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_minFeeRefScriptCoinsPerByte_394 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_396 :: T_PParams_302 -> Integer
d_maxRefScriptSizePerTx_396 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_398 :: T_PParams_302 -> Integer
d_maxRefScriptSizePerBlock_398 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.refScriptCostStride
d_refScriptCostStride_400 :: T_PParams_302 -> Integer
d_refScriptCostStride_400 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_402 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_refScriptCostMultiplier_402 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_404 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_404 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_406 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_406 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_408 :: T_PParams_302 -> Integer
d_maxValSize_408 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_410 :: T_PParams_302 -> Integer
d_maxCollateralInputs_410 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolVotingThresholds
d_poolVotingThresholds_412 :: T_PParams_302 -> T_PoolThresholds_280
d_poolVotingThresholds_412 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepVotingThresholds
d_drepVotingThresholds_414 :: T_PParams_302 -> T_DrepThresholds_238
d_drepVotingThresholds_414 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_416 :: T_PParams_302 -> Integer
d_ccMinSize_416 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_418 :: T_PParams_302 -> Integer
d_ccMaxTermLength_418 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_420 :: T_PParams_302 -> Integer
d_govActionLifetime_420 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_422 :: T_PParams_302 -> Integer
d_govActionDeposit_422 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_424 :: T_PParams_302 -> Integer
d_drepDeposit_424 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_426 :: T_PParams_302 -> Integer
d_drepActivity_426 v0
  = case coe v0 of
      C_PParams'46'constructor_3085 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_428 = ()
type T_PParamsUpdate_428 = PParamsUpdate
pattern C_PParamsUpdate'46'constructor_9899 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 = MkPParamsUpdate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30
check_PParamsUpdate'46'constructor_9899 ::
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
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
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
  T_PParamsUpdate_428
check_PParamsUpdate'46'constructor_9899 = MkPParamsUpdate
cover_PParamsUpdate_428 :: PParamsUpdate -> ()
cover_PParamsUpdate_428 x
  = case x of
      MkPParamsUpdate _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.a
d_a_492 :: T_PParamsUpdate_428 -> Maybe Integer
d_a_492 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.b
d_b_494 :: T_PParamsUpdate_428 -> Maybe Integer
d_b_494 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockSize
d_maxBlockSize_496 :: T_PParamsUpdate_428 -> Maybe Integer
d_maxBlockSize_496 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxSize
d_maxTxSize_498 :: T_PParamsUpdate_428 -> Maybe Integer
d_maxTxSize_498 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_500 :: T_PParamsUpdate_428 -> Maybe Integer
d_maxHeaderSize_500 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.keyDeposit
d_keyDeposit_502 :: T_PParamsUpdate_428 -> Maybe Integer
d_keyDeposit_502 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolDeposit
d_poolDeposit_504 :: T_PParamsUpdate_428 -> Maybe Integer
d_poolDeposit_504 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.Emax
d_Emax_506 :: T_PParamsUpdate_428 -> Maybe Integer
d_Emax_506 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.nopt
d_nopt_508 :: T_PParamsUpdate_428 -> Maybe Integer
d_nopt_508 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.pv
d_pv_510 ::
  T_PParamsUpdate_428 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_pv_510 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.minUTxOValue
d_minUTxOValue_512 :: T_PParamsUpdate_428 -> Maybe Integer
d_minUTxOValue_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_514 :: T_PParamsUpdate_428 -> Maybe Integer
d_coinsPerUTxOByte_514 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.costmdls
d_costmdls_516 ::
  T_PParamsUpdate_428 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_516 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.prices
d_prices_518 ::
  T_PParamsUpdate_428 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_518 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_520 ::
  T_PParamsUpdate_428 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_minFeeRefScriptCoinsPerByte_520 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_522 :: T_PParamsUpdate_428 -> Maybe Integer
d_maxRefScriptSizePerTx_522 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_524 ::
  T_PParamsUpdate_428 -> Maybe Integer
d_maxRefScriptSizePerBlock_524 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_526 :: T_PParamsUpdate_428 -> Maybe Integer
d_refScriptCostStride_526 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_528 ::
  T_PParamsUpdate_428 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_refScriptCostMultiplier_528 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_530 ::
  T_PParamsUpdate_428 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxTxExUnits_530 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_532 ::
  T_PParamsUpdate_428 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxBlockExUnits_532 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxValSize
d_maxValSize_534 :: T_PParamsUpdate_428 -> Maybe Integer
d_maxValSize_534 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_536 :: T_PParamsUpdate_428 -> Maybe Integer
d_maxCollateralInputs_536 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolVotingThresholds
d_poolVotingThresholds_538 ::
  T_PParamsUpdate_428 -> Maybe T_PoolThresholds_280
d_poolVotingThresholds_538 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepVotingThresholds
d_drepVotingThresholds_540 ::
  T_PParamsUpdate_428 -> Maybe T_DrepThresholds_238
d_drepVotingThresholds_540 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMinSize
d_ccMinSize_542 :: T_PParamsUpdate_428 -> Maybe Integer
d_ccMinSize_542 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_544 :: T_PParamsUpdate_428 -> Maybe Integer
d_ccMaxTermLength_544 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionLifetime
d_govActionLifetime_546 :: T_PParamsUpdate_428 -> Maybe Integer
d_govActionLifetime_546 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionDeposit
d_govActionDeposit_548 :: T_PParamsUpdate_428 -> Maybe Integer
d_govActionDeposit_548 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepDeposit
d_drepDeposit_550 :: T_PParamsUpdate_428 -> Maybe Integer
d_drepDeposit_550 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v30
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepActivity
d_drepActivity_552 :: T_PParamsUpdate_428 -> Maybe Integer
d_drepActivity_552 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_9899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
        -> coe v31
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_554 = ()
type T_UTxOEnv_554 = UTxOEnv
pattern C_UTxOEnv'46'constructor_12825 a0 a1 a2 = MkUTxOEnv a0 a1 a2
check_UTxOEnv'46'constructor_12825 ::
  Integer -> T_PParams_302 -> Integer -> T_UTxOEnv_554
check_UTxOEnv'46'constructor_12825 = MkUTxOEnv
cover_UTxOEnv_554 :: UTxOEnv -> ()
cover_UTxOEnv_554 x
  = case x of
      MkUTxOEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_562 :: T_UTxOEnv_554 -> Integer
d_slot_562 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_12825 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_564 :: T_UTxOEnv_554 -> T_PParams_302
d_pparams_564 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_12825 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.treasury
d_treasury_566 :: T_UTxOEnv_554 -> Integer
d_treasury_566 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_12825 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_568 = ()
type T_UTxOState_568 = UTxOState
pattern C_UTxOState'46'constructor_12863 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_12863 ::
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
  Integer -> T_UTxOState_568
check_UTxOState'46'constructor_12863 = MkUTxOState
cover_UTxOState_568 :: UTxOState -> ()
cover_UTxOState_568 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_574 ::
  T_UTxOState_568 ->
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
d_utxo_574 v0
  = case coe v0 of
      C_UTxOState'46'constructor_12863 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_576 :: T_UTxOState_568 -> Integer
d_fees_576 v0
  = case coe v0 of
      C_UTxOState'46'constructor_12863 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_578 = ()
type T_EnactState_578 = EnactState
pattern C_EnactState'46'constructor_12949 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_12949 ::
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
  T_EnactState_578
check_EnactState'46'constructor_12949 = MkEnactState
cover_EnactState_578 :: EnactState -> ()
cover_EnactState_578 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_590 ::
  T_EnactState_578 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_118 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esCC_590 v0
  = case coe v0 of
      C_EnactState'46'constructor_12949 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_592 ::
  T_EnactState_578 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esConstitution_592 v0
  = case coe v0 of
      C_EnactState'46'constructor_12949 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_594 ::
  T_EnactState_578 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPV_594 v0
  = case coe v0 of
      C_EnactState'46'constructor_12949 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_596 ::
  T_EnactState_578 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_302
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPParams_596 v0
  = case coe v0 of
      C_EnactState'46'constructor_12949 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_598 ::
  T_EnactState_578 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_esWithdrawals_598 v0
  = case coe v0 of
      C_EnactState'46'constructor_12949 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_600 = ()
type T_GovEnv_600 = GovEnv
pattern C_GovEnv'46'constructor_13075 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_13075 ::
  T_TxId_52 ->
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_578 -> T_GovEnv_600
check_GovEnv'46'constructor_13075 = MkGovEnv
cover_GovEnv_600 :: GovEnv -> ()
cover_GovEnv_600 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_612 :: T_GovEnv_600 -> T_TxId_52
d_geTxId_612 v0
  = case coe v0 of
      C_GovEnv'46'constructor_13075 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_614 :: T_GovEnv_600 -> Integer
d_geEpoch_614 v0
  = case coe v0 of
      C_GovEnv'46'constructor_13075 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_616 :: T_GovEnv_600 -> T_PParams_302
d_gePParams_616 v0
  = case coe v0 of
      C_GovEnv'46'constructor_13075 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_618 :: T_GovEnv_600 -> Maybe Integer
d_gePPolicy_618 v0
  = case coe v0 of
      C_GovEnv'46'constructor_13075 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_620 :: T_GovEnv_600 -> T_EnactState_578
d_geEnactState_620 v0
  = case coe v0 of
      C_GovEnv'46'constructor_13075 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_622 :: ()
d_Voter_622 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_624 = ()
type T_GovAction_624 = GovAction
pattern C_NoConfidence_626 = NoConfidence
pattern C_UpdateCommittee_628 a0 a1 a2 = UpdateCommittee a0 a1 a2
pattern C_NewConstitution_630 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_632 a0 = TriggerHF a0
pattern C_ChangePParams_634 a0 = ChangePParams a0
pattern C_TreasuryWdrl_636 a0 = TreasuryWdrl a0
pattern C_Info_638 = Info
check_NoConfidence_626 :: T_GovAction_624
check_NoConfidence_626 = NoConfidence
check_UpdateCommittee_628 ::
  T_HSMap_26 T_Credential_118 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_118 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_624
check_UpdateCommittee_628 = UpdateCommittee
check_NewConstitution_630 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_624
check_NewConstitution_630 = NewConstitution
check_TriggerHF_632 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_624
check_TriggerHF_632 = TriggerHF
check_ChangePParams_634 :: T_PParamsUpdate_428 -> T_GovAction_624
check_ChangePParams_634 = ChangePParams
check_TreasuryWdrl_636 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_GovAction_624
check_TreasuryWdrl_636 = TreasuryWdrl
check_Info_638 :: T_GovAction_624
check_Info_638 = Info
cover_GovAction_624 :: GovAction -> ()
cover_GovAction_624 x
  = case x of
      NoConfidence -> ()
      UpdateCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_640 = ()
type T_Vote_640 = Vote
pattern C_VoteYes_642 = VoteYes
pattern C_VoteNo_644 = VoteNo
pattern C_VoteAbstain_646 = VoteAbstain
check_VoteYes_642 :: T_Vote_640
check_VoteYes_642 = VoteYes
check_VoteNo_644 :: T_Vote_640
check_VoteNo_644 = VoteNo
check_VoteAbstain_646 :: T_Vote_640
check_VoteAbstain_646 = VoteAbstain
cover_Vote_640 :: Vote -> ()
cover_Vote_640 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_648 = ()
type T_GovActionState_648 = GovActionState
pattern C_GovActionState'46'constructor_13265 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_13265 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_128 T_Credential_118)
    T_Vote_640 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  Integer ->
  T_GovAction_624 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_GovActionState_648
check_GovActionState'46'constructor_13265 = MkGovActionState
cover_GovActionState_648 :: GovActionState -> ()
cover_GovActionState_648 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_660 ::
  T_GovActionState_648 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_128 T_Credential_118)
    T_Vote_640
d_gasVotes_660 v0
  = case coe v0 of
      C_GovActionState'46'constructor_13265 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_662 ::
  T_GovActionState_648 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gasReturnAddr_662 v0
  = case coe v0 of
      C_GovActionState'46'constructor_13265 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_664 :: T_GovActionState_648 -> Integer
d_gasExpiresIn_664 v0
  = case coe v0 of
      C_GovActionState'46'constructor_13265 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_666 :: T_GovActionState_648 -> T_GovAction_624
d_gasAction_666 v0
  = case coe v0 of
      C_GovActionState'46'constructor_13265 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_668 ::
  T_GovActionState_648 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gasPrevAction_668 v0
  = case coe v0 of
      C_GovActionState'46'constructor_13265 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_670 = ()
type T_GovVote_670 = GovVote
pattern C_GovVote'46'constructor_13383 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_13383 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_128 T_Credential_118 ->
  T_Vote_640 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_670
check_GovVote'46'constructor_13383 = MkGovVote
cover_GovVote_670 :: GovVote -> ()
cover_GovVote_670 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_680 ::
  T_GovVote_670 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gvGid_680 v0
  = case coe v0 of
      C_GovVote'46'constructor_13383 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_682 ::
  T_GovVote_670 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_128 T_Credential_118
d_gvVoter_682 v0
  = case coe v0 of
      C_GovVote'46'constructor_13383 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_684 :: T_GovVote_670 -> T_Vote_640
d_gvVote_684 v0
  = case coe v0 of
      C_GovVote'46'constructor_13383 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_686 ::
  T_GovVote_670 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_686 v0
  = case coe v0 of
      C_GovVote'46'constructor_13383 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_688 = ()
type T_GovProposal_688 = GovProposal
pattern C_GovProposal'46'constructor_13485 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_13485 ::
  T_GovAction_624 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_688
check_GovProposal'46'constructor_13485 = MkGovProposal
cover_GovProposal_688 :: GovProposal -> ()
cover_GovProposal_688 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_702 :: T_GovProposal_688 -> T_GovAction_624
d_gpAction_702 v0
  = case coe v0 of
      C_GovProposal'46'constructor_13485 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_704 ::
  T_GovProposal_688 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gpPrevAction_704 v0
  = case coe v0 of
      C_GovProposal'46'constructor_13485 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_706 :: T_GovProposal_688 -> Maybe Integer
d_gpPolicy_706 v0
  = case coe v0 of
      C_GovProposal'46'constructor_13485 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_708 :: T_GovProposal_688 -> Integer
d_gpDeposit_708 v0
  = case coe v0 of
      C_GovProposal'46'constructor_13485 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_710 ::
  T_GovProposal_688 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gpReturnAddr_710 v0
  = case coe v0 of
      C_GovProposal'46'constructor_13485 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_712 ::
  T_GovProposal_688 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_712 v0
  = case coe v0 of
      C_GovProposal'46'constructor_13485 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_714 = ()
type T_GovSignal_714 = GovSignal
pattern C_GovSignalVote_716 a0 = GovSignalVote a0
pattern C_GovSignalProposal_718 a0 = GovSignalProposal a0
check_GovSignalVote_716 :: T_GovVote_670 -> T_GovSignal_714
check_GovSignalVote_716 = GovSignalVote
check_GovSignalProposal_718 :: T_GovProposal_688 -> T_GovSignal_714
check_GovSignalProposal_718 = GovSignalProposal
cover_GovSignal_714 :: GovSignal -> ()
cover_GovSignal_714 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_720 :: ()
d_GovState_720 = erased
-- Ledger.Foreign.LedgerTypes.DepositPurpose
d_DepositPurpose_722 = ()
type T_DepositPurpose_722 = DepositPurpose
pattern C_CredentialDeposit_724 a0 = CredentialDeposit a0
pattern C_PoolDeposit_726 a0 = PoolDeposit a0
pattern C_DRepDeposit_728 a0 = DRepDeposit a0
pattern C_GovActionDeposit_730 a0 = GovActionDeposit a0
check_CredentialDeposit_724 ::
  T_Credential_118 -> T_DepositPurpose_722
check_CredentialDeposit_724 = CredentialDeposit
check_PoolDeposit_726 :: Integer -> T_DepositPurpose_722
check_PoolDeposit_726 = PoolDeposit
check_DRepDeposit_728 :: T_Credential_118 -> T_DepositPurpose_722
check_DRepDeposit_728 = DRepDeposit
check_GovActionDeposit_730 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_DepositPurpose_722
check_GovActionDeposit_730 = GovActionDeposit
cover_DepositPurpose_722 :: DepositPurpose -> ()
cover_DepositPurpose_722 x
  = case x of
      CredentialDeposit _ -> ()
      PoolDeposit _ -> ()
      DRepDeposit _ -> ()
      GovActionDeposit _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_732 = ()
type T_CertEnv_732 = CertEnv
pattern C_CertEnv'46'constructor_13701 a0 a1 a2 a3 a4 = MkCertEnv a0 a1 a2 a3 a4
check_CertEnv'46'constructor_13701 ::
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_670 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_HSMap_26 T_DepositPurpose_722 Integer -> T_CertEnv_732
check_CertEnv'46'constructor_13701 = MkCertEnv
cover_CertEnv_732 :: CertEnv -> ()
cover_CertEnv_732 x
  = case x of
      MkCertEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_744 :: T_CertEnv_732 -> Integer
d_epoch_744 v0
  = case coe v0 of
      C_CertEnv'46'constructor_13701 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_746 :: T_CertEnv_732 -> T_PParams_302
d_pp_746 v0
  = case coe v0 of
      C_CertEnv'46'constructor_13701 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_748 :: T_CertEnv_732 -> [T_GovVote_670]
d_votes_748 v0
  = case coe v0 of
      C_CertEnv'46'constructor_13701 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_750 ::
  T_CertEnv_732 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_750 v0
  = case coe v0 of
      C_CertEnv'46'constructor_13701 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.deposits
d_deposits_752 ::
  T_CertEnv_732 -> T_HSMap_26 T_DepositPurpose_722 Integer
d_deposits_752 v0
  = case coe v0 of
      C_CertEnv'46'constructor_13701 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'
d_CertEnv''_754 = ()
type T_CertEnv''_754 = CertEnv'
pattern C_CertEnv'''46'constructor_13817 a0 a1 a2 a3 = MkCertEnv' a0 a1 a2 a3
check_CertEnv'''46'constructor_13817 ::
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_670 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_CertEnv''_754
check_CertEnv'''46'constructor_13817 = MkCertEnv'
cover_CertEnv''_754 :: CertEnv' -> ()
cover_CertEnv''_754 x
  = case x of
      MkCertEnv' _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv'.epoch
d_epoch_764 :: T_CertEnv''_754 -> Integer
d_epoch_764 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_13817 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.pp
d_pp_766 :: T_CertEnv''_754 -> T_PParams_302
d_pp_766 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_13817 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.votes
d_votes_768 :: T_CertEnv''_754 -> [T_GovVote_670]
d_votes_768 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_13817 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv'.wdrls
d_wdrls_770 ::
  T_CertEnv''_754 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_770 v0
  = case coe v0 of
      C_CertEnv'''46'constructor_13817 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_772 = ()
type T_DState_772 = DState
pattern C_DState'46'constructor_13893 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_13893 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_DState_772
check_DState'46'constructor_13893 = MkDState
cover_DState_772 :: DState -> ()
cover_DState_772 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_780 ::
  T_DState_772 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_780 v0
  = case coe v0 of
      C_DState'46'constructor_13893 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_782 ::
  T_DState_772 -> T_HSMap_26 T_Credential_118 Integer
d_stakeDelegs_782 v0
  = case coe v0 of
      C_DState'46'constructor_13893 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_784 ::
  T_DState_772 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_784 v0
  = case coe v0 of
      C_DState'46'constructor_13893 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'
d_DState''_786 = ()
type T_DState''_786 = DState'
pattern C_DState'''46'constructor_13957 a0 a1 a2 a3 = MkDState' a0 a1 a2 a3
check_DState'''46'constructor_13957 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_DepositPurpose_722 Integer -> T_DState''_786
check_DState'''46'constructor_13957 = MkDState'
cover_DState''_786 :: DState' -> ()
cover_DState''_786 x
  = case x of
      MkDState' _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState'.voteDelegs
d_voteDelegs_796 ::
  T_DState''_786 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_796 v0
  = case coe v0 of
      C_DState'''46'constructor_13957 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.stakeDelegs
d_stakeDelegs_798 ::
  T_DState''_786 -> T_HSMap_26 T_Credential_118 Integer
d_stakeDelegs_798 v0
  = case coe v0 of
      C_DState'''46'constructor_13957 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.rewards
d_rewards_800 ::
  T_DState''_786 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_800 v0
  = case coe v0 of
      C_DState'''46'constructor_13957 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState'.deposits
d_deposits_802 ::
  T_DState''_786 -> T_HSMap_26 T_DepositPurpose_722 Integer
d_deposits_802 v0
  = case coe v0 of
      C_DState'''46'constructor_13957 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_804 = ()
type T_PState_804 = PState
pattern C_PState'46'constructor_14025 a0 a1 = MkPState a0 a1
check_PState'46'constructor_14025 ::
  T_HSMap_26 Integer T_Credential_118 ->
  T_HSMap_26 Integer Integer -> T_PState_804
check_PState'46'constructor_14025 = MkPState
cover_PState_804 :: PState -> ()
cover_PState_804 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_810 :: T_PState_804 -> T_HSMap_26 Integer T_Credential_118
d_pools_810 v0
  = case coe v0 of
      C_PState'46'constructor_14025 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_812 :: T_PState_804 -> T_HSMap_26 Integer Integer
d_retiring_812 v0
  = case coe v0 of
      C_PState'46'constructor_14025 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_814 = ()
type T_GState_814 = GState
pattern C_GState'46'constructor_14063 a0 a1 = MkGState a0 a1
check_GState'46'constructor_14063 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_GState_814
check_GState'46'constructor_14063 = MkGState
cover_GState_814 :: GState -> ()
cover_GState_814 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_820 :: T_GState_814 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_820 v0
  = case coe v0 of
      C_GState'46'constructor_14063 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_822 ::
  T_GState_814 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_822 v0
  = case coe v0 of
      C_GState'46'constructor_14063 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'
d_GState''_824 = ()
type T_GState''_824 = GState'
pattern C_GState'''46'constructor_14109 a0 a1 a2 = MkGState' a0 a1 a2
check_GState'''46'constructor_14109 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_HSMap_26 T_DepositPurpose_722 Integer -> T_GState''_824
check_GState'''46'constructor_14109 = MkGState'
cover_GState''_824 :: GState' -> ()
cover_GState''_824 x
  = case x of
      MkGState' _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState'.dreps
d_dreps_832 ::
  T_GState''_824 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_832 v0
  = case coe v0 of
      C_GState'''46'constructor_14109 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'.ccHotKeys
d_ccHotKeys_834 ::
  T_GState''_824 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_834 v0
  = case coe v0 of
      C_GState'''46'constructor_14109 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState'.deposits
d_deposits_836 ::
  T_GState''_824 -> T_HSMap_26 T_DepositPurpose_722 Integer
d_deposits_836 v0
  = case coe v0 of
      C_GState'''46'constructor_14109 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_798 = ()
type T_CertState_798 = CertState
pattern C_CertState'46'constructor_9323 a0 a1 a2 a3 = MkCertState a0 a1 a2 a3
check_CertState'46'constructor_9323 ::
  T_DState_732 ->
  T_PState_764 ->
  T_GState_774 ->
  T_HSMap_26 T_DepositPurpose_682 Integer -> T_CertState_798
check_CertState'46'constructor_9323 = MkCertState
cover_CertState_798 :: CertState -> ()
cover_CertState_798 x
  = case x of
      MkCertState _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_808 :: T_CertState_798 -> T_DState_732
d_dState_808 v0
  = case coe v0 of
      C_CertState'46'constructor_9323 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_810 :: T_CertState_798 -> T_PState_764
d_pState_810 v0
  = case coe v0 of
      C_CertState'46'constructor_9323 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_812 :: T_CertState_798 -> T_GState_774
d_gState_812 v0
  = case coe v0 of
      C_CertState'46'constructor_9323 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.temporaryDeposits
d_temporaryDeposits_814 ::
  T_CertState_798 -> T_HSMap_26 T_DepositPurpose_682 Integer
d_temporaryDeposits_814 v0
  = case coe v0 of
      C_CertState'46'constructor_9323 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'
d_CertState''_816 = ()
type T_CertState''_816 = CertState'
pattern C_CertState'''46'constructor_9375 a0 a1 a2 = MkCertState' a0 a1 a2
check_CertState'''46'constructor_9375 ::
  T_DState''_746 ->
  T_PState_764 -> T_GState''_784 -> T_CertState''_816
check_CertState'''46'constructor_9375 = MkCertState'
cover_CertState''_816 :: CertState' -> ()
cover_CertState''_816 x
  = case x of
      MkCertState' _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState'.dState
d_dState_824 :: T_CertState''_816 -> T_DState''_746
d_dState_824 v0
  = case coe v0 of
      C_CertState'''46'constructor_9375 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'.pState
d_pState_826 :: T_CertState''_816 -> T_PState_764
d_pState_826 v0
  = case coe v0 of
      C_CertState'''46'constructor_9375 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState'.gState
d_gState_828 :: T_CertState''_816 -> T_GState''_784
d_gState_828 v0
  = case coe v0 of
      C_CertState'''46'constructor_9375 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.StakeDistrs
d_StakeDistrs_830 = ()
type T_StakeDistrs_830 = StakeDistrs
pattern C_StakeDistrs'46'constructor_9409 a0 = MkStakeDistrs a0
check_StakeDistrs'46'constructor_9409 ::
  T_HSMap_26 T_VDeleg_136 Integer -> T_StakeDistrs_830
check_StakeDistrs'46'constructor_9409 = MkStakeDistrs
cover_StakeDistrs_830 :: StakeDistrs -> ()
cover_StakeDistrs_830 x
  = case x of
      MkStakeDistrs _ -> ()
-- Ledger.Foreign.LedgerTypes.StakeDistrs.stakeDistr
d_stakeDistr_834 ::
  T_StakeDistrs_830 -> T_HSMap_26 T_VDeleg_136 Integer
d_stakeDistr_834 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_9409 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv
d_RatifyEnv_836 = ()
type T_RatifyEnv_836 = RatifyEnv
pattern C_RatifyEnv'46'constructor_9467 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_RatifyEnv'46'constructor_9467 ::
  T_StakeDistrs_830 ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  Integer -> T_RatifyEnv_836
check_RatifyEnv'46'constructor_9467 = MkRatifyEnv
cover_RatifyEnv_836 :: RatifyEnv -> ()
cover_RatifyEnv_836 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reStakeDistrs
d_reStakeDistrs_848 :: T_RatifyEnv_836 -> T_StakeDistrs_830
d_reStakeDistrs_848 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9467 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCurrentEpoch
d_reCurrentEpoch_850 :: T_RatifyEnv_836 -> Integer
d_reCurrentEpoch_850 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9467 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reDReps
d_reDReps_852 ::
  T_RatifyEnv_836 -> T_HSMap_26 T_Credential_118 Integer
d_reDReps_852 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9467 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCCHotKeys
d_reCCHotKeys_854 ::
  T_RatifyEnv_836 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_reCCHotKeys_854 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9467 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reTreasury
d_reTreasury_856 :: T_RatifyEnv_836 -> Integer
d_reTreasury_856 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9467 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState
d_RatifyState_858 = ()
type T_RatifyState_858 = RatifyState
pattern C_RatifyState'46'constructor_9557 a0 a1 a2 = MkRatifyState a0 a1 a2
check_RatifyState'46'constructor_9557 ::
  T_EnactState_538 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_608) ->
  Bool -> T_RatifyState_858
check_RatifyState'46'constructor_9557 = MkRatifyState
cover_RatifyState_858 :: RatifyState -> ()
cover_RatifyState_858 x
  = case x of
      MkRatifyState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyState.es
d_es_866 :: T_RatifyState_858 -> T_EnactState_538
d_es_866 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9557 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.removed
d_removed_868 ::
  T_RatifyState_858 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny T_TxId_52 Integer)
       T_GovActionState_608)
d_removed_868 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9557 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.delay
d_delay_870 :: T_RatifyState_858 -> Bool
d_delay_870 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9557 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv
d_LEnv_872 = ()
type T_LEnv_872 = LedgerEnv
pattern C_LEnv'46'constructor_9615 a0 a1 a2 a3 a4 = MkLedgerEnv a0 a1 a2 a3 a4
check_LEnv'46'constructor_9615 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParams_302 -> T_EnactState_538 -> Integer -> T_LEnv_872
check_LEnv'46'constructor_9615 = MkLedgerEnv
cover_LEnv_872 :: LedgerEnv -> ()
cover_LEnv_872 x
  = case x of
      MkLedgerEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LEnv.slot
d_slot_884 :: T_LEnv_872 -> Integer
d_slot_884 v0
  = case coe v0 of
      C_LEnv'46'constructor_9615 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.ppolicy
d_ppolicy_886 :: T_LEnv_872 -> Maybe Integer
d_ppolicy_886 v0
  = case coe v0 of
      C_LEnv'46'constructor_9615 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.pparams
d_pparams_888 :: T_LEnv_872 -> T_PParams_302
d_pparams_888 v0
  = case coe v0 of
      C_LEnv'46'constructor_9615 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.enactState
d_enactState_890 :: T_LEnv_872 -> T_EnactState_538
d_enactState_890 v0
  = case coe v0 of
      C_LEnv'46'constructor_9615 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.treasury
d_treasury_892 :: T_LEnv_872 -> Integer
d_treasury_892 v0
  = case coe v0 of
      C_LEnv'46'constructor_9615 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState
d_LState_894 = ()
type T_LState_894 = LedgerState
pattern C_LState'46'constructor_9687 a0 a1 a2 = MkLedgerState a0 a1 a2
check_LState'46'constructor_9687 ::
  T_UTxOState_528 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_608) ->
  T_CertState_798 -> T_LState_894
check_LState'46'constructor_9687 = MkLedgerState
cover_LState_894 :: LedgerState -> ()
cover_LState_894 x
  = case x of
      MkLedgerState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LState.utxoSt
d_utxoSt_902 :: T_LState_894 -> T_UTxOState_528
d_utxoSt_902 v0
  = case coe v0 of
      C_LState'46'constructor_9687 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.govSt
d_govSt_904 ::
  T_LState_894 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_TxId_52 Integer)
     T_GovActionState_608]
d_govSt_904 v0
  = case coe v0 of
      C_LState'46'constructor_9687 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.certState
d_certState_906 :: T_LState_894 -> T_CertState_798
d_certState_906 v0
  = case coe v0 of
      C_LState'46'constructor_9687 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv
d_EnactEnv_908 = ()
type T_EnactEnv_908 = EnactEnv
pattern C_EnactEnv'46'constructor_9723 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_EnactEnv'46'constructor_9723 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  Integer -> Integer -> T_EnactEnv_908
check_EnactEnv'46'constructor_9723 = MkEnactEnv
cover_EnactEnv_908 :: EnactEnv -> ()
cover_EnactEnv_908 x
  = case x of
      MkEnactEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactEnv.gid
d_gid_916 ::
  T_EnactEnv_908 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gid_916 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9723 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.treasury
d_treasury_918 :: T_EnactEnv_908 -> Integer
d_treasury_918 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9723 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.epoch
d_epoch_920 :: T_EnactEnv_908 -> Integer
d_epoch_920 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9723 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt
d_Acnt_922 = ()
type T_Acnt_922 = Acnt
pattern C_Acnt'46'constructor_9755 a0 a1 = MkAcnt a0 a1
check_Acnt'46'constructor_9755 :: Integer -> Integer -> T_Acnt_922
check_Acnt'46'constructor_9755 = MkAcnt
cover_Acnt_922 :: Acnt -> ()
cover_Acnt_922 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Acnt.treasury
d_treasury_928 :: T_Acnt_922 -> Integer
d_treasury_928 v0
  = case coe v0 of
      C_Acnt'46'constructor_9755 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt.reserves
d_reserves_930 :: T_Acnt_922 -> Integer
d_reserves_930 v0
  = case coe v0 of
      C_Acnt'46'constructor_9755 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshot
d_Snapshot_932 = ()
type T_Snapshot_932 = Snapshot
pattern C_Snapshot'46'constructor_9783 a0 a1 = MkSnapshot a0 a1
check_Snapshot'46'constructor_9783 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_Snapshot_932
check_Snapshot'46'constructor_9783 = MkSnapshot
cover_Snapshot_932 :: Snapshot -> ()
cover_Snapshot_932 x
  = case x of
      MkSnapshot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Snapshot.stake
d_stake_938 ::
  T_Snapshot_932 -> T_HSMap_26 T_Credential_118 Integer
d_stake_938 v0
  = case coe v0 of
      C_Snapshot'46'constructor_9783 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshot.delegations
d_delegations_940 ::
  T_Snapshot_932 -> T_HSMap_26 T_Credential_118 Integer
d_delegations_940 v0
  = case coe v0 of
      C_Snapshot'46'constructor_9783 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots
d_Snapshots_942 = ()
type T_Snapshots_942 = Snapshots
pattern C_Snapshots'46'constructor_9813 a0 a1 a2 a3 = MkSnapshots a0 a1 a2 a3
check_Snapshots'46'constructor_9813 ::
  T_Snapshot_932 ->
  T_Snapshot_932 -> T_Snapshot_932 -> Integer -> T_Snapshots_942
check_Snapshots'46'constructor_9813 = MkSnapshots
cover_Snapshots_942 :: Snapshots -> ()
cover_Snapshots_942 x
  = case x of
      MkSnapshots _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Snapshots.mark
d_mark_952 :: T_Snapshots_942 -> T_Snapshot_932
d_mark_952 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9813 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.set
d_set_954 :: T_Snapshots_942 -> T_Snapshot_932
d_set_954 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9813 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.go
d_go_956 :: T_Snapshots_942 -> T_Snapshot_932
d_go_956 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9813 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Snapshots.feeSS
d_feeSS_958 :: T_Snapshots_942 -> Integer
d_feeSS_958 v0
  = case coe v0 of
      C_Snapshots'46'constructor_9813 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState
d_EpochState_960 = ()
type T_EpochState_960 = EpochState
pattern C_EpochState'46'constructor_9879 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_EpochState'46'constructor_9879 ::
  T_Acnt_922 ->
  T_Snapshots_942 ->
  T_LState_894 ->
  T_EnactState_538 -> T_RatifyState_858 -> T_EpochState_960
check_EpochState'46'constructor_9879 = MkEpochState
cover_EpochState_960 :: EpochState -> ()
cover_EpochState_960 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EpochState.acnt
d_acnt_972 :: T_EpochState_960 -> T_Acnt_922
d_acnt_972 v0
  = case coe v0 of
      C_EpochState'46'constructor_9879 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ss
d_ss_974 :: T_EpochState_960 -> T_Snapshots_942
d_ss_974 v0
  = case coe v0 of
      C_EpochState'46'constructor_9879 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ls
d_ls_976 :: T_EpochState_960 -> T_LState_894
d_ls_976 v0
  = case coe v0 of
      C_EpochState'46'constructor_9879 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.es
d_es_978 :: T_EpochState_960 -> T_EnactState_538
d_es_978 v0
  = case coe v0 of
      C_EpochState'46'constructor_9879 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.fut
d_fut_980 :: T_EpochState_960 -> T_RatifyState_858
d_fut_980 v0
  = case coe v0 of
      C_EpochState'46'constructor_9879 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochEnv
d_NewEpochEnv_982 = ()
type T_NewEpochEnv_982 = NewEpochEnv
pattern C_NewEpochEnv'46'constructor_9945 a0 = MkNewEpochEnv a0
check_NewEpochEnv'46'constructor_9945 ::
  T_StakeDistrs_830 -> T_NewEpochEnv_982
check_NewEpochEnv'46'constructor_9945 = MkNewEpochEnv
cover_NewEpochEnv_982 :: NewEpochEnv -> ()
cover_NewEpochEnv_982 x
  = case x of
      MkNewEpochEnv _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochEnv.stakeDistrs
d_stakeDistrs_986 :: T_NewEpochEnv_982 -> T_StakeDistrs_830
d_stakeDistrs_986 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_9945 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate
d_RewardUpdate_988 = ()
type T_RewardUpdate_988 = RewardUpdate
pattern C_RewardUpdate'46'constructor_9971 a0 a1 a2 a3 = MkRewardUpdate a0 a1 a2 a3
check_RewardUpdate'46'constructor_9971 ::
  Integer ->
  Integer ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer -> T_RewardUpdate_988
check_RewardUpdate'46'constructor_9971 = MkRewardUpdate
cover_RewardUpdate_988 :: RewardUpdate -> ()
cover_RewardUpdate_988 x
  = case x of
      MkRewardUpdate _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δt
d_Δt_998 :: T_RewardUpdate_988 -> Integer
d_Δt_998 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9971 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δr
d_Δr_1000 :: T_RewardUpdate_988 -> Integer
d_Δr_1000 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9971 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.Δf
d_Δf_1002 :: T_RewardUpdate_988 -> Integer
d_Δf_1002 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9971 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RewardUpdate.rs
d_rs_1004 ::
  T_RewardUpdate_988 -> T_HSMap_26 T_Credential_118 Integer
d_rs_1004 v0
  = case coe v0 of
      C_RewardUpdate'46'constructor_9971 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState
d_NewEpochState_1006 = ()
type T_NewEpochState_1006 = NewEpochState
pattern C_NewEpochState'46'constructor_10037 a0 a1 a2 = MkNewEpochState a0 a1 a2
check_NewEpochState'46'constructor_10037 ::
  Integer ->
  T_EpochState_960 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_RewardUpdate_988 ->
  T_NewEpochState_1006
check_NewEpochState'46'constructor_10037 = MkNewEpochState
cover_NewEpochState_1006 :: NewEpochState -> ()
cover_NewEpochState_1006 x
  = case x of
      MkNewEpochState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochState.lastEpoch
d_lastEpoch_1014 :: T_NewEpochState_1006 -> Integer
d_lastEpoch_1014 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10037 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.epochState
d_epochState_1016 :: T_NewEpochState_1006 -> T_EpochState_960
d_epochState_1016 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10037 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.ru
d_ru_1018 :: T_NewEpochState_1006 -> Maybe T_RewardUpdate_988
d_ru_1018 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_10037 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.ChainState
d_ChainState_1020 = ()
type T_ChainState_1020 = ChainState
pattern C_ChainState'46'constructor_10067 a0 = MkChainState a0
check_ChainState'46'constructor_10067 ::
  T_NewEpochState_1006 -> T_ChainState_1020
check_ChainState'46'constructor_10067 = MkChainState
cover_ChainState_1020 :: ChainState -> ()
cover_ChainState_1020 x
  = case x of
      MkChainState _ -> ()
-- Ledger.Foreign.LedgerTypes.ChainState.csNewEpochState
d_csNewEpochState_1024 :: T_ChainState_1020 -> T_NewEpochState_1006
d_csNewEpochState_1024 v0
  = case coe v0 of
      C_ChainState'46'constructor_10067 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block
d_Block_1026 = ()
type T_Block_1026 = Block
pattern C_Block'46'constructor_10081 a0 a1 = MkBlock a0 a1
check_Block'46'constructor_10081 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Tx_224 ->
  Integer -> T_Block_1026
check_Block'46'constructor_10081 = MkBlock
cover_Block_1026 :: Block -> ()
cover_Block_1026 x
  = case x of
      MkBlock _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Block.blockTxs
d_blockTxs_1032 :: T_Block_1026 -> [T_Tx_224]
d_blockTxs_1032 v0
  = case coe v0 of
      C_Block'46'constructor_10081 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block.blockSlot
d_blockSlot_1034 :: T_Block_1026 -> Integer
d_blockSlot_1034 v0
  = case coe v0 of
      C_Block'46'constructor_10081 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv
d_DelegEnv_1036 = ()
type T_DelegEnv_1036 = DelegEnv
pattern C_DelegEnv'46'constructor_10113 a0 a1 a2 = MkDelegEnv a0 a1 a2
check_DelegEnv'46'constructor_10113 ::
  T_PParams_302 ->
  T_HSMap_26 Integer T_Credential_118 ->
  T_HSMap_26 T_DepositPurpose_682 Integer -> T_DelegEnv_1036
check_DelegEnv'46'constructor_10113 = MkDelegEnv
cover_DelegEnv_1036 :: DelegEnv -> ()
cover_DelegEnv_1036 x
  = case x of
      MkDelegEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePParams
d_dePParams_1044 :: T_DelegEnv_1036 -> T_PParams_302
d_dePParams_1044 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10113 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePools
d_dePools_1046 ::
  T_DelegEnv_1036 -> T_HSMap_26 Integer T_Credential_118
d_dePools_1046 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10113 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.deposits
d_deposits_1048 ::
  T_DelegEnv_1036 -> T_HSMap_26 T_DepositPurpose_682 Integer
d_deposits_1048 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_10113 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv'
d_DelegEnv''_1050 = ()
type T_DelegEnv''_1050 = DelegEnv'
pattern C_DelegEnv'''46'constructor_10149 a0 a1 = MkDelegEnv' a0 a1
check_DelegEnv'''46'constructor_10149 ::
  T_PParams_302 ->
  T_HSMap_26 Integer T_Credential_118 -> T_DelegEnv''_1050
check_DelegEnv'''46'constructor_10149 = MkDelegEnv'
cover_DelegEnv''_1050 :: DelegEnv' -> ()
cover_DelegEnv''_1050 x
  = case x of
      MkDelegEnv' _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv'.dePParams
d_dePParams_1056 :: T_DelegEnv''_1050 -> T_PParams_302
d_dePParams_1056 v0
  = case coe v0 of
      C_DelegEnv'''46'constructor_10149 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv'.dePools
d_dePools_1058 ::
  T_DelegEnv''_1050 -> T_HSMap_26 Integer T_Credential_118
d_dePools_1058 v0
  = case coe v0 of
      C_DelegEnv'''46'constructor_10149 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
