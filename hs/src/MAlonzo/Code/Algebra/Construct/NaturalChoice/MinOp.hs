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
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__22 = erased
-- Algebra.Construct.NaturalChoice.MinOp._._≲_
d__'8818'__26 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> ()
d__'8818'__26 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Associative
d_Associative_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_126 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Commutative
d_Commutative_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_132 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Congruent₁
d_Congruent'8321'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_134 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Congruent₂
d_Congruent'8322'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_136 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Idempotent
d_Idempotent_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_142 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Identity
d_Identity_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_148 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.LeftIdentity
d_LeftIdentity_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_174 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.LeftZero
d_LeftZero_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_182 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.RightIdentity
d_RightIdentity_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_204 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.RightZero
d_RightZero_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_212 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Selective
d_Selective_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_214 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Zero
d_Zero_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_232 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.IsBand
d_IsBand_244 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_276 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsMagma
d_IsMagma_332 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsMonoid
d_IsMonoid_344 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsSelectiveMagma
d_IsSelectiveMagma_384 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsSemigroup
d_IsSemigroup_388 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsBand.idem
d_idem_516 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 -> AgdaAny -> AgdaAny
d_idem_516 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_538 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsBand.isSemigroup
d_isSemigroup_524 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_528 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_524 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_536 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsCommutativeSemigroup.comm
d_comm_1106 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1106 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_580 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1116 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_578 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMagma.isEquivalence
d_isEquivalence_1910 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1910 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMagma.∙-cong
d_'8729''45'cong_1924 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1924 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMonoid.identity
d_identity_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2020 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_726 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsMonoid.isSemigroup
d_isSemigroup_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_2032 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSelectiveMagma.isMagma
d_isMagma_2742 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2742 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_460 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSelectiveMagma.sel
d_sel_2750 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2750 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_462 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSemigroup.assoc
d_assoc_2766 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2766 v0
  = coe MAlonzo.Code.Algebra.Structures.d_assoc_500 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp._.IsSemigroup.isMagma
d_isMagma_2770 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2770 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≤x
d_x'8851'y'8804'x_3160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_3160 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8851'y'8804'x_3160 v3 v4 v5 v6
du_x'8851'y'8804'x_3160 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_3160 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v3)
                v2
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                   v1 v2 v3 v5)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                      (coe v0)))
                (coe v2) (coe v3)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                      v1 v2 v3 v5))
                (coe v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≤y
d_x'8851'y'8804'y_3186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_3186 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8851'y'8804'y_3186 v3 v4 v5 v6
du_x'8851'y'8804'y_3186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_3186 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                      (coe v0)))
                (coe v3) (coe v2)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                      v1 v2 v3 v5))
                (coe v5)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
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
d_'8851''45'comm_3208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_3208 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'comm_3208 v3 v4 v5 v6
du_'8851''45'comm_3208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_3208 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                         (coe v0))))
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
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v2)
                   v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                      v1 v3 v2 v5))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                         (coe v0))))
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
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v2)
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                      v1 v3 v2 v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-congˡ
d_'8851''45'cong'737'_3234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_3234 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'cong'737'_3234 v3 v4 v5 v6 v7 v8
du_'8851''45'cong'737'_3234 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_3234 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v2 v3 in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v3)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v4)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v4)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v4))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v2 v4
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_112
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))
                            (coe v2) (coe v3) (coe v4) (coe v5) (coe v7))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                      v1 v2 v3 v7))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v3)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v4)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      v3 v4
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v4)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                     (coe v0)))))
                         v4
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v4)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v2 v4))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                            v1 v2 v4
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                     (coe v0)))
                               (coe v2) (coe v3) (coe v4) (coe v5) (coe v7))))
                      v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                      v1 v2 v3 v7))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-congʳ
