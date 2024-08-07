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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.CommutativeSemigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Factor
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Axiom.Set.Sum._._∈_
d__'8712'__16 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8712'__16 = erased
-- Axiom.Set.Sum._._∪_
d__'8746'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__20 v0 ~v1 = du__'8746'__20 v0
du__'8746'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__20 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set.Sum._._≡ᵉ_
d__'8801''7497'__22 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__22 = erased
-- Axiom.Set.Sum._.FinSet
d_FinSet_34 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 -> () -> ()
d_FinSet_34 = erased
-- Axiom.Set.Sum._.Set
d_Set_36 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 -> () -> ()
d_Set_36 = erased
-- Axiom.Set.Sum._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Sum._.finite
d_finite_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Sum._.spec-∈
d_spec'45''8712'_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 -> () -> ()
d_spec'45''8712'_78 = erased
-- Axiom.Set.Sum._.∅
d_'8709'_92 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny
d_'8709'_92 v0 ~v1 = du_'8709'_92 v0
du_'8709'_92 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
du_'8709'_92 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)
-- Axiom.Set.Sum._.❴_❵
d_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_124 v0 ~v1 = du_'10100'_'10101'_124 v0
du_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_124 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set.Sum._._ᶠ
d__'7584'_138 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_138 ~v0 ~v1 = du__'7584'_138
du__'7584'_138 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584'_138 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_310 v1 v2
-- Axiom.Set.Sum._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_140 v0 ~v1
  = du_'8746''45'preserves'45'finite''_140 v0
du_'8746''45'preserves'45'finite''_140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'preserves'45'finite''_140 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_320
      (coe v0) v2 v3 v4 v5
-- Axiom.Set.Sum._.FactorUnique.factor-∪'
d_factor'45''8746'''_166 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_factor'45''8746'''_166 ~v0 ~v1 = du_factor'45''8746'''_166
du_factor'45''8746'''_166 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
du_factor'45''8746'''_166 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_464 v9 v10 v12
-- Axiom.Set.Sum._._≡_⨿_
d__'8801'_'10815'__170 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__170 = erased
-- Axiom.Set.Sum._.singleton-finite
d_singleton'45'finite_226 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_226 v0 ~v1 = du_singleton'45'finite_226 v0
du_singleton'45'finite_226 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45'finite_226 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_634
      (coe v0) v2
-- Axiom.Set.Sum._.∅-finite
d_'8709''45'finite_234 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_234 ~v0 ~v1 = du_'8709''45'finite_234
du_'8709''45'finite_234 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'finite_234 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_436
-- Axiom.Set.Sum._.Rel
d_Rel_344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> () -> ()
d_Rel_344 = erased
-- Axiom.Set.Sum._.dom
d_dom_348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_348 v0 ~v1 = du_dom_348 v0
du_dom_348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
du_dom_348 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_336 (coe v0)
-- Axiom.Set.Sum._.FinMap
d_FinMap_478 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> () -> ()
d_FinMap_478 = erased
-- Axiom.Set.Sum._.toRel
d_toRel_540 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_540 ~v0 ~v1 = du_toRel_540
du_toRel_540 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_540 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_608 v2
-- Axiom.Set.Sum._.Unionᵐ._∪ˡ'_
d__'8746''737'''__612 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__612 v0 ~v1 = du__'8746''737'''__612 v0
du__'8746''737'''__612 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__612 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__876 (coe v0) v2 v4 v5
-- Axiom.Set.Sum.indexedSumL
d_indexedSumL_750 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_750 ~v0 v1 ~v2 v3 = du_indexedSumL_750 v1 v3
du_indexedSumL_750 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSumL_750 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_242
      (coe
         (\ v2 ->
            coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v2)))
      (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0))
-- Axiom.Set.Sum.indexedSumL'
d_indexedSumL''_758 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_758 ~v0 v1 ~v2 v3 v4
  = du_indexedSumL''_758 v1 v3 v4
