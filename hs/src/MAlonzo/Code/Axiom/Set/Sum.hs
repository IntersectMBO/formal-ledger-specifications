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

module MAlonzo.Code.Axiom.Set.Sum where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Properties.CommutativeSemigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Factor
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Axiom.Set.Sum._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0) v2 v3
-- Axiom.Set.Sum._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Sum._.FinSet
d_FinSet_32 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> ()
d_FinSet_32 = erased
-- Axiom.Set.Sum._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Sum._.finite
d_finite_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Sum._.spec-∈
d_spec'45''8712'_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> ()
d_spec'45''8712'_78 = erased
-- Axiom.Set.Sum._.∅
d_'8709'_92 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny
d_'8709'_92 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0)
-- Axiom.Set.Sum._.❴_❵
d_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_124 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 (coe v0)
-- Axiom.Set.Sum._._ᶠ
d__'7584'_138 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_138 ~v0 = du__'7584'_138
du__'7584'_138 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584'_138 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_320 v1 v2
-- Axiom.Set.Sum._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_140 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_330
      (coe v0) v2 v3 v4 v5
-- Axiom.Set.Sum._._≡_⨿_
d__'8801'_'10815'__170 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__170 = erased
-- Axiom.Set.Sum._.singleton-finite
d_singleton'45'finite_232 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_232 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_716
      (coe v0) v2
-- Axiom.Set.Sum._.∅-finite
d_'8709''45'finite_242 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_242 ~v0 = du_'8709''45'finite_242
du_'8709''45'finite_242 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'finite_242 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438
-- Axiom.Set.Sum._.Rel
d_Rel_354 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> ()
d_Rel_354 = erased
-- Axiom.Set.Sum._.dom
d_dom_358 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_358 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_346 (coe v0)
-- Axiom.Set.Sum._.FinMap
d_FinMap_492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> ()
d_FinMap_492 = erased
-- Axiom.Set.Sum._.toRel
d_toRel_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_564 ~v0 = du_toRel_564
du_toRel_564 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_564 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_634 v2
-- Axiom.Set.Sum._.Unionᵐ._∪ˡ'_
d__'8746''737'''__652 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__652 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__980 (coe v0) v2 v4 v5
-- Axiom.Set.Sum.M-Reasoning._._∙_
d__'8729'__674 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__674 ~v0 ~v1 v2 = du__'8729'__674 v2
du__'8729'__674 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__674 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
-- Axiom.Set.Sum.M-Reasoning._._≈_
d__'8776'__676 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__676 = erased
-- Axiom.Set.Sum.M-Reasoning._.ε
d_ε_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
d_ε_734 ~v0 ~v1 v2 = du_ε_734 v2
du_ε_734 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
du_ε_734 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0))
-- Axiom.Set.Sum._._._∙_
d__'8729'__816 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__816 ~v0 ~v1 v2 = du__'8729'__816 v2
du__'8729'__816 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__816 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
-- Axiom.Set.Sum._._._≈_
d__'8776'__818 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__818 = erased
-- Axiom.Set.Sum._._.ε
d_ε_902 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
d_ε_902 ~v0 ~v1 v2 = du_ε_902 v2
du_ε_902 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
du_ε_902 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0))
-- Axiom.Set.Sum._.indexedSumL
d_indexedSumL_920 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_920 ~v0 ~v1 v2 ~v3 v4 = du_indexedSumL_920 v2 v4
du_indexedSumL_920 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSumL_920 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_216
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
              (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
              (coe v1 v2)))
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
-- Axiom.Set.Sum._.indexedSumL'
d_indexedSumL''_928 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_928 ~v0 ~v1 v2 ~v3 v4 v5
  = du_indexedSumL''_928 v2 v4 v5
du_indexedSumL''_928 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSumL''_928 v0 v1 v2
  = coe
      du_indexedSumL_920 v0 v1
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
-- Axiom.Set.Sum._.fold-cong↭
d_fold'45'cong'8621'_944 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
  AgdaAny
d_fold'45'cong'8621'_944 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_fold'45'cong'8621'_944 v2 v4 v5 v6 v7
du_fold'45'cong'8621'_944 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
  AgdaAny
