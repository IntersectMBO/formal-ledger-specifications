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

module MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Construct.NaturalOrder.Left._.Commutative
d_Commutative_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_48 = erased
-- Relation.Binary.Construct.NaturalOrder.Left._.Idempotent
d_Idempotent_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_58 = erased
-- Relation.Binary.Construct.NaturalOrder.Left._.Selective
d_Selective_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_130 = erased
-- Relation.Binary.Construct.NaturalOrder.Left._.IsBand
d_IsBand_156 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Construct.NaturalOrder.Left._.IsMagma
d_IsMagma_196 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Construct.NaturalOrder.Left._.IsSemigroup
d_IsSemigroup_224 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Construct.NaturalOrder.Left._.IsBand.idem
d_idem_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 -> AgdaAny -> AgdaAny
d_idem_338 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_518 (coe v0)
-- Relation.Binary.Construct.NaturalOrder.Left._.IsBand.isSemigroup
d_isSemigroup_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_346 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)
-- Relation.Binary.Construct.NaturalOrder.Left._.IsMagma.isEquivalence
d_isEquivalence_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1506 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Relation.Binary.Construct.NaturalOrder.Left._.IsMagma.∙-cong
d_'8729''45'cong_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1520 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186 (coe v0)
-- Relation.Binary.Construct.NaturalOrder.Left._.IsSemigroup.assoc
d_assoc_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2362 v0
  = coe MAlonzo.Code.Algebra.Structures.d_assoc_482 (coe v0)
-- Relation.Binary.Construct.NaturalOrder.Left._.IsSemigroup.isMagma
d_isMagma_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2366 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Relation.Binary.Construct.NaturalOrder.Left._.IsSemilattice
d_IsSemilattice_2704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_IsSemilattice_2704 = erased
-- Relation.Binary.Construct.NaturalOrder.Left._≤_
d__'8804'__3110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d__'8804'__3110 = erased
-- Relation.Binary.Construct.NaturalOrder.Left.reflexive
d_reflexive_3116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_3116 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_reflexive_3116 v4 v5 v6 v7 v8 v9
du_reflexive_3116 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_3116 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      v3 (coe v0 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))))
         v3 (coe v0 v3 v3) (coe v0 v3 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))))
            (coe v0 v3 v3) (coe v0 v3 v4) (coe v0 v3 v4)
            (let v6
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v6))
                  (coe v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186 v1 v3 v3 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)) v3)
               v5))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))
            (coe v0 v3 v3) v3 (coe v2 v3)))
-- Relation.Binary.Construct.NaturalOrder.Left.refl
d_refl_3194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_refl_3194 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_refl_3194 v4 v5 v6 v7
du_refl_3194 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_refl_3194 v0 v1 v2 v3 = coe v1 (coe v0 v3 v3) v3 (coe v2 v3)
-- Relation.Binary.Construct.NaturalOrder.Left.antisym
d_antisym_3202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_3202 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_antisym_3202 v4 v5 v6 v7 v8 v9 v10
du_antisym_3202 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_3202 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v3 v4
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
         v3 (coe v0 v3 v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
            (coe v0 v3 v4) (coe v0 v4 v3) v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
               (coe v0 v4 v3) v4 v4
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v1) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v7))
                     (coe v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36 v1 v4
                  (coe v0 v4 v3) v6))
            (coe v2 v3 v4))
         v5)
-- Relation.Binary.Construct.NaturalOrder.Left.total
d_total_3272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_3272 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_total_3272 v4 v5 v6 v7 v8 v9 v10
du_total_3272 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_3272 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84 (coe v1 (coe v0 v5 v6) v5)
      (\ v7 ->
         coe
           v2 v6 (coe v0 v5 v6) (coe v0 v6 v5) (coe v1 (coe v0 v5 v6) v6 v7)
           (coe v4 v5 v6))
      (coe v3 v5 v6)
-- Relation.Binary.Construct.NaturalOrder.Left.trans
d_trans_3288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3288 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_trans_3288 v4 v5 v6 v7 v8 v9 v10
du_trans_3288 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_3288 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v2 (coe v0 v2 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_200
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1))))))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1))))))
            (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v4)) (coe v0 v2 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1))))))
               (coe v0 v2 (coe v0 v3 v4)) (coe v0 (coe v0 v2 v3) v4)
               (coe v0 v2 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1))))))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 v4) (coe v0 v2 v4)
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v7))
                        (coe v0 v2 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                     (MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1))
                     (coe v0 v2 v3) v2 v4 v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
                        v2 (coe v0 v2 v3) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
                        v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 (coe v0 v3 v4))
                  (coe MAlonzo.Code.Algebra.Structures.d_assoc_482 v1 v2 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
               (MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)) v2 v2 v3
               (coe v0 v3 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
                  v2)
               v6))
         v5)