d_'8851''45'cong'691'_3272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_3272 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'cong'691'_3272 v3 v4 v5 v6 v7 v8
du_'8851''45'cong'691'_3272 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_3272 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v3 v2)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v4 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                  (coe v0))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v3 v2)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v2 v3)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v4 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v2 v3)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v2 v4)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v4 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v2 v4)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v4 v2)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v4 v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v4 v2))
               (coe du_'8851''45'comm_3208 (coe v0) (coe v1) (coe v2) (coe v4)))
            (coe
               du_'8851''45'cong'737'_3234 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v4) (coe v5)))
         (coe du_'8851''45'comm_3208 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-cong
d_'8851''45'cong_3282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_3282 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8851''45'cong_3282 v3 v4 v5 v6 v7 v8 v9 v10
du_'8851''45'cong_3282 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_3282 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
               (coe v0))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v2)
         (\ v8 v9 -> v8) v4 v5)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v8 v9 -> v9)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v2)
         v4 v5)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v8 v9 -> v9)
         (\ v8 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
              v8 v5)
         v2 v3)
      (coe
         du_'8851''45'cong'737'_3234 (coe v0) (coe v1) (coe v2) (coe v4)
         (coe v5) (coe v7))
      (coe
         du_'8851''45'cong'691'_3272 (coe v0) (coe v1) (coe v5) (coe v2)
         (coe v3) (coe v6))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-assoc
d_'8851''45'assoc_3296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_3296 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'assoc_3296 v3 v4 v5 v6 v7
du_'8851''45'assoc_3296 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_3296 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v2 v3 in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Structures.d_total_142
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                    (coe v0))
                 v3 v4 in
       coe
         (case coe v5 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
              -> case coe v6 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                     -> coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
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
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v2 v3)
                                v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                v2 v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                v2
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v3 v4))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                         (coe v0))))
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
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                            (coe v0))))
                                   (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                               (coe v0)))))
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
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                               (coe v0))))
                                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                                  (coe v0)))))
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
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                            v1 v2
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                               v1 v3 v4)))
                                      (coe
                                         du_'8851''45'cong'737'_3234 (coe v0) (coe v1) (coe v2)
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                            v1 v3 v4)
                                         (coe v3)
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                            v1 v3 v4 v8)))
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                      v1 v2 v3 v7))
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                   v1 v2 v4
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                                      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                            (coe v0)))
                                      v2 v3 v4 v7 v8)))
                             (coe
                                du_'8851''45'cong'691'_3272 (coe v0) (coe v1) (coe v4)
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v2 v3)
                                (coe v2)
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                   v1 v2 v3 v7)))
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                     -> coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
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
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v2 v3)
                                v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                v2 v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                                v2
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v3 v4))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                         (coe v0))))
                                (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                            (coe v0)))))
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
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1 v2
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                         v1 v3 v4)))
                                (coe
                                   du_'8851''45'cong'737'_3234 (coe v0) (coe v1) (coe v2)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                      v1 v3 v4)
                                   (coe v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                                      v1 v3 v4 v8)))
                             (coe
                                du_'8851''45'cong'691'_3272 (coe v0) (coe v1) (coe v4)
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                   v1 v2 v3)
                                (coe v2)
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                                   v1 v2 v3 v7)))
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
              -> coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
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
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v3)
                         v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v4))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v4))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v4))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v2
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v3 v4)))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                            v1 v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                               v3 v4)
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
                                  v1 v3 v4)
                               v3 v2
                               (coe du_x'8851'y'8804'x_3160 (coe v0) (coe v1) (coe v3) (coe v4))
                               v7)))
                      (coe
                         du_'8851''45'cong'691'_3272 (coe v0) (coe v1) (coe v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            v2 v3)
                         (coe v3)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                            v1 v2 v3 v7)))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-idem
d_'8851''45'idem_3336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_3336 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'idem_3336 v3 v4 v5
du_'8851''45'idem_3336 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_3336 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v1 v2 v2
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_refl_104
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
               (coe v0)))
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-sel
d_'8851''45'sel_3340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_3340 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'sel_3340 v3 v4 v5 v6
du_'8851''45'sel_3340 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_3340 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
         v1 v2 v3)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
         v1 v2 v3)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_142
         (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
            (coe v0))
         v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identityˡ