du_fold'45'cong'8621'_944 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_36
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v6 v7 v8 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_216
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                        (coe v1 v6)))
                (coe
                   MAlonzo.Code.Class.Monoid.Core.d_ε_20
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                (coe v2))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_216
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                        (coe v1 v6)))
                (coe
                   MAlonzo.Code.Class.Monoid.Core.d_ε_20
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                (coe v2))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_496
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                     (coe v0))))))))
                (coe
                   MAlonzo.Code.Data.List.Base.du_foldr_216
                   (coe
                      (\ v6 ->
                         coe
                           MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                           (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                           (coe v1 v6)))
                   (coe
                      MAlonzo.Code.Class.Monoid.Core.d_ε_20
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                   (coe v2)))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_40 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v3 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                       (coe
                                          MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                          (coe v0))))))
                           (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                             (coe v0)))))))
                           (coe v1 v9)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe
                                 (\ v13 ->
                                    coe
                                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                         (coe v0))
                                      (coe v1 v13)))
                              (coe
                                 MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                              (coe v10))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_foldr_216
                              (coe
                                 (\ v13 ->
                                    coe
                                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                         (coe v0))
                                      (coe v1 v13)))
                              (coe
                                 MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                              (coe v12))
                           (coe
                              du_fold'45'cong'8621'_944 (coe v0) (coe v1) (coe v10) (coe v12)
                              (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_46 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v11 of
                    (:) v12 v13
                      -> case coe v3 of
                           (:) v14 v15
                             -> case coe v15 of
                                  (:) v16 v17
                                    -> coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                         (\ v18 v19 v20 ->
                                            coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                              v20)
                                         (coe
                                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                               (coe v0))
                                            (coe v1 v10)
                                            (coe
                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                  (coe v0))
                                               (coe v1 v12) (coe du_indexedSumL_920 v0 v1 v13)))
                                         (coe
                                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                               (coe v0))
                                            (coe v1 v12)
                                            (coe
                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                  (coe v0))
                                               (coe v1 v10) (coe du_indexedSumL_920 v0 v1 v17)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                                  (coe
                                                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                              (coe
                                                                 MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                 (coe v0))))))))
                                            (coe
                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                  (coe v0))
                                               (coe v1 v10)
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v12) (coe du_indexedSumL_920 v0 v1 v13)))
                                            (coe
                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                  (coe v0))
                                               (coe v1 v12)
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v10) (coe du_indexedSumL_920 v0 v1 v13)))
                                            (coe
                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                  (coe v0))
                                               (coe v1 v12)
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v10) (coe du_indexedSumL_920 v0 v1 v17)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                                 (coe
                                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                    (coe v0))))))))
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v12)
                                                  (coe
                                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                        (coe v0))
                                                     (coe v1 v10)
                                                     (coe du_indexedSumL_920 v0 v1 v13)))
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v12)
                                                  (coe
                                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                        (coe v0))
                                                     (coe v1 v10)
                                                     (coe du_indexedSumL_920 v0 v1 v17)))
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v12)
                                                  (coe
                                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                        (coe v0))
                                                     (coe v1 v10)
                                                     (coe du_indexedSumL_920 v0 v1 v17)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                                    (coe
                                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                       (coe v0))))))))
                                                  (coe
                                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                        (coe v0))
                                                     (coe v1 v12)
                                                     (coe
                                                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                           (coe v0))
                                                        (coe v1 v10)
                                                        (coe du_indexedSumL_920 v0 v1 v17))))
                                               (coe
                                                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                              (coe
                                                                 MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                 (coe v0))))))
                                                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                     (coe
                                                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                                 (coe
                                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                    (coe v0)))))))
                                                  (coe v1 v12)
                                                  (coe
                                                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                     (coe
                                                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                           (coe v0))
                                                        (coe v1 v10))
                                                     (\ v18 v19 -> v18)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           (\ v18 ->
                                                              coe
                                                                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                   (coe v0))
                                                                (coe v1 v18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                           (coe
                                                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                              (coe v0)))
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           (\ v18 ->
                                                              coe
                                                                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                   (coe v0))
                                                                (coe v1 v18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                           (coe
                                                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                              (coe v0)))
                                                        (coe v17)))
                                                  (coe
                                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                     (\ v18 v19 -> v19)
                                                     (coe
                                                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                           (coe v0))
                                                        (coe v1 v10))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           (\ v18 ->
                                                              coe
                                                                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                   (coe v0))
                                                                (coe v1 v18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                           (coe
                                                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                              (coe v0)))
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           (\ v18 ->
                                                              coe
                                                                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                   (coe v0))
                                                                (coe v1 v18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                           (coe
                                                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                              (coe v0)))
                                                        (coe v17)))
                                                  (coe
                                                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                                 (coe
                                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                    (coe v0))))))
                                                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                                    (coe
                                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                       (coe v0)))))))
                                                     (coe v1 v10)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           (\ v18 ->
                                                              coe
                                                                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                   (coe v0))
                                                                (coe v1 v18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                           (coe
                                                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                              (coe v0)))
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                        (coe
                                                           (\ v18 ->
                                                              coe
                                                                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                   (coe v0))
                                                                (coe v1 v18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                           (coe
                                                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                              (coe v0)))
                                                        (coe v17))
                                                     (coe
                                                        du_fold'45'cong'8621'_944 (coe v0) (coe v1)
                                                        (coe v13) (coe v17) (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Algebra.Properties.CommutativeSemigroup.du_x'8729'yz'8776'y'8729'xz_296
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1082
                                                  (coe
                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                                                     (coe v0)))
                                               (coe v1 v10) (coe v1 v12)
                                               (coe du_indexedSumL_920 v0 v1 v13)))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_48 v6 v8 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_trans_40
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_496
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                            (coe v0))))))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_216
                (coe
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                        (coe v1 v10)))
                (coe
                   MAlonzo.Code.Class.Monoid.Core.d_ε_20
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                (coe v2))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_216
                (coe
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                        (coe v1 v10)))
                (coe
                   MAlonzo.Code.Class.Monoid.Core.d_ε_20
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                (coe v6))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_216
                (coe
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                        (coe v1 v10)))
                (coe
                   MAlonzo.Code.Class.Monoid.Core.d_ε_20
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                (coe v3))
             (coe
                du_fold'45'cong'8621'_944 (coe v0) (coe v1) (coe v2) (coe v6)
                (coe v8))
             (coe
                du_fold'45'cong'8621'_944 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._.indexedSum
d_indexedSum_966 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_966 ~v0 ~v1 v2 ~v3 v4 v5 = du_indexedSum_966 v2 v4 v5
du_indexedSum_966 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum_966 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_352
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext_432 (coe v1)
         (coe du_indexedSumL''_928 (coe v0) (coe v2)))
