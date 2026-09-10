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
d_Acnt_36 a0 = ()
-- _.Credential
d_Credential_70 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
            (coe v0)))
-- _.Epoch
d_Epoch_186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_186 = erased
-- _.Acnt.reserves
d_reserves_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- _.Acnt.treasury
d_treasury_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_2060 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2518
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  Integer
d_donations_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2520
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  Integer
d_fees_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2516 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2252 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DStateOf
d_DStateOf_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1496 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
d_DStateOf_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1504
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2260 v0 ~v1
  = du_DecEq'45'DepositPurpose_2260 v0
du_DecEq'45'DepositPurpose_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2268 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2300 ~v0 ~v1 = du_HasCast'45'DState_2300
du_HasCast'45'DState_2300 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2300
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1618
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2306 ~v0 ~v1 = du_HasCast'45'PState_2306
du_HasCast'45'PState_2306 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2306
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1620
-- Ledger.Conway.Specification.PoolReap._.HasDState
d_HasDState_2318 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards
d_HasRewards_2356 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.PoolReap._.HasRewards-DState
d_HasRewards'45'DState_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
d_HasRewards'45'DState_2362 ~v0 ~v1 = du_HasRewards'45'DState_2362
du_HasRewards'45'DState_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
du_HasRewards'45'DState_2362
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1580
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2386 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.RewardsOf
d_RewardsOf_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1428
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1426
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1424
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasDState.DStateOf
d_DStateOf_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1496 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
d_DStateOf_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1504
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.HasRewards.RewardsOf
d_RewardsOf_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1442
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1440
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1444
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2616 a0 a1 = ()
data T_PoolReapState_2616
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2634 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2626 ::
  T_PoolReapState_2616 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_utxoSt_2626 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2634 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2628 ::
  T_PoolReapState_2616 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2628 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2634 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2630 ::
  T_PoolReapState_2616 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
d_dState_2630 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2634 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2632 ::
  T_PoolReapState_2616 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
d_pState_2632 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2634 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2636 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2636
du_HasCast'45'PoolReapState_2636 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2636
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
                                 (2616 :: Integer) (5811529314862483242 :: Integer)
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
                                 (2060 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2616 :: Integer) (5811529314862483242 :: Integer)
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
                                    (36 :: Integer) (5811529314862483242 :: Integer) "_.Acnt"
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
                                       (2616 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2252 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2616 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2386 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2634))
-- Ledger.Conway.Specification.PoolReap.HasDState-PoolReapState
d_HasDState'45'PoolReapState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1496
d_HasDState'45'PoolReapState_2638 ~v0 ~v1
  = du_HasDState'45'PoolReapState_2638
du_HasDState'45'PoolReapState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1496
du_HasDState'45'PoolReapState_2638
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1506
      (coe (\ v0 -> d_dState_2630 (coe v0)))
-- Ledger.Conway.Specification.PoolReap.HasRewards-PoolReapState
d_HasRewards'45'PoolReapState_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
d_HasRewards'45'PoolReapState_2640 ~v0 ~v1
  = du_HasRewards'45'PoolReapState_2640
du_HasRewards'45'PoolReapState_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
du_HasRewards'45'PoolReapState_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1294
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1580)
              (d_dState_2630 (coe v0))))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2648 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2648
  = C_POOLREAP_2682 T_PoolReapState_2616
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_2652 ~v0 ~v1 v2 = du_acnt_2652 v2
du_acnt_2652 ::
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_2652 v0
  = coe
      d_acnt_2628
      (coe d_'46'generalizedField'45'poolReapState_12225 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
d_dState_2654 ~v0 ~v1 v2 = du_dState_2654 v2
du_dState_2654 ::
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
du_dState_2654 v0
  = coe
      d_dState_2630
      (coe d_'46'generalizedField'45'poolReapState_12225 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
d_pState_2656 ~v0 ~v1 v2 = du_pState_2656 v2
du_pState_2656 ::
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
du_pState_2656 v0
  = coe
      d_pState_2632
      (coe d_'46'generalizedField'45'poolReapState_12225 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_utxoSt_2658 ~v0 ~v1 v2 = du_utxoSt_2658 v2
du_utxoSt_2658 ::
  T_GeneralizeTel_12229 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
du_utxoSt_2658 v0
  = coe
      d_utxoSt_2626
      (coe d_'46'generalizedField'45'poolReapState_12225 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_12225 ::
  T_GeneralizeTel_12229 -> T_PoolReapState_2616
d_'46'generalizedField'45'poolReapState_12225 v0
  = case coe v0 of
      C_mkGeneralizeTel_12231 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_12227 ::
  T_GeneralizeTel_12229 -> AgdaAny
d_'46'generalizedField'45'e_12227 v0
  = case coe v0 of
      C_mkGeneralizeTel_12231 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_12229 a0 a1 = ()
data T_GeneralizeTel_12229
  = C_mkGeneralizeTel_12231 T_PoolReapState_2616 AgdaAny