du_indexedSumL''_758 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSumL''_758 v0 v1 v2
  = coe
      du_indexedSumL_750 v0 v1
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
-- Axiom.Set.Sum.fold-cong↭
d_fold'45'cong'8621'_774 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
d_fold'45'cong'8621'_774 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_fold'45'cong'8621'_774 v1 v3 v4 v5 v6
du_fold'45'cong'8621'_774 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
du_fold'45'cong'8621'_774 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v6 v7 v8 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_242
                (coe
                   (\ v6 ->
                      coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v6)))
                (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) (coe v2))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_242
                (coe
                   (\ v6 ->
                      coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v6)))
                (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) (coe v2))
             (let v6
                    = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                         (coe v0)) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v7)))))) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                      (coe v6))
                   (coe
                      MAlonzo.Code.Data.List.Base.du_foldr_242
                      (coe
                         (\ v7 ->
                            coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v7)))
                      (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) (coe v2))))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v3 of
                    (:) v11 v12
                      -> let v13
                               = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                   (coe v0) in
                         coe
                           (let v14
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v13) in
                            coe
                              (let v15
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                         (coe v14) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                                    (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v15))
                                    (coe v1 v9)
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_242
                                       (coe
                                          (\ v16 ->
                                             coe
                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                               (coe v1 v16)))
                                       (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0))
                                       (coe v10))
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_foldr_242
                                       (coe
                                          (\ v16 ->
                                             coe
                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                               (coe v1 v16)))
                                       (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0))
                                       (coe v12))
                                    (coe
                                       du_fold'45'cong'8621'_774 (coe v0) (coe v1) (coe v10)
                                       (coe v12) (coe v8)))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_swap_38 v9
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
                                            MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                            (coe v1 v10)
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                               (coe v1 v12) (coe du_indexedSumL_750 v0 v1 v13)))
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                            (coe v1 v12)
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                               (coe v1 v10) (coe du_indexedSumL_750 v0 v1 v17)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                     (let v18
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                                   (coe v0)) in
                                                      coe
                                                        (let v19
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                   (coe v18) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                 (coe v19))))))))
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                               (coe v1 v10)
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                  (coe v1 v12) (coe du_indexedSumL_750 v0 v1 v13)))
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                               (coe v1 v12)
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                  (coe v1 v10) (coe du_indexedSumL_750 v0 v1 v13)))
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                               (coe v1 v12)
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                  (coe v1 v10) (coe du_indexedSumL_750 v0 v1 v17)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                        (let v18
                                                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                                      (coe v0)) in
                                                         coe
                                                           (let v19
                                                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                      (coe v18) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                    (coe v19))))))))
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                  (coe v1 v12)
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                     (coe v1 v10)
                                                     (coe du_indexedSumL_750 v0 v1 v13)))
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                  (coe v1 v12)
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                     (coe v1 v10)
                                                     (coe du_indexedSumL_750 v0 v1 v17)))
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                  (coe v1 v12)
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                                                     (coe v1 v10)
                                                     (coe du_indexedSumL_750 v0 v1 v17)))
                                               (let v18
                                                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                          (coe
                                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                             (let v18
                                                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                                           (coe v0)) in
                                                              coe
                                                                (let v19
                                                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                           (coe v18) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                                      (coe
                                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                         (coe v19)))))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                        (coe v18))
                                                     (coe
                                                        MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                        v0 (coe v1 v12)
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                           v0 (coe v1 v10)
                                                           (coe du_indexedSumL_750 v0 v1 v17)))))
                                               (let v18
                                                      = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                          (coe v0) in
                                                coe
                                                  (let v19
                                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                             (coe v18) in
                                                   coe
                                                     (let v20
                                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                (coe v19) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                              (coe v20))
                                                           (coe v1 v12)
                                                           (coe
                                                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                 v0 (coe v1 v10))
                                                              (\ v21 v22 -> v21)
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_foldr_242
                                                                 (coe
                                                                    (\ v21 ->
                                                                       coe
                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                         v0 (coe v1 v21)))
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Bundles.d_ε_842
                                                                    (coe v0))
                                                                 (coe v13))
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_foldr_242
                                                                 (coe
                                                                    (\ v21 ->
                                                                       coe
                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                         v0 (coe v1 v21)))
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Bundles.d_ε_842
                                                                    (coe v0))
                                                                 (coe v17)))
                                                           (coe
                                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                              (\ v21 v22 -> v22)
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                 v0 (coe v1 v10))
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_foldr_242
                                                                 (coe
                                                                    (\ v21 ->
                                                                       coe
                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                         v0 (coe v1 v21)))
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Bundles.d_ε_842
                                                                    (coe v0))
                                                                 (coe v13))
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_foldr_242
                                                                 (coe
                                                                    (\ v21 ->
                                                                       coe
                                                                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                         v0 (coe v1 v21)))
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Bundles.d_ε_842
                                                                    (coe v0))
                                                                 (coe v17)))
                                                           (let v21
                                                                  = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                                      (coe v0) in
                                                            coe
                                                              (let v22
                                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                         (coe v21) in
                                                               coe
                                                                 (let v23
                                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                            (coe v22) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                          (coe v23))
                                                                       (coe v1 v10)
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_foldr_242
                                                                          (coe
                                                                             (\ v24 ->
                                                                                coe
                                                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                  v0 (coe v1 v24)))
                                                                          (coe
                                                                             MAlonzo.Code.Algebra.Bundles.d_ε_842
                                                                             (coe v0))
                                                                          (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_foldr_242
                                                                          (coe
                                                                             (\ v24 ->
                                                                                coe
                                                                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                  v0 (coe v1 v24)))
                                                                          (coe
                                                                             MAlonzo.Code.Algebra.Bundles.d_ε_842
                                                                             (coe v0))
                                                                          (coe v17))
                                                                       (coe
                                                                          du_fold'45'cong'8621'_774
                                                                          (coe v0) (coe v1)
                                                                          (coe v13) (coe v17)
                                                                          (coe v9)))))))))))
                                            (coe
                                               MAlonzo.Code.Algebra.Properties.CommutativeSemigroup.du_x'8729'yz'8776'y'8729'xz_260
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_906
                                                  (coe v0))
                                               (coe v1 v10) (coe v1 v12)
                                               (coe du_indexedSumL_750 v0 v1 v13)))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v6 v8 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_448
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                            (coe v0))))))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_242
                (coe
                   (\ v10 ->
                      coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v10)))
                (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) (coe v2))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_242
                (coe
                   (\ v10 ->
                      coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v10)))
                (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) (coe v6))
             (coe
                MAlonzo.Code.Data.List.Base.du_foldr_242
                (coe
                   (\ v10 ->
                      coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v10)))
                (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) (coe v3))
             (coe
                du_fold'45'cong'8621'_774 (coe v0) (coe v1) (coe v2) (coe v6)
                (coe v8))
             (coe
                du_fold'45'cong'8621'_774 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum.indexedSum
d_indexedSum_796 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_796 ~v0 v1 ~v2 v3 v4 = du_indexedSum_796 v1 v3 v4
du_indexedSum_796 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum_796 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_342
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext_422 (coe v1)
         (coe du_indexedSumL''_758 (coe v0) (coe v2)))
