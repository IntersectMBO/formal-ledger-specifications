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
import qualified MAlonzo.Code.Agda.Primitive
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
d_Acnt_40 a0 = ()
-- _.Credential
d_Credential_82 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_138 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v0)))
-- _.Epoch
d_Epoch_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_220 = erased
-- _.Acnt.reserves
d_reserves_928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- _.Acnt.treasury
d_treasury_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_2106 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2564
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  Integer
d_donations_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2566
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  Integer
d_fees_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2562 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2560 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2298 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DStateOf
d_DStateOf_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_DStateOf_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1550
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2306 v0 ~v1
  = du_DecEq'45'DepositPurpose_2306 v0
du_DecEq'45'DepositPurpose_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1262
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2314 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2346 ~v0 ~v1 = du_HasCast'45'DState_2346
du_HasCast'45'DState_2346 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1664
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2352 ~v0 ~v1 = du_HasCast'45'PState_2352
du_HasCast'45'PState_2352 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1666
-- Ledger.Conway.Specification.PoolReap._.HasDState
d_HasDState_2364 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards
d_HasRewards_2402 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards-DState
d_HasRewards'45'DState_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'DState_2408 ~v0 ~v1 = du_HasRewards'45'DState_2408
du_HasRewards'45'DState_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
du_HasRewards'45'DState_2408
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1626
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2432 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.RewardsOf
d_RewardsOf_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1474
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1472
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1470
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasDState.DStateOf
d_DStateOf_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_DStateOf_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1550
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasRewards.RewardsOf
d_RewardsOf_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1488
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1486
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1490
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2662 a0 a1 = ()
data T_PoolReapState_2662
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2680 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2672 ::
  T_PoolReapState_2662 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2672 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2680 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2674 ::
  T_PoolReapState_2662 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2674 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2680 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2676 ::
  T_PoolReapState_2662 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_dState_2676 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2680 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2678 ::
  T_PoolReapState_2662 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_pState_2678 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2680 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2682 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2682
du_HasCast'45'PoolReapState_2682 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2682
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
                                 (2662 :: Integer) (5811529314862483242 :: Integer)
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
                                 (2106 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2662 :: Integer) (5811529314862483242 :: Integer)
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
                                    (40 :: Integer) (5811529314862483242 :: Integer) "_.Acnt"
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
                                       (2662 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2298 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2662 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2432 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2680))
-- Ledger.Conway.Specification.PoolReap.HasDState-PoolReapState
d_HasDState'45'PoolReapState_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542
d_HasDState'45'PoolReapState_2684 ~v0 ~v1
  = du_HasDState'45'PoolReapState_2684
du_HasDState'45'PoolReapState_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542
du_HasDState'45'PoolReapState_2684
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1552
      (coe (\ v0 -> d_dState_2676 (coe v0)))
-- Ledger.Conway.Specification.PoolReap.HasRewards-PoolReapState
d_HasRewards'45'PoolReapState_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'PoolReapState_2686 ~v0 ~v1
  = du_HasRewards'45'PoolReapState_2686
du_HasRewards'45'PoolReapState_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
du_HasRewards'45'PoolReapState_2686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1340
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1626)
              (d_dState_2676 (coe v0))))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2694 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2694
  = C_POOLREAP_2728 T_PoolReapState_2662
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2698 ~v0 ~v1 v2 = du_acnt_2698 v2
du_acnt_2698 ::
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_2698 v0
  = coe
      d_acnt_2674
      (coe d_'46'generalizedField'45'poolReapState_12323 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_dState_2700 ~v0 ~v1 v2 = du_dState_2700 v2
du_dState_2700 ::
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
du_dState_2700 v0
  = coe
      d_dState_2676
      (coe d_'46'generalizedField'45'poolReapState_12323 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_pState_2702 ~v0 ~v1 v2 = du_pState_2702 v2
du_pState_2702 ::
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
du_pState_2702 v0
  = coe
      d_pState_2678
      (coe d_'46'generalizedField'45'poolReapState_12323 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2704 ~v0 ~v1 v2 = du_utxoSt_2704 v2
du_utxoSt_2704 ::
  T_GeneralizeTel_12327 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
du_utxoSt_2704 v0
  = coe
      d_utxoSt_2672
      (coe d_'46'generalizedField'45'poolReapState_12323 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_12323 ::
  T_GeneralizeTel_12327 -> T_PoolReapState_2662
d_'46'generalizedField'45'poolReapState_12323 v0
  = case coe v0 of
      C_mkGeneralizeTel_12329 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_12325 ::
  T_GeneralizeTel_12327 -> AgdaAny
d_'46'generalizedField'45'e_12325 v0
  = case coe v0 of
      C_mkGeneralizeTel_12329 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_12327 a0 a1 = ()
data T_GeneralizeTel_12327
  = C_mkGeneralizeTel_12329 T_PoolReapState_2662 AgdaAny
