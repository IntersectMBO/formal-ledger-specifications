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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Acnt
d_Acnt_28 a0 = ()
-- _.Credential
d_Credential_58 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_92 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_92 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v0)))
-- _.Epoch
d_Epoch_160 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_160 = erased
-- _.Acnt.reserves
d_reserves_754 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_reserves_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
      (coe v0)
-- _.Acnt.treasury
d_treasury_756 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_treasury_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_1794 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2440
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_donations_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2442
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_fees_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2438 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_1994 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2000 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2000 v0 ~v1
  = du_DecEq'45'DepositPurpose_2000 v0
du_DecEq'45'DepositPurpose_2000 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1132
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2006 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2038 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2038 ~v0 ~v1 = du_HasCast'45'DState_2038
du_HasCast'45'DState_2038 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2038
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1552
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2044 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2044 ~v0 ~v1 = du_HasCast'45'PState_2044
du_HasCast'45'PState_2044 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1554
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2128 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1360
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1358
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1376
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1374
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1378
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2366 a0 a1 = ()
data T_PoolReapState_2366
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2384 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2376 ::
  T_PoolReapState_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2376 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2384 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2378 ::
  T_PoolReapState_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
d_acnt_2378 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2384 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2380 ::
  T_PoolReapState_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_dState_2380 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2384 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2382 ::
  T_PoolReapState_2366 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2382 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2384 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2386 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2386 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2386
du_HasCast'45'PoolReapState_2386 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2386
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
                                 (2366 :: Integer) (5811529314862483242 :: Integer)
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
                                 (1794 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2366 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2366 :: Integer) (5811529314862483242 :: Integer)
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
                                       (1994 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2366 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2128 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2384))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2394 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2394
  = C_POOLREAP_2428 T_PoolReapState_2366
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2398 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
d_acnt_2398 ~v0 ~v1 v2 = du_acnt_2398 v2
du_acnt_2398 ::
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
du_acnt_2398 v0
  = coe
      d_acnt_2378
      (coe d_'46'generalizedField'45'poolReapState_11139 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2400 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_dState_2400 ~v0 ~v1 v2 = du_dState_2400 v2
du_dState_2400 ::
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
du_dState_2400 v0
  = coe
      d_dState_2380
      (coe d_'46'generalizedField'45'poolReapState_11139 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2402 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2402 ~v0 ~v1 v2 = du_pState_2402 v2
du_pState_2402 ::
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
du_pState_2402 v0
  = coe
      d_pState_2382
      (coe d_'46'generalizedField'45'poolReapState_11139 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2404 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2404 ~v0 ~v1 v2 = du_utxoSt_2404 v2
du_utxoSt_2404 ::
  T_GeneralizeTel_11143 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
du_utxoSt_2404 v0
  = coe
      d_utxoSt_2376
      (coe d_'46'generalizedField'45'poolReapState_11139 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_11139 ::
  T_GeneralizeTel_11143 -> T_PoolReapState_2366
d_'46'generalizedField'45'poolReapState_11139 v0
  = case coe v0 of
      C_mkGeneralizeTel_11145 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_11141 ::
  T_GeneralizeTel_11143 -> AgdaAny
d_'46'generalizedField'45'e_11141 v0
  = case coe v0 of
      C_mkGeneralizeTel_11145 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_11143 a0 a1 = ()
data T_GeneralizeTel_11143
  = C_mkGeneralizeTel_11145 T_PoolReapState_2366 AgdaAny