-- Axiom.Set.Sum._.factor-∪'
d_factor'45''8746'''_816 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_factor'45''8746'''_816 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_factor'45''8746'''_816
du_factor'45''8746'''_816 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
du_factor'45''8746'''_816 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_464 v3 v4 v6
-- Axiom.Set.Sum.indexedSumL-++
d_indexedSumL'45''43''43'_822 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_822 ~v0 v1 ~v2 v3 v4 v5
  = du_indexedSumL'45''43''43'_822 v1 v3 v4 v5
du_indexedSumL'45''43''43'_822 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
du_indexedSumL'45''43''43'_822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_indexedSumL_750 v0 v1
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
         (coe du_indexedSumL_750 v0 v1 v2)
         (coe du_indexedSumL_750 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v4 v5 v6 v7 v8 -> v8)
         (coe
            du_indexedSumL_750 v0 v1
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Data.List.Base.du_foldr_242
            (coe
               (\ v4 ->
                  coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v4)))
            (coe du_indexedSumL_750 v0 v1 v3) (coe v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
            (coe du_indexedSumL_750 v0 v1 v2)
            (coe du_indexedSumL_750 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                   (coe v0)) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_242
               (coe
                  (\ v4 ->
                     coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v1 v4)))
               (coe du_indexedSumL_750 v0 v1 v3) (coe v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
               (coe du_indexedSumL_750 v0 v1 v2)
               (coe du_indexedSumL_750 v0 v1 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
               (coe du_indexedSumL_750 v0 v1 v2)
               (coe du_indexedSumL_750 v0 v1 v3))
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                        (coe v0)) in
                           coe
                             (let v5
                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                     (coe du_indexedSumL_750 v0 v1 v2)
                     (coe du_indexedSumL_750 v0 v1 v3))))
            (coe
               du_helper_844 (coe v0) (coe du_indexedSumL_750 v0 v1 v3) (coe v2)
               (coe v1)))
         erased)
