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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data Tag = Spend  | Mint  | Cert  | Rewrd  | Vote  | Propose 
  deriving (Show, Eq, Generic)
data Timelock = RequireAllOf [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock] | RequireAnyOf [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock] | RequireMOf Integer [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock] | RequireSig Integer | RequireTimeStart Integer | RequireTimeExpire Integer
  deriving (Show, Eq, Generic)
data HSTimelock = HSTimelock {timelock :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Timelock, tlScriptHash :: Integer, tlScriptSize :: Integer}
  deriving (Show, Eq, Generic)
data HSPlutusScript = MkHSPlutusScript {psScriptHash :: Integer, psScriptSize :: Integer}
  deriving (Show, Eq, Generic)
data TxWitnesses = MkTxWitnesses {vkSigs :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.HSVKey Integer), scripts :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSSet (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)), txdats :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap Integer Integer), txrdmrs :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Tag, Integer) (Integer, (Integer, Integer)))}
  deriving (Show, Eq, Generic)
data TxBody = MkTxBody {txins :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSSet (Integer, Integer)), refInputs :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSSet (Integer, Integer)), txouts :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap Integer ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)))))), txfee :: Integer, mint :: Integer, txvldt :: ((Maybe Integer), (Maybe Integer)), txcerts :: [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.DCert], txwdrls :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.RwdAddr Integer), txvote :: [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.GovVote], txprop :: [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.GovProposal], txdonation :: Integer, txup :: (Maybe ((MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PParamsUpdate), Integer)), txADhash :: (Maybe Integer), txNetworkId :: (Maybe Integer), curTreasury :: (Maybe Integer), txsize :: Integer, txid :: Integer, collateral :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSSet (Integer, Integer)), reqSigHash :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSSet Integer), scriptIntHash :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
data Tx = MkTx {body :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.TxBody, wits :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.TxWitnesses, isValid :: Bool, txAD :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
type TxId = Integer
type Ix = Integer
type TxIn = (Integer, Integer)
type P1Script = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock
type P2Script = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript
type Script = (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)
type Datum = Integer
type DataHash = Integer
type Value = Integer
type TxOut = ((Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BaseAddr MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.BootstrapAddr), (Integer, ((Maybe (Either Integer Integer)), (Maybe (Either MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript)))))
type RdmrPtr = (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.Tag, Integer)
type ScriptHash = Integer
type AuxiliaryData = Integer
type Wdrl = (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.RwdAddr Integer)
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-Tag
d_HsTy'45'Tag_10 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Tag_10 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-Tag
d_Conv'45'Tag_12 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Tag_12
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Transaction.C_Spend_6 -> coe C_Spend_17
              MAlonzo.Code.Ledger.Transaction.C_Mint_8 -> coe C_Mint_19
              MAlonzo.Code.Ledger.Transaction.C_Cert_10 -> coe C_Cert_21
              MAlonzo.Code.Ledger.Transaction.C_Rewrd_12 -> coe C_Rewrd_23
              MAlonzo.Code.Ledger.Transaction.C_Vote_14 -> coe C_Vote_25
              MAlonzo.Code.Ledger.Transaction.C_Propose_16 -> coe C_Propose_27
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_17 -> coe MAlonzo.Code.Ledger.Transaction.C_Spend_6
              C_Mint_19 -> coe MAlonzo.Code.Ledger.Transaction.C_Mint_8
              C_Cert_21 -> coe MAlonzo.Code.Ledger.Transaction.C_Cert_10
              C_Rewrd_23 -> coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
              C_Vote_25 -> coe MAlonzo.Code.Ledger.Transaction.C_Vote_14
              C_Propose_27 -> coe MAlonzo.Code.Ledger.Transaction.C_Propose_16
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-Timelock
d_HsTy'45'Timelock_14 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Timelock_14 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Tag
d_Tag_15 = ()
type T_Tag_15 = Tag
pattern C_Spend_17 = Spend
pattern C_Mint_19 = Mint
pattern C_Cert_21 = Cert
pattern C_Rewrd_23 = Rewrd
pattern C_Vote_25 = Vote
pattern C_Propose_27 = Propose
check_Spend_17 :: T_Tag_15
check_Spend_17 = Spend
check_Mint_19 :: T_Tag_15
check_Mint_19 = Mint
check_Cert_21 :: T_Tag_15
check_Cert_21 = Cert
check_Rewrd_23 :: T_Tag_15
check_Rewrd_23 = Rewrd
check_Vote_25 :: T_Tag_15
check_Vote_25 = Vote
check_Propose_27 :: T_Tag_15
check_Propose_27 = Propose
cover_Tag_15 :: Tag -> ()
cover_Tag_15 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-Timelock
d_Conv'45'Timelock_16 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Timelock_16 = coe d_'46'extendedlambda_709
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-HSTimelock
d_HsTy'45'HSTimelock_18 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSTimelock_18 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-HSTimelock
d_Conv'45'HSTimelock_20 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSTimelock_20
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Script.C_HSTimelock'46'constructor_717 v1 v2 v3
                -> coe
                     C_HSTimelock_2019
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18 d_'46'extendedlambda_709
                        v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_HSTimelock_2019 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.C_HSTimelock'46'constructor_717
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20 d_'46'extendedlambda_709
                        v1)
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-HSPlutusScript
d_HsTy'45'HSPlutusScript_22 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSPlutusScript_22 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-HSPlutusScript
d_Conv'45'HSPlutusScript_24 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSPlutusScript_24
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Script.C_MkHSPlutusScript_364 v1 v2
                -> coe C_MkHSPlutusScript_3031 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSPlutusScript_3031 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.C_MkHSPlutusScript_364
                     (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-TxWitnessess
d_HsTy'45'TxWitnessess_26 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'TxWitnessess_26 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-TxWitnessess
d_Conv'45'TxWitnessess_28 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'TxWitnessess_28
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18137 v1 v2 v3 v4
                -> coe
                     C_MkTxWitnesses_3605
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                 (coe d_Conv'45'HSTimelock_20) (coe d_Conv'45'HSPlutusScript_24)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe d_Conv'45'Tag_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxWitnesses_3605 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18137
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                 (coe d_Conv'45'HSTimelock_20) (coe d_Conv'45'HSPlutusScript_24)))
                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v2))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe d_Conv'45'Tag_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v4)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-TxBody