d_'8851''45'identity'737'_3348 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_3348 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identityʳ
d_'8851''45'identity'691'_3354 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_3354 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identity
d_'8851''45'identity_3360 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_3360 v0 v1 v2
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
d_'8851''45'zero'737'_3366 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_3366 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zeroʳ
d_'8851''45'zero'691'_3372 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_3372 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zero
d_'8851''45'zero_3378 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_3378 v0 v1 v2
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
d_'8851''45'isMagma_3382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8851''45'isMagma_3382 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isMagma_3382 v3 v4
du_'8851''45'isMagma_3382 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8851''45'isMagma_3382 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
               (coe v0))))
      (coe du_'8851''45'cong_3282 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isSemigroup
d_'8851''45'isSemigroup_3384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8851''45'isSemigroup_3384 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSemigroup_3384 v3 v4
du_'8851''45'isSemigroup_3384 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8851''45'isSemigroup_3384 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe du_'8851''45'isMagma_3382 (coe v0) (coe v1))
      (coe du_'8851''45'assoc_3296 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isBand
d_'8851''45'isBand_3386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8851''45'isBand_3386 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isBand_3386 v3 v4
du_'8851''45'isBand_3386 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_'8851''45'isBand_3386 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_566
      (coe du_'8851''45'isSemigroup_3384 (coe v0) (coe v1))
      (coe du_'8851''45'idem_3336 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_3388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_'8851''45'isCommutativeSemigroup_3388 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isCommutativeSemigroup_3388 v3 v4
du_'8851''45'isCommutativeSemigroup_3388 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_'8851''45'isCommutativeSemigroup_3388 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_610
      (coe du_'8851''45'isSemigroup_3384 (coe v0) (coe v1))
      (coe du_'8851''45'comm_3208 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_3390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
d_'8851''45'isSelectiveMagma_3390 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSelectiveMagma_3390 v3 v4
du_'8851''45'isSelectiveMagma_3390 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_452
du_'8851''45'isSelectiveMagma_3390 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_486
      (coe du_'8851''45'isMagma_3382 (coe v0) (coe v1))
      (coe du_'8851''45'sel_3340 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isMonoid
d_'8851''45'isMonoid_3394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8851''45'isMonoid_3394 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'isMonoid_3394 v3 v4 v5 v6
du_'8851''45'isMonoid_3394 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8851''45'isMonoid_3394 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe du_'8851''45'isSemigroup_3384 (coe v0) (coe v1))
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
d_'8851''45'rawMagma_3398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'8851''45'rawMagma_3398 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8851''45'rawMagma_3398 v4
du_'8851''45'rawMagma_3398 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
du_'8851''45'rawMagma_3398 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v0))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-magma
d_'8851''45'magma_3400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8851''45'magma_3400 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'magma_3400 v3 v4
du_'8851''45'magma_3400 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_'8851''45'magma_3400 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isMagma_3382 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-semigroup
d_'8851''45'semigroup_3402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8851''45'semigroup_3402 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'semigroup_3402 v3 v4
du_'8851''45'semigroup_3402 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_'8851''45'semigroup_3402 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isSemigroup_3384 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-band
d_'8851''45'band_3404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
d_'8851''45'band_3404 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'band_3404 v3 v4
du_'8851''45'band_3404 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_620
du_'8851''45'band_3404 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_682
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isBand_3386 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_3406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_'8851''45'commutativeSemigroup_3406 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'commutativeSemigroup_3406 v3 v4
du_'8851''45'commutativeSemigroup_3406 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_'8851''45'commutativeSemigroup_3406 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_754
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isCommutativeSemigroup_3388 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-selectiveMagma
d_'8851''45'selectiveMagma_3408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
d_'8851''45'selectiveMagma_3408 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'selectiveMagma_3408 v3 v4
du_'8851''45'selectiveMagma_3408 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_130
du_'8851''45'selectiveMagma_3408 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_184
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe du_'8851''45'isSelectiveMagma_3390 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoid
d_'8851''45'monoid_3412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8851''45'monoid_3412 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'monoid_3412 v3 v4 v5 v6
du_'8851''45'monoid_3412 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'8851''45'monoid_3412 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      v2
      (coe
         du_'8851''45'isMonoid_3394 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_3420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_3420 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8776'x'8658'x'8804'y_3420 v3 v4 v5 v6 v7
du_x'8851'y'8776'x'8658'x'8804'y_3420 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_3420 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v2 v3 in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6 -> coe v6
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                      (coe v0)))
                v2 v3
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v3)
                   v3
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v2 v3)
                      v2 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                      v1 v2 v3 v6))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_3452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_3452 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8776'y'8658'y'8804'x_3452 v3 v4 v5 v6 v7