-- Axiom.Set.Sum._.helper
d_helper_844 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  () -> AgdaAny -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_helper_844 ~v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_helper_844 v1 v7 v8 v9
du_helper_844 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_helper_844 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v4 v5 v6 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
             v1
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                (MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) v1)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v4
                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                       (coe v0)) in
                          coe
                            (let v5
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                      (let v4
                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                    (coe v0)) in
                       coe
                         (let v5
                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
                v1
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                   (MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) v1)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                   (MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) v1)
                (let v4
                       = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe v4) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                          (coe v5)))))) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe v4))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                         (MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)) v1)))
                (let v4
                       = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                           (coe v0) in
                 coe
                   (coe
                      MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                      (MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v4)) v1)))
      (:) v4 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v6 v7 v8 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                (coe
                   MAlonzo.Code.Data.List.Base.du_foldr_242
                   (coe
                      (\ v6 ->
                         coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v6)))
                   (coe v1) (coe v5)))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                   (coe du_indexedSumL_750 v0 v3 v5))
                v1)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v6
                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                       (coe v0)) in
                          coe
                            (let v7
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7))))))))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                   (coe
                      MAlonzo.Code.Data.List.Base.du_foldr_242
                      (coe
                         (\ v6 ->
                            coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v6)))
                      (coe v1) (coe v5)))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                      (coe du_indexedSumL_750 v0 v3 v5) v1))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                      (coe du_indexedSumL_750 v0 v3 v5))
                   v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v6
                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                          (coe v0)) in
                             coe
                               (let v7
                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                          (coe v6) in
                                coe
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                        (coe v7))))))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                         (let v6
                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                       (coe v0)) in
                          coe
                            (let v7
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7)))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                         (coe du_indexedSumL_750 v0 v3 v5) v1))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                         (coe du_indexedSumL_750 v0 v3 v5))
                      v1)
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                         (coe du_indexedSumL_750 v0 v3 v5))
                      v1)
                   (let v6
                          = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                               (coe v0)) in
                                  coe
                                    (let v7
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                               (coe v6) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_168
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                             (coe v7)))))) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe v6))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v4)
                               (coe du_indexedSumL_750 v0 v3 v5))
                            v1)))
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_assoc_450
                      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844 (coe v0))))
                      (coe v3 v4) (coe du_indexedSumL_750 v0 v3 v5) v1))
                (let v6
                       = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                           (coe v0) in
                 coe
                   (let v7
                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v6) in
                    coe
                      (let v8
                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                       coe
                         (coe
                            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8))
                            (coe v3 v4)
                            (coe
                               MAlonzo.Code.Data.List.Base.du_foldr_242
                               (coe
                                  (\ v9 ->
                                     coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v3 v9)))
                               (coe v1) (coe v5))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                               (coe du_indexedSumL_750 v0 v3 v5) v1)
                            (coe du_helper_844 (coe v0) (coe v1) (coe v5) (coe v3)))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._._.factor-∪'
d_factor'45''8746'''_896 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_factor'45''8746'''_896 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_factor'45''8746'''_896
du_factor'45''8746'''_896 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
du_factor'45''8746'''_896 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_464 v3 v4 v6
-- Axiom.Set.Sum._.indexedSum-cong
d_indexedSum'45'cong_898 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_898 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_indexedSum'45'cong_898 v1 v3 v4 v5 v6
du_indexedSum'45'cong_898 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45'cong_898 v0 v1 v2 v3 v4
  = let v5
          = \ v5 v6 ->
              coe
                du_fold'45'cong'8621'_774 (coe v0) (coe v2)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)) in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_346
         (coe
            MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_428 (coe v1) (coe v5))
         (coe v3) (coe v4))
-- Axiom.Set.Sum._.indexedSum-∅
d_indexedSum'45''8709'_904 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_904 v0 v1 ~v2 v3 v4
  = du_indexedSum'45''8709'_904 v0 v1 v3 v4
