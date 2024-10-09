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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Axiom.Set.Sum._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0) v2 v3
-- Axiom.Set.Sum._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Sum._.FinSet
d_FinSet_32 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> ()
d_FinSet_32 = erased
-- Axiom.Set.Sum._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Sum._.finite
d_finite_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Sum._.spec-∈
d_spec'45''8712'_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> ()
d_spec'45''8712'_78 = erased
-- Axiom.Set.Sum._.∅
d_'8709'_92 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> AgdaAny
d_'8709'_92 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0)
-- Axiom.Set.Sum._.❴_❵
d_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_124 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 (coe v0)
-- Axiom.Set.Sum._._ᶠ
d__'7584'_138 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_312 v1 v2
-- Axiom.Set.Sum._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_140 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_322
      (coe v0) v2 v3 v4 v5
-- Axiom.Set.Sum._.FactorUnique.factor-∪'
d_factor'45''8746'''_166 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_factor'45''8746'''_166 ~v0 = du_factor'45''8746'''_166
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
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_466 v9 v10 v12
-- Axiom.Set.Sum._._≡_⨿_
d__'8801'_'10815'__170 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__170 = erased
-- Axiom.Set.Sum._.singleton-finite
d_singleton'45'finite_228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_228 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_636
      (coe v0) v2
-- Axiom.Set.Sum._.∅-finite
d_'8709''45'finite_234 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_234 ~v0 = du_'8709''45'finite_234
du_'8709''45'finite_234 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'finite_234 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438
-- Axiom.Set.Sum._.Rel
d_Rel_344 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Rel_344 = erased
-- Axiom.Set.Sum._.dom
d_dom_348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_348 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 (coe v0)
-- Axiom.Set.Sum._.FinMap
d_FinMap_478 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_FinMap_478 = erased
-- Axiom.Set.Sum._.toRel
d_toRel_542 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_542 ~v0 = du_toRel_542
du_toRel_542 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_542 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_618 v2
-- Axiom.Set.Sum._.Unionᵐ._∪ˡ'_
d__'8746''737'''__618 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__618 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__886 (coe v0) v2 v4 v5
-- Axiom.Set.Sum.M-Reasoning._._∙_
d__'8729'__638 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__638 ~v0 ~v1 v2 = du__'8729'__638 v2
du__'8729'__638 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__638 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
-- Axiom.Set.Sum.M-Reasoning._._≈_
d__'8776'__640 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__640 = erased
-- Axiom.Set.Sum.M-Reasoning._.ε
d_ε_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
d_ε_698 ~v0 ~v1 v2 = du_ε_698 v2
du_ε_698 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
du_ε_698 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0))
-- Axiom.Set.Sum.M-Reasoning._.trans
d_trans_706 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_706 ~v0 ~v1 v2 = du_trans_706 v2
du_trans_706 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                     (coe v0))))))
-- Axiom.Set.Sum._._._∙_
d__'8729'__780 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__780 ~v0 ~v1 v2 = du__'8729'__780 v2
du__'8729'__780 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__780 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
-- Axiom.Set.Sum._._._≈_
d__'8776'__782 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__782 = erased
-- Axiom.Set.Sum._._.ε
d_ε_866 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
d_ε_866 ~v0 ~v1 v2 = du_ε_866 v2
du_ε_866 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny
du_ε_866 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0))
-- Axiom.Set.Sum._._.trans
d_trans_876 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_876 ~v0 ~v1 v2 = du_trans_876 v2
du_trans_876 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_876 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                     (coe v0))))))
-- Axiom.Set.Sum._.indexedSumL
d_indexedSumL_884 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_884 ~v0 ~v1 v2 ~v3 v4 = du_indexedSumL_884 v2 v4
du_indexedSumL_884 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSumL_884 v0 v1
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
d_indexedSumL''_892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_892 ~v0 ~v1 v2 ~v3 v4 v5
  = du_indexedSumL''_892 v2 v4 v5
