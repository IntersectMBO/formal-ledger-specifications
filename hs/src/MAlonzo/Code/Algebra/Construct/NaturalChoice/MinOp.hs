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

module MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Construct.NaturalChoice.MinOp._._≈_
d__'8776'__22 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__22 = erased
-- Algebra.Construct.NaturalChoice.MinOp._._≲_
d__'8818'__26 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> ()
d__'8818'__26 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Associative
d_Associative_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_126 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Commutative
d_Commutative_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_130 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Congruent₁
d_Congruent'8321'_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_132 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Congruent₂
d_Congruent'8322'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_134 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Idempotent
d_Idempotent_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_140 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Identity
d_Identity_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_146 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.LeftIdentity
d_LeftIdentity_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_172 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.LeftZero
d_LeftZero_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_180 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.RightIdentity
d_RightIdentity_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_202 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.RightZero
d_RightZero_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_210 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Selective
d_Selective_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_212 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Zero
d_Zero_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_230 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.IsBand
d_IsBand_238 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_250 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsMagma
d_IsMagma_278 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsMonoid
d_IsMonoid_284 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsSelectiveMagma
d_IsSelectiveMagma_304 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsSemigroup
d_IsSemigroup_306 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsBand.idem
d_idem_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 -> AgdaAny -> AgdaAny
d_idem_420 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_518 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsBand.isSemigroup
d_isSemigroup_428 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_428 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsCommutativeSemigroup.comm
d_comm_784 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_784 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_558 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_794 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMagma.isEquivalence
d_isEquivalence_1588 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1588 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMagma.∙-cong
d_'8729''45'cong_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1602 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMonoid.identity
d_identity_1698 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1698 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMonoid.isSemigroup
d_isSemigroup_1710 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1710 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSelectiveMagma.isMagma
d_isMagma_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2420 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_444 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSelectiveMagma.sel
d_sel_2428 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2428 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_446 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSemigroup.assoc
d_assoc_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2444 v0
  = coe MAlonzo.Code.Algebra.Structures.d_assoc_482 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSemigroup.isMagma
d_isMagma_2448 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2448 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≤x
d_x'8851'y'8804'x_2838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_2838 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8851'y'8804'x_2838 v3 v4 v5 v6
du_x'8851'y'8804'x_2838 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_2838 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v3)
                v2
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                   v1 v2 v3 v5)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v6))
                   (coe v2) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                    coe
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v7) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v2 v3)
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                               v1 v2 v3 v5))))
                   (coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≤y
d_x'8851'y'8804'y_2864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_2864 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8851'y'8804'y_2864 v3 v4 v5 v6
du_x'8851'y'8804'y_2864 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_2864 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v6))
                   (coe v3) (coe v2)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                    coe
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v7) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v2 v3)
                            v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                               v1 v2 v3 v5))))
                   (coe v5))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v3)
                v3
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                   v1 v2 v3 v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-comm
d_'8851''45'comm_2886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_2886 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'comm_2886 v3 v4 v5 v6
du_'8851''45'comm_2886 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_2886 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
              coe
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v6) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v3)
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v2)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v2 v3 v5)
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                       coe
                         (let v9
                                = coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v8) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v3 v2)
                               v2
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                                  v1 v3 v2 v5))))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
              coe
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v6) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v3)
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v2)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 v2 v3 v5)
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                       coe
                         (let v9
                                = coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v8) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v3 v2)
                               v3
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                  v1 v3 v2 v5))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-congˡ
d_'8851''45'cong'737'_2912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_2912 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'cong'737'_2912 v3 v4 v5 v6 v7 v8
du_'8851''45'cong'737'_2912 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_2912 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                 (coe v0))
              v2 v3 in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v8)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v3)
                         v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v4)
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v10))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v10)))
                               v2
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v2 v4)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v2 v4)
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v11))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 v2 v4)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                  v1 v2 v4
                                  (let v11
                                         = coe
                                             MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262
                                             (coe v0) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158
                                           (coe v11))
                                        (coe v2) (coe v3) (coe v4) (coe v5) (coe v7))))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                            v1 v2 v3 v7))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v8)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v3)
                         v3
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v4)
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v10))
                               v3 v4
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v2 v4)
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                        (coe v11))
                                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                           (coe v11)))
                                     v4
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 v2 v4)
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 v2 v4)
                                     (let v12
                                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                   (coe v0)) in
                                      coe
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                              (coe v12))
                                           (coe
                                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                              v1 v2 v4)))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                                        v1 v2 v4
                                        (let v12
                                               = coe
                                                   MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262
                                                   (coe v0) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158
                                                 (coe v12))
                                              (coe v2) (coe v3) (coe v4) (coe v5) (coe v7))))))
                               v5))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                            v1 v2 v3 v7))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-congʳ
