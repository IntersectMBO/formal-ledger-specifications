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

module MAlonzo.Code.Ledger.Conway.Specification.PoolReap where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Acnt
d_Acnt_28 a0 = ()
-- _.Credential
d_Credential_58 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_94 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
            (coe v0)))
-- _.Epoch
d_Epoch_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_162 = erased
-- _.Acnt.reserves
d_reserves_770 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- _.Acnt.treasury
d_treasury_772 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_1834 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2340
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_donations_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2342
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_fees_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2338 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2030 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2036 v0 ~v1
  = du_DecEq'45'DepositPurpose_2036 v0
du_DecEq'45'DepositPurpose_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2042 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2072 ~v0 ~v1 = du_HasCast'45'DState_2072
du_HasCast'45'DState_2072 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2072
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1496
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2078 ~v0 ~v1 = du_HasCast'45'PState_2078
du_HasCast'45'PState_2078 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2078
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1498
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2160 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1314
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1312
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1310
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1324
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1326
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2390 a0 a1 = ()
data T_PoolReapState_2390
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2408 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2400 ::
  T_PoolReapState_2390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2400 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2408 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2402 ::
  T_PoolReapState_2390 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2402 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2408 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2404 ::
  T_PoolReapState_2390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_dState_2404 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2408 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2406 ::
  T_PoolReapState_2390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_2406 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2408 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2410 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2410
du_HasCast'45'PoolReapState_2410 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2410
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2390 :: Integer) (5811529314862483242 :: Integer)
                                 "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1834 :: Integer) (5811529314862483242 :: Integer)
                                 "Ledger.Conway.Specification.PoolReap._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2390 :: Integer) (5811529314862483242 :: Integer)
                                    "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (28 :: Integer) (5811529314862483242 :: Integer) "_.Acnt"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2390 :: Integer) (5811529314862483242 :: Integer)
                                       "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2030 :: Integer) (5811529314862483242 :: Integer)
                                       "Ledger.Conway.Specification.PoolReap._.DState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2390 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2160 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2408))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2418 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2418
  = C_POOLREAP_2452 T_PoolReapState_2390
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2422 ~v0 ~v1 v2 = du_acnt_2422 v2
du_acnt_2422 ::
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
du_acnt_2422 v0
  = coe
      d_acnt_2402
      (coe d_'46'generalizedField'45'poolReapState_10949 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_dState_2424 ~v0 ~v1 v2 = du_dState_2424 v2
du_dState_2424 ::
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
du_dState_2424 v0
  = coe
      d_dState_2404
      (coe d_'46'generalizedField'45'poolReapState_10949 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_2426 ~v0 ~v1 v2 = du_pState_2426 v2
du_pState_2426 ::
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
du_pState_2426 v0
  = coe
      d_pState_2406
      (coe d_'46'generalizedField'45'poolReapState_10949 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2428 ~v0 ~v1 v2 = du_utxoSt_2428 v2
du_utxoSt_2428 ::
  T_GeneralizeTel_10953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
du_utxoSt_2428 v0
  = coe
      d_utxoSt_2400
      (coe d_'46'generalizedField'45'poolReapState_10949 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_10949 ::
  T_GeneralizeTel_10953 -> T_PoolReapState_2390
d_'46'generalizedField'45'poolReapState_10949 v0
  = case coe v0 of
      C_mkGeneralizeTel_10955 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_10951 ::
  T_GeneralizeTel_10953 -> AgdaAny
d_'46'generalizedField'45'e_10951 v0
  = case coe v0 of
      C_mkGeneralizeTel_10955 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_10953 a0 a1 = ()
data T_GeneralizeTel_10953
  = C_mkGeneralizeTel_10955 T_PoolReapState_2390 AgdaAny
