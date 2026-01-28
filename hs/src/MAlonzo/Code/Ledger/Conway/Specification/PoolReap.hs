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
d_DecEq'45'Credential_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_98 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1334
            (coe v0)))
-- _.Epoch
d_Epoch_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_166 = erased
-- _.Acnt.reserves
d_reserves_830 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_reserves_830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
      (coe v0)
-- _.Acnt.treasury
d_treasury_832 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_treasury_832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_1956 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2416
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  Integer
d_donations_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2418
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  Integer
d_fees_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2414 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2412 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2152 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2158 v0 ~v1
  = du_DecEq'45'DepositPurpose_2158 v0
du_DecEq'45'DepositPurpose_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2526
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2164 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2196 ~v0 ~v1 = du_HasCast'45'DState_2196
du_HasCast'45'DState_2196 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1554
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2202 ~v0 ~v1 = du_HasCast'45'PState_2202
du_HasCast'45'PState_2202 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1556
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2282 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1364
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1362
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1360
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2516 a0 a1 = ()
data T_PoolReapState_2516
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2534 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2526 ::
  T_PoolReapState_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_utxoSt_2526 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2534 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2528 ::
  T_PoolReapState_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_2528 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2534 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2530 ::
  T_PoolReapState_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_dState_2530 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2534 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2532 ::
  T_PoolReapState_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState_2532 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2534 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2536 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2536
du_HasCast'45'PoolReapState_2536 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2536
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
                                 (2516 :: Integer) (5811529314862483242 :: Integer)
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
                                 (1956 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2516 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2516 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2152 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2516 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2282 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2534))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2544 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2544
  = C_POOLREAP_2578 T_PoolReapState_2516
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_2548 ~v0 ~v1 v2 = du_acnt_2548 v2
du_acnt_2548 ::
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
du_acnt_2548 v0
  = coe
      d_acnt_2528
      (coe d_'46'generalizedField'45'poolReapState_11461 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_dState_2550 ~v0 ~v1 v2 = du_dState_2550 v2
du_dState_2550 ::
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
du_dState_2550 v0
  = coe
      d_dState_2530
      (coe d_'46'generalizedField'45'poolReapState_11461 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState_2552 ~v0 ~v1 v2 = du_pState_2552 v2
du_pState_2552 ::
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
du_pState_2552 v0
  = coe
      d_pState_2532
      (coe d_'46'generalizedField'45'poolReapState_11461 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_utxoSt_2554 ~v0 ~v1 v2 = du_utxoSt_2554 v2
du_utxoSt_2554 ::
  T_GeneralizeTel_11465 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
du_utxoSt_2554 v0
  = coe
      d_utxoSt_2526
      (coe d_'46'generalizedField'45'poolReapState_11461 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_11461 ::
  T_GeneralizeTel_11465 -> T_PoolReapState_2516
d_'46'generalizedField'45'poolReapState_11461 v0
  = case coe v0 of
      C_mkGeneralizeTel_11467 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_11463 ::
  T_GeneralizeTel_11465 -> AgdaAny
d_'46'generalizedField'45'e_11463 v0
  = case coe v0 of
      C_mkGeneralizeTel_11467 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_11465 a0 a1 = ()
data T_GeneralizeTel_11465
  = C_mkGeneralizeTel_11467 T_PoolReapState_2516 AgdaAny