-- Relation.Binary.Construct.NaturalOrder.Left.respʳ
d_resp'691'_3372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'691'_3372 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_resp'691'_3372 v4 v5 v6 v7 v8 v9 v10
du_resp'691'_3372 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'691'_3372 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v2 (coe v0 v2 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))))
            (coe v0 v2 v3) (coe v0 v2 v4) (coe v0 v2 v4)
            (let v7
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v7))
                  (coe v0 v2 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186 v1 v2 v2 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)) v2)
               v5))
         v6)
-- Relation.Binary.Construct.NaturalOrder.Left.respˡ
d_resp'737'_3452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'737'_3452 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_resp'737'_3452 v4 v5 v6 v7 v8 v9 v10
du_resp'737'_3452 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'737'_3452 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v4 (coe v0 v4 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))))
         v4 v3 (coe v0 v4 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))))
            v3 (coe v0 v3 v2) (coe v0 v4 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))))
               (coe v0 v3 v2) (coe v0 v4 v2) (coe v0 v4 v2)
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v7))
                     (coe v0 v4 v2)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186 v1 v3 v4 v2 v2
                  v5
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1))
                     v2)))
            v6)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v1)) v3
            v4 v5))
-- Relation.Binary.Construct.NaturalOrder.Left.resp₂
d_resp'8322'_3532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_resp'8322'_3532 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_resp'8322'_3532 v4 v5
du_resp'8322'_3532 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_resp'8322'_3532 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_resp'691'_3372 (coe v0) (coe v1))
      (coe du_resp'737'_3452 (coe v0) (coe v1))
-- Relation.Binary.Construct.NaturalOrder.Left.dec
d_dec_3536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_3536 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_dec_3536 v4 v5 v6 v7
du_dec_3536 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec_3536 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤x
d_x'8729'y'8804'x_3628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8804'x_3628 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_x'8729'y'8804'x_3628 v4 v5 v6 v7
du_x'8729'y'8804'x_3628 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8804'x_3628 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe v0 v2 v3) (coe v0 (coe v0 v2 v3) v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5))))))))
         (coe v0 v2 v3) (coe v0 (coe v0 v2 v2) v3)
         (coe v0 (coe v0 v2 v3) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5))))))))
            (coe v0 (coe v0 v2 v2) v3) (coe v0 v2 (coe v0 v2 v3))
            (coe v0 (coe v0 v2 v3) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v4) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_200
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5))))))))
               (coe v0 v2 (coe v0 v2 v3)) (coe v0 (coe v0 v2 v3) v2)
               (coe v0 (coe v0 v2 v3) v2)
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                              coe
                                (let v5
                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                                           (coe v4) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_200
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                         (coe v5)))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe v0 (coe v0 v2 v3) v2)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_600 v1 v2 (coe v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_482
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
               v2 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
            (MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
            v2 (coe v0 v2 v2) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                        (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
               (coe v0 v2 v2) v2
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_518
                  (MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)) v2))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                        (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
               v3)))
-- Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤y
d_x'8729'y'8804'y_3638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8804'y_3638 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_x'8729'y'8804'y_3638 v4 v5 v6 v7
du_x'8729'y'8804'y_3638 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8804'y_3638 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe v0 v2 v3) (coe v0 (coe v0 v2 v3) v3)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5))))))))
         (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v3))
         (coe v0 (coe v0 v2 v3) v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5))))))))
            (coe v0 v2 (coe v0 v3 v3)) (coe v0 (coe v0 v2 v3) v3)
            (coe v0 (coe v0 v2 v3) v3)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                           coe
                             (let v5
                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v4) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe v0 (coe v0 v2 v3) v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                        (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
               (coe v0 (coe v0 v2 v3) v3) (coe v0 v2 (coe v0 v3 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_482
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                     (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
                  v2 v3 v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
            (MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
            v2 v2 v3 (coe v0 v3 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                        (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
               v2)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                        (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
               (coe v0 v3 v3) v3
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_518
                  (MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)) v3))))
-- Relation.Binary.Construct.NaturalOrder.Left._.∙-presʳ-≤
d_'8729''45'pres'691''45''8804'_3650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'pres'691''45''8804'_3650 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                     v9 v10
  = du_'8729''45'pres'691''45''8804'_3650 v4 v5 v6 v7 v8 v9 v10
du_'8729''45'pres'691''45''8804'_3650 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'pres'691''45''8804'_3650 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v4 (coe v0 v4 (coe v0 v2 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v7 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                   coe
                     (let v8
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v7) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))))))))
         v4 (coe v0 v4 v3) (coe v0 v4 (coe v0 v2 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))))))))
            (coe v0 v4 v3) (coe v0 (coe v0 v4 v2) v3)
            (coe v0 v4 (coe v0 v2 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v7 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                         coe
                           (let v8
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_200
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))))))))
               (coe v0 (coe v0 v4 v2) v3) (coe v0 v4 (coe v0 v2 v3))
               (coe v0 v4 (coe v0 v2 v3))
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v7 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
                              coe
                                (let v8
                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                                           (coe v7) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_200
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                         (coe v8)))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v7))
                     (coe v0 v4 (coe v0 v2 v3))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_482
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                     (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
                  v4 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
               (MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                     (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
               v4 (coe v0 v4 v2) v3 v3 v5
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_480
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                           (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
                  v3)))
         v6)
