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

module MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.List.Relation.Binary.Permutation.Propositional._↭_
d__'8621'__16 a0 a1 a2 a3 = ()
data T__'8621'__16
  = C_refl_20 | C_prep_28 T__'8621'__16 | C_swap_38 T__'8621'__16 |
    C_trans_46 [AgdaAny] T__'8621'__16 T__'8621'__16
-- Data.List.Relation.Binary.Permutation.Propositional.↭-reflexive
d_'8621''45'reflexive_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T__'8621'__16
d_'8621''45'reflexive_48 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'8621''45'reflexive_48
du_'8621''45'reflexive_48 :: T__'8621'__16
du_'8621''45'reflexive_48 = coe C_refl_20
-- Data.List.Relation.Binary.Permutation.Propositional.↭-refl
d_'8621''45'refl_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> T__'8621'__16
d_'8621''45'refl_50 ~v0 ~v1 ~v2 = du_'8621''45'refl_50
du_'8621''45'refl_50 :: T__'8621'__16
du_'8621''45'refl_50 = coe C_refl_20
-- Data.List.Relation.Binary.Permutation.Propositional.↭-sym
d_'8621''45'sym_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> T__'8621'__16 -> T__'8621'__16
d_'8621''45'sym_56 ~v0 ~v1 v2 v3 v4 = du_'8621''45'sym_56 v2 v3 v4
du_'8621''45'sym_56 ::
  [AgdaAny] -> [AgdaAny] -> T__'8621'__16 -> T__'8621'__16
du_'8621''45'sym_56 v0 v1 v2
  = case coe v2 of
      C_refl_20 -> coe C_refl_20
      C_prep_28 v6
        -> case coe v0 of
             (:) v7 v8
               -> case coe v1 of
                    (:) v9 v10
                      -> coe
                           C_prep_28 (coe du_'8621''45'sym_56 (coe v8) (coe v10) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C_swap_38 v7
        -> case coe v0 of
             (:) v8 v9
               -> case coe v9 of
                    (:) v10 v11
                      -> case coe v1 of
                           (:) v12 v13
                             -> case coe v13 of
                                  (:) v14 v15
                                    -> coe
                                         C_swap_38
                                         (coe du_'8621''45'sym_56 (coe v11) (coe v15) (coe v7))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C_trans_46 v4 v6 v7
        -> coe
             C_trans_46 v4 (coe du_'8621''45'sym_56 (coe v4) (coe v1) (coe v7))
             (coe du_'8621''45'sym_56 (coe v0) (coe v4) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.↭-trans
d_'8621''45'trans_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> T__'8621'__16 -> T__'8621'__16 -> T__'8621'__16
d_'8621''45'trans_72 ~v0 ~v1 v2 v3 ~v4 v5 v6
  = du_'8621''45'trans_72 v2 v3 v5 v6
du_'8621''45'trans_72 ::
  [AgdaAny] ->
  [AgdaAny] -> T__'8621'__16 -> T__'8621'__16 -> T__'8621'__16
du_'8621''45'trans_72 v0 v1 v2 v3
  = case coe v2 of
      C_refl_20 -> coe v3
      C_prep_28 v7
        -> let v8
                 = let v8 = coe C_trans_46 v1 (coe C_prep_28 v7) v3 in
                   coe
                     (case coe v3 of
                        C_refl_20 -> coe C_prep_28 v7
                        _ -> coe v8) in
           coe
             (case coe v0 of
                (:) v9 v10
                  -> let v11
                           = let v11 = coe C_trans_46 v1 (coe C_prep_28 v7) v3 in
                             coe
                               (case coe v3 of
                                  C_refl_20 -> coe C_prep_28 v7
                                  _ -> coe v11) in
                     coe
                       (case coe v1 of
                          (:) v12 v13
                            -> let v14 = coe C_trans_46 v1 (coe C_prep_28 v7) v3 in
                               coe
                                 (case coe v3 of
                                    C_refl_20 -> coe C_prep_28 v7
                                    _ -> coe v14)
                          _ -> coe v11)
                _ -> coe v8)
      C_swap_38 v8
        -> let v9
                 = let v9 = coe C_trans_46 v1 (coe C_swap_38 v8) v3 in
                   coe
                     (case coe v3 of
                        C_refl_20 -> coe C_swap_38 v8
                        _ -> coe v9) in
           coe
             (case coe v0 of
                (:) v10 v11
                  -> let v12
                           = let v12 = coe C_trans_46 v1 (coe C_swap_38 v8) v3 in
                             coe
                               (case coe v3 of
                                  C_refl_20 -> coe C_swap_38 v8
                                  _ -> coe v12) in
                     coe
                       (case coe v11 of
                          (:) v13 v14
                            -> let v15
                                     = let v15 = coe C_trans_46 v1 (coe C_swap_38 v8) v3 in
                                       coe
                                         (case coe v3 of
                                            C_refl_20 -> coe C_swap_38 v8
                                            _ -> coe v15) in
                               coe
                                 (case coe v1 of
                                    (:) v16 v17
                                      -> let v18
                                               = let v18
                                                       = coe C_trans_46 v1 (coe C_swap_38 v8) v3 in
                                                 coe
                                                   (case coe v3 of
                                                      C_refl_20 -> coe C_swap_38 v8
                                                      _ -> coe v18) in
                                         coe
                                           (case coe v17 of
                                              (:) v19 v20
                                                -> let v21
                                                         = coe
                                                             C_trans_46 v1 (coe C_swap_38 v8) v3 in
                                                   coe
                                                     (case coe v3 of
                                                        C_refl_20 -> coe C_swap_38 v8
                                                        _ -> coe v21)
                                              _ -> coe v18)
                                    _ -> coe v15)
                          _ -> coe v12)
                _ -> coe v9)
      C_trans_46 v5 v7 v8
        -> let v9 = coe C_trans_46 v1 (coe C_trans_46 v5 v7 v8) v3 in
           coe
             (case coe v3 of
                C_refl_20 -> coe C_trans_46 v5 v7 v8
                _ -> coe v9)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Permutation.Propositional.↭-isEquivalence
d_'8621''45'isEquivalence_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8621''45'isEquivalence_82 ~v0 ~v1
  = du_'8621''45'isEquivalence_82
du_'8621''45'isEquivalence_82 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'8621''45'isEquivalence_82
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_743
      (\ v0 -> coe C_refl_20) (coe du_'8621''45'sym_56)
      (\ v0 v1 v2 v3 v4 -> coe du_'8621''45'trans_72 v0 v1 v3 v4)
-- Data.List.Relation.Binary.Permutation.Propositional.↭-setoid
d_'8621''45'setoid_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8621''45'setoid_84 ~v0 ~v1 = du_'8621''45'setoid_84
du_'8621''45'setoid_84 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'8621''45'setoid_84
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_727
      (coe du_'8621''45'isEquivalence_82)
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base._IsRelatedTo_
d__IsRelatedTo__90 a0 a1 a2 a3 = ()
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base._∎
d__'8718'_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_92 ~v0 ~v1 = du__'8718'_92
du__'8718'_92 ::
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du__'8718'_92
  = let v0 = coe du_'8621''45'setoid_84 in
    coe
      (let v1
             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                    (coe v0)) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
               (coe v1))))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.begin_
