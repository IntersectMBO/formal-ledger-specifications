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

module MAlonzo.Code.Algebra.Properties.Loop where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.QQuasigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Loop._.Identity
d_Identity_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_140 = erased
-- Algebra.Properties.Loop.x//x≈ε
d_x'47''47'x'8776'ε_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
d_x'47''47'x'8776'ε_280 ~v0 ~v1 v2 v3
  = du_x'47''47'x'8776'ε_280 v2 v3
du_x'47''47'x'8776'ε_280 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
du_x'47''47'x'8776'ε_280 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_3340
            (coe
               MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
               (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4914 v0 v1 v1)
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_280
         (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0)) (coe v1)
         (coe v1)
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_3472
            (MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)) v1))
-- Algebra.Properties.Loop.x\\x≈ε
d_x'92''92'x'8776'ε_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
d_x'92''92'x'8776'ε_286 ~v0 ~v1 v2 v3
  = du_x'92''92'x'8776'ε_286 v2 v3
du_x'92''92'x'8776'ε_286 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
du_x'92''92'x'8776'ε_286 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_3340
            (coe
               MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
               (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4912 v0 v1 v1)
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_264
         (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v0))
         (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_3474
            (MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)) v1))
-- Algebra.Properties.Loop.ε\\x≈x
d_ε'92''92'x'8776'x_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
d_ε'92''92'x'8776'x_292 ~v0 ~v1 v2 v3
  = du_ε'92''92'x'8776'x_292 v2 v3
du_ε'92''92'x'8776'x_292 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
du_ε'92''92'x'8776'x_292 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_3340
            (coe
               MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
               (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))
      v1
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'92''92'__4912 v0
         (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0)) v1)
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_264
         (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0)) (coe v1)
         (coe v1)
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_3472
            (MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)) v1))
-- Algebra.Properties.Loop.x//ε≈x
d_x'47''47'ε'8776'x_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
d_x'47''47'ε'8776'x_298 ~v0 ~v1 v2 v3
  = du_x'47''47'ε'8776'x_298 v2 v3
du_x'47''47'ε'8776'x_298 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 -> AgdaAny -> AgdaAny
du_x'47''47'ε'8776'x_298 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_3340
            (coe
               MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
               (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))
      v1
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'47''47'__4914 v0 v1
         (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_280
         (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v0))
         (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_3474
            (MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)) v1))
-- Algebra.Properties.Loop.identityˡ-unique
d_identity'737''45'unique_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_306 ~v0 ~v1 v2 v3 v4 v5
  = du_identity'737''45'unique_306 v2 v3 v4 v5
du_identity'737''45'unique_306 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_306 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v1 (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_3340
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
                        (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))))
         v1 (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4914 v0 v2 v2)
         (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_3340
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
                           (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4914 v0 v2 v2)
            (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_3340
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
                              (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0)))
            (coe du_x'47''47'x'8776'ε_280 (coe v0) (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_280
            (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v0))
            (coe v1) (coe v2) (coe v2) (coe v3)))
-- Algebra.Properties.Loop.identityʳ-unique
d_identity'691''45'unique_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_318 ~v0 ~v1 v2 v3 v4 v5
  = du_identity'691''45'unique_318 v2 v3 v4 v5
du_identity'691''45'unique_318 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_318 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v2 (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_3340
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
                        (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))))
         v2 (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4912 v0 v1 v1)
         (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_3340
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
                           (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4912 v0 v1 v1)
            (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_3340
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420
                              (coe MAlonzo.Code.Algebra.Bundles.d_isLoop_4918 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d_ε_4916 (coe v0)))
            (coe du_x'92''92'x'8776'ε_286 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_264
            (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4978 (coe v0))
            (coe v1) (coe v2) (coe v1) (coe v3)))
-- Algebra.Properties.Loop.identity-unique
d_identity'45'unique_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_328 ~v0 ~v1 v2 v3 v4
  = du_identity'45'unique_328 v2 v3 v4
du_identity'45'unique_328 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_328 v0 v1 v2
  = coe
      du_identity'737''45'unique_306 (coe v0) (coe v1) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2 v1)