d_'8851''45'cong'691'_2950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_2950 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'cong'691'_2950 v3 v4 v5 v6 v7 v8
du_'8851''45'cong'691'_2950 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_2950 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v6)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v3 v2)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v4 v2)
         (let v7
                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe v7))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                     (coe v7)))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v3 v2)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v4 v2)
               (let v8
                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                        (coe v8))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v2 v4)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v4 v2)
                     (let v9
                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                              (coe v9))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              v2 v4)
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              v4 v2)
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              v4 v2)
                           (let v10
                                  = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                    (coe v10))
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1 v4 v2)))
                           (coe du_'8851''45'comm_2886 (coe v0) (coe v1) (coe v2) (coe v4))))
                     (coe
                        du_'8851''45'cong'737'_2912 (coe v0) (coe v1) (coe v2) (coe v3)
                        (coe v4) (coe v5))))
               (coe du_'8851''45'comm_2886 (coe v0) (coe v1) (coe v2) (coe v3)))))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-cong
d_'8851''45'cong_2960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_2960 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8851''45'cong_2960 v3 v4 v5 v6 v7 v8 v9 v10
du_'8851''45'cong_2960 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_2960 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
    coe
      (let v9
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v8) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v2)
               (\ v10 v11 -> v10) v4 v5)
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
               (\ v10 v11 -> v11)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v2)
               v4 v5)
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
               (\ v10 v11 -> v11)
               (\ v10 ->
                  coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                    v10 v5)
               v2 v3)
            (coe
               du_'8851''45'cong'737'_2912 (coe v0) (coe v1) (coe v2) (coe v4)
               (coe v5) (coe v7))
            (coe
               du_'8851''45'cong'691'_2950 (coe v0) (coe v1) (coe v5) (coe v2)
               (coe v3) (coe v6))))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-assoc
