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
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__22 = erased
-- Algebra.Construct.NaturalChoice.MinOp._._≲_
d__'8818'__24 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> ()
d__'8818'__24 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Associative
d_Associative_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_118 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Commutative
d_Commutative_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_122 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Congruent₁
d_Congruent'8321'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_124 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Congruent₂
d_Congruent'8322'_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_126 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Idempotent
d_Idempotent_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_132 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Identity
d_Identity_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_138 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.LeftIdentity
d_LeftIdentity_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_164 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.LeftZero
d_LeftZero_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_172 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.RightIdentity
d_RightIdentity_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_194 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.RightZero
d_RightZero_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_202 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Selective
d_Selective_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_204 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.Zero
d_Zero_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_222 = erased
-- Algebra.Construct.NaturalChoice.MinOp._.IsBand
d_IsBand_230 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_240 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsMagma
d_IsMagma_266 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsMonoid
d_IsMonoid_272 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsSelectiveMagma
d_IsSelectiveMagma_292 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp._.IsSemigroup
d_IsSemigroup_294 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≤x
d_x'8851'y'8804'x_2674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_2674 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8851'y'8804'x_2674 v3 v4 v5 v6
du_x'8851'y'8804'x_2674 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_2674 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v6))
                   (coe v2) (coe v2)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v3)
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v7) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v2 v3)
                            v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                               v1 v2 v3 v5))))
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v7))
                         (coe v2))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v6))
                   (coe v2) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v3)
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v7) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v2 v3)
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                               v1 v2 v3 v5))))
                   (coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≤y
d_x'8851'y'8804'y_2700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_2700 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8851'y'8804'y_2700 v3 v4 v5 v6
du_x'8851'y'8804'y_2700 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_2700 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v6))
                   (coe v3) (coe v2)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v3)
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v7) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v2 v3)
                            v2
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                               v1 v2 v3 v5))))
                   (coe v5))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v6))
                   (coe v3) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v3)
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v7) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v2 v3)
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                               v1 v2 v3 v5))))
                   (let v7
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v7))
                         (coe v3))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-comm
d_'8851''45'comm_2722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_2722 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'comm_2722 v3 v4 v5 v6
du_'8851''45'comm_2722 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_2722 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v2 v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v6) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v2 v3)
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v2)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                         v1 v2 v3 v5)
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                       coe
                         (let v9
                                = coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v8) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v3 v2)
                               v2
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                  v1 v3 v2 v5))))))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
           -> let v6
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v6) in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v7))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v2 v3)
                      v3
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v3 v2)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                         v1 v2 v3 v5)
                      (let v8
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                       coe
                         (let v9
                                = coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v8) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v3 v2)
                               v3
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                  v1 v3 v2 v5))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-congˡ
d_'8851''45'cong'737'_2748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_2748 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'cong'737'_2748 v3 v4 v5 v6 v7 v8
du_'8851''45'cong'737'_2748 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_2748 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v4)
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v2 v3)
                         v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v2 v4)
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v2 v4)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v2 v4)
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v11))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v2 v4)))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                  v1 v2 v4
                                  (let v11
                                         = coe
                                             MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252
                                             (coe v0) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                           (coe v11))
                                        (coe v2) (coe v3) (coe v4) (coe v5) (coe v7))))))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
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
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v4)
                   (let v9
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                 (coe v0)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                            (coe v9))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v2 v3)
                         v3
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v2 v4)
                         (let v10
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                       (coe v0)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                  (coe v10))
                               v3 v4
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v2 v4)
                               (let v11
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v2 v4)
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v2 v4)
                                     (let v12
                                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                                   (coe v0)) in
                                      coe
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                              (coe v12))
                                           (coe
                                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                              v1 v2 v4)))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                        v1 v2 v4
                                        (let v12
                                               = coe
                                                   MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252
                                                   (coe v0) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                                                 (coe v12))
                                              (coe v2) (coe v3) (coe v4) (coe v5) (coe v7))))))
                               v5))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                            v1 v2 v3 v7))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-congʳ
