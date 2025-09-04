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
d_reserves_772 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- _.Acnt.treasury
d_treasury_774 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState
d_UTxOState_1838 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.UTxOState.deposits
d_deposits_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2332
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.donations
d_donations_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_donations_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2334
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.fees
d_fees_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  Integer
d_fees_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2330 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.UTxOState.utxo
d_utxo_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2328 (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState
d_DState_2034 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2040 v0 ~v1
  = du_DecEq'45'DepositPurpose_2040 v0
du_DecEq'45'DepositPurpose_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe v0))
-- Ledger.Conway.Specification.PoolReap._.DepositPurpose
d_DepositPurpose_2046 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.HasCast-DState
d_HasCast'45'DState_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2076 ~v0 ~v1 = du_HasCast'45'DState_2076
du_HasCast'45'DState_2076 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2076
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1476
-- Ledger.Conway.Specification.PoolReap._.HasCast-PState
d_HasCast'45'PState_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2082 ~v0 ~v1 = du_HasCast'45'PState_2082
du_HasCast'45'PState_2082 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2082
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1478
-- Ledger.Conway.Specification.PoolReap._.PState
d_PState_2160 a0 a1 = ()
-- Ledger.Conway.Specification.PoolReap._.DState.rewards
d_rewards_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1294
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.stakeDelegs
d_stakeDelegs_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1292
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.DState.voteDelegs
d_voteDelegs_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1290
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.pools
d_pools_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1304
      (coe v0)
-- Ledger.Conway.Specification.PoolReap._.PState.retiring
d_retiring_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1306
      (coe v0)
-- Ledger.Conway.Specification.PoolReap.PoolReapState
d_PoolReapState_2382 a0 a1 = ()
data T_PoolReapState_2382
  = C_'10214'_'44'_'44'_'44'_'10215''7510'_2400 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
-- Ledger.Conway.Specification.PoolReap.PoolReapState.utxoSt
d_utxoSt_2392 ::
  T_PoolReapState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_utxoSt_2392 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2400 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.acnt
d_acnt_2394 ::
  T_PoolReapState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2394 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2400 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.dState
d_dState_2396 ::
  T_PoolReapState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_dState_2396 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2400 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.PoolReapState.pState
d_pState_2398 ::
  T_PoolReapState_2382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_pState_2398 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7510'_2400 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.HasCast-PoolReapState
d_HasCast'45'PoolReapState_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolReapState_2402 ~v0 ~v1
  = du_HasCast'45'PoolReapState_2402
du_HasCast'45'PoolReapState_2402 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolReapState_2402
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
                                 (2382 :: Integer) (5811529314862483242 :: Integer)
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
                                 (1838 :: Integer) (5811529314862483242 :: Integer)
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
                                    (2382 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2382 :: Integer) (5811529314862483242 :: Integer)
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
                                       (2034 :: Integer) (5811529314862483242 :: Integer)
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
                                          (2382 :: Integer) (5811529314862483242 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7510'_2400))
-- Ledger.Conway.Specification.PoolReap._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2410 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2410
  = C_POOLREAP_2444 T_PoolReapState_2382
-- Ledger.Conway.Specification.PoolReap._.acnt
d_acnt_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2414 ~v0 ~v1 v2 = du_acnt_2414 v2
du_acnt_2414 ::
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
du_acnt_2414 v0
  = coe
      d_acnt_2394
      (coe d_'46'generalizedField'45'poolReapState_10907 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.dState
d_dState_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_dState_2416 ~v0 ~v1 v2 = du_dState_2416 v2
du_dState_2416 ::
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
du_dState_2416 v0
  = coe
      d_dState_2396
      (coe d_'46'generalizedField'45'poolReapState_10907 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.pState
d_pState_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_pState_2418 ~v0 ~v1 v2 = du_pState_2418 v2
du_pState_2418 ::
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
du_pState_2418 v0
  = coe
      d_pState_2398
      (coe d_'46'generalizedField'45'poolReapState_10907 (coe v0))
-- Ledger.Conway.Specification.PoolReap._.utxoSt
d_utxoSt_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
d_utxoSt_2420 ~v0 ~v1 v2 = du_utxoSt_2420 v2
du_utxoSt_2420 ::
  T_GeneralizeTel_10911 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2318
du_utxoSt_2420 v0
  = coe
      d_utxoSt_2392
      (coe d_'46'generalizedField'45'poolReapState_10907 (coe v0))
-- Ledger.Conway.Specification.PoolReap..generalizedField-poolReapState
d_'46'generalizedField'45'poolReapState_10907 ::
  T_GeneralizeTel_10911 -> T_PoolReapState_2382
d_'46'generalizedField'45'poolReapState_10907 v0
  = case coe v0 of
      C_mkGeneralizeTel_10913 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap..generalizedField-e
d_'46'generalizedField'45'e_10909 ::
  T_GeneralizeTel_10911 -> AgdaAny
d_'46'generalizedField'45'e_10909 v0
  = case coe v0 of
      C_mkGeneralizeTel_10913 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.PoolReap.GeneralizeTel
d_GeneralizeTel_10911 a0 a1 = ()
data T_GeneralizeTel_10911
  = C_mkGeneralizeTel_10913 T_PoolReapState_2382 AgdaAny