du_indexedSumL''_892 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSumL''_892 v0 v1 v2
  = coe
      du_indexedSumL_884 v0 v1
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
-- Axiom.Set.Sum._.fold-cong↭
d_fold'45'cong'8621'_908 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
d_fold'45'cong'8621'_908 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_fold'45'cong'8621'_908 v2 v4 v5 v6 v7
du_fold'45'cong'8621'_908 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
du_fold'45'cong'8621'_908 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20
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
             (let v6
                    = let v6
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                (coe
                                   MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                   (coe v0)) in
                      coe
                        (let v7
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))) in
              coe
                (let v7
                       = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (coe v6)) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe v7))
                      (coe
                         MAlonzo.Code.Data.List.Base.du_foldr_216
                         (coe
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                 (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                                 (coe v1 v8)))
                         (coe
                            MAlonzo.Code.Class.Monoid.Core.d_ε_20
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32 (coe v0)))
                         (coe v2)))))
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_prep_28 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v3 of
                    (:) v11 v12
                      -> let v13
                               = coe
                                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                                   (coe v0) in
                         coe
                           (let v14
                                  = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986
                                      (coe v13) in
                            coe
                              (let v15
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v14) in
                               coe
                                 (let v16
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v15) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                       (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v16))
                                       (coe v1 v9)
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v17)))
                                          (coe
                                             MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                (coe v0)))
                                          (coe v10))
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v17)))
                                          (coe
                                             MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                (coe v0)))
                                          (coe v12))
                                       (coe
                                          du_fold'45'cong'8621'_908 (coe v0) (coe v1) (coe v10)
                                          (coe v12) (coe v8))))))
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
                                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                               (coe v0))
                                            (coe v1 v10)
                                            (coe
                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                  (coe v0))
                                               (coe v1 v12) (coe du_indexedSumL_884 v0 v1 v13)))
                                         (coe
                                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                               (coe v0))
                                            (coe v1 v12)
                                            (coe
                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                  (coe v0))
                                               (coe v1 v10) (coe du_indexedSumL_884 v0 v1 v17)))
                                         (let v18
                                                = let v18
                                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                            (coe
                                                               MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                               (coe v0)) in
                                                  coe
                                                    (let v19
                                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                               (coe v18) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                          (coe
                                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                             (coe v19)))) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                        (coe v18))))
                                               (coe
                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                     (coe v0))
                                                  (coe v1 v10)
                                                  (coe
                                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                        (coe v0))
                                                     (coe v1 v12)
                                                     (coe du_indexedSumL_884 v0 v1 v13)))
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
                                                     (coe du_indexedSumL_884 v0 v1 v13)))
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
                                                     (coe du_indexedSumL_884 v0 v1 v17)))
                                               (let v19
                                                      = let v19
                                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                  (coe
                                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                     (coe v0)) in
                                                        coe
                                                          (let v20
                                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                     (coe v19) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                (coe
                                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                   (coe v20)))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                              (coe v19))))
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
                                                           (coe du_indexedSumL_884 v0 v1 v13)))
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
                                                           (coe du_indexedSumL_884 v0 v1 v17)))
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
                                                           (coe du_indexedSumL_884 v0 v1 v17)))
                                                     (let v20
                                                            = let v20
                                                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                        (coe
                                                                           MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                           (coe v0)) in
                                                              coe
                                                                (let v21
                                                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                           (coe v20) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                                      (coe
                                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                         (coe v21)))) in
                                                      coe
                                                        (let v21
                                                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                                      (coe v20)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                                 (coe v21))
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
                                                                    (coe
                                                                       du_indexedSumL_884 v0 v1
                                                                       v17))))))
                                                     (let v20
                                                            = coe
                                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                                                                (coe v0) in
                                                      coe
                                                        (let v21
                                                               = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986
                                                                   (coe v20) in
                                                         coe
                                                           (let v22
                                                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                      (coe v21) in
                                                            coe
                                                              (let v23
                                                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                         (coe v22) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                       (coe v23))
                                                                    (coe v1 v12)
                                                                    (coe
                                                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                       (coe
                                                                          MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                          (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                             (coe v0))
                                                                          (coe v1 v10))
                                                                       (\ v24 v25 -> v24)
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                          (coe
                                                                             (\ v24 ->
                                                                                coe
                                                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                                     (coe v0))
                                                                                  (coe v1 v24)))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                                                (coe v0)))
                                                                          (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                          (coe
                                                                             (\ v24 ->
                                                                                coe
                                                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                                     (coe v0))
                                                                                  (coe v1 v24)))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                                                (coe v0)))
                                                                          (coe v17)))
                                                                    (coe
                                                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                       (\ v24 v25 -> v25)
                                                                       (coe
                                                                          MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                          (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                             (coe v0))
                                                                          (coe v1 v10))
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                          (coe
                                                                             (\ v24 ->
                                                                                coe
                                                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                                     (coe v0))
                                                                                  (coe v1 v24)))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                                                (coe v0)))
                                                                          (coe v13))
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                          (coe
                                                                             (\ v24 ->
                                                                                coe
                                                                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                                     (coe v0))
                                                                                  (coe v1 v24)))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                                                (coe v0)))
                                                                          (coe v17)))
                                                                    (let v24
                                                                           = coe
                                                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                                                                               (coe v0) in
                                                                     coe
                                                                       (let v25
                                                                              = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986
                                                                                  (coe v24) in
                                                                        coe
                                                                          (let v26
                                                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                                     (coe v25) in
                                                                           coe
                                                                             (let v27
                                                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                                        (coe v26) in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                                                                   (coe
                                                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                                      (coe v27))
                                                                                   (coe v1 v10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                      (coe
                                                                                         (\ v28 ->
                                                                                            coe
                                                                                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                                              (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                                                 (coe
                                                                                                    v0))
                                                                                              (coe
                                                                                                 v1
                                                                                                 v28)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                                                            (coe
                                                                                               v0)))
                                                                                      (coe v13))
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                      (coe
                                                                                         (\ v28 ->
                                                                                            coe
                                                                                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                                                              (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                                                 (coe
                                                                                                    v0))
                                                                                              (coe
                                                                                                 v1
                                                                                                 v28)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                                                                            (coe
                                                                                               v0)))
                                                                                      (coe v17))
                                                                                   (coe
                                                                                      du_fold'45'cong'8621'_908
                                                                                      (coe v0)
                                                                                      (coe v1)
                                                                                      (coe v13)
                                                                                      (coe v17)
                                                                                      (coe
                                                                                         v9))))))))))))))
                                               (coe
                                                  MAlonzo.Code.Algebra.Properties.CommutativeSemigroup.du_x'8729'yz'8776'y'8729'xz_260
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1048
                                                     (coe
                                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                                                        (coe v0)))
                                                  (coe v1 v10) (coe v1 v12)
                                                  (coe du_indexedSumL_884 v0 v1 v13))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_trans_46 v6 v8 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_480
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
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
                du_fold'45'cong'8621'_908 (coe v0) (coe v1) (coe v2) (coe v6)
                (coe v8))
             (coe
                du_fold'45'cong'8621'_908 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._.indexedSum
d_indexedSum_930 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_930 ~v0 ~v1 v2 ~v3 v4 v5 = du_indexedSum_930 v2 v4 v5
du_indexedSum_930 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum_930 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_344
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext_424 (coe v1)
         (coe du_indexedSumL''_892 (coe v0) (coe v2)))