d_HsTy'45'TxBody_30 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'TxBody_30 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-TxBody
d_Conv'45'TxBody_32 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'TxBody_32
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
                -> coe
                     C_MkTxBody_11479
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           v1))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                (coe d_Conv'45'HSTimelock_20)
                                                (coe d_Conv'45'HSPlutusScript_24))))))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe v4) (coe v5)
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe
                              (\ v21 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe v6)))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                        v7)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                        v9)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_224))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v12)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v15)
                     (coe v16) (coe v17)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           v18))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           v19))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v20)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTxBody_11479 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
                -> coe
                     MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17585
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v2))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                          (coe d_Conv'45'HSTimelock_20)
                                          (coe d_Conv'45'HSPlutusScript_24)))))))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v3)))
                     (coe v4) (coe v5)
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           (\ v21 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v6))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                        v7)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v21
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v22
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_650
                                         (coe v21) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                    (coe
                                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                          (coe v22)))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                             (coe v22))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                          (coe v22))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v8)))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                        v9)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_224))
                        v10)
                     (coe v11)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        v12)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v13)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v14)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v15)
                     (coe v16) (coe v17)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v18))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v19))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v20)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HsTy-Tx
d_HsTy'45'Tx_34 :: MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Tx_34 = erased
-- Ledger.Conway.Foreign.HSLedger.Transaction.Conv-Tx
d_Conv'45'Tx_36 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Tx_36
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_18329 v1 v2 v3 v4
                -> coe
                     C_MkTx_109481
                     (coe
                        C_MkTxBody_11479
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Ledger.Transaction.d_refInputs_2560 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                   (coe d_Conv'45'HSTimelock_20)
                                                   (coe d_Conv'45'HSPlutusScript_24))))))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2562 (coe v1)))))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2564 (coe v1))
                        (coe MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v1))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe
                                 (\ v5 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2568 (coe v1))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                           (MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v1)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_224))
                           (MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v1)))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2578 (coe v1))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Ledger.Transaction.d_txup_2580 (coe v1)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Transaction.d_txADhash_2582 (coe v1)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584 (coe v1)))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586 (coe v1)))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2588 (coe v1))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Ledger.Transaction.d_collateral_2592 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                              (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2594 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2596 (coe v1))))
                     (coe
                        C_MkTxWitnesses_3605
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2608 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                    (coe d_Conv'45'HSTimelock_20)
                                    (coe d_Conv'45'HSPlutusScript_24)))
                              (MAlonzo.Code.Ledger.Transaction.d_scripts_2610 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Transaction.d_txdats_2612 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe d_Conv'45'Tag_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2614 (coe v2))))))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkTx_109481 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_18329
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17585 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
                                     -> coe
                                          C_MkTxBody_11479
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                v6))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                     (coe d_Conv'45'HSTimelock_20)
                                                                     (coe
                                                                        d_Conv'45'HSPlutusScript_24))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                          (coe v9) (coe v10)
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe
                                                   (\ v26 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v11)))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                             v12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v13))))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                             v14)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_224))
                                             v15)
                                          (coe v16)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             v17)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v20)
                                          (coe v21) (coe v22)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                v23))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                v24))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v25)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkTxBody_11479 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
                                     -> coe
                                          MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_17585
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                               (coe d_Conv'45'HSTimelock_20)
                                                               (coe
                                                                  d_Conv'45'HSPlutusScript_24)))))))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v8)))
                                          (coe v9) (coe v10)
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                (\ v26 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v11))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
                                             v12)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v26
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v27
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_650
                                                              (coe v26) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                               (coe v27)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                  (coe v27))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                               (coe v27))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v13)))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'GovVote_42))
                                             v14)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovProposal_224))
                                             v15)
                                          (coe v16)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParamsUpdate_28))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             v17)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v18)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v19)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v20)
                                          (coe v21) (coe v22)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                   (coe v23))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                   (coe v24))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             v25)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18137 v6 v7 v8 v9
                                     -> coe
                                          C_MkTxWitnesses_3605
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                      (coe d_Conv'45'HSTimelock_20)
                                                      (coe d_Conv'45'HSPlutusScript_24)))
                                                v7))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe d_Conv'45'Tag_12)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkTxWitnesses_3605 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_18137
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'HSVKey_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_428
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                      (coe d_Conv'45'HSTimelock_20)
                                                      (coe d_Conv'45'HSPlutusScript_24)))
                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                   erased () erased
                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe d_Conv'45'Tag_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_62
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.Timelock
d_Timelock_143 = ()
type T_Timelock_143 = Timelock
pattern C_RequireAllOf_145 a0 = RequireAllOf a0
pattern C_RequireAnyOf_167 a0 = RequireAnyOf a0
pattern C_RequireMOf_189 a0 a1 = RequireMOf a0 a1
pattern C_RequireSig_221 a0 = RequireSig a0
pattern C_RequireTimeStart_251 a0 = RequireTimeStart a0
pattern C_RequireTimeExpire_291 a0 = RequireTimeExpire a0
check_RequireAllOf_145 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_143 ->
  T_Timelock_143
