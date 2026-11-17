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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.TopLevelTx
d_TopLevelTx_926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_926 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2926 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState
d_LedgerState_2992 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.certState
d_certState_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610
d_certState_3056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3950
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.govSt
d_govSt_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3948
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3308
d_utxoSt_3060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3946
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._._⊢_⇀⦇_,LEDGERSWithLimits⦈_
d__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3096 a0 a1 a2
                                                           a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3098 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv
d_LedgersEnv_3108 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState
d_LedgersWithLimitsState_3112 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.exUnitsLimit
d_exUnitsLimit_3124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  AgdaAny
d_exUnitsLimit_3124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.ledgerEnv
d_ledgerEnv_3126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3898
d_ledgerEnv_3126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerEnv_3090
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.refScriptsSizeLimit
d_refScriptsSizeLimit_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  Integer
d_refScriptsSizeLimit_3128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.exUnitsAcc
d_exUnitsAcc_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3098 ->
  AgdaAny
d_exUnitsAcc_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3110
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.ledgerState
d_ledgerState_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938
d_ledgerState_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.refScriptsSizeAcc
d_refScriptsSizeAcc_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3098 ->
  Integer
d_refScriptsSizeAcc_3136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3108
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.completeness
d_completeness_3142 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3142 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.computeProof
d_computeProof_3148 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3148 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.computeLedger
d_computeLedger_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3898 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeLedger_3168 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeProof_4536
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.completeLedger
d_completeLedger_3178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3898 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__4178 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeLedger_3178 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERSWithLimits-computeProof
d_LEDGERSWithLimits'45'computeProof_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3098 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_LEDGERSWithLimits'45'computeProof_3188 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''91''93'_3148))
      (:) v5 v6
        -> let v7
                 = MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeProof'45'aux_4540
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerEnv_3090
                        (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3106
                        (coe v3))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3896
                           (coe v5))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)) in
           coe
             (case coe v7 of
                MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v8
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                         -> let v11
                                  = coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                      (\ v11 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2854
                                           (coe
                                              addInt
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3226
                                                 (coe v0) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3474)
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3946
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3106
                                                          (coe v3))))
                                                 (coe v5))
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3108
                                                 (coe v3))))
                                      (coe
                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2866)
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                                         (coe
                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                            (coe
                                               addInt
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3226
                                                  (coe v0) (coe v1)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3474)
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3946
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3106
                                                           (coe v3))))
                                                  (coe v5))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3108
                                                  (coe v3)))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3092
                                               (coe v2)))) in
                            coe
                              (case coe v11 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                   -> if coe v12
                                        then case coe v13 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                 -> let v15
                                                          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                    (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                (coe v0)))))
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3110
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3210
                                                                       (coe v0) (coe v5)))
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3094
                                                                    (coe v2))) in
                                                    coe
                                                      (case coe v15 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                           -> if coe v16
                                                                then case coe v17 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                         -> let v19
                                                                                  = d_LEDGERSWithLimits'45'computeProof_3188
                                                                                      (coe v0)
                                                                                      (coe v1)
                                                                                      (coe v2)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                         (coe
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
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                 (coe
                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                       (3098 ::
                                                                                                                          Integer)
                                                                                                                       (12019176378147150408 ::
                                                                                                                          Integer)
                                                                                                                       "Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState"
                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                              (coe
                                                                                                                 ("r"
                                                                                                                  ::
                                                                                                                  Data.Text.Text))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                 (coe
                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                       (2730 ::
                                                                                                                          Integer)
                                                                                                                       (12019176378147150408 ::
                                                                                                                          Integer)
                                                                                                                       "Ledger.Dijkstra.Specification.Ledgers._.LedgerState"
                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                    (coe
                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                          (3098 ::
                                                                                                                             Integer)
                                                                                                                          (12019176378147150408 ::
                                                                                                                             Integer)
                                                                                                                          "Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState"
                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                                 (coe
                                                                                                                    ("r"
                                                                                                                     ::
                                                                                                                     Data.Text.Text))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                    (coe
                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                          (6 ::
                                                                                                                             Integer)
                                                                                                                          (13537827747504913145 ::
                                                                                                                             Integer)
                                                                                                                          "Agda.Builtin.Nat.Nat"
                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                       (coe
                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                             (3098 ::
                                                                                                                                Integer)
                                                                                                                             (12019176378147150408 ::
                                                                                                                                Integer)
                                                                                                                             "Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState"
                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                                    (coe
                                                                                                                       ("r"
                                                                                                                        ::
                                                                                                                        Data.Text.Text))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                       (coe
                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                             (226 ::
                                                                                                                                Integer)
                                                                                                                             (12019176378147150408 ::
                                                                                                                                Integer)
                                                                                                                             "_.ExUnits"
                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3112)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe v9)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (coe
                                                                                                  addInt
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3226
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        v1)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3474)
                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3946
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3106
                                                                                                              (coe
                                                                                                                 v3))))
                                                                                                     (coe
                                                                                                        v5))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3108
                                                                                                     (coe
                                                                                                        v3)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                                              (coe
                                                                                                                 v0)))))
                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3110
                                                                                                     (coe
                                                                                                        v3))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3210
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        v5))))))
                                                                                      (coe v6) in
                                                                            coe
                                                                              (case coe v19 of
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v20
                                                                                   -> case coe
                                                                                             v20 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                          -> coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     v21)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''8759'_3154
                                                                                                     v9
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           v10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              v14)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 v18)
                                                                                                              (coe
                                                                                                                 v22))))))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v20
                                                                                   -> coe v19
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v17)
                                                                       (coe
                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                          (coe
                                                                             ("LEDGERSWithLimits: accumulated ExUnits exceed the limit"
                                                                              ::
                                                                              Data.Text.Text)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v13)
                                               (coe
                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                  (coe
                                                     ("LEDGERSWithLimits: accumulated reference script size exceeds the limit"
                                                      ::
                                                      Data.Text.Text)))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v8
                  -> coe v7
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERSWithLimits-completeness
d_LEDGERSWithLimits'45'completeness_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3098 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGERSWithLimits'45'completeness_3346 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.Computational-LEDGERSWithLimits
d_Computational'45'LEDGERSWithLimits_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'LEDGERSWithLimits_3512 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_444
      (d_LEDGERSWithLimits'45'computeProof_3188 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERS-computeProof
d_LEDGERS'45'computeProof_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_LEDGERS'45'computeProof_3522 v0 v1 v2 v3 v4
  = let v5
          = d_LEDGERSWithLimits'45'computeProof_3188
              (coe v0) (coe v1) (coe v2)
              (coe
                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                 (coe
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
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (3098 :: Integer) (12019176378147150408 :: Integer)
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
                                               (2730 :: Integer) (12019176378147150408 :: Integer)
                                               "Ledger.Dijkstra.Specification.Ledgers._.LedgerState"
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
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                            (coe
                                               (MAlonzo.RTE.QName
                                                  (3098 :: Integer)
                                                  (12019176378147150408 :: Integer)
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
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (3098 :: Integer)
                                                     (12019176378147150408 :: Integer)
                                                     "Ledger.Dijkstra.Specification.Ledgers.LedgersWithLimitsState"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                            (coe ("r" :: Data.Text.Text))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                               (coe
                                                  (MAlonzo.RTE.QName
                                                     (226 :: Integer)
                                                     (12019176378147150408 :: Integer) "_.ExUnits"
                                                     (MAlonzo.RTE.Fixity
                                                        MAlonzo.RTE.NonAssoc
                                                        MAlonzo.RTE.Unrelated)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3112)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                (coe v0)))))))
              (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v6
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                  -> coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3106
                             (coe v7))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3108
                                (coe v7))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3110
                                   (coe v7))
                                (coe v8))))
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v6
           -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERS-completeness
d_LEDGERS'45'completeness_3560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3082 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3938 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGERS'45'completeness_3560 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.Computational-LEDGERS
d_Computational'45'LEDGERS_3594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3260 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'LEDGERS_3594 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_444
      (d_LEDGERS'45'computeProof_3522 (coe v0) (coe v1))