d_'8851''45'assoc_2974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_2974 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'assoc_2974 v3 v4 v5 v6 v7
du_'8851''45'assoc_2974 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_2974 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                 (coe v0))
              v2 v3 in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Structures.d_total_134
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                    (coe v0))
                 v3 v4 in
       coe
         (case coe v5 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
              -> case coe v6 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                     -> let v9
                              = coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe v9)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v2 v3)
                                v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                v2
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v3 v4))
                             (let v10
                                    = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                      (coe v10))
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                         v1 v2 v3)
                                      v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1 v2 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1 v2
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                         v1 v3 v4))
                                   (let v11
                                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                 (coe v0)) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                            (coe v11))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                            v1 v2 v4)
                                         v2
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                            v1 v2
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                               v1 v3 v4))
                                         (let v12
                                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                                  (coe v12))
                                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                                     (coe v12)))
                                               v2
                                               (coe
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                  v1 v2 v3)
                                               (coe
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                  v1 v2
                                                  (coe
                                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                     v1 v3 v4))
                                               (let v13
                                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                          (coe
                                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                             (coe v0)) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                                        (coe v13))
                                                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                                           (coe v13)))
                                                     (coe
                                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                        v1 v2 v3)
                                                     (coe
                                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                        v1 v2
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                           v1 v3 v4))
                                                     (coe
                                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                        v1 v2
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                           v1 v3 v4))
                                                     (let v14
                                                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                                (coe
                                                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                                              (coe v14))
                                                           (coe
                                                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                              v1 v2
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                                 v1 v3 v4))))
                                                     (coe
                                                        du_'8851''45'cong'737'_2912 (coe v0)
                                                        (coe v1) (coe v2)
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                           v1 v3 v4)
                                                        (coe v3)
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                                           v1 v3 v4 v8))))
                                               (coe
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                                  v1 v2 v3 v7)))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                            v1 v2 v4
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                                               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                     (coe v0)))
                                               v2 v3 v4 v7 v8))))
                                   (coe
                                      du_'8851''45'cong'691'_2950 (coe v0) (coe v1) (coe v4)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                         v1 v2 v3)
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                         v1 v2 v3 v7)))))
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                     -> let v9
                              = coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe v9)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v2 v3)
                                v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                v2
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v3 v4))
                             (let v10
                                    = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                      (coe v10))
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                         v1 v2 v3)
                                      v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1 v2 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1 v2
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                         v1 v3 v4))
                                   (let v11
                                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                 (coe v0)) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                            (coe v11))
                                         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                               (coe v11)))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                            v1 v2 v4)
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                            v1 v2
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                               v1 v3 v4))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                            v1 v2
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                               v1 v3 v4))
                                         (let v12
                                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                                  (coe v12))
                                               (coe
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                  v1 v2
                                                  (coe
                                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                                     v1 v3 v4))))
                                         (coe
                                            du_'8851''45'cong'737'_2912 (coe v0) (coe v1) (coe v2)
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                               v1 v3 v4)
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                                               v1 v3 v4 v8))))
                                   (coe
                                      du_'8851''45'cong'691'_2950 (coe v0) (coe v1) (coe v4)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                         v1 v2 v3)
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                         v1 v2 v3 v7)))))
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
              -> let v8
                       = coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                      (coe v8)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v3)
                         v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v4))
                      (let v9
                             = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                    (coe v0)) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                               (coe v9))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v2 v3)
                               v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v2
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v3 v4))
                            (let v10
                                   = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                          (coe v0)) in
                             coe
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                     (coe v10))
                                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                        (coe v10)))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                     v1 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                     v1 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 v3 v4))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                     v1 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 v3 v4))
                                  (let v11
                                         = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                           (coe v11))
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                           v1 v2
                                           (coe
                                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                              v1 v3 v4))))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                                     v1 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 v3 v4)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                                        (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                              (coe v0)))
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                           v1 v3 v4)
                                        v3 v2
                                        (coe
                                           du_x'8851'y'8804'x_2838 (coe v0) (coe v1) (coe v3)
                                           (coe v4))
                                        v7))))
                            (coe
                               du_'8851''45'cong'691'_2950 (coe v0) (coe v1) (coe v4)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v2 v3)
                               (coe v3)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                                  v1 v2 v3 v7)))))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-idem
d_'8851''45'idem_3014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_3014 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'idem_3014 v3 v4 v5
du_'8851''45'idem_3014 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_3014 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v1 v2 v2
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v3))
            (coe v2)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-sel
d_'8851''45'sel_3018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_3018 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'sel_3018 v3 v4 v5 v6
du_'8851''45'sel_3018 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_3018 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
         v1 v2 v3)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
         v1 v2 v3)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_134
         (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
            (coe v0))
         v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identityˡ
