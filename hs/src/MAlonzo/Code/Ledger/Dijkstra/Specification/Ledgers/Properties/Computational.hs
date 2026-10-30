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
import qualified MAlonzo.Code.Class.Monad.Core
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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov
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
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2946 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState
d_LedgerState_3012 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.certState
d_certState_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1610
d_certState_3076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.govSt
d_govSt_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328
d_utxoSt_3080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._._⊢_⇀⦇_,LEDGERSWithLimits⦈_
d__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3116 a0 a1 a2
                                                           a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3118 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv
d_LedgersEnv_3128 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState
d_LedgersWithLimitsState_3132 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.exUnitsLimit
d_exUnitsLimit_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  AgdaAny
d_exUnitsLimit_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3114
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.ledgerEnv
d_ledgerEnv_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918
d_ledgerEnv_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerEnv_3110
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.refScriptsSizeLimit
d_refScriptsSizeLimit_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  Integer
d_refScriptsSizeLimit_3148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3112
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.exUnitsAcc
d_exUnitsAcc_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3118 ->
  AgdaAny
d_exUnitsAcc_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3130
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.ledgerState
d_ledgerState_3154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3118 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958
d_ledgerState_3154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.refScriptsSizeAcc
d_refScriptsSizeAcc_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3118 ->
  Integer