-- Axiom.Set.Sum._.indexedSumL-++
d_indexedSumL'45''43''43'_992 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_992 ~v0 ~v1 v2 ~v3 v4 v5 v6
  = du_indexedSumL'45''43''43'_992 v2 v4 v5 v6
du_indexedSumL'45''43''43'_992 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
du_indexedSumL'45''43''43'_992 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_indexedSumL_920 v0 v1
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
         (coe du_indexedSumL_920 v0 v1 v2)
         (coe du_indexedSumL_920 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v4 v5 v6 v7 v8 -> v8)
         (coe
            du_indexedSumL_920 v0 v1
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Data.List.Base.du_foldr_216
            (coe
               (\ v4 ->
                  coe
                    MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                    (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                    (coe v1 v4)))
            (coe du_indexedSumL_920 v0 v1 v3) (coe v2))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
            (coe du_indexedSumL_920 v0 v1 v2)
            (coe du_indexedSumL_920 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                              (coe
                                 MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                 (coe v0))))))))
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                       (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                       (coe v1 v4)))
               (coe du_indexedSumL_920 v0 v1 v3) (coe v2))
            (coe
               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
               (coe du_indexedSumL_920 v0 v1 v2)
               (coe du_indexedSumL_920 v0 v1 v3))
            (coe
               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
               (coe du_indexedSumL_920 v0 v1 v2)
               (coe du_indexedSumL_920 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                  (coe du_indexedSumL_920 v0 v1 v2)
                  (coe du_indexedSumL_920 v0 v1 v3)))
            (coe
               du_helper_1014 (coe v0) (coe du_indexedSumL_920 v0 v1 v3) (coe v2)
               (coe v1)))
         erased)
