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

module MAlonzo.Code.Ledger.Conway.Ratify.Properties where

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
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions.Properties
import qualified MAlonzo.Code.Ledger.Conway.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.GovActionID
d_GovActionID_156 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_GovActionID_156 = erased
-- Ledger.Conway.Ratify.Properties._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__1822 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__1822 = erased
-- Ledger.Conway.Ratify.Properties._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1824 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Ratify.Properties._.HasCast-RatifyState
d_HasCast'45'RatifyState_1828 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_1828 ~v0 = du_HasCast'45'RatifyState_1828
du_HasCast'45'RatifyState_1828 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_1828
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.du_HasCast'45'RatifyState_2304
-- Ledger.Conway.Ratify.Properties._.RatifyState
d_RatifyState_1850 a0 = ()
-- Ledger.Conway.Ratify.Properties._.acceptConds
d_acceptConds_1856 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_1856 = erased
-- Ledger.Conway.Ratify.Properties._.RatifyState.delay
d_delay_1932 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 -> Bool
d_delay_1932 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_delay_2264 (coe v0)
-- Ledger.Conway.Ratify.Properties._.RatifyState.es
d_es_1934 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_es_1934 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_es_2260 (coe v0)
-- Ledger.Conway.Ratify.Properties._.RatifyState.removed
d_removed_1936 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1936 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_removed_2262 (coe v0)
-- Ledger.Conway.Ratify.Properties.Implementation.exp?
d_exp'63'_2010 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_exp'63'_2010 v0 v1 ~v2 v3 = du_exp'63'_2010 v0 v1 v3
du_exp'63'_2010 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_exp'63'_2010 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.d_expired'63'_2822 (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Ratify.d_currentEpoch_2240 (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
-- Ledger.Conway.Ratify.Properties.Implementation.acceptConds?
d_acceptConds'63'_2016 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptConds'63'_2016 v0 v1 v2 ~v3 v4
  = du_acceptConds'63'_2016 v0 v1 v2 v4
du_acceptConds'63'_2016 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptConds'63'_2016 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Ledger.Conway.Ratify.d_accepted'63'_2806 (coe v0)
         (coe v1) (coe MAlonzo.Code.Ledger.Conway.Ratify.d_es_2260 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
            (coe
               MAlonzo.Code.Ledger.Conway.Ratify.d_delayed'63'_2762 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_806
                  (coe
                     MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_898
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
               (coe
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_900
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe MAlonzo.Code.Ledger.Conway.Ratify.d_es_2260 (coe v2))
               (coe MAlonzo.Code.Ledger.Conway.Ratify.d_delay_2264 (coe v2)))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
               (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'8658'Dec''_696
            (coe
               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
               (coe MAlonzo.Code.Ledger.Conway.Enact.du_HasCast'45'EnactEnv_986)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe MAlonzo.Code.Ledger.Conway.Ratify.d_treasury_2246 (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Ratify.d_currentEpoch_2240 (coe v1)))))
            (coe MAlonzo.Code.Ledger.Conway.Ratify.d_es_2260 (coe v2))
            (coe
               MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_898
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.GovernanceActions.Properties.d_Computational'45'ENACT_1026
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                  (coe v0)))))
-- Ledger.Conway.Ratify.Properties.Implementation.RATIFY-total
d_RATIFY'45'total_2020 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total_2020 v0 v1 v2 v3
  = let v4
          = coe
              du_acceptConds'63'_2016 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Ledger.Conway.Ratify.d_expired'63'_2822
                 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Ratify.d_currentEpoch_2240 (coe v1))
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
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Ratify.du_HasCast'45'RatifyState_2304)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (let v15
                                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                        (coe v15))
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                        (coe
                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                        v3)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Ratify.d_removed_2262
                                                                        (coe v2))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Ratify.du_delayingAction_2652
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_806
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_898
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v3))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Ratify.C_RATIFY'45'Accept_2854
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
                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Ratify.du_HasCast'45'RatifyState_2304)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Ratify.d_es_2260
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (let v11
                                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe v11))
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                    (coe
                                                                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                    v3)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Ratify.d_removed_2262
                                                                    (coe v2))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Ratify.d_delay_2264
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Ratify.C_RATIFY'45'Reject_2862
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        erased (coe v10)))
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    else coe
                                           seq (coe v9)
                                           (coe
                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                              (coe
                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Ratify.du_HasCast'45'RatifyState_2304)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Ratify.d_es_2260
                                                       (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Ratify.d_removed_2262
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Ratify.d_delay_2264
                                                          (coe v2)))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Ratify.C_RATIFY'45'Continue_2870
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased erased)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Ratify.Properties.Implementation.computeProof
d_computeProof_2038 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2038 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
      (coe d_RATIFY'45'total_2020 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Ratify.Properties.Implementation.RATIFY-completeness
d_RATIFY'45'completeness_2042 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2840 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'completeness_2042 = erased
-- Ledger.Conway.Ratify.Properties.Implementation.completeness
d_completeness_2100 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2840 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2100 = erased
-- Ledger.Conway.Ratify.Properties.Computational-RATIFY
d_Computational'45'RATIFY_2102 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_2102 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2038 (coe v0))
-- Ledger.Conway.Ratify.Properties.Computational-RATIFIES
d_Computational'45'RATIFIES_2104 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_2104 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'RATIFY_2102 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
-- Ledger.Conway.Ratify.Properties.RATIFIES-total
d_RATIFIES'45'total_2114 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_2114 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.STS.du_ReflexiveTransitiveClosure'45'total_118
      (coe
         (\ v4 v5 v6 ->
            d_RATIFY'45'total_2020 (coe v0) (coe v4) (coe v5) (coe v6)))
      (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Ratify.Properties.RATIFIES-complete
d_RATIFIES'45'complete_2124 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_2124 = erased
-- Ledger.Conway.Ratify.Properties.RATIFIES-total'
d_RATIFIES'45'total''_2134 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_2134 v0 v1 v2 v3
  = coe d_RATIFIES'45'total_2114 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Ratify.Properties.RATIFIES-complete'
d_RATIFIES'45'complete''_2144 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2222 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2252 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_2144 = erased