d_refScriptsSizeAcc_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.completeness
d_completeness_3162 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3162 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.computeProof
d_computeProof_3168 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3168 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.computeLedger
d_computeLedger_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeLedger_3188 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeProof_4676
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.completeLedger
d_completeLedger_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3918 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__4198 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeLedger_3198 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERSWithLimits-computeProof
d_LEDGERSWithLimits'45'computeProof_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3118 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_LEDGERSWithLimits'45'computeProof_3208 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''91''93'_3168))
      (:) v5 v6
        -> let v7
                 = MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerEnv_3110
                     (coe v2) in
           coe
             (let v8
                    = MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                        (coe v3) in
              coe
                (let v9
                       = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3896
                              (coe v5))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
                 coe
                   (case coe v9 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                        -> if coe v10
                             then case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                      -> let v13
                                               = coe
                                                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                   (coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeSubledgers_4544
                                                      v0 v1
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_subΓ_4660
                                                         (coe v0) (coe v7) (coe v8) (coe v5))
                                                      v8
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                            (coe v5))))
                                                   (\ v13 ->
                                                      case coe v13 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                               (coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                               () erased () erased
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_computeEntities_4564
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_entitiesΓ_4662
                                                                     (coe v0) (coe v7) (coe v8)
                                                                     (coe v5)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2144
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3998)
                                                                        v14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1946
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_4000)
                                                                        v8))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1946
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_4000)
                                                                     v14)
                                                                  v5)
                                                               (\ v16 ->
                                                                  case coe v16 of
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                      -> coe
                                                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                           (coe
                                                                              MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                           () erased () erased
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_computeGov_4574
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_govΓ_4668
                                                                                 (coe v0) (coe v7)
                                                                                 (coe v5) (coe v17))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2144
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3998)
                                                                                 v14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_GovProposals'43'Votes_4084
                                                                                 (coe v5)))
                                                                           (\ v19 ->
                                                                              case coe v19 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                                  -> coe
                                                                                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeUtxow_4554
                                                                                          v0 v1
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_utxoΓ_4672
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v7)
                                                                                             (coe
                                                                                                v8)
                                                                                             (coe
                                                                                                v5))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3356
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3994)
                                                                                             v14)
                                                                                          v5)
                                                                                       (\ v22 ->
                                                                                          case coe
                                                                                                 v22 of
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_4020)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v23)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_rmOrphanDRepVotes_4088
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     v17)
                                                                                                                  (coe
                                                                                                                     v20))
                                                                                                               (coe
                                                                                                                  v17))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_LEDGER'45'V_4210
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                                                            (coe
                                                                                                               v14))
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
                                                                                                            (coe
                                                                                                               v14))
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                                            (coe
                                                                                                               v14))
                                                                                                         v20
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v15)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v18)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     (coe
                                                                                                                        v21)
                                                                                                                     (coe
                                                                                                                        v24)))))))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                                        _ -> MAlonzo.RTE.mazUnreachableError) in
                                         coe
                                           (case coe v13 of
                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v14
                                                -> case coe v14 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                       -> let v17
                                                                = coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2854
                                                                         (coe
                                                                            addInt
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
                                                                               (coe v0) (coe v1)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3494)
                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                                                                                        (coe v3))))
                                                                               (coe v5))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
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
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
                                                                                (coe v0) (coe v1)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3494)
                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                                                                                         (coe v3))))
                                                                                (coe v5))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
                                                                                (coe v3)))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3112
                                                                             (coe v2)))) in
                                                          coe
                                                            (case coe v17 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                 -> if coe v18
                                                                      then case coe v19 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v20
                                                                               -> let v21
                                                                                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                                     (coe
                                                                                                        v0)))
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
                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3130
                                                                                                     (coe
                                                                                                        v3))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3230
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        v5)))
                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3114
                                                                                                  (coe
                                                                                                     v2))) in
                                                                                  coe
                                                                                    (case coe v21 of
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                                         -> if coe
                                                                                                 v22
                                                                                              then case coe
                                                                                                          v23 of
                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                                                       -> let v25
                                                                                                                = d_LEDGERSWithLimits'45'computeProof_3208
                                                                                                                    (coe
                                                                                                                       v0)
                                                                                                                    (coe
                                                                                                                       v1)
                                                                                                                    (coe
                                                                                                                       v2)
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
                                                                                                                                                     (3118 ::
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
                                                                                                                                                     (2750 ::
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
                                                                                                                                                        (3118 ::
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
                                                                                                                                                           (3118 ::
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
                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3132)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             v15)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                addInt
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
                                                                                                                                   (coe
                                                                                                                                      v0)
                                                                                                                                   (coe
                                                                                                                                      v1)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3494)
                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                                                                                                                                            (coe
                                                                                                                                               v3))))
                                                                                                                                   (coe
                                                                                                                                      v5))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
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
                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3130
                                                                                                                                   (coe
                                                                                                                                      v3))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3230
                                                                                                                                   (coe
                                                                                                                                      v0)
                                                                                                                                   (coe
                                                                                                                                      v5))))))
                                                                                                                    (coe
                                                                                                                       v6) in
                                                                                                          coe
                                                                                                            (case coe
                                                                                                                    v25 of
                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v26
                                                                                                                 -> case coe
                                                                                                                           v26 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                                        -> coe
                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   v27)
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''8759'_3174
                                                                                                                                   v15
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         v16)
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                         (coe
                                                                                                                                            v20)
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                            (coe
                                                                                                                                               v24)
                                                                                                                                            (coe
                                                                                                                                               v28))))))
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
                                                                                                                 -> coe
                                                                                                                      v25
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                              else coe
                                                                                                     seq
                                                                                                     (coe
                                                                                                        v23)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                        (coe
                                                                                                           ("LEDGERSWithLimits: accumulated ExUnits exceed the limit"
                                                                                                            ::
                                                                                                            Data.Text.Text)))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else coe
                                                                             seq (coe v19)
                                                                             (coe
                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                (coe
                                                                                   ("LEDGERSWithLimits: accumulated reference script size exceeds the limit"
                                                                                    ::
                                                                                    Data.Text.Text)))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v14
                                                -> coe v13
                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             else (let v12
                                         = seq
                                             (coe v11)
                                             (coe
                                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                () erased () erased
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeSubledgers_4544
                                                   v0 v1
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_subΓ_4660
                                                      (coe v0) (coe v7) (coe v8) (coe v5))
                                                   v8
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                         (coe v5))))
                                                (\ v12 ->
                                                   case coe v12 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                       -> coe
                                                            MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeUtxow_4554
                                                               v0 v1
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_utxoΓ_4672
                                                                  (coe v0) (coe v7) (coe v8)
                                                                  (coe v5))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                  (coe v8))
                                                               v5)
                                                            (\ v15 ->
                                                               case coe v15 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                   -> coe
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_4020)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3968
                                                                                       (coe v8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3970
                                                                                       (coe v8)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_LEDGER'45'I_4220
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v14)
                                                                                    (coe v17)))))
                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)) in
                                   coe
                                     (case coe v12 of
                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v13
                                          -> case coe v13 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                 -> let v16
                                                          = coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                              (\ v16 ->
                                                                 coe
                                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2854
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
                                                                         (coe v0) (coe v1)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3494)
                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                                                                                  (coe v3))))
                                                                         (coe v5))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
                                                                          (coe v0) (coe v1)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3494)
                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                                                                                   (coe v3))))
                                                                          (coe v5))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3112
                                                                       (coe v2)))) in
                                                    coe
                                                      (case coe v16 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                           -> if coe v17
                                                                then case coe v18 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                         -> let v20
                                                                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                               (coe
                                                                                                  v0)))
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
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3130
                                                                                               (coe
                                                                                                  v3))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3230
                                                                                               (coe
                                                                                                  v0)
                                                                                               (coe
                                                                                                  v5)))
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3114
                                                                                            (coe
                                                                                               v2))) in
                                                                            coe
                                                                              (case coe v20 of
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                   -> if coe v21
                                                                                        then case coe
                                                                                                    v22 of
                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                                                 -> let v24
                                                                                                          = d_LEDGERSWithLimits'45'computeProof_3208
                                                                                                              (coe
                                                                                                                 v0)
                                                                                                              (coe
                                                                                                                 v1)
                                                                                                              (coe
                                                                                                                 v2)
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
                                                                                                                                               (3118 ::
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
                                                                                                                                               (2750 ::
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
                                                                                                                                                  (3118 ::
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
                                                                                                                                                     (3118 ::
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
                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3132)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       v14)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          addInt
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
                                                                                                                             (coe
                                                                                                                                v0)
                                                                                                                             (coe
                                                                                                                                v1)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3494)
                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3966
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                                                                                                                                      (coe
                                                                                                                                         v3))))
                                                                                                                             (coe
                                                                                                                                v5))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
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
                                                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3130
                                                                                                                             (coe
                                                                                                                                v3))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3230
                                                                                                                             (coe
                                                                                                                                v0)
                                                                                                                             (coe
                                                                                                                                v5))))))
                                                                                                              (coe
                                                                                                                 v6) in
                                                                                                    coe
                                                                                                      (case coe
                                                                                                              v24 of
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v25
                                                                                                           -> case coe
                                                                                                                     v25 of
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                                                  -> coe
                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             v26)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''8759'_3174
                                                                                                                             v14
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   v15)
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      v19)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         v23)
                                                                                                                                      (coe
                                                                                                                                         v27))))))
                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v25
                                                                                                           -> coe
                                                                                                                v24
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        else coe
                                                                                               seq
                                                                                               (coe
                                                                                                  v22)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                  (coe
                                                                                                     ("LEDGERSWithLimits: accumulated ExUnits exceed the limit"
                                                                                                      ::
                                                                                                      Data.Text.Text)))
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v18)
                                                                       (coe
                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                          (coe
                                                                             ("LEDGERSWithLimits: accumulated reference script size exceeds the limit"
                                                                              ::
                                                                              Data.Text.Text)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v13
                                          -> coe v12
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERSWithLimits-completeness
d_LEDGERSWithLimits'45'completeness_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3118 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3118 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3166 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGERSWithLimits'45'completeness_3366 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.Computational-LEDGERSWithLimits
d_Computational'45'LEDGERSWithLimits_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERSWithLimits_3532 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_LEDGERSWithLimits'45'computeProof_3208 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERS-computeProof
d_LEDGERS'45'computeProof_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_LEDGERS'45'computeProof_3542 v0 v1 v2 v3 v4
  = let v5
          = d_LEDGERSWithLimits'45'computeProof_3208
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
                                               (2750 :: Integer) (12019176378147150408 :: Integer)
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
                                                  (3118 :: Integer)
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
                                                     (3118 :: Integer)
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3132)))
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3126
                             (coe v7))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3128
                                (coe v7))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3130
                                   (coe v7))
                                (coe v8))))
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v6
           -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERS-completeness
d_LEDGERS'45'completeness_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGERS'45'completeness_3580 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.Computational-LEDGERS
d_Computational'45'LEDGERS_3614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_3614 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_LEDGERS'45'computeProof_3542 (coe v0) (coe v1))