du_x'8851'y'8776'y'8658'y'8804'x_3452 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_3452 v0 v1 v2 v3 v4
  = coe
      du_x'8851'y'8776'x'8658'x'8804'y_3420 (coe v0) (coe v1) (coe v3)
      (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
            v3 v2)
         (coe v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v3 v2)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
               v2 v3)
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v2 v3)
               v3 v3
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                           (coe v0))))
                  (coe v3))
               v4)
            (coe du_'8851''45'comm_3208 (coe v0) (coe v1) (coe v3) (coe v2))))
-- Algebra.Construct.NaturalChoice.MinOp.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_3466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8851'_3466 ~v0 ~v1 ~v2 v3 v4 v5 v6
                                           v7 v8 v9
  = du_mono'45''8804''45'distrib'45''8851'_3466 v3 v4 v5 v6 v7 v8 v9
du_mono'45''8804''45'distrib'45''8851'_3466 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8851'_3466 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_142
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                 (coe v0))
              v5 v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v5 v6))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   (coe v2 v5) (coe v2 v6))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v5 v6))
                   (coe v2 v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe v2 v5) (coe v2 v6))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe v2 v5)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v2 v5) (coe v2 v6))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v2 v5) (coe v2 v6))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe v2 v5) (coe v2 v6)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 (coe v2 v5) (coe v2 v6) (coe v4 v5 v6 v8)))
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v5 v6)
                      v5
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_128
                         v1 v5 v6 v8)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
           -> coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
                (coe
                   v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v5 v6))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   (coe v2 v5) (coe v2 v6))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v5 v6))
                   (coe v2 v6)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      (coe v2 v5) (coe v2 v6))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                               (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0)))))
                      (coe v2 v6)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v2 v5) (coe v2 v6))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         (coe v2 v5) (coe v2 v6))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                                  (coe v0))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                            (coe v2 v5) (coe v2 v6)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 (coe v2 v5) (coe v2 v6) (coe v4 v6 v5 v8)))
                   (coe
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                         v5 v6)
                      v6
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_134
                         v1 v5 v6 v8)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_3512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_3512 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8658'x'8851'z'8804'y_3512 v3 v4 v5 v6 v7 v8
du_x'8804'y'8658'x'8851'z'8804'y_3512 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_3512 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_90
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v2 v4)
      v2 v3
      (coe du_x'8851'y'8804'x_3160 (coe v0) (coe v1) (coe v2) (coe v4))
      v5
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_3524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_3524 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8658'z'8851'x'8804'y_3524 v3 v4 v5 v6 v7 v8
du_x'8804'y'8658'z'8851'x'8804'y_3524 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_3524 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_90
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v4 v2)
      v2 v3
      (coe du_x'8851'y'8804'y_3186 (coe v0) (coe v1) (coe v4) (coe v2))
      v5
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_3536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_3536 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8851'z'8658'x'8804'y_3536 v3 v4 v5 v6 v7 v8
du_x'8804'y'8851'z'8658'x'8804'y_3536 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_3536 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_90
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
            (coe v0)))
      v2
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v3 v4)
      v3 v5
      (coe du_x'8851'y'8804'x_3160 (coe v0) (coe v1) (coe v3) (coe v4))
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_3550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_3550 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8851'z'8658'x'8804'z_3550 v3 v4 v5 v6 v7 v8
du_x'8804'y'8851'z'8658'x'8804'z_3550 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_3550 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_90
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
            (coe v0)))
      v2
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v3 v4)
      v4 v5
      (coe du_x'8851'y'8804'y_3186 (coe v0) (coe v1) (coe v3) (coe v4))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-mono-≤