-- Axiom.Set.Sum._._.factor-∪'
d_factor'45''8746'''_950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
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
d_factor'45''8746'''_950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'''_950
du_factor'45''8746'''_950 ::
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
du_factor'45''8746'''_950 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_466 v3 v4 v6
-- Axiom.Set.Sum._.indexedSumL-++
d_indexedSumL'45''43''43'_956 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_956 ~v0 ~v1 v2 ~v3 v4 v5 v6
  = du_indexedSumL'45''43''43'_956 v2 v4 v5 v6
du_indexedSumL'45''43''43'_956 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
du_indexedSumL'45''43''43'_956 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_indexedSumL_884 v0 v1
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
         (coe du_indexedSumL_884 v0 v1 v2)
         (coe du_indexedSumL_884 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v4 v5 v6 v7 v8 -> v8)
         (coe
            du_indexedSumL_884 v0 v1
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
            (coe du_indexedSumL_884 v0 v1 v3) (coe v2))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
            (coe du_indexedSumL_884 v0 v1 v2)
            (coe du_indexedSumL_884 v0 v1 v3))
         (let v4
                = let v4
                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                               (coe v0)) in
                  coe
                    (let v5
                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                     coe
                       (coe
                          MAlonzo.Code.Algebra.Structures.du_setoid_200
                          (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
               (coe
                  MAlonzo.Code.Data.List.Base.du_foldr_216
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                          (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                          (coe v1 v5)))
                  (coe du_indexedSumL_884 v0 v1 v3) (coe v2))
               (coe
                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                  (coe du_indexedSumL_884 v0 v1 v2)
                  (coe du_indexedSumL_884 v0 v1 v3))
               (coe
                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                  (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                  (coe du_indexedSumL_884 v0 v1 v2)
                  (coe du_indexedSumL_884 v0 v1 v3))
               (let v5
                      = let v5
                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                     (coe v0)) in
                        coe
                          (let v6
                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Structures.du_setoid_200
                                (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6)))) in
                coe
                  (let v6
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (coe v5)) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v6))
                        (coe
                           MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                           (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                           (coe du_indexedSumL_884 v0 v1 v2)
                           (coe du_indexedSumL_884 v0 v1 v3)))))
               (coe
                  du_helper_978 (coe v0) (coe du_indexedSumL_884 v0 v1 v3) (coe v2)
                  (coe v1))))
         erased)