du_indexedSum'45''8709'_904 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_indexedSum'45''8709'_904 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_indexedSum_796 v1 v2 v3
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0))
            (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_436)))
      (coe
         du_indexedSum_796 v1 v2 v3
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0))
            (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_436)))
      (let v4
             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                    (let v4
                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                  (coe v1)) in
                     coe
                       (let v5
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                        coe
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_168
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
               (coe v4))
            (coe
               du_indexedSum_796 v1 v2 v3
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0))
                  (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_436)))))
-- Axiom.Set.Sum._.indexedSum-∪
d_indexedSum'45''8746'_910 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
d_indexedSum'45''8746'_910 ~v0 v1 ~v2 v3 v4 ~v5 ~v6 v7 v8 ~v9
  = du_indexedSum'45''8746'_910 v1 v3 v4 v7 v8
du_indexedSum'45''8746'_910 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45''8746'_910 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_464 (coe v3)
      (coe v4)
      (coe
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_448
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                             (coe v0))))))
              (coe
                 MAlonzo.Code.Data.List.Base.du_foldr_242
                 (coe
                    (\ v8 ->
                       coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v2 v8)))
                 (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v5) (coe v6))))
              (coe
                 MAlonzo.Code.Data.List.Base.du_foldr_242
                 (coe
                    (\ v8 ->
                       coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 (coe v2 v8)))
                 (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0))
                 (coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__62
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v6)))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0
                 (coe
                    du_indexedSumL_750 v0 v2
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_1000
                       (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                       (coe v5)))
                 (coe
                    du_indexedSumL_750 v0 v2
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v6)))
              (coe
                 du_fold'45'cong'8621'_774 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v5) (coe v6)))
                 (coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__62
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v6))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_dedup'45''43''43''45''8621'_184
                    (coe v1) (coe v5) (coe v6)))
              (coe
                 du_indexedSumL'45''43''43'_822 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_deduplicate_1000
                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                    (coe v5))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                    v6))))
-- Axiom.Set.Sum._.indexedSum-singleton
d_indexedSum'45'singleton_926 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_926 ~v0 v1 ~v2 ~v3 v4 v5
  = du_indexedSum'45'singleton_926 v1 v4 v5
du_indexedSum'45'singleton_926 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_indexedSum'45'singleton_926 v0 v1 v2
  = let v3
          = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v3))
         (coe v1 v2))
-- Axiom.Set.Sum._.indexedSum-singleton'
d_indexedSum'45'singleton''_932 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_932 v0 v1 ~v2 v3 v4 v5 v6
  = du_indexedSum'45'singleton''_932 v0 v1 v3 v4 v5 v6
du_indexedSum'45'singleton''_932 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45'singleton''_932 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe v1))))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (coe du_indexedSum_796 (coe v1) (coe v2) (coe v3)) (\ v6 v7 -> v6)
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_634
               (coe v0) (coe v4))))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v6 v7 -> v7) (coe du_indexedSum_796 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_634
               (coe v0) (coe v4))))
      (coe v3 v4)
      (coe
         du_indexedSum'45'cong_898 v1 v2 v3
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_634
               (coe v0) (coe v4)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
            (coe (\ v6 v7 -> v7))))
      (coe du_indexedSum'45'singleton_926 (coe v1) (coe v3) (coe v4))
