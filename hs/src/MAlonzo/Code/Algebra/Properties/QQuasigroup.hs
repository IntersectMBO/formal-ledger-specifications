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

module MAlonzo.Code.Algebra.Properties.QQuasigroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Quasigroup._.Cancellative
d_Cancellative_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Cancellative_112 = erased
-- Algebra.Properties.Quasigroup._.LeftCancellative
d_LeftCancellative_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_144 = erased
-- Algebra.Properties.Quasigroup._.RightCancellative
d_RightCancellative_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_174 = erased
-- Algebra.Properties.Quasigroup.y≈x\\z
d_y'8776'x'92''92'z_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8776'x'92''92'z_262 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_y'8776'x'92''92'z_262 v2 v3 v4 v5 v6
du_y'8776'x'92''92'z_262 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8776'x'92''92'z_262 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      v2 (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1 v3)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                     (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                  (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)))))
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v2))
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1 v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v2))
            (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                           (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
               (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.du_'92''92''45'cong'737'_3088
               (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))
               (coe v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v2)
               (coe v3) (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3106
            (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)) v1 v2))
-- Algebra.Properties.Quasigroup.x≈z//y
d_x'8776'z'47''47'y_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'z'47''47'y_278 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_x'8776'z'47''47'y_278 v2 v3 v4 v5 v6
du_x'8776'z'47''47'y_278 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'z'47''47'y_278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      v1 (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0 v3 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                     (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                  (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)))))
         v1
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v2) v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0 v3 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v2) v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0 v3 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0 v3 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                           (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
               (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0 v3 v2))
            (coe
               MAlonzo.Code.Algebra.Structures.du_'47''47''45'cong'691'_3100
               (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))
               (coe v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v2)
               (coe v3) (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3110
            (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)) v2 v1))
-- Algebra.Properties.Quasigroup.cancelˡ
d_cancel'737'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_288 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_cancel'737'_288 v2 v3 v4 v5 v6
du_cancel'737'_288 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                     (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v3))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4382 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v3))
            v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                           (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
               (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3106
               (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)) v1 v3))
         (coe
            du_y'8776'x'92''92'z_262 (coe v0) (coe v1) (coe v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v1 v3)
            (coe v4)))
-- Algebra.Properties.Quasigroup.cancelʳ
d_cancel'691'_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_298 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_cancel'691'_298 v2 v3 v4 v5 v6
du_cancel'691'_298 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_298 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                     (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v3 v1) v1)
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                        (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4384 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v3 v1) v1)
            v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_3056
                           (coe MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0))))))
               (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3110
               (MAlonzo.Code.Algebra.Bundles.d_isQuasigroup_4386 (coe v0)) v1 v3))
         (coe
            du_x'8776'z'47''47'y_278 (coe v0) (coe v2) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__4380 v0 v3 v1)
            (coe v4)))
-- Algebra.Properties.Quasigroup.cancel
d_cancel_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_308 ~v0 ~v1 v2 = du_cancel_308 v2
du_cancel_308 ::
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_308 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_cancel'737'_288 (coe v0)) (coe du_cancel'691'_298 (coe v0))
