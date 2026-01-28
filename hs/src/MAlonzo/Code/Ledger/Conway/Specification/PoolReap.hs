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
d_Credential_60 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_264
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
            (coe v0)))
-- _.Epoch
d_Epoch_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_168 = erased
-- _.Acnt.reserves
d_reserves_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_reserves_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
      (coe v0)
-- _.Acnt.treasury
d_treasury_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_treasury_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_1980 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2444
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_donations_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2446
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_fees_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2442 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2176 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2182 v0 ~v1
  = du_DecEq'45'DepositPurpose_2182 v0
du_DecEq'45'DepositPurpose_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1178
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2574
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2188 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2220 ~v0 ~v1 = du_HasCast'45'DState_2220
du_HasCast'45'DState_2220 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1576
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2226 ~v0 ~v1 = du_HasCast'45'PState_2226
du_HasCast'45'PState_2226 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2226
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1578
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2306 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1386
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1384
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1382
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1400
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1398
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1402
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2540 a0 a1 = ()
data T_PoolReapState_2540
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2558 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2550 ::
  T_PoolReapState_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_utxoSt_2550 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2558 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2552 ::
  T_PoolReapState_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_2552 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2558 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2554 ::
  T_PoolReapState_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374
d_dState_2554 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2558 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2556 ::
  T_PoolReapState_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_pState_2556 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2558 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2560 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2560
du_HasCast'45'PoolReapState_2560 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2560
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
                                 (2540 :: Integer) (5811529314862483242 :: Integer)
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
                                 (1980 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2540 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2540 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2176 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2540 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2306 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2558))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2568 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2568
  = C_POOLREAP_2602 T_PoolReapState_2540
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_2572 ~v0 ~v1 v2 = du_acnt_2572 v2
du_acnt_2572 ::
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
du_acnt_2572 v0
  = coe
      d_acnt_2552
      (coe d_'46'generalizedField'45'poolReapState_11529 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374
d_dState_2574 ~v0 ~v1 v2 = du_dState_2574 v2
du_dState_2574 ::
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1374
du_dState_2574 v0
  = coe
      d_dState_2554
      (coe d_'46'generalizedField'45'poolReapState_11529 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_pState_2576 ~v0 ~v1 v2 = du_pState_2576 v2
du_pState_2576 ::
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
du_pState_2576 v0
  = coe
      d_pState_2556
      (coe d_'46'generalizedField'45'poolReapState_11529 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_utxoSt_2578 ~v0 ~v1 v2 = du_utxoSt_2578 v2
du_utxoSt_2578 ::
  T_GeneralizeTel_11533 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
du_utxoSt_2578 v0
  = coe
      d_utxoSt_2550
      (coe d_'46'generalizedField'45'poolReapState_11529 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_11529 ::
  T_GeneralizeTel_11533 -> T_PoolReapState_2540
d_'46'generalizedField'45'poolReapState_11529 v0
  = case coe v0 of
      C_mkGeneralizeTel_11535 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_11531 ::
  T_GeneralizeTel_11533 -> AgdaAny
d_'46'generalizedField'45'e_11531 v0
  = case coe v0 of
      C_mkGeneralizeTel_11535 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_11533 a0 a1 = ()
data T_GeneralizeTel_11533
  = C_mkGeneralizeTel_11535 T_PoolReapState_2540 AgdaAny