check_RequireAllOf_145 = RequireAllOf
check_RequireAnyOf_167 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_143 ->
  T_Timelock_143
check_RequireAnyOf_167 = RequireAnyOf
check_RequireMOf_189 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Timelock_143 ->
  T_Timelock_143
check_RequireMOf_189 = RequireMOf
check_RequireSig_221 :: Integer -> T_Timelock_143
check_RequireSig_221 = RequireSig
check_RequireTimeStart_251 :: Integer -> T_Timelock_143
check_RequireTimeStart_251 = RequireTimeStart
check_RequireTimeExpire_291 :: Integer -> T_Timelock_143
check_RequireTimeExpire_291 = RequireTimeExpire
cover_Timelock_143 :: Timelock -> ()
cover_Timelock_143 x
  = case x of
      RequireAllOf _ -> ()
      RequireAnyOf _ -> ()
      RequireMOf _ _ -> ()
      RequireSig _ -> ()
      RequireTimeStart _ -> ()
      RequireTimeExpire _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction..extendedlambda
d_'46'extendedlambda_709 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_'46'extendedlambda_709
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Script.C_RequireAllOf_266 v1
                -> coe
                     C_RequireAllOf_145
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_16))
                        v1)
              MAlonzo.Code.Ledger.Script.C_RequireAnyOf_268 v1
                -> coe
                     C_RequireAnyOf_167
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_16))
                        v1)
              MAlonzo.Code.Ledger.Script.C_RequireMOf_270 v1 v2
                -> coe
                     C_RequireMOf_189 (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe d_Conv'45'Timelock_16))
                        v2)
              MAlonzo.Code.Ledger.Script.C_RequireSig_272 v1
                -> coe C_RequireSig_221 (coe v1)
              MAlonzo.Code.Ledger.Script.C_RequireTimeStart_274 v1
                -> coe C_RequireTimeStart_251 (coe v1)
              MAlonzo.Code.Ledger.Script.C_RequireTimeExpire_276 v1
                -> coe C_RequireTimeExpire_291 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RequireAllOf_145 v1
                -> coe
                     MAlonzo.Code.Ledger.Script.C_RequireAllOf_266
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_16))
                        v1)
              C_RequireAnyOf_167 v1
                -> coe
                     MAlonzo.Code.Ledger.Script.C_RequireAnyOf_268
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_16))
                        v1)
              C_RequireMOf_189 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Script.C_RequireMOf_270 (coe v1)
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                        () erased
                        (MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe d_Conv'45'Timelock_16))
                        v2)
              C_RequireSig_221 v1
                -> coe MAlonzo.Code.Ledger.Script.C_RequireSig_272 (coe v1)
              C_RequireTimeStart_251 v1
                -> coe MAlonzo.Code.Ledger.Script.C_RequireTimeStart_274 (coe v1)
              C_RequireTimeExpire_291 v1
                -> coe MAlonzo.Code.Ledger.Script.C_RequireTimeExpire_276 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Transaction.HSTimelock