d_begin__94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16
d_begin__94 ~v0 ~v1 = du_begin__94
du_begin__94 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16
du_begin__94
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.start
d_start_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16
d_start_98 ~v0 ~v1 = du_start_98
du_start_98 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16
du_start_98 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.step-≡
d_step'45''8801'_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_108 ~v0 ~v1 = du_step'45''8801'_108
du_step'45''8801'_108 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801'_108
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.step-≡-∣
d_step'45''8801''45''8739'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_110 ~v0 ~v1 ~v2 ~v3 v4
  = du_step'45''8801''45''8739'_110 v4
du_step'45''8801''45''8739'_110 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_110 v0 = coe v0
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.step-≡-⟨
d_step'45''8801''45''10216'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_112 ~v0 ~v1
  = du_step'45''8801''45''10216'_112
du_step'45''8801''45''10216'_112 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10216'_112
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.step-≡-⟩
d_step'45''8801''45''10217'_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_114 ~v0 ~v1
  = du_step'45''8801''45''10217'_114
du_step'45''8801''45''10217'_114 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10217'_114
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.step-≡˘
d_step'45''8801''728'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_116 ~v0 ~v1 = du_step'45''8801''728'_116
du_step'45''8801''728'_116 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''728'_116
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.stop
d_stop_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_118 ~v0 ~v1 = du_stop_118
du_stop_118 ::
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_stop_118
  = let v0 = coe du_'8621''45'setoid_84 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.∼-go
d_'8764''45'go_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_120 ~v0 ~v1 = du_'8764''45'go_120
du_'8764''45'go_120 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8764''45'go_120
  = let v0 = coe du_'8621''45'setoid_84 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.Base.≡-go
d_'8801''45'go_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8801''45'go_122 v6
du_'8801''45'go_122 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_122 v0 = coe v0
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning._.step-↭
d_step'45''8621'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8621'_130 ~v0 ~v1 = du_step'45''8621'_130
du_step'45''8621'_130 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8621'_130
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621'_420
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe du_'8621''45'isEquivalence_82)))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning._.step-↭-⟨
d_step'45''8621''45''10216'_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8621''45''10216'_132 ~v0 ~v1
  = du_step'45''8621''45''10216'_132
du_step'45''8621''45''10216'_132 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8621''45''10216'_132
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10216'_418
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe du_'8621''45'isEquivalence_82)))
      (coe du_'8621''45'sym_56)
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning._.step-↭-⟩
d_step'45''8621''45''10217'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8621''45''10217'_134 ~v0 ~v1
  = du_step'45''8621''45''10217'_134
du_step'45''8621''45''10217'_134 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8621''45''10217'_134
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe du_'8621''45'isEquivalence_82)))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning._.step-↭˘
d_step'45''8621''728'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8621''728'_136 ~v0 ~v1 = du_step'45''8621''728'_136
du_step'45''8621''728'_136 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8621''728'_136
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''728'_422
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe du_'8621''45'isEquivalence_82)))
      (coe du_'8621''45'sym_56)
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.step-prep
d_step'45'prep_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45'prep_146 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_step'45'prep_146 v2 v4 v5 v6 v7
du_step'45'prep_146 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45'prep_146 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C_relTo_34
      (coe
         C_trans_46
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
         (coe C_prep_28 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (\ v5 v6 v7 ->
               coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
            v2 v3))
-- Data.List.Relation.Binary.Permutation.Propositional.PermutationReasoning.step-swap
d_step'45'swap_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45'swap_166 ~v0 ~v1 v2 v3 ~v4 v5 v6 v7 v8
  = du_step'45'swap_166 v2 v3 v5 v6 v7 v8
du_step'45'swap_166 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  T__'8621'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45'swap_166 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C_relTo_34
      (coe
         C_trans_46
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2)))
         (coe C_swap_38 v5)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2)))
            v3 v4))
