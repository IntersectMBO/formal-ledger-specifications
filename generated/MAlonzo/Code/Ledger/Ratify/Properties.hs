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
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Ratify.Properties._._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__1652 a0 a1 a2 a3 a4
  = ()
-- Ledger.Ratify.Properties._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1654 = erased
-- Ledger.Ratify.Properties._.RatifyState
d_RatifyState_1674 a0 = ()
-- Ledger.Ratify.Properties._.acceptConds
d_acceptConds_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_1678 = erased
-- Ledger.Ratify.Properties._.RatifyState.delay
d_delay_1752 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 -> Bool
d_delay_1752 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_1996 (coe v0)
-- Ledger.Ratify.Properties._.RatifyState.es
d_es_1754 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_1754 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_1992 (coe v0)
-- Ledger.Ratify.Properties._.RatifyState.removed
d_removed_1756 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1756 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_1994 (coe v0)
-- Ledger.Ratify.Properties.Implementation.exp?
d_exp'63'_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_exp'63'_1828 v0 v1 ~v2 v3 = du_exp'63'_1828 v0 v1 v3
du_exp'63'_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_exp'63'_1828 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Ratify.d_expired'63'_2542 (coe v0)
      (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1972 (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
-- Ledger.Ratify.Properties.Implementation.acceptConds?
d_acceptConds'63'_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptConds'63'_1834 v0 v1 v2 ~v3 v4
  = du_acceptConds'63'_1834 v0 v1 v2 v4
du_acceptConds'63'_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptConds'63'_1834 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Ledger.Ratify.d_accepted'63'_2526 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Ratify.d_es_1992 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
            (coe
               MAlonzo.Code.Ledger.Ratify.d_delayed'63'_2482 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.GovernanceActions.d_action_794
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe MAlonzo.Code.Ledger.Ratify.d_es_1992 (coe v2))
               (coe MAlonzo.Code.Ledger.Ratify.d_delay_1996 (coe v2)))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
               (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'8658'Dec''_696
            (coe
               MAlonzo.Code.Ledger.Enact.C_'10214'_'44'_'44'_'10215''7497'_824
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
               (coe MAlonzo.Code.Ledger.Ratify.d_treasury_1978 (coe v1))
               (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1972 (coe v1)))
            (coe MAlonzo.Code.Ledger.Ratify.d_es_1992 (coe v2))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.d_action_794
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.Properties.d_Computational'45'ENACT_896
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0)))))
-- Ledger.Ratify.Properties.Implementation.RATIFY'-total
d_RATIFY'''45'total_1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'''45'total_1838 v0 v1 v2 v3
  = let v4
          = coe
              du_acceptConds'63'_1834 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Ledger.Ratify.d_expired'63'_2542
                 (coe v0)
                 (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1972 (coe v1))
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
                                                         MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1998
                                                         (coe v13)
                                                         (let v15
                                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                  (coe v15))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  erased v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ratify.du_delayingAction_2364
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.d_action_794
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v3)))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Accept_2602
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
                                                     MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1998
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_es_1992
                                                        (coe v2))
                                                     (let v11
                                                            = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              erased v3)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                              (coe v2))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_delay_1996
                                                        (coe v2)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Reject_2632
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
                                                 MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Continue_2662
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased erased)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Ratify.Properties.Implementation.computeProof
d_computeProof_1856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1856 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
      (coe d_RATIFY'''45'total_1838 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Ratify.Properties.Implementation.RATIFY'-completeness
d_RATIFY'''45'completeness_1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Ledger.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2558 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'''45'completeness_1860 = erased
-- Ledger.Ratify.Properties.Implementation.completeness
d_completeness_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Ledger.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2558 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1918 = erased
-- Ledger.Ratify.Properties.Computational-RATIFY'
d_Computational'45'RATIFY''_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY''_1920 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1856 (coe v0))
-- Ledger.Ratify.Properties.Computational-RATIFY
d_Computational'45'RATIFY_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_1922 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'RATIFY''_1920 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
-- Ledger.Ratify.Properties.RATIFY-total
d_RATIFY'45'total_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total_1932 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.STS.du_ReflexiveTransitiveClosure'45'total_148
      (coe
         (\ v4 v5 v6 ->
            d_RATIFY'''45'total_1838 (coe v0) (coe v4) (coe v5) (coe v6)))
      (coe v1) (coe v2) (coe v3)
-- Ledger.Ratify.Properties.RATIFY-complete
d_RATIFY'45'complete_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'complete_1942 = erased
-- Ledger.Ratify.Properties.RATIFY-total'
d_RATIFY'45'total''_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total''_1952 v0 v1 v2 v3
  = coe d_RATIFY'45'total_1932 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Ratify.Properties.RATIFY-complete'
d_RATIFY'45'complete''_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1954 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'complete''_1962 = erased