d_'8851''45'identity'737'_3026 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_3026 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identityʳ
d_'8851''45'identity'691'_3032 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_3032 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identity
d_'8851''45'identity_3038 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_3038 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zeroˡ
d_'8851''45'zero'737'_3044 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_3044 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zeroʳ
d_'8851''45'zero'691'_3050 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_3050 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zero
d_'8851''45'zero_3056 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_3056 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isMagma
d_'8851''45'isMagma_3060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_3060 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isMagma_3060 v3 v4
du_'8851''45'isMagma_3060 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8851''45'isMagma_3060 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
               (coe v0))))
      (coe du_'8851''45'cong_2960 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isSemigroup
d_'8851''45'isSemigroup_3062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_3062 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSemigroup_3062 v3 v4
du_'8851''45'isSemigroup_3062 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8851''45'isSemigroup_3062 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe du_'8851''45'isMagma_3060 (coe v0) (coe v1))
      (coe du_'8851''45'assoc_2974 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isBand
d_'8851''45'isBand_3064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_3064 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isBand_3064 v3 v4
du_'8851''45'isBand_3064 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_'8851''45'isBand_3064 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_11205
      (coe du_'8851''45'isSemigroup_3062 (coe v0) (coe v1))
      (coe du_'8851''45'idem_3014 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_3066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_3066 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isCommutativeSemigroup_3066 v3 v4
du_'8851''45'isCommutativeSemigroup_3066 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'8851''45'isCommutativeSemigroup_3066 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
      (coe du_'8851''45'isSemigroup_3062 (coe v0) (coe v1))
      (coe du_'8851''45'comm_2886 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_3068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_3068 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSelectiveMagma_3068 v3 v4
du_'8851''45'isSelectiveMagma_3068 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
du_'8851''45'isSelectiveMagma_3068 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSelectiveMagma'46'constructor_9631
      (coe du_'8851''45'isMagma_3060 (coe v0) (coe v1))
      (coe du_'8851''45'sel_3018 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isMonoid
d_'8851''45'isMonoid_3072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8851''45'isMonoid_3072 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'isMonoid_3072 v3 v4 v5 v6
du_'8851''45'isMonoid_3072 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8851''45'isMonoid_3072 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe du_'8851''45'isSemigroup_3062 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                 v1 v2 v4 (coe v3 v4)))
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                 v1 v4 v2 (coe v3 v4))))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-rawMagma
d_'8851''45'rawMagma_3076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
d_'8851''45'rawMagma_3076 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8851''45'rawMagma_3076 v4
du_'8851''45'rawMagma_3076 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_42
du_'8851''45'rawMagma_3076 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMagma'46'constructor_487
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v0))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-magma
d_'8851''45'magma_3078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
d_'8851''45'magma_3078 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'magma_3078 v3 v4
du_'8851''45'magma_3078 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_72
du_'8851''45'magma_3078 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1323
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isMagma_3060 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-semigroup
d_'8851''45'semigroup_3080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_'8851''45'semigroup_3080 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'semigroup_3080 v3 v4
du_'8851''45'semigroup_3080 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_'8851''45'semigroup_3080 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9837
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isSemigroup_3062 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-band
d_'8851''45'band_3082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
d_'8851''45'band_3082 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'band_3082 v3 v4
du_'8851''45'band_3082 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_600
du_'8851''45'band_3082 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_10925
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isBand_3064 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_3084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
d_'8851''45'commutativeSemigroup_3084 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'commutativeSemigroup_3084 v3 v4
du_'8851''45'commutativeSemigroup_3084 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_666
du_'8851''45'commutativeSemigroup_3084 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12079
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isCommutativeSemigroup_3066 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-selectiveMagma
d_'8851''45'selectiveMagma_3086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
d_'8851''45'selectiveMagma_3086 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'selectiveMagma_3086 v3 v4
du_'8851''45'selectiveMagma_3086 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_126
du_'8851''45'selectiveMagma_3086 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_SelectiveMagma'46'constructor_2331
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isSelectiveMagma_3068 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoid
d_'8851''45'monoid_3090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'8851''45'monoid_3090 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'monoid_3090 v3 v4 v5 v6
du_'8851''45'monoid_3090 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'8851''45'monoid_3090 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16201
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      v2
      (coe
         du_'8851''45'isMonoid_3072 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_3098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_3098 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8776'x'8658'x'8804'y_3098 v3 v4 v5 v6 v7
du_x'8851'y'8776'x'8658'x'8804'y_3098 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_3098 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                 (coe v0))
              v2 v3 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6 -> coe v6
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                      (coe v0)))
                v2 v3
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                 coe
                   (let v8
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v7) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                         v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v3)
                         v3
                         (let v9
                                = coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                          coe
                            (let v10
                                   = coe
                                       MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184
                                       (coe v9) in
                             coe
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                     (coe v10))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                     v1 v2 v3)
                                  v2 v4)))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                            v1 v2 v3 v6))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_3130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_3130 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8776'y'8658'y'8804'x_3130 v3 v4 v5 v6 v7