-- Relation.Binary.Construct.NaturalOrder.Left._.infimum
d_infimum_3662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_3662 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_infimum_3662 v4 v5 v6 v7
du_infimum_3662 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_infimum_3662 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_x'8729'y'8804'x_3628 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_x'8729'y'8804'y_3638 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            du_'8729''45'pres'691''45''8804'_3650 (coe v0) (coe v1) (coe v2)
            (coe v3)))
-- Relation.Binary.Construct.NaturalOrder.Left.isPreorder
d_isPreorder_3668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_3668 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_isPreorder_3668 v4 v5
du_isPreorder_3668 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_3668 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1))))
      (coe
         du_reflexive_3116 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1)))
         (coe MAlonzo.Code.Algebra.Structures.d_idem_518 (coe v1)))
      (coe
         du_trans_3288 (coe v0)
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1)))
-- Relation.Binary.Construct.NaturalOrder.Left.isPartialOrder
d_isPartialOrder_3702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_isPartialOrder_3702 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_isPartialOrder_3702 v4 v5
du_isPartialOrder_3702 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
du_isPartialOrder_3702 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_11935
      (coe
         du_isPreorder_3668 (coe v0)
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
      (coe
         du_antisym_3202 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
         (coe MAlonzo.Code.Algebra.Structures.d_comm_600 (coe v1)))
-- Relation.Binary.Construct.NaturalOrder.Left.isDecPartialOrder
d_isDecPartialOrder_3744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_286
d_isDecPartialOrder_3744 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isDecPartialOrder_3744 v4 v5 v6
du_isDecPartialOrder_3744 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_286
du_isDecPartialOrder_3744 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecPartialOrder'46'constructor_13765
      (coe du_isPartialOrder_3702 (coe v0) (coe v1)) (coe v2)
      (coe du_dec_3536 (coe v0) (coe v2))
-- Relation.Binary.Construct.NaturalOrder.Left.isTotalOrder
d_isTotalOrder_3750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_isTotalOrder_3750 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isTotalOrder_3750 v4 v5 v6
du_isTotalOrder_3750 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
du_isTotalOrder_3750 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_22821
      (coe du_isPartialOrder_3702 (coe v0) (coe v1))
      (coe
         du_total_3272 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                     (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                     (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
         (coe v2) (coe MAlonzo.Code.Algebra.Structures.d_comm_600 (coe v1)))
-- Relation.Binary.Construct.NaturalOrder.Left.isDecTotalOrder
d_isDecTotalOrder_3794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
d_isDecTotalOrder_3794 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isDecTotalOrder_3794 v4 v5 v6 v7
du_isDecTotalOrder_3794 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
du_isDecTotalOrder_3794 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_24961
      (coe du_isTotalOrder_3750 (coe v0) (coe v1) (coe v2)) (coe v3)
      (coe du_dec_3536 (coe v0) (coe v3))
-- Relation.Binary.Construct.NaturalOrder.Left.preorder
d_preorder_3802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
d_preorder_3802 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_preorder_3802 v4 v5
du_preorder_3802 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_136
du_preorder_3802 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2331
      (coe du_isPreorder_3668 (coe v0) (coe v1))
-- Relation.Binary.Construct.NaturalOrder.Left.poset
d_poset_3806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_poset_3806 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_poset_3806 v4 v5
du_poset_3806 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
du_poset_3806 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_9149
      (coe du_isPartialOrder_3702 (coe v0) (coe v1))
-- Relation.Binary.Construct.NaturalOrder.Left.decPoset
d_decPoset_3810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_582
d_decPoset_3810 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_decPoset_3810 v4 v5 v6
du_decPoset_3810 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_582
du_decPoset_3810 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecPoset'46'constructor_11149
      (coe du_isDecPartialOrder_3744 (coe v0) (coe v1) (coe v2))
-- Relation.Binary.Construct.NaturalOrder.Left.totalOrder
d_totalOrder_3816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
d_totalOrder_3816 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_totalOrder_3816 v4 v5 v6
du_totalOrder_3816 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966
du_totalOrder_3816 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_18801
      (coe du_isTotalOrder_3750 (coe v0) (coe v1) (coe v2))
-- Relation.Binary.Construct.NaturalOrder.Left.decTotalOrder
d_decTotalOrder_3822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
d_decTotalOrder_3822 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_decTotalOrder_3822 v4 v5 v6 v7
du_decTotalOrder_3822 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076
du_decTotalOrder_3822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_21007
      (coe du_isDecTotalOrder_3794 (coe v0) (coe v1) (coe v2) (coe v3))