d_HSTimelock_2017 = ()
type T_HSTimelock_2017 = HSTimelock
pattern C_HSTimelock_2019 a0 a1 a2 = HSTimelock a0 a1 a2
check_HSTimelock_2019 ::
  T_Timelock_143 -> Integer -> Integer -> T_HSTimelock_2017
check_HSTimelock_2019 = HSTimelock
cover_HSTimelock_2017 :: HSTimelock -> ()
cover_HSTimelock_2017 x
  = case x of
      HSTimelock _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.HSPlutusScript
d_HSPlutusScript_3029 = ()
type T_HSPlutusScript_3029 = HSPlutusScript
pattern C_MkHSPlutusScript_3031 a0 a1 = MkHSPlutusScript a0 a1
check_MkHSPlutusScript_3031 ::
  Integer -> Integer -> T_HSPlutusScript_3029
check_MkHSPlutusScript_3031 = MkHSPlutusScript
cover_HSPlutusScript_3029 :: HSPlutusScript -> ()
cover_HSPlutusScript_3029 x
  = case x of
      MkHSPlutusScript _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.TxWitnesses
d_TxWitnesses_3603 = ()
type T_TxWitnesses_3603 = TxWitnesses
pattern C_MkTxWitnesses_3605 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_MkTxWitnesses_3605 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_HSVKey_15
    Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSSet_32
    (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
       () () T_HSTimelock_2017 T_HSPlutusScript_3029) ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    Integer Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Tag_15 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_3603
check_MkTxWitnesses_3605 = MkTxWitnesses
cover_TxWitnesses_3603 :: TxWitnesses -> ()
cover_TxWitnesses_3603 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.TxBody
d_TxBody_11477 = ()
type T_TxBody_11477 = TxBody
pattern C_MkTxBody_11479 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19
check_MkTxBody_11479 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSSet_32
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSSet_32
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    Integer
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
          () ()
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BaseAddr_1241
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_BootstrapAddr_3115)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () ()
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () Integer Integer))
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                ()
                (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                   () () T_HSTimelock_2017 T_HSPlutusScript_3029))))) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_13051 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_RwdAddr_4475
    Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_GovVote_1531 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovProposal_6515 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
          Integer
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_PParamsUpdate_104743)
       Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSSet_32
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSSet_32 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_TxBody_11477
check_MkTxBody_11479 = MkTxBody
cover_TxBody_11477 :: TxBody -> ()
cover_TxBody_11477 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Transaction.Tx
d_Tx_109479 = ()
type T_Tx_109479 = Tx
pattern C_MkTx_109481 a0 a1 a2 a3 = MkTx a0 a1 a2 a3
check_MkTx_109481 ::
  T_TxBody_11477 ->
  T_TxWitnesses_3603 ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_Tx_109479
check_MkTx_109481 = MkTx
cover_Tx_109479 :: Tx -> ()
cover_Tx_109479 x
  = case x of
      MkTx _ _ _ _ -> ()