d_'8851''45'mono'45''8804'_3558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_3558 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
                                v10
  = du_'8851''45'mono'45''8804'_3558 v3 v4 v5 v6 v7 v8 v9 v10
du_'8851''45'mono'45''8804'_3558 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_3558 v0 v1 v2 v3 v4 v5 v6 v7
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
                 MAlonzo.Code.Relation.Binary.Structures.d_total_142
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                    (coe v0))
                 v3 v5) in
    coe
      (case coe v8 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_112
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v4)
                (coe v3)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v3 v5)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v5)
                   v3 v9)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                   (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   v2 v3
                   (coe du_x'8851'y'8804'x_3160 (coe v0) (coe v1) (coe v2) (coe v4))
                   v6)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
           -> coe
                MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_112
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v2 v4)
                (coe v5)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                   v3 v5)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v3 v5)
                   v5 v9)
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                   (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                      v2 v4)
                   v4 v5
                   (coe du_x'8851'y'8804'y_3186 (coe v0) (coe v1) (coe v2) (coe v4))
                   v7)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_3608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_3608 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'mono'737''45''8804'_3608 v3 v4 v5 v6 v7 v8
du_'8851''45'mono'737''45''8804'_3608 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_3608 v0 v1 v2 v3 v4 v5
  = coe
      du_'8851''45'mono'45''8804'_3558 (coe v0) (coe v1) (coe v3)
      (coe v4) (coe v2) (coe v2) (coe v5)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_refl_104
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
               (coe v0)))
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_3618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_3618 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'mono'691''45''8804'_3618 v3 v4 v5 v6 v7 v8
du_'8851''45'mono'691''45''8804'_3618 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_3618 v0 v1 v2 v3 v4 v5
  = coe
      du_'8851''45'mono'45''8804'_3558 (coe v0) (coe v1) (coe v2)
      (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_refl_104
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
               (coe v0)))
         (coe v2))
      (coe v5)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-glb
d_'8851''45'glb_3630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_3630 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8851''45'glb_3630 v3 v4 v5 v6 v7 v8 v9
du_'8851''45'glb_3630 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_3630 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v3 v4)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
         v2 v2)
      (coe v2) (coe du_'8851''45'idem_3336 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8851''45'mono'45''8804'_3558 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v2) (coe v4) (coe v5) (coe v6))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-triangulate
d_'8851''45'triangulate_3644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_3644 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'triangulate_3644 v3 v4 v5 v6 v7
du_'8851''45'triangulate_3644 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_240 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_3644 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152)
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
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                  (coe v0))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                     (coe v0)))))
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
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                     (coe v0))))
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
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                        (coe v0))))
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
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v3
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v4)))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v3 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                           (coe v0))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                              (coe v0)))))
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v4))
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v4))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_140
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_262
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                           v3 v4)))
                  (coe
                     du_'8851''45'assoc_3296 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v4)))
               (coe
                  du_'8851''45'cong'737'_3234 (coe v0) (coe v1) (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v3)
                     v4)
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                     v3
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                        v3 v4))
                  (coe
                     du_'8851''45'assoc_3296 (coe v0) (coe v1) (coe v3) (coe v3)
                     (coe v4))))
            (coe
               du_'8851''45'assoc_3296 (coe v0) (coe v1) (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v3 v3)
               (coe v4)))
         (coe
            du_'8851''45'cong'691'_3272 (coe v0) (coe v1) (coe v4)
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v2)
               (\ v5 v6 -> v5)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v3 v3)
               v3)
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
               (\ v5 v6 -> v6)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v2)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v3 v3)
               v3)
            (coe
               du_'8851''45'cong'737'_3234 (coe v0) (coe v1) (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122 v1
                  v3 v3)
               (coe v3) (coe du_'8851''45'idem_3336 (coe v0) (coe v1) (coe v3)))))