-- Axiom.Set.Sum._._.helper
d_helper_978 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  () -> AgdaAny -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_helper_978 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_helper_978 v2 v8 v9 v10
du_helper_978 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_helper_978 v0 v1 v2 v3
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
             (let v4
                    = let v4
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                (coe
                                   MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                   (coe v0)) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4)))
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
                   (let v5
                          = let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                      (coe
                                         MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                         (coe v0)) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_200
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6)))) in
                    coe
                      (let v6
                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (coe v5)) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe v6))
                            (coe
                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                               (MAlonzo.Code.Class.Monoid.Core.d_ε_20
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
                                     (coe v0)))
                               v1))))
                   (let v5
                          = coe
                              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                              (coe v0) in
                    coe
                      (let v6
                             = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986
                                 (coe v5) in
                       coe
                         (coe
                            MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                            (MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v6)) v1)))))
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
                   (coe v3 v4) (coe du_indexedSumL_884 v0 v3 v5))
                v1)
             (let v6
                    = let v6
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                (coe
                                   MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                   (coe v0)) in
                      coe
                        (let v7
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v6))))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe v3 v4)
                      (coe
                         MAlonzo.Code.Data.List.Base.du_foldr_216
                         (coe
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                 (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                                 (coe v3 v7)))
                         (coe v1) (coe v5)))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe v3 v4)
                      (coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe du_indexedSumL_884 v0 v3 v5) v1))
                   (coe
                      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                      (coe
                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                         (coe v3 v4) (coe du_indexedSumL_884 v0 v3 v5))
                      v1)
                   (let v7
                          = let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                      (coe
                                         MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                         (coe v0)) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_200
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8)))) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                  (coe v7))))
                         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v7)))
                         (coe
                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                            (coe v3 v4)
                            (coe
                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                               (coe du_indexedSumL_884 v0 v3 v5) v1))
                         (coe
                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                            (coe
                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                               (coe v3 v4) (coe du_indexedSumL_884 v0 v3 v5))
                            v1)
                         (coe
                            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                            (coe
                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                               (coe v3 v4) (coe du_indexedSumL_884 v0 v3 v5))
                            v1)
                         (let v8
                                = let v8
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                               (coe v0)) in
                                  coe
                                    (let v9
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                               (coe v8) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_200
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                             (coe v9)))) in
                          coe
                            (let v9
                                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (coe v8)) in
                             coe
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                     (coe v9))
                                  (coe
                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                        (coe v0))
                                     (coe
                                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                        (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                           (coe v0))
                                        (coe v3 v4) (coe du_indexedSumL_884 v0 v3 v5))
                                     v1))))
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_assoc_482
                            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                     (coe v0))))
                            (coe v3 v4) (coe du_indexedSumL_884 v0 v3 v5) v1)))
                   (let v7
                          = coe
                              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                              (coe v0) in
                    coe
                      (let v8
                             = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986
                                 (coe v7) in
                       coe
                         (let v9
                                = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v8) in
                          coe
                            (let v10
                                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v9) in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v10))
                                  (coe v3 v4)
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_foldr_216
                                     (coe
                                        (\ v11 ->
                                           coe
                                             MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                             (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                (coe v0))
                                             (coe v3 v11)))
                                     (coe v1) (coe v5))
                                  (coe
                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                        (coe v0))
                                     (coe du_indexedSumL_884 v0 v3 v5) v1)
                                  (coe du_helper_978 (coe v0) (coe v1) (coe v5) (coe v3)))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._._._.factor-∪'