du_x'8851'y'8776'y'8658'y'8804'x_3130 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_3130 v0 v1 v2 v3 v4
  = coe
      du_x'8851'y'8776'x'8658'x'8804'y_3098 (coe v0) (coe v1) (coe v3)
      (coe v2)
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v5)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v3 v2)
            (coe v3)
            (let v6
                   = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                     (coe v6))
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v3 v2)
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v2 v3)
                  v3
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                           (coe v7))
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v2 v3)
                        v3 v3
                        (let v8
                               = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                 (coe v8))
                              (coe v3)))
                        v4))
                  (coe
                     du_'8851''45'comm_2886 (coe v0) (coe v1) (coe v3) (coe v2))))))
-- Algebra.Construct.NaturalChoice.MinOp.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_3144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8851'_3144 ~v0 ~v1 ~v2 v3 v4 v5 v6
                                           v7 v8 v9
  = du_mono'45''8804''45'distrib'45''8851'_3144 v3 v4 v5 v6 v7 v8 v9
du_mono'45''8804''45'distrib'45''8851'_3144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8851'_3144 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                 (coe v0))
              v5 v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
           -> let v9
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v9)
                   (coe
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v5 v6))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe v2 v5) (coe v2 v6))
                   (let v10
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v10))
                         (coe
                            v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v5 v6))
                         (coe v2 v5)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe v2 v5) (coe v2 v6))
                         (let v11
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v11))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v11)))
                               (coe v2 v5)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 (coe v2 v5) (coe v2 v6))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 (coe v2 v5) (coe v2 v6))
                               (let v12
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v12))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 (coe v2 v5) (coe v2 v6))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                  v1 (coe v2 v5) (coe v2 v6) (coe v4 v5 v6 v8))))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v5 v6)
                            v5
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                               v1 v5 v6 v8)))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
           -> let v9
                    = coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe v9)
                   (coe
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v5 v6))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe v2 v5) (coe v2 v6))
                   (let v10
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v10))
                         (coe
                            v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v5 v6))
                         (coe v2 v6)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe v2 v5) (coe v2 v6))
                         (let v11
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v11))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                     (coe v11)))
                               (coe v2 v6)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 (coe v2 v5) (coe v2 v6))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 (coe v2 v5) (coe v2 v6))
                               (let v12
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v12))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                        v1 (coe v2 v5) (coe v2 v6))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                                  v1 (coe v2 v5) (coe v2 v6) (coe v4 v6 v5 v8))))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v5 v6)
                            v6
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                               v1 v5 v6 v8)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_3190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_3190 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8658'x'8851'z'8804'y_3190 v3 v4 v5 v6 v7 v8
du_x'8804'y'8658'x'8851'z'8804'y_3190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_3190 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v2 v4)
      v2 v3
      (coe du_x'8851'y'8804'x_2838 (coe v0) (coe v1) (coe v2) (coe v4))
      v5
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_3202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_3202 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8658'z'8851'x'8804'y_3202 v3 v4 v5 v6 v7 v8
du_x'8804'y'8658'z'8851'x'8804'y_3202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_3202 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v4 v2)
      v2 v3
      (coe du_x'8851'y'8804'y_2864 (coe v0) (coe v1) (coe v4) (coe v2))
      v5
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_3214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_3214 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8851'z'8658'x'8804'y_3214 v3 v4 v5 v6 v7 v8
du_x'8804'y'8851'z'8658'x'8804'y_3214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_3214 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
            (coe v0)))
      v2
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v3 v4)
      v3 v5
      (coe du_x'8851'y'8804'x_2838 (coe v0) (coe v1) (coe v3) (coe v4))
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_3228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_3228 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8851'z'8658'x'8804'z_3228 v3 v4 v5 v6 v7 v8
du_x'8804'y'8851'z'8658'x'8804'z_3228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_3228 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
            (coe v0)))
      v2
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v3 v4)
      v4 v5
      (coe du_x'8851'y'8804'y_2864 (coe v0) (coe v1) (coe v3) (coe v4))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-mono-≤
d_'8851''45'mono'45''8804'_3236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_3236 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
                                v10
  = du_'8851''45'mono'45''8804'_3236 v3 v4 v5 v6 v7 v8 v9 v10