d_'8851''45'cong'691'_2786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_2786 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'cong'691'_2786 v3 v4 v5 v6 v7 v8
du_'8851''45'cong'691'_2786 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_2786 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v6)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
            v3 v2)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
            v4 v2)
         (let v7
                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  v3 v2)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  v4 v2)
               (let v8
                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                        (coe v8))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v2 v4)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v4 v2)
                     (let v9
                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                              (coe v9))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              v2 v4)
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              v4 v2)
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              v4 v2)
                           (let v10
                                  = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                    (coe v10))
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1 v4 v2)))
                           (coe du_'8851''45'comm_2722 (coe v0) (coe v1) (coe v2) (coe v4))))
                     (coe
                        du_'8851''45'cong'737'_2748 (coe v0) (coe v1) (coe v2) (coe v3)
                        (coe v4) (coe v5))))
               (coe du_'8851''45'comm_2722 (coe v0) (coe v1) (coe v2) (coe v3)))))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-cong
d_'8851''45'cong_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_2796 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8851''45'cong_2796 v3 v4 v5 v6 v7 v8 v9 v10
du_'8851''45'cong_2796 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_2796 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
    coe
      (let v9
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v8) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  v2)
               (\ v10 v11 -> v10) v4 v5)
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
               (\ v10 v11 -> v11)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  v2)
               v4 v5)
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
               (\ v10 v11 -> v11)
               (\ v10 ->
                  coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                    v10 v5)
               v2 v3)
            (coe
               du_'8851''45'cong'737'_2748 (coe v0) (coe v1) (coe v2) (coe v4)
               (coe v5) (coe v7))
            (coe
               du_'8851''45'cong'691'_2786 (coe v0) (coe v1) (coe v5) (coe v2)
               (coe v3) (coe v6))))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-assoc
d_'8851''45'assoc_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_2810 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'assoc_2810 v3 v4 v5 v6 v7
du_'8851''45'assoc_2810 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_2810 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                 (coe v0))
              v2 v3 in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Structures.d_total_134
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                   v1 v2 v3)
                                v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                v2
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                   v1 v3 v4))
                             (let v10
                                    = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                      (coe v10))
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                      v1
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                         v1 v2 v3)
                                      v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                      v1 v2 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                      v1 v2
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                         v1 v3 v4))
                                   (let v11
                                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                                 (coe v0)) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                            (coe v11))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                            v1 v2 v4)
                                         v2
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                            v1 v2
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                               v1 v3 v4))
                                         (let v12
                                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                  v1 v2 v3)
                                               (coe
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                  v1 v2
                                                  (coe
                                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                     v1 v3 v4))
                                               (let v13
                                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                          (coe
                                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                        v1 v2 v3)
                                                     (coe
                                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                        v1 v2
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                           v1 v3 v4))
                                                     (coe
                                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                        v1 v2
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                           v1 v3 v4))
                                                     (let v14
                                                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                                (coe
                                                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                                              (coe v14))
                                                           (coe
                                                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                              v1 v2
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                                 v1 v3 v4))))
                                                     (coe
                                                        du_'8851''45'cong'737'_2748 (coe v0)
                                                        (coe v1) (coe v2)
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                           v1 v3 v4)
                                                        (coe v3)
                                                        (coe
                                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                                           v1 v3 v4 v8))))
                                               (coe
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                                  v1 v2 v3 v7)))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                            v1 v2 v4
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                                               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                                     (coe v0)))
                                               v2 v3 v4 v7 v8))))
                                   (coe
                                      du_'8851''45'cong'691'_2786 (coe v0) (coe v1) (coe v4)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                         v1 v2 v3)
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
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
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                   v1 v2 v3)
                                v4)
                             (coe
                                MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                v2
                                (coe
                                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                   v1 v3 v4))
                             (let v10
                                    = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                                      (coe v10))
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                      v1
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                         v1 v2 v3)
                                      v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                      v1 v2 v4)
                                   (coe
                                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                      v1 v2
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                         v1 v3 v4))
                                   (let v11
                                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                            v1 v2 v4)
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                            v1 v2
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                               v1 v3 v4))
                                         (coe
                                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                            v1 v2
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                               v1 v3 v4))
                                         (let v12
                                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                                  (coe v12))
                                               (coe
                                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                  v1 v2
                                                  (coe
                                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                                     v1 v3 v4))))
                                         (coe
                                            du_'8851''45'cong'737'_2748 (coe v0) (coe v1) (coe v2)
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                               v1 v3 v4)
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                               v1 v3 v4 v8))))
                                   (coe
                                      du_'8851''45'cong'691'_2786 (coe v0) (coe v1) (coe v4)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                         v1 v2 v3)
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
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
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v2 v3)
                         v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v3 v4))
                      (let v9
                             = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                    (coe v0)) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                               (coe v9))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v2 v3)
                               v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v4)
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v2
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v3 v4))
                            (let v10
                                   = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v3 v4)
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v3 v4))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v3 v4))
                                  (let v11
                                         = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                           (coe v11))
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                           v1 v2
                                           (coe
                                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                              v1 v3 v4))))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                     v1 v2
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 v3 v4)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                                        (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                              (coe v0)))
                                        (coe
                                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                           v1 v3 v4)
                                        v3 v2
                                        (coe
                                           du_x'8851'y'8804'x_2674 (coe v0) (coe v1) (coe v3)
                                           (coe v4))
                                        v7))))
                            (coe
                               du_'8851''45'cong'691'_2786 (coe v0) (coe v1) (coe v4)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 v2 v3)
                               (coe v3)
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                  v1 v2 v3 v7)))))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-idem
d_'8851''45'idem_2850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_2850 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'idem_2850 v3 v4 v5
du_'8851''45'idem_2850 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_2850 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
      v1 v2 v2
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v3))
            (coe v2)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-sel