d_factor'45''8746'''_1030 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
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
d_factor'45''8746'''_1030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'''_1030
du_factor'45''8746'''_1030 ::
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
du_factor'45''8746'''_1030 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_466 v3 v4 v6
-- Axiom.Set.Sum._._.indexedSum-cong
d_indexedSum'45'cong_1032 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_1032 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_indexedSum'45'cong_1032 v2 v4 v5 v6 v7
du_indexedSum'45'cong_1032 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45'cong_1032 v0 v1 v2 v3 v4
  = let v5
          = \ v5 v6 ->
              coe
                du_fold'45'cong'8621'_908 (coe v0) (coe v2)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)) in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_348
         (coe
            MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_430 (coe v1) (coe v5))
         (coe v3) (coe v4))
-- Axiom.Set.Sum._._.indexedSum-∅
d_indexedSum'45''8709'_1038 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_1038 v0 ~v1 v2 ~v3 v4 v5
  = du_indexedSum'45''8709'_1038 v0 v2 v4 v5
du_indexedSum'45''8709'_1038 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_indexedSum'45''8709'_1038 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_indexedSum_930 v1 v2 v3
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0))
            (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438)))
      (coe
         du_indexedSum_930 v1 v2 v3
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0))
            (coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438)))
      (let v4
             = let v4
                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                            (coe v1)) in
               coe
                 (let v5
                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                  coe
                    (coe
                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                       (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))) in
       coe
         (let v5
                = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                       (coe v4)) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe v5))
               (coe
                  du_indexedSum_930 v1 v2 v3
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0))
                     (coe
                        MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438))))))
-- Axiom.Set.Sum._._.indexedSum-∪
d_indexedSum'45''8746'_1044 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_indexedSum'45''8746'_1044 ~v0 ~v1 v2 ~v3 v4 v5 ~v6 ~v7 v8 v9 ~v10
  = du_indexedSum'45''8746'_1044 v2 v4 v5 v8 v9
du_indexedSum'45''8746'_1044 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45''8746'_1044 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_466 (coe v3)
      (coe v4)
      (coe
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_480
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_746
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
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
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
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v6)))
              (coe
                 MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                 (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v0))
                 (coe
                    du_indexedSumL_884 v0 (\ v8 -> coe v2 v8)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_898
                       (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                       (coe v5)))
                 (coe
                    du_indexedSumL_884 v0 (\ v8 -> coe v2 v8)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                       v6)))
              (coe
                 du_fold'45'cong'8621'_908 (coe v0) (coe (\ v8 -> coe v2 v8))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5) (coe v6)))
                 (coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
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
                 du_indexedSumL'45''43''43'_956 (coe v0) (coe (\ v8 -> coe v2 v8))
                 (coe
                    MAlonzo.Code.Data.List.Base.du_deduplicate_898
                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                    (coe v5))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_deduplicate'8801'_164 v1
                    v6))))
-- Axiom.Set.Sum._._.indexedSum-singleton
d_indexedSum'45'singleton_1060 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_1060 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_indexedSum'45'singleton_1060 v2 v5 v6
du_indexedSum'45'singleton_1060 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_indexedSum'45'singleton_1060 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe v0) in
    coe
      (let v4
             = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986
                 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_728
            (MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))
            (coe v1 v2)))
