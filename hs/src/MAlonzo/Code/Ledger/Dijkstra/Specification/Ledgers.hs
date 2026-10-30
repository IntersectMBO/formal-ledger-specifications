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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _._≤ᵉᵘ_
d__'8804''7497''7512'__20 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__20 = erased
-- _.ExUnits
d_ExUnits_226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_226 = erased
-- _.HasAdd-ExUnits
d_HasAdd'45'ExUnits_288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_288 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- _.TopLevelTx
d_TopLevelTx_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_922 = erased
-- Ledger.Dijkstra.Specification.Ledgers._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2684 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledgers._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
d_HasUTxO'45'LedgerState_2734 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_2734
du_HasUTxO'45'LedgerState_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
du_HasUTxO'45'LedgerState_2734
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3996
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv
d_LedgerEnv_2746 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerState
d_LedgerState_2750 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv.enactState
d_enactState_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv.pparams
d_pparams_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3934
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv.ppolicy
d_ppolicy_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  Maybe AgdaAny
d_ppolicy_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3932
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv.slot
d_slot_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  AgdaAny
d_slot_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3930
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv.treasury
d_treasury_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  Integer
d_treasury_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3938
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerState.certState
d_certState_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610
d_certState_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerState.govSt
d_govSt_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.LedgerState.utxoSt
d_utxoSt_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328
d_utxoSt_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.totalExUnits
d_totalExUnits_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_totalExUnits_3002 v0 ~v1 = du_totalExUnits_3002 v0
du_totalExUnits_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
du_totalExUnits_3002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3230
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers._.totalRefScriptsSize
d_totalRefScriptsSize_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Integer
d_totalRefScriptsSize_3004 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ledgers.LedgersEnv
d_LedgersEnv_3102 a0 a1 = ()
data T_LedgersEnv_3102
  = C_constructor_3116 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.Ledgers.LedgersEnv.ledgerEnv
d_ledgerEnv_3110 ::
  T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918
d_ledgerEnv_3110 v0
  = case coe v0 of
      C_constructor_3116 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.LedgersEnv.refScriptsSizeLimit
d_refScriptsSizeLimit_3112 :: T_LedgersEnv_3102 -> Integer
d_refScriptsSizeLimit_3112 v0
  = case coe v0 of
      C_constructor_3116 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.LedgersEnv.exUnitsLimit
d_exUnitsLimit_3114 :: T_LedgersEnv_3102 -> AgdaAny
d_exUnitsLimit_3114 v0
  = case coe v0 of
      C_constructor_3116 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState
d_LedgersWithLimitsState_3118 a0 a1 = ()
data T_LedgersWithLimitsState_3118
  = C_constructor_3132 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState.ledgerState
d_ledgerState_3126 ::
  T_LedgersWithLimitsState_3118 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958
d_ledgerState_3126 v0
  = case coe v0 of
      C_constructor_3132 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState.refScriptsSizeAcc
d_refScriptsSizeAcc_3128 ::
  T_LedgersWithLimitsState_3118 -> Integer
d_refScriptsSizeAcc_3128 v0
  = case coe v0 of
      C_constructor_3132 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState.exUnitsAcc
d_exUnitsAcc_3130 :: T_LedgersWithLimitsState_3118 -> AgdaAny
d_exUnitsAcc_3130 v0
  = case coe v0 of
      C_constructor_3132 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.HasCast-LedgersEnv
d_HasCast'45'LedgersEnv_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgersEnv_3162 ~v0 ~v1
  = du_HasCast'45'LedgersEnv_3162
du_HasCast'45'LedgersEnv_3162 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgersEnv_3162
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
                                 (3102 :: Integer) (12019176378147150408 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledgers.LedgersEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2746 :: Integer) (12019176378147150408 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv"
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
                                    (3102 :: Integer) (12019176378147150408 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledgers.LedgersEnv"
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
                                    (6 :: Integer) (13537827747504913145 :: Integer)
                                    "Agda.Builtin.Nat.Nat"
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
                                       (3102 :: Integer) (12019176378147150408 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledgers.LedgersEnv"
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
                                       (226 :: Integer) (12019176378147150408 :: Integer)
                                       "_.ExUnits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_3116))
-- Ledger.Dijkstra.Specification.Ledgers.HasCast-LedgersWithLimitsState
d_HasCast'45'LedgersWithLimitsState_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LedgersWithLimitsState_3164 ~v0 ~v1
  = du_HasCast'45'LedgersWithLimitsState_3164
du_HasCast'45'LedgersWithLimitsState_3164 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LedgersWithLimitsState_3164
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
                                 (3118 :: Integer) (12019176378147150408 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2750 :: Integer) (12019176378147150408 :: Integer)
                                 "Ledger.Dijkstra.Specification.Ledgers._.LedgerState"
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
                                    (3118 :: Integer) (12019176378147150408 :: Integer)
                                    "Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState"
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
                                    (6 :: Integer) (13537827747504913145 :: Integer)
                                    "Agda.Builtin.Nat.Nat"
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
                                       (3118 :: Integer) (12019176378147150408 :: Integer)
                                       "Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState"
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
                                       (226 :: Integer) (12019176378147150408 :: Integer)
                                       "_.ExUnits"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_3132))
-- Ledger.Dijkstra.Specification.Ledgers._⊢_⇀⦇_,LEDGERSWithLimits⦈_
d__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3166 a0 a1 a2
                                                           a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3166
  = C_LEDGERSWithLimits'45''91''93'_3168 |
    C_LEDGERSWithLimits'45''8759'_3174 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Ledgers._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3176 = erased
