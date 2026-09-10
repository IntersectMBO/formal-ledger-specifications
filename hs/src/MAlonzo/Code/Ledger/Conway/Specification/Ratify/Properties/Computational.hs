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

module MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.GovActionID
d_GovActionID_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_204 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__2252 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2254 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Ratify.Properties.Computational._.HasCast-RatifyState
d_HasCast'45'RatifyState_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_2258 ~v0 = du_HasCast'45'RatifyState_2258
du_HasCast'45'RatifyState_2258 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_2258
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1944
-- Ledger.Conway.Specification.Ratify.Properties.Computational._.RatifyState
d_RatifyState_2286 a0 = ()
-- Ledger.Conway.Specification.Ratify.Properties.Computational._.acceptConds
d_acceptConds_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_2296 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational._.RatifyState.delay
d_delay_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  Bool
d_delay_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1910
      (coe v0)
-- Ledger.Conway.Specification.Ratify.Properties.Computational._.RatifyState.es
d_es_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
d_es_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1906 (coe v0)
-- Ledger.Conway.Specification.Ratify.Properties.Computational._.RatifyState.removed
d_removed_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1908
      (coe v0)
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Implementation.exp?
d_exp'63'_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_exp'63'_2500 v0 v1 ~v2 v3 = du_exp'63'_2500 v0 v1 v3
du_exp'63'_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_exp'63'_2500 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2532
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1884
         (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Implementation.acceptConds?
d_acceptConds'63'_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptConds'63'_2506 v0 v1 v2 ~v3 v4
  = du_acceptConds'63'_2506 v0 v1 v2 v4
du_acceptConds'63'_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptConds'63'_2506 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2520
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
            (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1906 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2408
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_894
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1148
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1150
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1906 (coe v2))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1910
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
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1232)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1890
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1884
                        (coe v1)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1906 (coe v2))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1148
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.Computational.d_Computational'45'ENACT_1288
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                  (coe v0)))))
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Implementation.RATIFY-total
d_RATIFY'45'total_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total_2510 v0 v1 v2 v3
  = let v4
          = coe
              du_acceptConds'63'_2506 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2532
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2666
                    (coe v0))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1884
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1944)
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
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1908
                                                                        (coe v2))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2298
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_894
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_908
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1222)
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v3))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_RATIFY'45'Accept_2562
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1944)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1906
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1908
                                                                    (coe v2))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1910
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_RATIFY'45'Reject_2570
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1944)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1906
                                                       (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1908
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1910
                                                          (coe v2)))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_RATIFY'45'Continue_2578
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased erased)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Implementation.computeProof
d_computeProof_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2528 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
      (coe d_RATIFY'45'total_2510 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Implementation.RATIFY-completeness
d_RATIFY'45'completeness_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2550 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'completeness_2532 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Implementation.completeness
d_completeness_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2550 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2590 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Computational-RATIFY
d_Computational'45'RATIFY_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_2592 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2528 (coe v0))
-- Ledger.Conway.Specification.Ratify.Properties.Computational.Computational-RATIFIES
d_Computational'45'RATIFIES_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_2594 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
      (coe d_Computational'45'RATIFY_2592 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
-- Ledger.Conway.Specification.Ratify.Properties.Computational.RATIFIES-total
d_RATIFIES'45'total_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_2604 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.STS.du_ReflexiveTransitiveClosure'45'total_170
      (coe
         (\ v4 v5 v6 ->
            d_RATIFY'45'total_2510 (coe v0) (coe v4) (coe v5) (coe v6)))
      (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify.Properties.Computational.RATIFIES-complete
d_RATIFIES'45'complete_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_2614 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational.RATIFIES-total'
d_RATIFIES'45'total''_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_2624 v0 v1 v2 v3
  = coe d_RATIFIES'45'total_2604 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify.Properties.Computational.RATIFIES-complete'
d_RATIFIES'45'complete''_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_2634 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational.RATIFIES-deterministic
d_RATIFIES'45'deterministic_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_2646 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1866 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1898 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_2668 = erased