-- Axiom.Set.Sum._._.indexedSum-singleton'
d_indexedSum'45'singleton''_1066 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_1066 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_indexedSum'45'singleton''_1066 v0 v2 v4 v5 v6 v7
du_indexedSum'45'singleton''_1066 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'45'singleton''_1066 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                     (coe v1))))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (coe du_indexedSum_930 (coe v1) (coe v2) (coe v3)) (\ v6 v7 -> v6)
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_636
               (coe v0) (coe v4))))
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v6 v7 -> v7) (coe du_indexedSum_930 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_636
               (coe v0) (coe v4))))
      (coe v3 v4)
      (coe
         du_indexedSum'45'cong_1032 v1 v2 v3
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
            (coe v5))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_636
               (coe v0) (coe v4)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
            (coe (\ v6 v7 -> v7))))
      (coe du_indexedSum'45'singleton_1060 (coe v1) (coe v3) (coe v4))
-- Axiom.Set.Sum._.indexedSumᵐ
d_indexedSum'7504'_1104 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_1104 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_indexedSum'7504'_1104 v4 v5 v6 v7 v8
du_indexedSum'7504'_1104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504'_1104 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    du_indexedSum_930 v2
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160 (coe v0)
                       (coe v1))
                    v3
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum._.indexedSumᵛ
d_indexedSum'7515'_1112 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_1112 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_indexedSum'7515'_1112 v4 v5 v6 v7
du_indexedSum'7515'_1112 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'_1112 v0 v1 v2 v3
  = coe
      du_indexedSum'7504'_1104 (coe v0) (coe v1) (coe v2)
      (coe
         (\ v4 ->
            coe v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Axiom.Set.Sum._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_1118 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_indexedSum'7504''45'cong_1118 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_indexedSum'7504''45'cong_1118 v4 v5 v6 v7 v8 v9
du_indexedSum'7504''45'cong_1118 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'cong_1118 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> case coe v11 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                             -> coe
                                  du_indexedSum'45'cong_1032 (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                     (coe v0) (coe v1))
                                  (coe (\ v14 -> coe v3 v14))
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
d__'8746''737'''__1150 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1150 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du__'8746''737'''__1150 v0 v5
du__'8746''737'''__1150 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1150 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__886 (coe v0) (coe v1)
      v3 v4
-- Axiom.Set.Sum.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_1166 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_'8746''737''45'finite_1166 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_'8746''737''45'finite_1166 v0 v5 v6 v7 v8 v9 v10
du_'8746''737''45'finite_1166 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_1166 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_708
      (coe v0) (coe v3)
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_420 v0
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v3)))
            (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
         v4)
      (coe v5)
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_650 (coe v0)
         (coe v4)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v3)))
            (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
         (coe
            (\ v7 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                 (coe
                    v2 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v3)
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))))
         (coe v6))