-- Axiom.Set.Sum._.indexedSumᵐ
d_indexedSum'7504'_966 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_966 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_indexedSum'7504'_966 v1 v4 v5 v6 v7
du_indexedSum'7504'_966 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504'_966 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    du_indexedSum_796 v0
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160 (coe v1)
                       (coe v2))
                    v3
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._.indexedSumᵛ
d_indexedSum'7515'_974 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_974 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_indexedSum'7515'_974 v1 v4 v5 v6
du_indexedSum'7515'_974 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'_974 v0 v1 v2 v3
  = coe
      du_indexedSum'7504'_966 (coe v0) (coe v1) (coe v2)
      (coe
         (\ v4 ->
            coe v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Axiom.Set.Sum._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_980 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'cong_980 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_indexedSum'7504''45'cong_980 v1 v4 v5 v6 v7 v8
du_indexedSum'7504''45'cong_980 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'cong_980 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> case coe v11 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                             -> coe
                                  du_indexedSum'45'cong_898 (coe v0)
                                  (coe
                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                     (coe v1) (coe v2))
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
-- Axiom.Set.Sum._.IndexedSumUnionᵐ._._∪ˡ'_
d__'8746''737'''__1004 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1004 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du__'8746''737'''__1004 v0 v6
du__'8746''737'''__1004 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1004 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__876 (coe v0) (coe v1)
      v3 v4
-- Axiom.Set.Sum._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_1018 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
d_'8746''737''45'finite_1018 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
                             v11
  = du_'8746''737''45'finite_1018 v0 v6 v7 v8 v9 v10 v11
du_'8746''737''45'finite_1018 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_1018 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_706
      (coe v0) (coe v3)
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_402 v0
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v0 v3)))
            (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
         v4)
      (coe v5)
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_648 (coe v0)
         (coe v4)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v0 v3)))
            (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
         (coe
            (\ v7 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_68
                 (coe
                    v2 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v0 v3)
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))))
         (coe v6))
