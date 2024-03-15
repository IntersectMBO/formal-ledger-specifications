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
import qualified MAlonzo.Code.Foreign.Haskell.Pair

import GHC.Generics (Generic)
import Data.TreeDiff
data AgdaEmpty deriving (Show, Generic)
instance ToExpr AgdaEmpty
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

instance (ToExpr e, ToExpr a) => ToExpr (ComputationResult e a)
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
data Credential
  = ScriptObj Integer
  | KeyHashObj Integer
  deriving (Show, Eq, Generic)
instance ToExpr Credential
type PoolParams = Credential

data GovRole
  = CC
  | DRep
  | SPO
  deriving (Show, Eq, Generic)
instance ToExpr GovRole
data VDeleg
  = CredVoter GovRole Credential
  | AbstainRep
  | NoConfidenceRep
  deriving (Show, Eq, Generic)
instance ToExpr VDeleg
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
data TxWitnesses = MkTxWitnesses
  { vkSigs  :: [(Integer, Integer)]
  , scripts :: [AgdaEmpty]
  , txdats  :: [(DataHash, Datum)]
  , txrdmrs :: [(RdmrPtr, (Redeemer, ExUnits))]
  } deriving (Show, Generic)
instance ToExpr TxWitnesses
data Tx = MkTx
  { body :: TxBody
  , wits :: TxWitnesses
  , txAD :: Maybe AuxiliaryData
  } deriving (Show, Generic)
instance ToExpr Tx
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
  , costmdls            :: AgdaEmpty
  , prices              :: ()
  , maxTxExUnits        :: ExUnits
  , maxBlockExUnits     :: ExUnits
  , coinsPerUTxOWord    :: Coin
  , maxCollateralInputs :: Integer
  } deriving (Show, Generic)
instance ToExpr PParams
data UTxOEnv = MkUTxOEnv
  { slot    :: Integer
  , pparams :: PParams
  } deriving (Show, Generic)
instance ToExpr UTxOEnv
data UTxOState = MkUTxOState
  { utxo :: UTxO
  , fees :: Coin
  } deriving (Show, Generic)
instance ToExpr UTxOState
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
d_HSMap_22 :: () -> () -> ()
d_HSMap_22 = erased
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_28 :: ()
d_Coin_28 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_30 :: ()
d_Addr_30 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_32 :: ()
d_TxId_32 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_34 :: ()
d_Ix_34 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_36 :: ()
d_Epoch_36 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_38 :: ()
d_AuxiliaryData_38 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_40 :: ()
d_DataHash_40 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_42 :: ()
d_Datum_42 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_44 :: ()
d_Redeemer_44 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_46 :: ()
d_Anchor_46 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_48 :: ()
d_TxIn_48 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_50 :: ()
d_TxOut_50 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_52 :: ()
d_UTxO_52 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_54 :: ()
d_Hash_54 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_56 = ()
type T_Tag_56 = Tag
pattern C_Spend_58 = Spend
pattern C_Mint_60 = Mint
pattern C_Cert_62 = Cert
pattern C_Rewrd_64 = Rewrd
pattern C_Vote_66 = Vote
pattern C_Propose_68 = Propose
check_Spend_58 :: T_Tag_56
check_Spend_58 = Spend
check_Mint_60 :: T_Tag_56
check_Mint_60 = Mint
check_Cert_62 :: T_Tag_56
check_Cert_62 = Cert
check_Rewrd_64 :: T_Tag_56
check_Rewrd_64 = Rewrd
check_Vote_66 :: T_Tag_56
check_Vote_66 = Vote
check_Propose_68 :: T_Tag_56
check_Propose_68 = Propose
cover_Tag_56 :: Tag -> ()
cover_Tag_56 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_70 :: ()
d_RdmrPtr_70 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_72 :: ()
d_ExUnits_72 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_74 = ()
type T_Credential_74 = Credential
pattern C_ScriptObj_76 a0 = ScriptObj a0
pattern C_KeyHashObj_78 a0 = KeyHashObj a0
check_ScriptObj_76 :: Integer -> T_Credential_74
check_ScriptObj_76 = ScriptObj
check_KeyHashObj_78 :: Integer -> T_Credential_74
check_KeyHashObj_78 = KeyHashObj
cover_Credential_74 :: Credential -> ()
cover_Credential_74 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_80 :: ()
d_PoolParams_80 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_82 = ()
type T_GovRole_82 = GovRole
pattern C_CC_84 = CC
pattern C_DRep_86 = DRep
pattern C_SPO_88 = SPO
check_CC_84 :: T_GovRole_82
check_CC_84 = CC
check_DRep_86 :: T_GovRole_82
check_DRep_86 = DRep
check_SPO_88 :: T_GovRole_82
check_SPO_88 = SPO
cover_GovRole_82 :: GovRole -> ()
cover_GovRole_82 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_90 = ()
type T_VDeleg_90 = VDeleg
pattern C_CredVoter_92 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_94 = AbstainRep
pattern C_NoConfidenceRep_96 = NoConfidenceRep
check_CredVoter_92 ::
  T_GovRole_82 -> T_Credential_74 -> T_VDeleg_90