-- Axiom.Set.Sum._._.helper
d_helper_1014 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  () -> AgdaAny -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_helper_1014 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_helper_1014 v2 v8 v9 v10
du_helper_1014 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_helper_1014 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v4 v5 v6 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
             v1
             (coe
                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                (MAlonzo.Code.Class.Monoid.Core.d_ε_20
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                v1)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_496
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                     (coe v0))))))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMagma_496
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                  (coe v0)))))))
                v1
                (coe
                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                   (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                   (MAlonzo.Code.Class.Monoid.Core.d_ε_20
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                   v1)
                (coe
                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                   (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                   (MAlonzo.Code.Class.Monoid.Core.d_ε_20
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                   v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_496
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                        (coe v0))))))))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (MAlonzo.Code.Class.Monoid.Core.d_ε_20
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                      v1))
                (coe
                   MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                   (MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                         (coe v0)))
                   v1))
      (:) v4 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v6 v7 v8 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
             (coe
                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                (coe v3 v4)
                (coe
                   MAlonzo.Code.Data.List.Base.du_foldr_216
                   (coe
                      (\ v6 ->
                         coe
                           MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                           (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                           (coe v3 v6)))
                   (coe v1) (coe v5)))
             (coe
                MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                (coe
                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                   (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                   (coe v3 v4) (coe du_indexedSumL_920 v0 v3 v5))
                v1)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_496
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                     (coe v0))))))))
                (coe
                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                   (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                   (coe v3 v4)
                   (coe
                      MAlonzo.Code.Data.List.Base.du_foldr_216
                      (coe
                         (\ v6 ->
                            coe
                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                              (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                              (coe v3 v6)))
                      (coe v1) (coe v5)))
                (coe
                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                   (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                   (coe v3 v4)
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe du_indexedSumL_920 v0 v3 v5) v1))
                (coe
                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                   (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe v3 v4) (coe du_indexedSumL_920 v0 v3 v5))
                   v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_496
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                        (coe v0))))))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_496
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                     (coe v0)))))))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe v3 v4)
                      (coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe du_indexedSumL_920 v0 v3 v5) v1))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe v3 v4) (coe du_indexedSumL_920 v0 v3 v5))
                      v1)
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe v3 v4) (coe du_indexedSumL_920 v0 v3 v5))
                      v1)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                        (coe
                                           MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                           (coe v0))))))))
                      (coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe
                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                            (coe v3 v4) (coe du_indexedSumL_920 v0 v3 v5))
                         v1))
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_assoc_498
                      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                               (coe v0))))
                      (coe v3 v4) (coe du_indexedSumL_920 v0 v3 v5) v1))
                (coe
                   MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                   (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMagma_496
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                  (coe v0))))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_496
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                     (coe v0)))))))
                   (coe v3 v4)
                   (coe
                      MAlonzo.Code.Data.List.Base.du_foldr_216
                      (coe
                         (\ v6 ->
                            coe
                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                              (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                              (coe v3 v6)))
                      (coe v1) (coe v5))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe du_indexedSumL_920 v0 v3 v5) v1)
                   (coe du_helper_1014 (coe v0) (coe v1) (coe v5) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._._.indexedSum-cong
d_indexedSum'45'cong_1068 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_1068 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_indexedSum'45'cong_1068 v2 v4 v5 v6 v7
du_indexedSum'45'cong_1068 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45'cong_1068 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_356
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_438 (coe v1)
         (coe
            (\ v5 v6 ->
               coe
                 du_fold'45'cong'8621'_944 (coe v0) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
      (coe v3) (coe v4)
-- Axiom.Set.Sum._._.indexedSum-∅
d_indexedSum'45''8709'_1074 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_1074 v0 ~v1 v2 ~v3 v4 v5
  = du_indexedSum'45''8709'_1074 v0 v2 v4 v5
du_indexedSum'45''8709'_1074 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_indexedSum'45''8709'_1074 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_indexedSum_966 v1 v2 v3
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0))
            (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438)))
      (coe
         du_indexedSum_966 v1 v2 v3
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0))
            (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                           (coe
                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                              (coe v1))))))))
         (coe
            du_indexedSum_966 v1 v2 v3
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0))
               (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438))))
