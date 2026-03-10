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
d_Acnt_36 a0 = ()
-- _.Credential
d_Credential_68 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_114 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
            (coe v0)))
-- _.Epoch
d_Epoch_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_184 = erased
-- _.Acnt.reserves
d_reserves_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_reserves_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_180
      (coe v0)
-- _.Acnt.treasury
d_treasury_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_treasury_884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_178
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_2038 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2506
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_donations_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2508
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_fees_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2504 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2234 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2242 v0 ~v1
  = du_DecEq'45'DepositPurpose_2242 v0
du_DecEq'45'DepositPurpose_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2250 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2282 ~v0 ~v1 = du_HasCast'45'DState_2282
du_HasCast'45'DState_2282 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1624
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2288 ~v0 ~v1 = du_HasCast'45'PState_2288
du_HasCast'45'PState_2288 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2288
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1626
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2368 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1434
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1432
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1430
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.fPools
d_fPools_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1448
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1446
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1450
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2602 a0 a1 = ()
data T_PoolReapState_2602
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2620 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2612 ::
  T_PoolReapState_2602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_utxoSt_2612 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2620 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2614 ::
  T_PoolReapState_2602 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_2614 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2620 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2616 ::
  T_PoolReapState_2602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_dState_2616 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2620 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2618 ::
  T_PoolReapState_2602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_2618 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2620 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2622 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2622
du_HasCast'45'PoolReapState_2622 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2622
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
                                 (2602 :: Integer) (5811529314862483242 :: Integer)
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
                                 (2038 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2602 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2602 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2234 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2602 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2368 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.PState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2620))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2630 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2630
  = C_POOLREAP_2664 T_PoolReapState_2602
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
d_acnt_2634 ~v0 ~v1 v2 = du_acnt_2634 v2
du_acnt_2634 ::
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172
du_acnt_2634 v0
  = coe
      d_acnt_2614
      (coe d_'46'generalizedField'45'poolReapState_11749 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_dState_2636 ~v0 ~v1 v2 = du_dState_2636 v2
du_dState_2636 ::
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
du_dState_2636 v0
  = coe
      d_dState_2616
      (coe d_'46'generalizedField'45'poolReapState_11749 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_2638 ~v0 ~v1 v2 = du_pState_2638 v2
du_pState_2638 ::
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
du_pState_2638 v0
  = coe
      d_pState_2618
      (coe d_'46'generalizedField'45'poolReapState_11749 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_utxoSt_2640 ~v0 ~v1 v2 = du_utxoSt_2640 v2
du_utxoSt_2640 ::
  T_GeneralizeTel_11753 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
du_utxoSt_2640 v0
  = coe
      d_utxoSt_2612
      (coe d_'46'generalizedField'45'poolReapState_11749 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_11749 ::
  T_GeneralizeTel_11753 -> T_PoolReapState_2602
d_'46'generalizedField'45'poolReapState_11749 v0
  = case coe v0 of
      C_mkGeneralizeTel_11755 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_11751 ::
  T_GeneralizeTel_11753 -> AgdaAny
d_'46'generalizedField'45'e_11751 v0
  = case coe v0 of
      C_mkGeneralizeTel_11755 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_11753 a0 a1 = ()
data T_GeneralizeTel_11753
  = C_mkGeneralizeTel_11755 T_PoolReapState_2602 AgdaAny