du_'8851''45'mono'45''8804'_3236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_3236 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v8 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v3 v5 v8)))
              (coe
                 (\ v8 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 v3 v5 v8)))
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_total_134
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                    (coe v0))
                 v3 v5) in
    coe
      (case coe v8 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v10))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v5)
                   (let v11
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                    coe
                      (let v12
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v11) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v12))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v5)
                            v3 v9)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v4)
                      v2 v3
                      (coe du_x'8851'y'8804'x_2838 (coe v0) (coe v1) (coe v2) (coe v4))
                      v6))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v10))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   (coe v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v5)
                   (let v11
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
                    coe
                      (let v12
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v11) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v12))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v5)
                            v5 v9)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v4)
                      v4 v5
                      (coe du_x'8851'y'8804'y_2864 (coe v0) (coe v1) (coe v2) (coe v4))
                      v7))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_3286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_3286 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'mono'737''45''8804'_3286 v3 v4 v5 v6 v7 v8
du_'8851''45'mono'737''45''8804'_3286 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_3286 v0 v1 v2 v3 v4 v5
  = coe
      du_'8851''45'mono'45''8804'_3236 (coe v0) (coe v1) (coe v3)
      (coe v4) (coe v2) (coe v2) (coe v5)
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v6))
            (coe v2)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_3296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_3296 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'mono'691''45''8804'_3296 v3 v4 v5 v6 v7 v8
du_'8851''45'mono'691''45''8804'_3296 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_3296 v0 v1 v2 v3 v4 v5
  = coe
      du_'8851''45'mono'45''8804'_3236 (coe v0) (coe v1) (coe v2)
      (coe v2) (coe v3) (coe v4)
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v6))
            (coe v2)))
      (coe v5)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-glb
d_'8851''45'glb_3308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_3308 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8851''45'glb_3308 v3 v4 v5 v6 v7 v8 v9
du_'8851''45'glb_3308 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_3308 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v7))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v3 v4)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v2 v2)
         (coe v2) (coe du_'8851''45'idem_3014 (coe v0) (coe v1) (coe v2))
         (coe
            du_'8851''45'mono'45''8804'_3236 (coe v0) (coe v1) (coe v2)
            (coe v3) (coe v2) (coe v4) (coe v5) (coe v6)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-triangulate
d_'8851''45'triangulate_3322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_3322 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'triangulate_3322 v3 v4 v5 v6 v7
du_'8851''45'triangulate_3322 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_3322 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v5)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v2 v3)
            v4)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v2 v3)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v3 v4))
         (let v6
                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe v6))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                     (coe v6)))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v2 v3)
                  v4)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v3))
                  v4)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v3 v4))
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                        (coe v7))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              v3 v3))
                        v4)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              v3 v3)
                           v4))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v3 v4))
                     (let v8
                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                              (coe v8))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              v2
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1 v3 v3)
                                 v4))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              v2
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                 v3 v4))
                           (let v9
                                  = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                    (coe v9))
                                 (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                       (coe v9)))
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1 v2
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                       v1 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                          v1 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                       v1 v2 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                       v1 v3 v4))
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                       v1 v2 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                       v1 v3 v4))
                                 (let v10
                                        = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                          (coe v10))
                                       (coe
                                          MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                             v1 v2 v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                             v1 v3 v4))))
                                 (coe
                                    du_'8851''45'assoc_2974 (coe v0) (coe v1) (coe v2) (coe v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                       v1 v3 v4))))
                           (coe
                              du_'8851''45'cong'737'_2912 (coe v0) (coe v1) (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1 v3 v3)
                                 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                    v1 v3 v4))
                              (coe
                                 du_'8851''45'assoc_2974 (coe v0) (coe v1) (coe v3) (coe v3)
                                 (coe v4)))))
                     (coe
                        du_'8851''45'assoc_2974 (coe v0) (coe v1) (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v3 v3)
                        (coe v4))))
               (coe
                  du_'8851''45'cong'691'_2950 (coe v0) (coe v1) (coe v4)
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v2)
                     (\ v7 v8 -> v7)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v3)
                     v3)
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v7 v8 -> v8)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v2)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v3)
                     v3)
                  (coe
                     du_'8851''45'cong'737'_2912 (coe v0) (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v3)
                     (coe v3)
                     (coe du_'8851''45'idem_3014 (coe v0) (coe v1) (coe v3)))))))