-- Axiom.Set.Sum._._.indexedSum-∪
d_indexedSum'45''8746'_1080 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'45''8746'_1080 ~v0 ~v1 v2 ~v3 v4 v5 ~v6 ~v7 v8 v9 ~v10
  = du_indexedSum'45''8746'_1080 v2 v4 v5 v8 v9
du_indexedSum'45''8746'_1080 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45''8746'_1080 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_474 (coe v3)
      (coe v4)
      (coe
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_496
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                             (coe v0))))))
              (coe
                 MAlonzo.Code.Data.List.Base.du_foldr_216
                 (coe
                    (\ v8 ->
                       coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe v2 v8)))
                 (coe
                    MAlonzo.Code.Class.Monoid.Core.d_ε_20
                    (coe
                       MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5) (coe v6))))
              (coe
                 MAlonzo.Code.Data.List.Base.du_foldr_216
                 (coe
                    (\ v8 ->
                       coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe v2 v8)))
                 (coe
                    MAlonzo.Code.Class.Monoid.Core.d_ε_20
                    (coe
                       MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                 (coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                       v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                       v6)))
              (coe
                 MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                 (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                 (coe
                    du_indexedSumL_920 v0 v2
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_882
                       (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                       (coe v5)))
                 (coe
                    du_indexedSumL_920 v0 v2
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                       v6)))
              (coe
                 du_fold'45'cong'8621'_944 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5) (coe v6)))
                 (coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                       v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                       v6))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_dedup'45''43''43''45''8621'_188
                    (coe v1) (coe v5) (coe v6)))
              (coe
                 du_indexedSumL'45''43''43'_992 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_deduplicate_882
                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                    (coe v5))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_168 v1
                    v6))))
-- Axiom.Set.Sum._._.indexedSum-singleton
d_indexedSum'45'singleton_1096 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_1096 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_indexedSum'45'singleton_1096 v2 v5 v6
du_indexedSum'45'singleton_1096 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_indexedSum'45'singleton_1096 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_754
      (MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
            (coe v0)))
      (coe v1 v2)
-- Axiom.Set.Sum._._.indexedSum-singleton'
d_indexedSum'45'singleton''_1102 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_1102 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_indexedSum'45'singleton''_1102 v0 v2 v4 v5 v6 v7
du_indexedSum'45'singleton''_1102 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45'singleton''_1102 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                     (coe v1))))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (coe du_indexedSum_966 (coe v1) (coe v2) (coe v3)) (\ v6 v7 -> v6)
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_716
               (coe v0) (coe v4))))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v6 v7 -> v7) (coe du_indexedSum_966 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_716
               (coe v0) (coe v4))))
      (coe v3 v4)
      (coe
         du_indexedSum'45'cong_1068 v1 v2 v3
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_716
               (coe v0) (coe v4)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
            (coe (\ v6 v7 -> v7))))
      (coe du_indexedSum'45'singleton_1096 (coe v1) (coe v3) (coe v4))
-- Axiom.Set.Sum._.indexedSumᵐ
d_indexedSum'7504'_1140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_1140 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_indexedSum'7504'_1140 v4 v5 v6 v7 v8
du_indexedSum'7504'_1140 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504'_1140 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    du_indexedSum_966 v2
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182 (coe v0)
                       (coe v1))
                    v3
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._.indexedSumᵛ
d_indexedSum'7515'_1148 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_1148 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_indexedSum'7515'_1148 v4 v5 v6 v7
du_indexedSum'7515'_1148 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'_1148 v0 v1 v2 v3
  = coe
      du_indexedSum'7504'_1140 (coe v0) (coe v1) (coe v2)
      (coe
         (\ v4 ->
            coe v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Axiom.Set.Sum._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_1154 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'cong_1154 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_indexedSum'7504''45'cong_1154 v4 v5 v6 v7 v8 v9
du_indexedSum'7504''45'cong_1154 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'cong_1154 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> case coe v11 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                             -> coe
                                  du_indexedSum'45'cong_1068 (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                     (coe v0) (coe v1))
                                  (coe v3)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v9))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                                     (coe v13))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum.IndexedSumUnionᵐ._._∪ˡ'_
d__'8746''737'''__1186 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1186 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du__'8746''737'''__1186 v0 v5
du__'8746''737'''__1186 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1186 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__980 (coe v0) (coe v1)
      v3 v4
