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
d_DecEq'45'Credential_136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
            (coe v0)))
-- _.Epoch
d_Epoch_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_210 = erased
-- _.Acnt.reserves
d_reserves_910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- _.Acnt.treasury
d_treasury_912 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_2088 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2546
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  Integer
d_donations_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2548
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  Integer
d_fees_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2544 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2280 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DStateOf
d_DStateOf_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1524 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
d_DStateOf_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1532
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2288 v0 ~v1
  = du_DecEq'45'DepositPurpose_2288 v0
du_DecEq'45'DepositPurpose_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2718
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2296 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2328 ~v0 ~v1 = du_HasCast'45'DState_2328
du_HasCast'45'DState_2328 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2328
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1646
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2334 ~v0 ~v1 = du_HasCast'45'PState_2334
du_HasCast'45'PState_2334 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2334
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1648
-- Ledger.Conway.Specification.PoolReap._.HasDState
d_HasDState_2346 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards
d_HasRewards_2384 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards-DState
d_HasRewards'45'DState_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
d_HasRewards'45'DState_2390 ~v0 ~v1 = du_HasRewards'45'DState_2390
du_HasRewards'45'DState_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
du_HasRewards'45'DState_2390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1608
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2414 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.RewardsOf
d_RewardsOf_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1320
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1456
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1454
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1452
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasDState.DStateOf
d_DStateOf_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1524 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
d_DStateOf_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1532
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasRewards.RewardsOf
d_RewardsOf_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1320
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1470
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1468
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1472
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2644 a0 a1 = ()
data T_PoolReapState_2644
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2662 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2654 ::
  T_PoolReapState_2644 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_2654 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2662 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2656 ::
  T_PoolReapState_2644 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2656 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2662 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2658 ::
  T_PoolReapState_2644 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
d_dState_2658 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2662 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2660 ::
  T_PoolReapState_2644 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
d_pState_2660 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2662 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2664 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2664
du_HasCast'45'PoolReapState_2664 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2664
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
                                 (2644 :: Integer) (5811529314862483242 :: Integer)
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
                                 (2088 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2644 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2644 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2280 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2644 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2414 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2662))
-- Ledger.Conway.Specification.PoolReap.HasDState-PoolReapState
d_HasDState'45'PoolReapState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1524
d_HasDState'45'PoolReapState_2666 ~v0 ~v1
  = du_HasDState'45'PoolReapState_2666
du_HasDState'45'PoolReapState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1524
du_HasDState'45'PoolReapState_2666
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1534
      (coe (\ v0 -> d_dState_2658 (coe v0)))
-- Ledger.Conway.Specification.PoolReap.HasRewards-PoolReapState
d_HasRewards'45'PoolReapState_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
d_HasRewards'45'PoolReapState_2668 ~v0 ~v1
  = du_HasRewards'45'PoolReapState_2668
du_HasRewards'45'PoolReapState_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
du_HasRewards'45'PoolReapState_2668
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1322
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1320
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1608)
              (d_dState_2658 (coe v0))))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2676 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2676
  = C_POOLREAP_2710 T_PoolReapState_2644
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2680 ~v0 ~v1 v2 = du_acnt_2680 v2
du_acnt_2680 ::
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_2680 v0
  = coe
      d_acnt_2656
      (coe d_'46'generalizedField'45'poolReapState_12293 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
d_dState_2682 ~v0 ~v1 v2 = du_dState_2682 v2
du_dState_2682 ::
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
du_dState_2682 v0
  = coe
      d_dState_2658
      (coe d_'46'generalizedField'45'poolReapState_12293 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
d_pState_2684 ~v0 ~v1 v2 = du_pState_2684 v2
du_pState_2684 ::
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
du_pState_2684 v0
  = coe
      d_pState_2660
      (coe d_'46'generalizedField'45'poolReapState_12293 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_2686 ~v0 ~v1 v2 = du_utxoSt_2686 v2
du_utxoSt_2686 ::
  T_GeneralizeTel_12297 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
du_utxoSt_2686 v0
  = coe
      d_utxoSt_2654
      (coe d_'46'generalizedField'45'poolReapState_12293 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_12293 ::
  T_GeneralizeTel_12297 -> T_PoolReapState_2644
d_'46'generalizedField'45'poolReapState_12293 v0
  = case coe v0 of
      C_mkGeneralizeTel_12299 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_12295 ::
  T_GeneralizeTel_12297 -> AgdaAny
d_'46'generalizedField'45'e_12295 v0
  = case coe v0 of
      C_mkGeneralizeTel_12299 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_12297 a0 a1 = ()
data T_GeneralizeTel_12297
  = C_mkGeneralizeTel_12299 T_PoolReapState_2644 AgdaAny
