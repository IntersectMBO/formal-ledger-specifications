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

module MAlonzo.Code.Ledger.Ratify.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.GovernanceActions.Properties
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Ratify.Properties._._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__1734 a0 a1 a2 a3 a4
  = ()
-- Ledger.Ratify.Properties._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1736 = erased
-- Ledger.Ratify.Properties._.RatifyState
d_RatifyState_1756 a0 = ()
-- Ledger.Ratify.Properties._.acceptConds
d_acceptConds_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_1760 = erased
-- Ledger.Ratify.Properties.Implementation.exp?
d_exp'63'_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_exp'63'_1918 v0 v1 ~v2 v3 = du_exp'63'_1918 v0 v1 v3
du_exp'63'_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_exp'63'_1918 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Ratify.d_expired'63'_2494 (coe v0)
      (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1840 (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
-- Ledger.Ratify.Properties.Implementation.acceptConds?
d_acceptConds'63'_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptConds'63'_1924 v0 v1 v2 ~v3 v4
  = du_acceptConds'63'_1924 v0 v1 v2 v4
du_acceptConds'63'_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptConds'63'_1924 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
      (coe
         MAlonzo.Code.Ledger.Ratify.d_accepted'63'_2478 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Ratify.d_es_1856 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
            (coe
               MAlonzo.Code.Ledger.Ratify.d_delayed'63'_2434 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.GovernanceActions.d_action_752
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_754
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe MAlonzo.Code.Ledger.Ratify.d_es_1856 (coe v2))
               (coe MAlonzo.Code.Ledger.Ratify.d_delay_1860 (coe v2)))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
               (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'8658'Dec''_696
            (coe
               MAlonzo.Code.Ledger.Enact.C_'10214'_'44'_'44'_'10215''7497'_782
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
               (coe MAlonzo.Code.Ledger.Ratify.d_treasury_1846 (coe v1))
               (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1840 (coe v1)))
            (coe MAlonzo.Code.Ledger.Ratify.d_es_1856 (coe v2))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.d_action_752
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.Properties.d_Computational'45'ENACT_854
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))))
-- Ledger.Ratify.Properties.Implementation.RATIFY'-total
d_RATIFY'''45'total_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'''45'total_1928 v0 v1 v2 v3
  = let v4
          = coe
              du_acceptConds'63'_1924 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Ledger.Ratify.d_expired'63'_2494
                 (coe v0)
                 (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1840 (coe v1))
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
                                                         MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1862
                                                         (coe v13)
                                                         (let v15
                                                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                  (coe v15))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                  erased v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ratify.d_removed_1858
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ratify.du_delayingAction_2320
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.d_action_752
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v3)))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Accept_2550
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
                                                     MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1862
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_es_1856
                                                        (coe v2))
                                                     (let v11
                                                            = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                                                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              erased v3)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Ratify.d_removed_1858
                                                              (coe v2))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_delay_1860
                                                        (coe v2)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Reject_2576
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        erased (coe v10)))
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    else coe
                                           seq (coe v9)
                                           (coe
                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                              (coe v2)
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Continue_2602
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased erased)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Ratify.Properties.Implementation.computeProof
d_computeProof_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1946 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
      (coe d_RATIFY'''45'total_1928 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Ratify.Properties.Implementation.RATIFY'-completeness
d_RATIFY'''45'completeness_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Ledger.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2510 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'''45'completeness_1950 = erased
-- Ledger.Ratify.Properties.Implementation.completeness
d_completeness_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Ledger.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2510 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2008 = erased
-- Ledger.Ratify.Properties.Computational-RATIFY'
d_Computational'45'RATIFY''_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY''_2010 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1946 (coe v0))
-- Ledger.Ratify.Properties.Computational-RATIFY
d_Computational'45'RATIFY_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_2012 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'RATIFY''_2010 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_82995
         (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_82995
         (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Ratify.Properties.RATIFY-total
d_RATIFY'45'total_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total_2022 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.STS.du_ReflexiveTransitiveClosure'45'total_126
      (coe
         (\ v4 v5 v6 ->
            d_RATIFY'''45'total_1928 (coe v0) (coe v4) (coe v5) (coe v6)))
      (coe v1) (coe v2) (coe v3)
-- Ledger.Ratify.Properties.RATIFY-complete
d_RATIFY'45'complete_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'complete_2032 = erased
-- Ledger.Ratify.Properties.RATIFY-total'
d_RATIFY'45'total''_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total''_2042 v0 v1 v2 v3
  = coe d_RATIFY'45'total_2022 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Ratify.Properties.RATIFY-complete'
d_RATIFY'45'complete''_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'complete''_2052 = erased