-- Axiom.Set.Sum.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_1204 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_1204 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_'8746''737''45'finite_1204 v0 v5 v6 v7 v8 v9 v10
du_'8746''737''45'finite_1204 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_1204 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_788
      (coe v0) (coe v3)
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_422 v0
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_164 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_164 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v0 v3)))
            (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
         v4)
      (coe v5)
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_730 (coe v0)
         (coe v4)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_164 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_164 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v0 v3)))
            (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
         (coe
            (\ v7 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                 (coe
                    v2 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v0 v3)
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))))
         (coe v6))
-- Axiom.Set.Sum.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__1210 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__1210 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du__'8746''737''7584'__1210 v0 v5 v6 v7 v8
du__'8746''737''7584'__1210 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__1210 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                      -> case coe v10 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                             -> coe
                                  MAlonzo.Code.Axiom.Set.Map.du_toFinMap_620
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032 (coe v0)
                                     (coe v1)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                        (coe v7))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                        (coe v11)))
                                  (coe
                                     du_'8746''737''45'finite_1204 (coe v0) (coe v1) (coe v2)
                                     (coe v5) (coe v9) (coe v8) (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_1228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_1228 v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 v8 v9
                                  v10 v11 ~v12
  = du_indexedSum'7504''45''8746'_1228 v0 v3 v4 v5 v6 v8 v9 v10 v11
du_indexedSum'7504''45''8746'_1228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
du_indexedSum'7504''45''8746'_1228 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
        -> case coe v10 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                      -> case coe v14 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                  (\ v17 v18 v19 ->
                                     coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                       v19)
                                  (coe
                                     du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8) (coe v7)
                                     (coe
                                        du__'8746''737''7584'__1210 (coe v0) (coe v3) (coe v4)
                                        (coe v5) (coe v6)))
                                  (coe
                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                        (coe v8))
                                     (coe
                                        du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8) (coe v7)
                                        (coe v5))
                                     (coe
                                        du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8) (coe v7)
                                        (coe v6)))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                       (coe
                                                          MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                          (coe v8))))))))
                                     (coe
                                        du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8) (coe v7)
                                        (coe
                                           du__'8746''737''7584'__1210 (coe v0) (coe v3) (coe v4)
                                           (coe v5) (coe v6)))
                                     (coe
                                        du_indexedSum_966 v8
                                        (coe
                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                           (coe v1) (coe v2))
                                        v7
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Factor.du__'7584'_320
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                                              (coe v9) (coe v13))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_788
                                              (coe v0) (coe v9) (coe v13) (coe v12) (coe v16))))
                                     (coe
                                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                           (coe v8))
                                        (coe
                                           du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                           (coe v7) (coe v5))
                                        (coe
                                           du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                           (coe v7) (coe v6)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                             (coe v8))))))))
                                        (coe
                                           du_indexedSum_966 v8
                                           (coe
                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                              (coe v1) (coe v2))
                                           v7
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Factor.du__'7584'_320
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                                                 (coe v9) (coe v13))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_788
                                                 (coe v0) (coe v9) (coe v13) (coe v12) (coe v16))))
                                        (coe
                                           MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                           (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                              (coe v8))
                                           (coe
                                              du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                              (coe v7) (coe v5))
                                           (coe
                                              du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                              (coe v7) (coe v6)))
                                        (coe
                                           MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                           (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                              (coe v8))
                                           (coe
                                              du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                              (coe v7) (coe v5))
                                           (coe
                                              du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                              (coe v7) (coe v6)))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                                             (coe
                                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                (coe v8))))))))
                                           (coe
                                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                              (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                 (coe v8))
                                              (coe
                                                 du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                                 (coe v7) (coe v5))
                                              (coe
                                                 du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v8)
                                                 (coe v7) (coe v6))))
                                        (coe
                                           du_indexedSum'45''8746'_1080 (coe v8)
                                           (coe
                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                              (coe v1) (coe v2))
                                           (coe v7) (coe v12) (coe v16)))
                                     (coe
                                        du_indexedSum'45'cong_1068 v8
                                        (coe
                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                           (coe v1) (coe v2))
                                        v7
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__980
                                              (coe v0) (coe v3) (coe v9) (coe v13))
                                           (coe
                                              du_'8746''737''45'finite_1204 (coe v0) (coe v3)
                                              (coe v4) (coe v9) (coe v13) (coe v12) (coe v16)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Factor.du__'7584'_320
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                                              (coe v9) (coe v13))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_788
                                              (coe v0) (coe v9) (coe v13) (coe v12) (coe v16)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_1098
                                           (coe v0) (coe v3)
                                           (coe MAlonzo.Code.Axiom.Set.Map.du_toRel_634 (coe v5))
                                           (coe MAlonzo.Code.Axiom.Set.Map.du_toRel_634 (coe v6))
                                           erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum.IndexedSumUnionᵐ._._
