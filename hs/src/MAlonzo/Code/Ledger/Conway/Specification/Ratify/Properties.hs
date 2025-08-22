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

module MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.GovActionID
d_GovActionID_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_162 = erased
-- Ledger.Conway.Specification.Ratify.Properties._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__1804 = erased
-- Ledger.Conway.Specification.Ratify.Properties._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1806 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Ratify.Properties._.HasCast-RatifyState
d_HasCast'45'RatifyState_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_1810 ~v0 = du_HasCast'45'RatifyState_1810
du_HasCast'45'RatifyState_1810 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_1810
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2320
-- Ledger.Conway.Specification.Ratify.Properties._.RatifyState
d_RatifyState_1832 a0 = ()
-- Ledger.Conway.Specification.Ratify.Properties._.acceptConds
d_acceptConds_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_1838 = erased
-- Ledger.Conway.Specification.Ratify.Properties._.RatifyState.delay
d_delay_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  Bool
d_delay_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2280
      (coe v0)
-- Ledger.Conway.Specification.Ratify.Properties._.RatifyState.es
d_es_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_934
d_es_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2276 (coe v0)
-- Ledger.Conway.Specification.Ratify.Properties._.RatifyState.removed
d_removed_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2278
      (coe v0)
-- Ledger.Conway.Specification.Ratify.Properties.Implementation.exp?
d_exp'63'_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_exp'63'_1992 v0 v1 ~v2 v3 = du_exp'63'_1992 v0 v1 v3
du_exp'63'_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_exp'63'_1992 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2838
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2256
         (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
-- Ledger.Conway.Specification.Ratify.Properties.Implementation.acceptConds?
d_acceptConds'63'_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptConds'63'_1998 v0 v1 v2 ~v3 v4
  = du_acceptConds'63'_1998 v0 v1 v2 v4
du_acceptConds'63'_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_acceptConds'63'_1998 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2822
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2276 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2778
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_800
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_892
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_894
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2276 (coe v2))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2280
                  (coe v2)))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
               (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         (coe
            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'8658'Dec''_696
            (coe
               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_978)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_2262
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2256
                        (coe v1)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2276 (coe v2))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_892
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.d_Computational'45'ENACT_1016
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2382
                  (coe v0)))))
-- Ledger.Conway.Specification.Ratify.Properties.Implementation.RATIFY-total
d_RATIFY'45'total_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total_2002 v0 v1 v2 v3
  = let v4
          = coe
              du_acceptConds'63'_1998 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2838
                 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2256
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
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2320)
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
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2278
                                                                        (coe v2))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2668
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_800
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_892
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v3))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_RATIFY'45'Accept_2870
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2320)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2276
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2278
                                                                    (coe v2))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2280
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_RATIFY'45'Reject_2878
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2320)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2276
                                                       (coe v2))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2278
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2280
                                                          (coe v2)))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_RATIFY'45'Continue_2886
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased erased)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Ratify.Properties.Implementation.computeProof
d_computeProof_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2020 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
      (coe d_RATIFY'45'total_2002 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Ratify.Properties.Implementation.RATIFY-completeness
d_RATIFY'45'completeness_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2856 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'completeness_2024 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Implementation.completeness
d_completeness_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'10632'__2856 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2082 = erased
-- Ledger.Conway.Specification.Ratify.Properties.Computational-RATIFY
d_Computational'45'RATIFY_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_2084 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2020 (coe v0))
-- Ledger.Conway.Specification.Ratify.Properties.Computational-RATIFIES
d_Computational'45'RATIFIES_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_2086 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'RATIFY_2084 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
-- Ledger.Conway.Specification.Ratify.Properties.RATIFIES-total
d_RATIFIES'45'total_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_2096 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.STS.du_ReflexiveTransitiveClosure'45'total_118
      (coe
         (\ v4 v5 v6 ->
            d_RATIFY'45'total_2002 (coe v0) (coe v4) (coe v5) (coe v6)))
      (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify.Properties.RATIFIES-complete
d_RATIFIES'45'complete_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_2106 = erased
-- Ledger.Conway.Specification.Ratify.Properties.RATIFIES-total'
d_RATIFIES'45'total''_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_2116 v0 v1 v2 v3
  = coe d_RATIFIES'45'total_2096 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Ratify.Properties.RATIFIES-complete'
d_RATIFIES'45'complete''_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_2126 = erased
-- Ledger.Conway.Specification.Ratify.Properties.RATIFIES-deterministic
d_RATIFIES'45'deterministic_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_2138 = erased
-- Ledger.Conway.Specification.Ratify.Properties.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2238 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2268 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_2160 = erased