check_CredVoter_92 = CredVoter
check_AbstainRep_94 :: T_VDeleg_90
check_AbstainRep_94 = AbstainRep
check_NoConfidenceRep_96 :: T_VDeleg_90
check_NoConfidenceRep_96 = NoConfidenceRep
cover_VDeleg_90 :: VDeleg -> ()
cover_VDeleg_90 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_98 = ()
type T_TxCert_98 = TxCert
pattern C_Delegate_100 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_102 a0 = Dereg a0
pattern C_RegPool_104 a0 a1 = RegPool a0 a1
pattern C_RetirePool_106 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_108 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_110 a0 = DeRegDRep a0
pattern C_CCRegHot_112 a0 a1 = CCRegHot a0 a1
check_Delegate_100 ::
  T_Credential_74 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_90 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_74 ->
  Integer -> T_TxCert_98
check_Delegate_100 = Delegate
check_Dereg_102 :: T_Credential_74 -> T_TxCert_98
check_Dereg_102 = Dereg
check_RegPool_104 ::
  T_Credential_74 -> T_Credential_74 -> T_TxCert_98
check_RegPool_104 = RegPool
check_RetirePool_106 :: T_Credential_74 -> Integer -> T_TxCert_98
check_RetirePool_106 = RetirePool
check_RegDRep_108 ::
  T_Credential_74 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_98
check_RegDRep_108 = RegDRep
check_DeRegDRep_110 :: T_Credential_74 -> T_TxCert_98
check_DeRegDRep_110 = DeRegDRep
check_CCRegHot_112 ::
  T_Credential_74 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_74 ->
  T_TxCert_98
check_CCRegHot_112 = CCRegHot
cover_TxCert_98 :: TxCert -> ()
cover_TxCert_98 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_114 = ()
type T_TxBody_114 = TxBody
pattern C_TxBody'46'constructor_1261 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_TxBody'46'constructor_1261 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_98 ->
  T_TxBody_114
check_TxBody'46'constructor_1261 = MkTxBody
cover_TxBody_114 :: TxBody -> ()
cover_TxBody_114 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_136 ::
  T_TxBody_114 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_txins_136 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_138 ::
  T_TxBody_114 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_txouts_138 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_140 :: T_TxBody_114 -> Integer
d_txfee_140 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_142 ::
  T_TxBody_114 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_142 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_144 :: T_TxBody_114 -> Integer
d_txsize_144 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_146 :: T_TxBody_114 -> Integer
d_txid_146 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_148 ::
  T_TxBody_114 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_collateral_148 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_150 :: T_TxBody_114 -> [Integer]
d_reqSigHash_150 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_152 :: T_TxBody_114 -> Maybe Integer
d_scriptIntHash_152 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_154 :: T_TxBody_114 -> [T_TxCert_98]
d_txcerts_154 v0
  = case coe v0 of
      C_TxBody'46'constructor_1261 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_156 = ()
type T_TxWitnesses_156 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1583 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1583 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Empty_6 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_Tag_56 Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer))) ->
  T_TxWitnesses_156
check_TxWitnesses'46'constructor_1583 = MkTxWitnesses
cover_TxWitnesses_156 :: TxWitnesses -> ()
cover_TxWitnesses_156 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_166 ::
  T_TxWitnesses_156 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_166 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1583 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_168 :: T_TxWitnesses_156 -> [T_Empty_6]
d_scripts_168 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1583 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_170 ::
  T_TxWitnesses_156 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
     MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6]