d_'8851''45'sel_2854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_2854 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'sel_2854 v3 v4 v5 v6
du_'8851''45'sel_2854 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_2854 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
         v1 v2 v3)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
         v1 v2 v3)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_134
         (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
            (coe v0))
         v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identityˡ
d_'8851''45'identity'737'_2862 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_2862 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identityʳ
d_'8851''45'identity'691'_2868 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_2868 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-identity
d_'8851''45'identity_2874 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_2874 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zeroˡ
d_'8851''45'zero'737'_2880 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_2880 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zeroʳ
d_'8851''45'zero'691'_2886 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_2886 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-zero
d_'8851''45'zero_2892 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_2892 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isMagma
d_'8851''45'isMagma_2896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_2896 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isMagma_2896 v3 v4
du_'8851''45'isMagma_2896 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8851''45'isMagma_2896 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
               (coe v0))))
      (coe du_'8851''45'cong_2796 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isSemigroup
d_'8851''45'isSemigroup_2898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_2898 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSemigroup_2898 v3 v4
du_'8851''45'isSemigroup_2898 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8851''45'isSemigroup_2898 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe du_'8851''45'isMagma_2896 (coe v0) (coe v1))
      (coe du_'8851''45'assoc_2810 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isBand
d_'8851''45'isBand_2900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_2900 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isBand_2900 v3 v4
du_'8851''45'isBand_2900 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8851''45'isBand_2900 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_10105
      (coe du_'8851''45'isSemigroup_2898 (coe v0) (coe v1))
      (coe du_'8851''45'idem_2850 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_2902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_2902 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isCommutativeSemigroup_2902 v3 v4
du_'8851''45'isCommutativeSemigroup_2902 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'8851''45'isCommutativeSemigroup_2902 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_10991
      (coe du_'8851''45'isSemigroup_2898 (coe v0) (coe v1))
      (coe du_'8851''45'comm_2722 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_2904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_2904 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSelectiveMagma_2904 v3 v4
du_'8851''45'isSelectiveMagma_2904 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
du_'8851''45'isSelectiveMagma_2904 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSelectiveMagma'46'constructor_8535
      (coe du_'8851''45'isMagma_2896 (coe v0) (coe v1))
      (coe du_'8851''45'sel_2854 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-isMonoid
d_'8851''45'isMonoid_2908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8851''45'isMonoid_2908 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'isMonoid_2908 v3 v4 v5 v6
du_'8851''45'isMonoid_2908 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8851''45'isMonoid_2908 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe du_'8851''45'isSemigroup_2898 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                 v1 v2 v4 (coe v3 v4)))
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                 v1 v4 v2 (coe v3 v4))))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-rawMagma
d_'8851''45'rawMagma_2912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
d_'8851''45'rawMagma_2912 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8851''45'rawMagma_2912 v4
du_'8851''45'rawMagma_2912 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
du_'8851''45'rawMagma_2912 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMagma'46'constructor_79
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v0))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-magma
d_'8851''45'magma_2914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_2914 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'magma_2914 v3 v4
du_'8851''45'magma_2914 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_8
du_'8851''45'magma_2914 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      (coe du_'8851''45'isMagma_2896 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-semigroup
d_'8851''45'semigroup_2916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_2916 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'semigroup_2916 v3 v4
du_'8851''45'semigroup_2916 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
du_'8851''45'semigroup_2916 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      (coe du_'8851''45'isSemigroup_2898 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-band
d_'8851''45'band_2918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_2918 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'band_2918 v3 v4
du_'8851''45'band_2918 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_536
du_'8851''45'band_2918 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_9687
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      (coe du_'8851''45'isBand_2900 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_2920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_2920 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'commutativeSemigroup_2920 v3 v4
du_'8851''45'commutativeSemigroup_2920 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
du_'8851''45'commutativeSemigroup_2920 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_10829
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      (coe du_'8851''45'isCommutativeSemigroup_2902 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-selectiveMagma
d_'8851''45'selectiveMagma_2922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_2922 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'selectiveMagma_2922 v3 v4
du_'8851''45'selectiveMagma_2922 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
du_'8851''45'selectiveMagma_2922 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_SelectiveMagma'46'constructor_1189
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      (coe du_'8851''45'isSelectiveMagma_2904 (coe v0) (coe v1))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoid
d_'8851''45'monoid_2926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'8851''45'monoid_2926 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8851''45'monoid_2926 v3 v4 v5 v6
du_'8851''45'monoid_2926 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_'8851''45'monoid_2926 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
         (coe v1))
      v2
      (coe
         du_'8851''45'isMonoid_2908 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_2934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_2934 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8776'x'8658'x'8804'y_2934 v3 v4 v5 v6 v7
du_x'8851'y'8776'x'8658'x'8804'y_2934 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_2934 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                      (coe v0)))
                v2 v3
                (let v7
                       = coe
                           MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                 coe
                   (let v8
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v7) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v8))
                         v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            v2 v3)
                         v3
                         (let v9
                                = coe
                                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                          coe
                            (let v10
                                   = coe
                                       MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180
                                       (coe v9) in
                             coe
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                     (coe v10))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                     v1 v2 v3)
                                  v2 v4)))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                            v1 v2 v3 v6))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_2966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_2966 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8776'y'8658'y'8804'x_2966 v3 v4 v5 v6 v7
