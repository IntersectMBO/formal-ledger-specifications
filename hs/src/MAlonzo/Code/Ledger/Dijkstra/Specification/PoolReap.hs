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

module MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap where

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
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Acnt
d_Acnt_44 a0 = ()
-- _.Credential
d_Credential_96 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v0)))
-- _.Epoch
d_Epoch_252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_252 = erased
-- _.HasCast-Acnt
d_HasCast'45'Acnt_344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_344 ~v0 = du_HasCast'45'Acnt_344
du_HasCast'45'Acnt_344 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_344
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- _.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_366 ~v0
  = du_HasCredential'45'RewardAddress_366
du_HasCredential'45'RewardAddress_366 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_366
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- _.THash
d_THash_698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_698 = erased
-- _.VoteDelegs
d_VoteDelegs_1010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_1010 = erased
-- _.Acnt.reserves
d_reserves_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- _.Acnt.treasury
d_treasury_1294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState
d_DState_2676 a0 = ()
-- Ledger.Dijkstra.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2724 ~v0 = du_HasCast'45'DState_2724
du_HasCast'45'DState_2724 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2724
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1904
-- Ledger.Dijkstra.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2732 ~v0 = du_HasCast'45'PState_2732
du_HasCast'45'PState_2732 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2732
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_1906
-- Ledger.Dijkstra.Specification.PoolReap._.PState
d_PState_2854 a0 = ()
-- Ledger.Dijkstra.Specification.PoolReap._.Pools
d_Pools_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Pools_2864 = erased
-- Ledger.Dijkstra.Specification.PoolReap._.Rewards
d_Rewards_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Rewards_2872 = erased
-- Ledger.Dijkstra.Specification.PoolReap._.StakeDelegs
d_StakeDelegs_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_StakeDelegs_2878 = erased
-- Ledger.Dijkstra.Specification.PoolReap._.DState.deposits
d_deposits_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1426
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState.rewards
d_rewards_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1424
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1422
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1420
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.deposits
d_deposits_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1446
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.fPools
d_fPools_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1442
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.pools
d_pools_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1440
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.retiring
d_retiring_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1444
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState
d_PoolReapState_3104 a0 = ()
data T_PoolReapState_3104
  = C_'10214'_'44'_'44'_'10215''7510'_3118 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState.acnt
d_acnt_3112 ::
  T_PoolReapState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_3112 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7510'_3118 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState.dState
d_dState_3114 ::
  T_PoolReapState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
d_dState_3114 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7510'_3118 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState.pState
d_pState_3116 ::
  T_PoolReapState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
d_pState_3116 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7510'_3118 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_3120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_3120 ~v0
  = du_HasCast'45'PoolReapState_3120
du_HasCast'45'PoolReapState_3120 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_3120
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
                                 (3104 :: Integer) (10528932768775107529 :: Integer)
                                 "Ledger.Dijkstra.Specification.PoolReap.PoolReapState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (44 :: Integer) (10528932768775107529 :: Integer) "_.Acnt"
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
                                    (3104 :: Integer) (10528932768775107529 :: Integer)
                                    "Ledger.Dijkstra.Specification.PoolReap.PoolReapState"
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
                                    (2676 :: Integer) (10528932768775107529 :: Integer)
                                    "Ledger.Dijkstra.Specification.PoolReap._.DState"
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
                                       (3104 :: Integer) (10528932768775107529 :: Integer)
                                       "Ledger.Dijkstra.Specification.PoolReap.PoolReapState"
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
                                       (2854 :: Integer) (10528932768775107529 :: Integer)
                                       "Ledger.Dijkstra.Specification.PoolReap._.PState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7510'_3118))
-- Ledger.Dijkstra.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__3144 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3144
  = C_POOLREAP_3156
