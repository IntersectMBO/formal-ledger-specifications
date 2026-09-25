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
d_Acnt_40 a0 = ()
-- _.Credential
d_Credential_84 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
            (coe v0)))
-- _.Epoch
d_Epoch_218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_218 = erased
-- _.HasCast-Acnt
d_HasCast'45'Acnt_310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_310 ~v0 = du_HasCast'45'Acnt_310
du_HasCast'45'Acnt_310 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_310
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- _.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_332 ~v0
  = du_HasCredential'45'RewardAddress_332
du_HasCredential'45'RewardAddress_332 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_332
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- _.THash
d_THash_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_672 = erased
-- _.VoteDelegs
d_VoteDelegs_982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VoteDelegs_982 = erased
-- _.Acnt.reserves
d_reserves_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- _.Acnt.treasury
d_treasury_1260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState
d_DState_2684 a0 = ()
-- Ledger.Dijkstra.Specification.PoolReap._.FPools
d_FPools_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_FPools_2704 = erased
-- Ledger.Dijkstra.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2736 ~v0 = du_HasCast'45'DState_2736
du_HasCast'45'DState_2736 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2736
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_2010
-- Ledger.Dijkstra.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2744 ~v0 = du_HasCast'45'PState_2744
du_HasCast'45'PState_2744 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2744
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_2012
-- Ledger.Dijkstra.Specification.PoolReap._.PState
d_PState_2878 a0 = ()
-- Ledger.Dijkstra.Specification.PoolReap._.Pools
d_Pools_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Pools_2890 = erased
-- Ledger.Dijkstra.Specification.PoolReap._.Rewards
d_Rewards_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Rewards_2898 = erased
-- Ledger.Dijkstra.Specification.PoolReap._.StakeDelegs
d_StakeDelegs_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_StakeDelegs_2904 = erased
-- Ledger.Dijkstra.Specification.PoolReap._.DState.deposits
d_deposits_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1530
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState.rewards
d_rewards_3022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1528
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1526
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1524
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.deposits
d_deposits_3114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1550
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.fPools
d_fPools_3116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1546
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.pools
d_pools_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1544
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap._.PState.retiring
d_retiring_3120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1548
      (coe v0)
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState
d_PoolReapState_3160 a0 = ()
data T_PoolReapState_3160
  = C_'10214'_'44'_'44'_'10215''7510'_3174 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState.acnt
d_acnt_3168 ::
  T_PoolReapState_3160 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_3168 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7510'_3174 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState.dState
d_dState_3170 ::
  T_PoolReapState_3160 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1514
d_dState_3170 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7510'_3174 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PoolReap.PoolReapState.pState
d_pState_3172 ::
  T_PoolReapState_3160 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1534
d_pState_3172 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7510'_3174 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_3176 ~v0
  = du_HasCast'45'PoolReapState_3176
du_HasCast'45'PoolReapState_3176 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_3176
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
                                 (3160 :: Integer) (10528932768775107529 :: Integer)
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
                                 (40 :: Integer) (10528932768775107529 :: Integer) "_.Acnt"
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
                                    (3160 :: Integer) (10528932768775107529 :: Integer)
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
                                    (2684 :: Integer) (10528932768775107529 :: Integer)
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
                                       (3160 :: Integer) (10528932768775107529 :: Integer)
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
                                       (2878 :: Integer) (10528932768775107529 :: Integer)
                                       "Ledger.Dijkstra.Specification.PoolReap._.PState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''7510'_3174))
-- Ledger.Dijkstra.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__3200 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3200
  = C_POOLREAP_3212