du_x'8851'y'8776'y'8658'y'8804'x_2966 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_2966 v0 v1 v2 v3 v4
  = coe
      du_x'8851'y'8776'x'8658'x'8804'y_2934 (coe v0) (coe v1) (coe v3)
      (coe v2)
      (let v5
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v5)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
               v3 v2)
            (coe v3)
            (let v6
                   = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                     (coe v6))
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                     v3 v2)
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                     v2 v3)
                  v3
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                           (coe v7))
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                           v2 v3)
                        v3 v3
                        (let v8
                               = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                     du_'8851''45'comm_2722 (coe v0) (coe v1) (coe v3) (coe v2))))))
-- Algebra.Construct.NaturalChoice.MinOp.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_2980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8851'_2980 ~v0 ~v1 ~v2 v3 v4 v5 v6
                                           v7 v8 v9
  = du_mono'45''8804''45'distrib'45''8851'_2980 v3 v4 v5 v6 v7 v8 v9
du_mono'45''8804''45'distrib'45''8851'_2980 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8851'_2980 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_134
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v5 v6))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      (coe v2 v5) (coe v2 v6))
                   (let v10
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v5 v6))
                         (coe v2 v5)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            (coe v2 v5) (coe v2 v6))
                         (let v11
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v2 v5) (coe v2 v6))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v2 v5) (coe v2 v6))
                               (let v12
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v12))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 (coe v2 v5) (coe v2 v6))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                                  v1 (coe v2 v5) (coe v2 v6) (coe v4 v5 v6 v8))))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v5 v6)
                            v5
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
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
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v5 v6))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      (coe v2 v5) (coe v2 v6))
                   (let v10
                          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v5 v6))
                         (coe v2 v6)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                            (coe v2 v5) (coe v2 v6))
                         (let v11
                                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v2 v5) (coe v2 v6))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                  v1 (coe v2 v5) (coe v2 v6))
                               (let v12
                                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                        (coe v12))
                                     (coe
                                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                        v1 (coe v2 v5) (coe v2 v6))))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                                  v1 (coe v2 v5) (coe v2 v6) (coe v4 v6 v5 v8))))
                         (coe
                            v3
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v5 v6)
                            v6
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                               v1 v5 v6 v8)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_3026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_3026 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8658'x'8851'z'8804'y_3026 v3 v4 v5 v6 v7 v8
du_x'8804'y'8658'x'8851'z'8804'y_3026 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_3026 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
         v2 v4)
      v2 v3
      (coe du_x'8851'y'8804'x_2674 (coe v0) (coe v1) (coe v2) (coe v4))
      v5
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_3038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_3038 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8658'z'8851'x'8804'y_3038 v3 v4 v5 v6 v7 v8
du_x'8804'y'8658'z'8851'x'8804'y_3038 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_3038 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
         v4 v2)
      v2 v3
      (coe du_x'8851'y'8804'y_2700 (coe v0) (coe v1) (coe v4) (coe v2))
      v5
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_3050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_3050 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8851'z'8658'x'8804'y_3050 v3 v4 v5 v6 v7 v8
du_x'8804'y'8851'z'8658'x'8804'y_3050 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_3050 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
            (coe v0)))
      v2
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
         v3 v4)
      v3 v5
      (coe du_x'8851'y'8804'x_2674 (coe v0) (coe v1) (coe v3) (coe v4))
