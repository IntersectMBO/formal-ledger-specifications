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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.GovActionID
d_GovActionID_236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_GovActionID_236 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2828 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2830 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._.HasCast-RatifyState
d_HasCast'45'RatifyState_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2834 ~v0 = du_HasCast'45'RatifyState_2834
du_HasCast'45'RatifyState_2834 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2834
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2022
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._.RatifyState
d_RatifyState_2862 a0 = ()
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._.acceptConds
d_acceptConds_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2872 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._.RatifyState.delay
d_delay_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  Bool
d_delay_2996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_1988
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._.RatifyState.es
d_es_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_es_2998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1984
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational._.RatifyState.removed
d_removed_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_3000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_1986
      (coe v0)
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Implementation.exp?
d_exp'63'_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_exp'63'_3078 v0 v1 ~v2 v3 = du_exp'63'_3078 v0 v1 v3
du_exp'63'_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_exp'63'_3078 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_expired'63'_2618
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_currentEpoch_1962
         (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Implementation.acceptConds?
d_acceptConds'63'_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptConds'63'_3084 v0 v1 v2 ~v3 v4
  = du_acceptConds'63'_3084 v0 v1 v2 v4
du_acceptConds'63'_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptConds'63'_3084 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_accepted'63'_2606
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1984
            (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delayed'63'_2494
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1026
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1984
                  (coe v2))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_1988
                  (coe v2)))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
               (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'8658'Dec''_696
            (coe
               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasCast'45'EnactEnv_1280)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_treasury_1968
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_currentEpoch_1962
                        (coe v1)))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1984
               (coe v2))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.Properties.Computational.d_Computational'45'ENACT_1336
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Implementation.RATIFY-total
d_RATIFY'45'total_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total_3088 v0 v1 v2 v3
  = let v4
          = coe
              du_acceptConds'63'_3084 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_expired'63'_2618
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                    (coe v0))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_currentEpoch_1962
                    (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)) in
       coe
         (case coe v4 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
              -> if coe v6
                   then case coe v7 of
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                            -> case coe v8 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                   -> case coe v10 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> coe
                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2022)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (let v15
                                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe v15))
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                                        (coe
                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                        v3)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_1986
                                                                        (coe v2))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_delayingAction_2382
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1094
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266)
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v3))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_RATIFY'45'Accept_2648
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v8) (coe v14)))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError
                   else coe
                          seq (coe v7)
                          (case coe v5 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                               -> if coe v8
                                    then case coe v9 of
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                             -> coe
                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2022)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1984
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (let v11
                                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du__'8746'__708
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe v11))
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                                    (coe
                                                                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                    v3)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_1986
                                                                    (coe v2))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_1988
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_RATIFY'45'Reject_2656
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        erased (coe v10)))
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    else coe
                                           seq (coe v9)
                                           (coe
                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2022)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1984
                                                       (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_1986
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_1988
                                                          (coe v2)))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_RATIFY'45'Continue_2664
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased erased)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Implementation.computeProof
d_computeProof_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3106 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
      (coe d_RATIFY'45'total_3088 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Implementation.RATIFY-completeness
d_RATIFY'45'completeness_3110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2636 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'completeness_3110 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Implementation.completeness
d_completeness_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2636 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3168 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Computational-RATIFY
d_Computational'45'RATIFY_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_3170 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3106 (coe v0))
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.Computational-RATIFIES
d_Computational'45'RATIFIES_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_3172 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
      (coe d_Computational'45'RATIFY_3170 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.RATIFIES-total
d_RATIFIES'45'total_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_3182 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.STS.du_ReflexiveTransitiveClosure'45'total_152
      (coe
         (\ v4 v5 v6 ->
            d_RATIFY'45'total_3088 (coe v0) (coe v4) (coe v5) (coe v6)))
      (coe v1) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.RATIFIES-complete
d_RATIFIES'45'complete_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_3192 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.RATIFIES-total'
d_RATIFIES'45'total''_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_3202 v0 v1 v2 v3
  = coe d_RATIFIES'45'total_3182 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.RATIFIES-complete'
d_RATIFIES'45'complete''_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_3212 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.RATIFIES-deterministic
d_RATIFIES'45'deterministic_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_3224 = erased
-- Ledger.Dijkstra.Specification.Ratify.Properties.Computational.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1944 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1976 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_3246 = erased
