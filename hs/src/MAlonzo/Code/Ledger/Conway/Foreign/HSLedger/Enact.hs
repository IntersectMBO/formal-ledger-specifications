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
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data EnactState = MkEnactState {esCc :: ((Maybe ((MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential Integer), MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.Rational)), (Integer, Integer)), esConstitution :: ((Integer, (Maybe Integer)), (Integer, Integer)), esPv :: ((Integer, Integer), (Integer, Integer)), esPparams :: (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.PParams, (Integer, Integer)), esWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.RwdAddr Integer)}
  deriving (Show, Eq, Generic)
data EnactEnv = MkEnactEnv {eeGid :: (Integer, Integer), eeTreasury :: Integer, eeEpoch :: Integer}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Enact._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv
d_EnactEnv_28 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState
d_EnactState_32 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactStateOf
d_EnactStateOf_36 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_EnactStateOf_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_38 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1042
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasEnactState
d_HasEnactState_40 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasPParams-EnactState
d_HasPParams'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
d_HasPParams'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1038
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasccMaxTermLength_498
d_HasccMaxTermLength'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1040
-- Ledger.Conway.Foreign.HSLedger.Enact._.ccCreds
d_ccCreds_48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1044
-- Ledger.Conway.Foreign.HSLedger.Enact._.getHash
d_getHash_50 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1050
-- Ledger.Conway.Foreign.HSLedger.Enact._.getHashES
d_getHashES_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1062
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv.epoch
d_epoch_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_978 ->
  Integer
d_epoch_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_990 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv.gid
d_gid_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_986 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactEnv.treasury
d_treasury_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_978 ->
  Integer
d_treasury_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_988
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.cc
d_cc_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.constitution
d_constitution_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.pparams
d_pparams_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.pv
d_pv_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.EnactState.withdrawals
d_withdrawals_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.HasEnactState.EnactStateOf
d_EnactStateOf_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_EnactStateOf_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Enact._.Computational-ENACT
d_Computational'45'ENACT_96 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_96
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.d_Computational'45'ENACT_1080
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Enact.HsTy-EnactState
d_HsTy'45'EnactState_98 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EnactState_98 = erased
-- Ledger.Conway.Foreign.HSLedger.Enact.Conv-EnactState
d_Conv'45'EnactState_100 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EnactState_100
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1016 v1 v2 v3 v4 v5
                -> coe
                     C_MkEnactState_133
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                       (let v6
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                        coe
                                          (let v7
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                     (coe v6) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                         (coe v7))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEnactState_133 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1016
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                    (let v6
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                  (coe v6) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v6
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v7
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                         (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                          (coe v7)))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                             (coe v7))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                          (coe v7))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Enact.HsTy-EnactEnv
d_HsTy'45'EnactEnv_102 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EnactEnv_102 = erased
-- Ledger.Conway.Foreign.HSLedger.Enact.Conv-EnactEnv
d_Conv'45'EnactEnv_104 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EnactEnv_104
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_992 v1 v2 v3
                -> coe
                     C_MkEnactEnv_12143
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
              C_MkEnactEnv_12143 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_992
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
  T_EnactEnv_12141 ->
  T_EnactState_131 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Actions.T_GovAction_1097 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_EnactState_131
enactStep = coe d_enact'45'step_106
d_enact'45'step_106 ::
  T_EnactEnv_12141 ->
  T_EnactState_131 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Actions.T_GovAction_1097 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_EnactState_131
d_enact'45'step_106 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'EnactState_100)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Actions.d_Conv'45'GovAction_84)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'EnactState_100))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.d_Computational'45'ENACT_1080
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'EnactEnv_104
            v0))
-- Ledger.Conway.Foreign.HSLedger.Enact.EnactState
d_EnactState_131 = ()
type T_EnactState_131 = EnactState
pattern C_MkEnactState_133 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_MkEnactState_133 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
             Integer)
          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_Rational_8))
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
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_PParams_11223
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_RwdAddr_4499
    Integer ->
  T_EnactState_131
check_MkEnactState_133 = MkEnactState
cover_EnactState_131 :: EnactState -> ()
cover_EnactState_131 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Enact.EnactEnv
d_EnactEnv_12141 = ()
type T_EnactEnv_12141 = EnactEnv
pattern C_MkEnactEnv_12143 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_MkEnactEnv_12143 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_EnactEnv_12141
check_MkEnactEnv_12143 = MkEnactEnv
cover_EnactEnv_12141 :: EnactEnv -> ()
cover_EnactEnv_12141 x
  = case x of
      MkEnactEnv _ _ _ -> ()