-- Algebra.Construct.NaturalChoice.MinOp.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_3064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_3064 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_x'8804'y'8851'z'8658'x'8804'z_3064 v3 v4 v5 v6 v7 v8
du_x'8804'y'8851'z'8658'x'8804'z_3064 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_3064 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
            (coe v0)))
      v2
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
         v3 v4)
      v4 v5
      (coe du_x'8851'y'8804'y_2700 (coe v0) (coe v1) (coe v3) (coe v4))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-mono-≤
d_'8851''45'mono'45''8804'_3072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_3072 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
                                v10
  = du_'8851''45'mono'45''8804'_3072 v3 v4 v5 v6 v7 v8 v9 v10
du_'8851''45'mono'45''8804'_3072 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_3072 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe du_'8851''45'sel_2854 (coe v0) (coe v1) (coe v3) (coe v5) in
    coe
      (case coe v8 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v10))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v4)
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v3 v5)
                   (let v11
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (let v12
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v11) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v12))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v5)
                            v3 v9)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v2 v4)
                      v2 v3
                      (coe du_x'8851'y'8804'x_2674 (coe v0) (coe v1) (coe v2) (coe v4))
                      v6))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
           -> let v10
                    = coe
                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v10))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v2 v4)
                   (coe v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                      v3 v5)
                   (let v11
                          = coe
                              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
                    coe
                      (let v12
                             = coe
                                 MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v11) in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v12))
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                               v3 v5)
                            v5 v9)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                         v2 v4)
                      v4 v5
                      (coe du_x'8851'y'8804'y_2700 (coe v0) (coe v1) (coe v2) (coe v4))
                      v7))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_3122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_3122 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'mono'737''45''8804'_3122 v3 v4 v5 v6 v7 v8
