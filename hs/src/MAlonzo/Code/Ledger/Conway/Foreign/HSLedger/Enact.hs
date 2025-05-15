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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions.Properties
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data EnactState = MkEnactState {esCc :: ((Maybe ((MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential Integer), MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.Rational)), (Integer, Integer)), esConstitution :: ((Integer, (Maybe Integer)), (Integer, Integer)), esPv :: ((Integer, Integer), (Integer, Integer)), esPparams :: (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PParams, (Integer, Integer)), esWithdrawals :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.RwdAddr Integer)}
  deriving (Show, Eq, Generic)
data EnactEnv = MkEnactEnv {eeGid :: (Integer, Integer), eeTreasury :: Integer, eeEpoch :: Integer}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Enact._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv
d_EnactEnv_28 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState
d_EnactState_30 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactStateOf
d_EnactStateOf_32 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_946 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
d_EnactStateOf_32 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_EnactStateOf_954 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_34 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_34
  = coe MAlonzo.Code.Ledger.Conway.Enact.du_HasCast'45'EnactEnv_964
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasEnactState
d_HasEnactState_36 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasPParams-EnactState
d_HasPParams'45'EnactState_38 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410
d_HasPParams'45'EnactState_38
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.du_HasPParams'45'EnactState_960
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_40 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446
d_HasccMaxTermLength'45'EnactState_40
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.du_HasccMaxTermLength'45'EnactState_962
-- Ledger.Conway.Foreign.HSLedger.Enact._.ccCreds
d_ccCreds_42 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_ccCreds_42 = coe MAlonzo.Code.Ledger.Conway.Enact.du_ccCreds_966
-- Ledger.Conway.Foreign.HSLedger.Enact._.getHash
d_getHash_44 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_44 = coe MAlonzo.Code.Ledger.Conway.Enact.du_getHash_972
-- Ledger.Conway.Foreign.HSLedger.Enact._.getHashES
d_getHashES_46 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_46
  = coe MAlonzo.Code.Ledger.Conway.Enact.du_getHashES_984
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv.epoch
d_epoch_66 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactEnv_906 -> Integer
d_epoch_66 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_epoch_918 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv.gid
d_gid_68 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactEnv_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_68 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_gid_914 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv.treasury
d_treasury_70 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactEnv_906 -> Integer
d_treasury_70 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_treasury_916 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.cc
d_cc_74 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_74 v0 = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_932 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.constitution
d_constitution_76 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_76 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_934 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.pparams
d_pparams_78 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_78 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_938 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.pv
d_pv_80 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_80 v0 = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_936 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.withdrawals
d_withdrawals_82 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_82 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_940 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasEnactState.EnactStateOf
d_EnactStateOf_86 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_HasEnactState_946 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_920
d_EnactStateOf_86 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_EnactStateOf_954 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.Computational-ENACT
d_Computational'45'ENACT_90 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_90
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.Properties.d_Computational'45'ENACT_1004
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.Enact.HsTy-EnactState
d_HsTy'45'EnactState_92 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EnactState_92 = erased
-- Ledger.Conway.Foreign.HSLedger.Enact.Conv-EnactState
d_Conv'45'EnactState_94 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EnactState_94
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2835 v1 v2 v3 v4 v5
                -> coe
                     C_MkEnactState_141
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
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                       (let v6
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                        coe
                                          (let v7
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                                                     (coe v6) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                         (coe v7))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                      (coe v7))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe v4)))
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEnactState_141 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2835
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                    (let v6
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                                                  (coe v6) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                                   (coe v7))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v3))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v6
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v7
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                                         (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                                          (coe v7)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                             (coe v7))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290
                                          (coe v7))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Enact.HsTy-EnactEnv
d_HsTy'45'EnactEnv_96 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EnactEnv_96 = erased
-- Ledger.Conway.Foreign.HSLedger.Enact.Conv-EnactEnv
d_Conv'45'EnactEnv_98 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EnactEnv_98
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Enact.C_EnactEnv'46'constructor_2291 v1 v2 v3
                -> coe
                     C_MkEnactEnv_11161
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe v1)))
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEnactEnv_11161 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Enact.C_EnactEnv'46'constructor_2291
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (coe
                           (\ v4 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Enact.enact-step
enactStep ::
  T_EnactEnv_11159 ->
  T_EnactState_139 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.GovernanceActions.T_GovAction_1061 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_EnactState_139
enactStep = coe d_enact'45'step_100
d_enact'45'step_100 ::
  T_EnactEnv_11159 ->
  T_EnactState_139 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.GovernanceActions.T_GovAction_1061 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_EnactState_139
d_enact'45'step_100 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'EnactState_94)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.GovernanceActions.d_Conv'45'GovAction_82)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'EnactState_94))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.Properties.d_Computational'45'ENACT_1004
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'EnactEnv_98
            v0))
-- Ledger.Conway.Foreign.HSLedger.Enact.EnactState
d_EnactState_139 = ()
type T_EnactState_139 = EnactState
pattern C_MkEnactState_141 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_MkEnactState_141 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533
             Integer)
          MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Rational_10))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_PParams_10199
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_RwdAddr_4475
    Integer ->
  T_EnactState_139
check_MkEnactState_141 = MkEnactState
cover_EnactState_139 :: EnactState -> ()
cover_EnactState_139 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Enact.EnactEnv
d_EnactEnv_11159 = ()
type T_EnactEnv_11159 = EnactEnv
pattern C_MkEnactEnv_11161 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_MkEnactEnv_11161 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_EnactEnv_11159
check_MkEnactEnv_11161 = MkEnactEnv
cover_EnactEnv_11159 :: EnactEnv -> ()
cover_EnactEnv_11159 x
  = case x of
      MkEnactEnv _ _ _ -> ()