-- Axiom.Set.Sum.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__1172 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d__'8746''737''7584'__1172 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du__'8746''737''7584'__1172 v0 v5 v6 v7 v8
du__'8746''737''7584'__1172 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__1172 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                      -> case coe v10 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                             -> coe
                                  MAlonzo.Code.Axiom.Set.Map.du_toFinMap_604
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__892 (coe v0)
                                     (coe v1)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                        (coe v7))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                        (coe v11)))
                                  (coe
                                     du_'8746''737''45'finite_1166 (coe v0) (coe v1) (coe v2)
                                     (coe v5) (coe v9) (coe v8) (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_1190 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_indexedSum'7504''45''8746'_1190 v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 v8 v9
                                  v10 v11 ~v12
  = du_indexedSum'7504''45''8746'_1190 v0 v3 v4 v5 v6 v8 v9 v10 v11
du_indexedSum'7504''45''8746'_1190 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
du_indexedSum'7504''45''8746'_1190 v0 v1 v2 v3 v4 v5 v6 v7 v8
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
                                     du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v8) (coe v7)
                                     (coe
                                        du__'8746''737''7584'__1172 (coe v0) (coe v3) (coe v4)
                                        (coe v5) (coe v6)))
                                  (coe
                                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                        (coe v8))
                                     (coe
                                        du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v8) (coe v7)
                                        (coe v5))
                                     (coe
                                        du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v8) (coe v7)
                                        (coe v6)))
                                  (let v17
                                         = let v17
                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                     (coe
                                                        MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                        (coe v8)) in
                                           coe
                                             (let v18
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                        (coe v17) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                      (coe v18)))) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                 (coe v17))))
                                        (coe
                                           du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v8)
                                           (coe v7)
                                           (coe
                                              du__'8746''737''7584'__1172 (coe v0) (coe v3) (coe v4)
                                              (coe v5) (coe v6)))
                                        (coe
                                           du_indexedSum_930 v8
                                           (coe
                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                              (coe v1) (coe v2))
                                           v7
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Factor.du__'7584'_312
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
                                                 (coe v9) (coe v13))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_708
                                                 (coe v0) (coe v9) (coe v13) (coe v12) (coe v16))))
                                        (coe
                                           MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                           (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                              (coe v8))
                                           (coe
                                              du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v8)
                                              (coe v7) (coe v5))
                                           (coe
                                              du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v8)
                                              (coe v7) (coe v6)))
                                        (let v18
                                               = let v18
                                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                           (coe
                                                              MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                              (coe v8)) in
                                                 coe
                                                   (let v19
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                              (coe v18) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                            (coe v19)))) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                       (coe v18))))
                                              (coe
                                                 du_indexedSum_930 v8
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe v1) (coe v2))
                                                 v7
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Factor.du__'7584'_312
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                       (coe v0) (coe v9) (coe v13))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_708
                                                       (coe v0) (coe v9) (coe v13) (coe v12)
                                                       (coe v16))))
                                              (coe
                                                 MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                 (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                    (coe v8))
                                                 (coe
                                                    du_indexedSum'7504'_1104 (coe v1) (coe v2)
                                                    (coe v8) (coe v7) (coe v5))
                                                 (coe
                                                    du_indexedSum'7504'_1104 (coe v1) (coe v2)
                                                    (coe v8) (coe v7) (coe v6)))
                                              (coe
                                                 MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                 (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                    (coe v8))
                                                 (coe
                                                    du_indexedSum'7504'_1104 (coe v1) (coe v2)
                                                    (coe v8) (coe v7) (coe v5))
                                                 (coe
                                                    du_indexedSum'7504'_1104 (coe v1) (coe v2)
                                                    (coe v8) (coe v7) (coe v6)))
                                              (let v19
                                                     = let v19
                                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                                 (coe
                                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                                                    (coe v8)) in
                                                       coe
                                                         (let v20
                                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                    (coe v19) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                  (coe v20)))) in
                                               coe
                                                 (let v20
                                                        = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                               (coe v19)) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                          (coe v20))
                                                       (coe
                                                          MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                          (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                             (coe v8))
                                                          (coe
                                                             du_indexedSum'7504'_1104 (coe v1)
                                                             (coe v2) (coe v8) (coe v7) (coe v5))
                                                          (coe
                                                             du_indexedSum'7504'_1104 (coe v1)
                                                             (coe v2) (coe v8) (coe v7)
                                                             (coe v6))))))
                                              (coe
                                                 du_indexedSum'45''8746'_1044 (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe v1) (coe v2))
                                                 (coe (\ v19 -> coe v7 v19)) (coe v12) (coe v16))))
                                        (coe
                                           du_indexedSum'45'cong_1032 v8
                                           (coe
                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                              (coe v1) (coe v2))
                                           (\ v18 -> coe v7 v18)
                                           (coe
                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__886
                                                 (coe v0) (coe v3) (coe v9) (coe v13))
                                              (coe
                                                 du_'8746''737''45'finite_1166 (coe v0) (coe v3)
                                                 (coe v4) (coe v9) (coe v13) (coe v12) (coe v16)))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Factor.du__'7584'_312
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
                                                 (coe v9) (coe v13))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_708
                                                 (coe v0) (coe v9) (coe v13) (coe v12) (coe v16)))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_906
                                              (coe v0) (coe v3)
                                              (coe MAlonzo.Code.Axiom.Set.Map.du_toRel_618 (coe v5))
                                              (coe MAlonzo.Code.Axiom.Set.Map.du_toRel_618 (coe v6))
                                              erased))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Sum.IndexedSumUnionᵐ._._