du_'8851''45'mono'737''45''8804'_3122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_3122 v0 v1 v2 v3 v4 v5
  = coe
      du_'8851''45'mono'45''8804'_3072 (coe v0) (coe v1) (coe v3)
      (coe v4) (coe v2) (coe v2) (coe v5)
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v6))
            (coe v2)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_3132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_3132 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8851''45'mono'691''45''8804'_3132 v3 v4 v5 v6 v7 v8
du_'8851''45'mono'691''45''8804'_3132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_3132 v0 v1 v2 v3 v4 v5
  = coe
      du_'8851''45'mono'45''8804'_3072 (coe v0) (coe v1) (coe v2)
      (coe v2) (coe v3) (coe v4)
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v6))
            (coe v2)))
      (coe v5)
-- Algebra.Construct.NaturalChoice.MinOp.⊓-glb
d_'8851''45'glb_3144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_3144 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8851''45'glb_3144 v3 v4 v5 v6 v7 v8 v9
du_'8851''45'glb_3144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_3144 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_preorder_252 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v7))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
            v3 v4)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
            v2 v2)
         (coe v2) (coe du_'8851''45'idem_2850 (coe v0) (coe v1) (coe v2))
         (coe
            du_'8851''45'mono'45''8804'_3072 (coe v0) (coe v1) (coe v2)
            (coe v3) (coe v2) (coe v4) (coe v5) (coe v6)))
-- Algebra.Construct.NaturalChoice.MinOp.⊓-triangulate
d_'8851''45'triangulate_3158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_3158 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'triangulate_3158 v3 v4 v5 v6 v7
du_'8851''45'triangulate_3158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_3158 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v5)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
               v2 v3)
            v4)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
               v2 v3)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
               v3 v4))
         (let v6
                = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                     v2 v3)
                  v4)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v3 v3))
                  v4)
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                     v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                     v3 v4))
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                        (coe v7))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                           v2
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              v3 v3))
                        v4)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              v3 v3)
                           v4))
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                           v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                           v3 v4))
                     (let v8
                            = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                              (coe v8))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              v2
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1 v3 v3)
                                 v4))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              v2
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                 v3 v4))
                           (let v9
                                  = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
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
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1 v2
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                       v1 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                          v1 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                       v1 v2 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                       v1 v3 v4))
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                       v1 v2 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                       v1 v3 v4))
                                 (let v10
                                        = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_244
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                                          (coe v10))
                                       (coe
                                          MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                             v1 v2 v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                             v1 v3 v4))))
                                 (coe
                                    du_'8851''45'assoc_2810 (coe v0) (coe v1) (coe v2) (coe v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                       v1 v3 v4))))
                           (coe
                              du_'8851''45'cong'737'_2748 (coe v0) (coe v1) (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1 v3 v3)
                                 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                                 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114
                                    v1 v3 v4))
                              (coe
                                 du_'8851''45'assoc_2810 (coe v0) (coe v1) (coe v3) (coe v3)
                                 (coe v4)))))
                     (coe
                        du_'8851''45'assoc_2810 (coe v0) (coe v1) (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                           v3 v3)
                        (coe v4))))
               (coe
                  du_'8851''45'cong'691'_2786 (coe v0) (coe v1) (coe v4)
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v2)
                     (\ v7 v8 -> v7)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v3 v3)
                     v3)
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v7 v8 -> v8)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v2)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v3 v3)
                     v3)
                  (coe
                     du_'8851''45'cong'737'_2748 (coe v0) (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__114 v1
                        v3 v3)
                     (coe v3)
                     (coe du_'8851''45'idem_2850 (coe v0) (coe v1) (coe v3)))))))
