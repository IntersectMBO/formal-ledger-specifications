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
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2938 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState
d_LedgerState_3004 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.certState
d_certState_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_certState_3058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3948
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.govSt
d_govSt_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3946
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3316
d_utxoSt_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._._⊢_⇀⦇_,LEDGERSWithLimits⦈_
d__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3094 a0 a1 a2
                                                           a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3096 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv
d_LedgersEnv_3106 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState
d_LedgersWithLimitsState_3110 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.exUnitsLimit
d_exUnitsLimit_3122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  AgdaAny
d_exUnitsLimit_3122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.ledgerEnv
d_ledgerEnv_3124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896
d_ledgerEnv_3124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerEnv_3088
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersEnv.refScriptsSizeLimit
d_refScriptsSizeLimit_3126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  Integer
d_refScriptsSizeLimit_3126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3090
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.exUnitsAcc
d_exUnitsAcc_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3096 ->
  AgdaAny
d_exUnitsAcc_3130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3108
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.ledgerState
d_ledgerState_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936
d_ledgerState_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.LedgersWithLimitsState.refScriptsSizeAcc
d_refScriptsSizeAcc_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3096 ->
  Integer
d_refScriptsSizeAcc_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.completeness
d_completeness_3140 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3140 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational._.computeProof
d_computeProof_3146 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3146 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.computeLedger
d_computeLedger_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeLedger_3166 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeProof_4492
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.completeLedger
d_completeLedger_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__4156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeLedger_3176 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERSWithLimits-computeProof
d_LEDGERSWithLimits'45'computeProof_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3096 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_LEDGERSWithLimits'45'computeProof_3186 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''91''93'_3146))
      (:) v5 v6
        -> let v7
                 = MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerEnv_3088
                     (coe v2) in
           coe
             (let v8
                    = MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                        (coe v3) in
              coe
                (let v9
                       = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3892
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeSubledgers_4362
                                                      v0 v1
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_subΓ_4476
                                                         (coe v0) (coe v7) (coe v8) (coe v5))
                                                      v8
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3980
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3886
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_computeEntities_4382
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_entitiesΓ_4478
                                                                     (coe v0) (coe v7) (coe v8)
                                                                     (coe v5)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2140
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3976)
                                                                        v14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3978)
                                                                        v8))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1920
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCertState'45'LedgerState_3978)
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_computeGov_4392
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_govΓ_4484
                                                                                 (coe v0) (coe v7)
                                                                                 (coe v5) (coe v17))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.d_GovStateOf_2140
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGovState'45'LedgerState_3976)
                                                                                 v14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_GovProposals'43'Votes_4062
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
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeUtxow_4372
                                                                                          v0 v1
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_utxoΓ_4488
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v7)
                                                                                             (coe
                                                                                                v8)
                                                                                             (coe
                                                                                                v5))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTxOStateOf_3344
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxOState'45'LedgerState_3972)
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
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3998)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v23)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_rmOrphanDRepVotes_4066
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     v17)
                                                                                                                  (coe
                                                                                                                     v20))
                                                                                                               (coe
                                                                                                                  v17))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_LEDGER'45'V_4166
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
                                                                                                            (coe
                                                                                                               v14))
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3946
                                                                                                            (coe
                                                                                                               v14))
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3948
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
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
                                                                               (coe v0) (coe v1)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3856
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3476)
                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                                                                                        (coe v3))))
                                                                               (coe v5))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
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
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
                                                                                (coe v0) (coe v1)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3856
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3476)
                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                                                                                         (coe v3))))
                                                                                (coe v5))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
                                                                                (coe v3)))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3090
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
                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3108
                                                                                                     (coe
                                                                                                        v3))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3226
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        v5)))
                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3092
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
                                                                                                                = d_LEDGERSWithLimits'45'computeProof_3186
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
                                                                                                                                                     (3096 ::
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
                                                                                                                                                        (3096 ::
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
                                                                                                                                                           (3096 ::
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
                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3110)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             v15)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                addInt
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
                                                                                                                                   (coe
                                                                                                                                      v0)
                                                                                                                                   (coe
                                                                                                                                      v1)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3856
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3476)
                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                                                                                                                                            (coe
                                                                                                                                               v3))))
                                                                                                                                   (coe
                                                                                                                                      v5))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
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
                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3108
                                                                                                                                   (coe
                                                                                                                                      v3))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3226
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
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''8759'_3152
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeSubledgers_4362
                                                   v0 v1
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_subΓ_4476
                                                      (coe v0) (coe v7) (coe v8) (coe v5))
                                                   v8
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3980
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3886
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_computeUtxow_4372
                                                               v0 v1
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.du_utxoΓ_4488
                                                                  (coe v0) (coe v7) (coe v8)
                                                                  (coe v5))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3998)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3946
                                                                                       (coe v8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3948
                                                                                       (coe v8)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_LEDGER'45'I_4176
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
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
                                                                         (coe v0) (coe v1)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3856
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3476)
                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                                                                                  (coe v3))))
                                                                         (coe v5))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
                                                                          (coe v0) (coe v1)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3856
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3476)
                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                                                                                   (coe v3))))
                                                                          (coe v5))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeLimit_3090
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
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3108
                                                                                               (coe
                                                                                                  v3))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3226
                                                                                               (coe
                                                                                                  v0)
                                                                                               (coe
                                                                                                  v5)))
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsLimit_3092
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
                                                                                                          = d_LEDGERSWithLimits'45'computeProof_3186
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
                                                                                                                                               (3096 ::
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
                                                                                                                                                  (3096 ::
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
                                                                                                                                                     (3096 ::
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
                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3110)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       v14)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          addInt
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
                                                                                                                             (coe
                                                                                                                                v0)
                                                                                                                             (coe
                                                                                                                                v1)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3856
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasUTxO'45'UTxOState_3476)
                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                                                                                                                                      (coe
                                                                                                                                         v3))))
                                                                                                                             (coe
                                                                                                                                v5))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
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
                                                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3108
                                                                                                                             (coe
                                                                                                                                v3))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3226
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
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_LEDGERSWithLimits'45''8759'_3152
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
d_LEDGERSWithLimits'45'completeness_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3096 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersWithLimitsState_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T__'8866'_'8640''10631'_'44'LEDGERSWithLimits'10632'__3144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGERSWithLimits'45'completeness_3344 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.Computational-LEDGERSWithLimits
d_Computational'45'LEDGERSWithLimits_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERSWithLimits_3510 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_LEDGERSWithLimits'45'computeProof_3186 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERS-computeProof
d_LEDGERS'45'computeProof_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_LEDGERS'45'computeProof_3520 v0 v1 v2 v3 v4
  = let v5
          = d_LEDGERSWithLimits'45'computeProof_3186
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
                                               (3096 :: Integer) (12019176378147150408 :: Integer)
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
                                                  (3096 :: Integer)
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
                                                     (3096 :: Integer)
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
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3110)))
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_ledgerState_3104
                             (coe v7))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_refScriptsSizeAcc_3106
                                (coe v7))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.d_exUnitsAcc_3108
                                   (coe v7))
                                (coe v8))))
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v6
           -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.LEDGERS-completeness
d_LEDGERS'45'completeness_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.T_LedgersEnv_3080 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGERS'45'completeness_3558 = erased
-- Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.Computational-LEDGERS
d_Computational'45'LEDGERS_3592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_3592 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_LEDGERS'45'computeProof_3520 (coe v0) (coe v1))