-- Axiom.Set.Sum._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__1024 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
d__'8746''737''7584'__1024 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du__'8746''737''7584'__1024 v0 v6 v7 v8 v9
du__'8746''737''7584'__1024 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__1024 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                      -> case coe v10 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                             -> coe
                                  MAlonzo.Code.Axiom.Set.Map.du_toFinMap_594
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882 (coe v0)
                                     (coe v1)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                        (coe v7))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                        (coe v11)))
                                  (coe
                                     du_'8746''737''45'finite_1018 (coe v0) (coe v1) (coe v2)
                                     (coe v5) (coe v9) (coe v8) (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_1040 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_1040 v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
                                  v10 ~v11
  = du_indexedSum'7504''45''8746'_1040 v0 v1 v4 v5 v6 v7 v8 v9 v10
du_indexedSum'7504''45''8746'_1040 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) -> AgdaAny
du_indexedSum'7504''45''8746'_1040 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
        -> case coe v10 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
               -> case coe v7 of
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
                                     du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v8)
                                     (coe
                                        du__'8746''737''7584'__1024 (coe v0) (coe v4) (coe v5)
                                        (coe v6) (coe v7)))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
                                     (coe
                                        du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v8)
                                        (coe v6))
                                     (coe
                                        du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v8)
                                        (coe v7)))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                              (let v17
                                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                            (coe v1)) in
                                               coe
                                                 (let v18
                                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                            (coe v17) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                          (coe v18))))))))
                                     (coe
                                        du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v8)
                                        (coe
                                           du__'8746''737''7584'__1024 (coe v0) (coe v4) (coe v5)
                                           (coe v6) (coe v7)))
                                     (coe
                                        du_indexedSum_796 v1
                                        (coe
                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                           (coe v2) (coe v3))
                                        v8
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Factor.du__'7584'_310
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                                              (coe v9) (coe v13))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_706
                                              (coe v0) (coe v9) (coe v13) (coe v12) (coe v16))))
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
                                        (coe
                                           du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3)
                                           (coe v8) (coe v6))
                                        (coe
                                           du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3)
                                           (coe v8) (coe v7)))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                 (let v17
                                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                               (coe v1)) in
                                                  coe
                                                    (let v18
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                               (coe v17) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                             (coe v18))))))))
                                        (coe
                                           du_indexedSum_796 v1
                                           (coe
                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                              (coe v2) (coe v3))
                                           v8
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Factor.du__'7584'_310
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                                                 (coe v9) (coe v13))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_706
                                                 (coe v0) (coe v9) (coe v13) (coe v12) (coe v16))))
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
                                           (coe
                                              du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3)
                                              (coe v8) (coe v6))
                                           (coe
                                              du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3)
                                              (coe v8) (coe v7)))
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
                                           (coe
                                              du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3)
                                              (coe v8) (coe v6))
                                           (coe
                                              du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3)
                                              (coe v8) (coe v7)))
                                        (let v17
                                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                      (let v17
                                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                                                    (coe v1)) in
                                                       coe
                                                         (let v18
                                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                                    (coe v17) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                                  (coe v18)))))) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                 (coe v17))
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
                                                 (coe
                                                    du_indexedSum'7504'_966 (coe v1) (coe v2)
                                                    (coe v3) (coe v8) (coe v6))
                                                 (coe
                                                    du_indexedSum'7504'_966 (coe v1) (coe v2)
                                                    (coe v3) (coe v8) (coe v7)))))
                                        (coe
                                           du_indexedSum'45''8746'_910 (coe v1)
                                           (coe
                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                              (coe v2) (coe v3))
                                           (coe v8) (coe v12) (coe v16)))
                                     (coe
                                        du_indexedSum'45'cong_898 v1
                                        (coe
                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                           (coe v2) (coe v3))
                                        v8
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__876
                                              (coe v0) (coe v4) (coe v9) (coe v13))
                                           (coe
                                              du_'8746''737''45'finite_1018 (coe v0) (coe v4)
                                              (coe v5) (coe v9) (coe v13) (coe v12) (coe v16)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Factor.du__'7584'_310
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                                              (coe v9) (coe v13))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_706
                                              (coe v0) (coe v9) (coe v13) (coe v12) (coe v16)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_896
                                           (coe v0) (coe v4)
                                           (coe MAlonzo.Code.Axiom.Set.Map.du_toRel_608 (coe v6))
                                           (coe MAlonzo.Code.Axiom.Set.Map.du_toRel_608 (coe v7))
                                           erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_1074 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_1074 v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                     v9 v10 v11 v12
  = du_indexedSum'7504''45'partition_1074
      v0 v1 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_indexedSum'7504''45'partition_1074 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_1074 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                      v10
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v11 v12 v13 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v13)
      (coe
         du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
         (coe v6))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
         (coe
            du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
            (coe v7))
         (coe
            du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
            (coe v8)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v11
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844 (coe v1)) in
                   coe
                     (let v12
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v11) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v12))))))))
         (coe
            du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
            (coe v6))
         (coe
            du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
            (coe
               du__'8746''737''7584'__1024 (coe v0) (coe v4) (coe v5) (coe v7)
               (coe v8)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
            (coe
               du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
               (coe v7))
            (coe
               du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
               (coe v8)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v11
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                   (coe v1)) in
                      coe
                        (let v12
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v11) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v12))))))))
            (coe
               du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
               (coe
                  du__'8746''737''7584'__1024 (coe v0) (coe v4) (coe v5) (coe v7)
                  (coe v8)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
               (coe
                  du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
                  (coe v7))
               (coe
                  du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
                  (coe v8)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
               (coe
                  du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
                  (coe v7))
               (coe
                  du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
                  (coe v8)))
            (let v11
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v11
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                                        (coe v1)) in
                           coe
                             (let v12
                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v11) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                      (coe v12)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v11))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v1
                     (coe
                        du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
                        (coe v7))
                     (coe
                        du_indexedSum'7504'_966 (coe v1) (coe v2) (coe v3) (coe v9)
                        (coe v8)))))
            (coe
               du_indexedSum'7504''45''8746'_1040 (coe v0) (coe v1) (coe v2)
               (coe v3) (coe v4) (coe v5) (coe v7) (coe v8) (coe v9)))
         (coe
            du_indexedSum'7504''45'cong_980 v1 v2 v3 v9 v6
            (coe
               du__'8746''737''7584'__1024 (coe v0) (coe v4) (coe v5) (coe v7)
               (coe v8))
            (coe
               du_helper_1104 (coe v0) (coe v4) (coe v7) (coe v8) (coe v10))))
-- Axiom.Set.Sum._.IndexedSumUnionᵐ._.disj-dom'
d_disj'45'dom''_1102 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom''_1102 = erased
-- Axiom.Set.Sum._.IndexedSumUnionᵐ._.helper
d_helper_1104 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_1104 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9 v10 ~v11 v12
  = du_helper_1104 v0 v6 v9 v10 v12
du_helper_1104 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_1104 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_274
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (let v5
                   = coe
                       MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_896
                       (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_602 (coe v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_602 (coe v3)))
                       erased in
             coe
               (case coe v5 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6)
                  _ -> MAlonzo.RTE.mazUnreachableError))))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_274
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (let v5
                   = coe
                       MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_896
                       (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_602 (coe v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_602 (coe v3)))
                       erased in
             coe
               (case coe v5 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6)
                  _ -> MAlonzo.RTE.mazUnreachableError)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
