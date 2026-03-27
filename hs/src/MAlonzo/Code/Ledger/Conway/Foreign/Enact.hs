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

module MAlonzo.Code.Ledger.Conway.Foreign.Enact where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
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
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data EnactState = MkEnactState {esCc :: ((Maybe ((MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer), MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.Rational)), (Integer, Integer)), esConstitution :: ((Integer, (Maybe Integer)), (Integer, Integer)), esPv :: ((Integer, Integer), (Integer, Integer)), esPparams :: (MAlonzo.Code.Ledger.Conway.Foreign.PParams.PParams, (Integer, Integer)), esWithdrawals :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.RewardAddress Integer)}
 deriving (Show, Eq, Generic)
data EnactEnv = MkEnactEnv {eeGid :: (Integer, Integer), eeTreasury :: Integer, eeEpoch :: Integer}
 deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.Enact._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__10 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Enact._.EnactEnv
d_EnactEnv_26 = ()
-- Ledger.Conway.Foreign.Enact._.EnactState
d_EnactState_30 = ()
-- Ledger.Conway.Foreign.Enact._.EnactStateOf
d_EnactStateOf_34 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_EnactStateOf_34 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
      (coe v0)
-- Ledger.Conway.Foreign.Enact._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_36 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_36
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1216
-- Ledger.Conway.Foreign.Enact._.HasEnactState
d_HasEnactState_38 a0 a1 = ()
-- Ledger.Conway.Foreign.Enact._.HasPParams-EnactState
d_HasPParams'45'EnactState_42 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_42
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1210
-- Ledger.Conway.Foreign.Enact._.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasWithdrawals'45'EnactState_1214
-- Ledger.Conway.Foreign.Enact._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456
d_HasccMaxTermLength'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1212
-- Ledger.Conway.Foreign.Enact._.ccCreds
d_ccCreds_48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1218
-- Ledger.Conway.Foreign.Enact._.getHash
d_getHash_50 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1224
-- Ledger.Conway.Foreign.Enact._.getHashES
d_getHashES_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1236
-- Ledger.Conway.Foreign.Enact._.EnactEnv.epoch
d_epoch_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1150 ->
  Integer
d_epoch_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1162
      (coe v0)
-- Ledger.Conway.Foreign.Enact._.EnactEnv.gid
d_gid_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1150 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1158 (coe v0)
-- Ledger.Conway.Foreign.Enact._.EnactEnv.treasury
d_treasury_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1150 ->
  Integer
d_treasury_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1160
      (coe v0)
-- Ledger.Conway.Foreign.Enact._.EnactState.cc
d_cc_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1178 (coe v0)
-- Ledger.Conway.Foreign.Enact._.EnactState.constitution
d_constitution_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1180
      (coe v0)
-- Ledger.Conway.Foreign.Enact._.EnactState.pparams
d_pparams_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1184
      (coe v0)
-- Ledger.Conway.Foreign.Enact._.EnactState.pv
d_pv_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1182 (coe v0)
-- Ledger.Conway.Foreign.Enact._.EnactState.withdrawals
d_withdrawals_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1186
      (coe v0)
-- Ledger.Conway.Foreign.Enact._.HasEnactState.EnactStateOf
d_EnactStateOf_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_EnactStateOf_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
      (coe v0)
-- Ledger.Conway.Foreign.Enact._.Computational-ENACT
d_Computational'45'ENACT_96 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_96
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.Computational.d_Computational'45'ENACT_1272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Enact._.ENACT-deterministic
d_ENACT'45'deterministic_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__1252 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__1252 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ENACT'45'deterministic_98 = erased
-- Ledger.Conway.Foreign.Enact.HsTy-EnactState
d_HsTy'45'EnactState_100 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EnactState_100 = erased
-- Ledger.Conway.Foreign.Enact.Conv-EnactState
d_Conv'45'EnactState_102 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EnactState_102
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188 v1 v2 v3 v4 v5
                -> coe
                     C_MkEnactState_161
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
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                       (let v6
                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                        coe
                                          (let v7
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                     (coe v6) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                         (coe v7))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v7))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
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
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
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
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEnactState_161 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                    (let v6
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v6) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v7))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v2))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v3))
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                        (coe
                           (\ v6 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                   (coe
                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v6
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v7
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                          (coe v7)))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                             (coe v7))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                          (coe v7))))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Enact.HsTy-EnactEnv
d_HsTy'45'EnactEnv_104 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EnactEnv_104 = erased
-- Ledger.Conway.Foreign.Enact.Conv-EnactEnv
d_Conv'45'EnactEnv_106 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EnactEnv_106
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1164 v1 v2 v3
                -> coe
                     C_MkEnactEnv_12185
                     (coe
                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (coe v1)))
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEnactEnv_12185 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1164
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map_128
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (coe
                           (\ v4 ->
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                     (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Enact.enact-step
enactStep ::
  T_EnactEnv_12183 ->
  T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Actions.T_GovAction_1109 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_EnactState_159
enactStep = coe d_enact'45'step_108
d_enact'45'step_108 ::
  T_EnactEnv_12183 ->
  T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Actions.T_GovAction_1109 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_EnactState_159
d_enact'45'step_108 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'EnactState_102)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.Gov.Actions.d_Conv'45'GovAction_82)
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe d_Conv'45'EnactState_102))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.Computational.d_Computational'45'ENACT_1272
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'EnactEnv_106
            v0))
-- Ledger.Conway.Foreign.Enact.EnactState
d_EnactState_159 = ()
type T_EnactState_159 = EnactState
pattern C_MkEnactState_161 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_MkEnactState_161 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
             MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591 Integer)
          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_Rational_22))
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
    () () MAlonzo.Code.Ledger.Conway.Foreign.PParams.T_PParams_12013
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_RewardAddress_3945
    Integer ->
  T_EnactState_159
check_MkEnactState_161 = MkEnactState
cover_EnactState_159 :: EnactState -> ()
cover_EnactState_159 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.Enact.EnactEnv
d_EnactEnv_12183 = ()
type T_EnactEnv_12183 = EnactEnv
pattern C_MkEnactEnv_12185 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_MkEnactEnv_12185 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_EnactEnv_12183
check_MkEnactEnv_12185 = MkEnactEnv
cover_EnactEnv_12183 :: EnactEnv -> ()
cover_EnactEnv_12183 x
  = case x of
      MkEnactEnv _ _ _ -> ()