d___1212 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d___1212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12 ~v13
         ~v14 ~v15 ~v16
  = du___1212 v10
du___1212 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du___1212 v0 = coe v0
-- Axiom.Set.Sum.IndexedSumUnionᵐ._._
d___1214 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d___1214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 v13
         ~v14 ~v15 ~v16
  = du___1214 v13
du___1214 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du___1214 v0 = coe v0
-- Axiom.Set.Sum.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_1226 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_indexedSum'7504''45'partition_1226 v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 v8
                                     v9 v10 v11 v12 v13
  = du_indexedSum'7504''45'partition_1226
      v0 v3 v4 v5 v6 v8 v9 v10 v11 v12 v13
du_indexedSum'7504''45'partition_1226 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
du_indexedSum'7504''45'partition_1226 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                      v10
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v11 v12 v13 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v13)
      (coe
         du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
         (coe v5))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
         (coe
            du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
            (coe v6))
         (coe
            du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
            (coe v7)))
      (let v11
             = let v11
                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                            (coe v9)) in
               coe
                 (let v12
                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v11) in
                  coe
                    (coe
                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                       (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v12)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v11))))
            (coe
               du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
               (coe v5))
            (coe
               du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
               (coe
                  du__'8746''737''7584'__1172 (coe v0) (coe v3) (coe v4) (coe v6)
                  (coe v7)))
            (coe
               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
               (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
               (coe
                  du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                  (coe v6))
               (coe
                  du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                  (coe v7)))
            (let v12
                   = let v12
                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                  (coe v9)) in
                     coe
                       (let v13
                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v12) in
                        coe
                          (coe
                             MAlonzo.Code.Algebra.Structures.du_setoid_200
                             (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v13)))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v12))))
                  (coe
                     du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                     (coe
                        du__'8746''737''7584'__1172 (coe v0) (coe v3) (coe v4) (coe v6)
                        (coe v7)))
                  (coe
                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
                     (coe
                        du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                        (coe v6))
                     (coe
                        du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                        (coe v7)))
                  (coe
                     MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                     (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
                     (coe
                        du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                        (coe v6))
                     (coe
                        du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                        (coe v7)))
                  (let v13
                         = let v13
                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.d_isCommutativeMonoid_34
                                        (coe v9)) in
                           coe
                             (let v14
                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v13) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v14)))) in
                   coe
                     (let v14
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (coe v13)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v14))
                           (coe
                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                              (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v9))
                              (coe
                                 du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                                 (coe v6))
                              (coe
                                 du_indexedSum'7504'_1104 (coe v1) (coe v2) (coe v9) (coe v8)
                                 (coe v7))))))
                  (coe
                     du_indexedSum'7504''45''8746'_1190 (coe v0) (coe v1) (coe v2)
                     (coe v3) (coe v4) (coe v6) (coe v7) (coe (\ v13 -> coe v8 v13))
                     (coe v9))))
            (coe
               du_indexedSum'7504''45'cong_1118 v1 v2 v9 (\ v12 -> coe v8 v12) v5
               (coe
                  du__'8746''737''7584'__1172 (coe v0) (coe v3) (coe v4) (coe v6)
                  (coe v7))
               (coe
                  du_helper_1256 (coe v0) (coe v3) (coe v6) (coe v7) (coe v10)))))
-- Axiom.Set.Sum.IndexedSumUnionᵐ._.disj-dom'
d_disj'45'dom''_1254 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_disj'45'dom''_1254 = erased
-- Axiom.Set.Sum.IndexedSumUnionᵐ._.helper
d_helper_1256 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
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
d_helper_1256 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 v9 v10 ~v11 ~v12
              v13
  = du_helper_1256 v0 v5 v9 v10 v13
du_helper_1256 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_1256 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (let v5
                   = coe
                       MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_906
                       (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_544
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_612 (coe v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_544
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_612 (coe v3)))
                       erased in
             coe
               (case coe v5 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6)
                  _ -> MAlonzo.RTE.mazUnreachableError))))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (let v5
                   = coe
                       MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_906
                       (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_544
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_612 (coe v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_544
                          (coe MAlonzo.Code.Axiom.Set.Map.du_toMap_612 (coe v3)))
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