d___1250 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d___1250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12 ~v13
         ~v14 ~v15 ~v16
  = du___1250 v10
du___1250 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du___1250 v0 = coe v0
-- Axiom.Set.Sum.IndexedSumUnionᵐ._._
d___1252 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d___1252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 v13
         ~v14 ~v15 ~v16
  = du___1252 v13
du___1252 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du___1252 v0 = coe v0
-- Axiom.Set.Sum.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_1264 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_1264 v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 v8
                                     v9 v10 v11 v12 v13
  = du_indexedSum'7504''45'partition_1264
      v0 v3 v4 v5 v6 v8 v9 v10 v11 v12 v13
du_indexedSum'7504''45'partition_1264 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_1264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                      v10
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v11 v12 v13 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v13)
      (coe
         du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
         (coe v5))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
         (coe
            du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
            (coe v6))
         (coe
            du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
            (coe v7)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                           (coe
                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                              (coe v9))))))))
         (coe
            du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
            (coe v5))
         (coe
            du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
            (coe
               du__'8746''737''7584'__1210 (coe v0) (coe v3) (coe v4) (coe v6)
               (coe v7)))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
            (coe
               du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
               (coe v6))
            (coe
               du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
               (coe v7)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                              (coe
                                 MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                 (coe v9))))))))
            (coe
               du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
               (coe
                  du__'8746''737''7584'__1210 (coe v0) (coe v3) (coe v4) (coe v6)
                  (coe v7)))
            (coe
               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
               (coe
                  du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
                  (coe v6))
               (coe
                  du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
                  (coe v7)))
            (coe
               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
               (coe
                  du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
                  (coe v6))
               (coe
                  du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
                  (coe v7)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                    (coe v9))))))))
               (coe
                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
                  (coe
                     du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
                     (coe v6))
                  (coe
                     du_indexedSum'7504'_1140 (coe v1) (coe v2) (coe v9) (coe v8)
                     (coe v7))))
            (coe
               du_indexedSum'7504''45''8746'_1228 (coe v0) (coe v1) (coe v2)
               (coe v3) (coe v4) (coe v6) (coe v7) (coe v8) (coe v9)))
         (coe
            du_indexedSum'7504''45'cong_1154 v1 v2 v9 v8 v5
            (coe
               du__'8746''737''7584'__1210 (coe v0) (coe v3) (coe v4) (coe v6)
               (coe v7))
            (coe
               du_helper_1294 (coe v0) (coe v3) (coe v6) (coe v7) (coe v10))))
-- Axiom.Set.Sum.IndexedSumUnionᵐ._.disj-dom'
d_disj'45'dom''_1292 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom''_1292 = erased
-- Axiom.Set.Sum.IndexedSumUnionᵐ._.helper
d_helper_1294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_1294 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 v9 v10 ~v11 ~v12
              v13
  = du_helper_1294 v0 v5 v9 v10 v13
du_helper_1294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_1294 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (let v7
                     = coe
                         MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_1098
                         (coe v0) (coe v1)
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                            (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_628 (coe v2)))
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                            (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_628 (coe v3)))
                         erased in
               coe
                 (case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) (coe v8)
                    _ -> MAlonzo.RTE.mazUnreachableError))
              v5
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) v5 v6)))
      (coe
         (\ v5 v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) v5
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (let v7
                        = coe
                            MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_1098
                            (coe v0) (coe v1)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                               (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_628 (coe v2)))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                               (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_628 (coe v3)))
                            erased in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) (coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError))
                 v5 v6)))