d_txdats_170 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1583 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_172 ::
  T_TxWitnesses_156 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_Tag_56 Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer Integer))]
d_txrdmrs_172 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1583 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_174 = ()
type T_Tx_174 = Tx
pattern C_Tx'46'constructor_1671 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1671 ::
  T_TxBody_114 ->
  T_TxWitnesses_156 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_174
check_Tx'46'constructor_1671 = MkTx
cover_Tx_174 :: Tx -> ()
cover_Tx_174 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_182 :: T_Tx_174 -> T_TxBody_114
d_body_182 v0
  = case coe v0 of
      C_Tx'46'constructor_1671 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_184 :: T_Tx_174 -> T_TxWitnesses_156
d_wits_184 v0
  = case coe v0 of
      C_Tx'46'constructor_1671 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_186 ::
  T_Tx_174 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_186 v0
  = case coe v0 of
      C_Tx'46'constructor_1671 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_188 = ()
type T_PParams_188 = PParams
pattern C_PParams'46'constructor_2399 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23
check_PParams'46'constructor_2399 ::
  Integer ->
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
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  T_Empty_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_PParams_188
check_PParams'46'constructor_2399 = MkPParams
cover_PParams_188 :: PParams -> ()
cover_PParams_188 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_238 :: T_PParams_188 -> Integer
d_a_238 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_240 :: T_PParams_188 -> Integer
d_b_240 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_242 :: T_PParams_188 -> Integer
d_maxBlockSize_242 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_244 :: T_PParams_188 -> Integer
d_maxTxSize_244 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_246 :: T_PParams_188 -> Integer
d_maxHeaderSize_246 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_248 :: T_PParams_188 -> Integer
d_maxValSize_248 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_250 :: T_PParams_188 -> Integer
d_minUTxOValue_250 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_252 :: T_PParams_188 -> Integer
d_poolDeposit_252 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_254 :: T_PParams_188 -> Integer
d_Emax_254 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_256 :: T_PParams_188 -> Integer
d_nopt_256 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_258 ::
  T_PParams_188 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_258 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_260 ::
  T_PParams_188 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_260 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_262 :: T_PParams_188 -> Integer
d_govActionLifetime_262 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_264 :: T_PParams_188 -> Integer
d_govActionDeposit_264 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_266 :: T_PParams_188 -> Integer
d_drepDeposit_266 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_268 :: T_PParams_188 -> Integer
d_drepActivity_268 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_270 :: T_PParams_188 -> Integer
d_ccMinSize_270 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_272 :: T_PParams_188 -> Integer
d_ccMaxTermLength_272 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_274 :: T_PParams_188 -> T_Empty_6
d_costmdls_274 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_276 ::
  T_PParams_188 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_276 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_278 ::
  T_PParams_188 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_278 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_280 ::
  T_PParams_188 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_280 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_282 :: T_PParams_188 -> Integer
d_coinsPerUTxOWord_282 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_284 :: T_PParams_188 -> Integer
d_maxCollateralInputs_284 v0
  = case coe v0 of
      C_PParams'46'constructor_2399 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_286 = ()
type T_UTxOEnv_286 = UTxOEnv
pattern C_UTxOEnv'46'constructor_3629 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_3629 ::
  Integer -> T_PParams_188 -> T_UTxOEnv_286
check_UTxOEnv'46'constructor_3629 = MkUTxOEnv
cover_UTxOEnv_286 :: UTxOEnv -> ()
cover_UTxOEnv_286 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_292 :: T_UTxOEnv_286 -> Integer
d_slot_292 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_3629 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_294 :: T_UTxOEnv_286 -> T_PParams_188
d_pparams_294 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_3629 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_296 = ()
type T_UTxOState_296 = UTxOState
pattern C_UTxOState'46'constructor_3671 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_3671 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer -> T_UTxOState_296
check_UTxOState'46'constructor_3671 = MkUTxOState
cover_UTxOState_296 :: UTxOState -> ()
cover_UTxOState_296 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_302 ::
  T_UTxOState_296 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_utxo_302 v0
  = case coe v0 of
      C_UTxOState'46'constructor_3671 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_304 :: T_UTxOState_296 -> Integer
d_fees_304 v0
  = case coe v0 of
      C_UTxOState'46'constructor_3671 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
