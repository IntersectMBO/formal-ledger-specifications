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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Loop._.Identity
d_Identity_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_138 = erased
-- Algebra.Properties.Loop.x//x≈ε
d_x'47''47'x'8776'ε_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
d_x'47''47'x'8776'ε_278 ~v0 ~v1 v2 v3
  = du_x'47''47'x'8776'ε_278 v2 v3
du_x'47''47'x'8776'ε_278 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
du_x'47''47'x'8776'ε_278 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v1 v1)
      (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                   coe
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3)))))))
         (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)
            v1)
         (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                      coe
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)
               v1)
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                           coe
                             (let v3
                                    = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
                                        (coe v2) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                                      (coe v3)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_rightDivides'691'_3038
                  (MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2)) v1
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))))
         (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'47''47''45'cong'691'_3028
               (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_3114
                  (MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0)) v1))))
-- Algebra.Properties.Loop.x\\x≈ε
d_x'92''92'x'8776'ε_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
d_x'92''92'x'8776'ε_284 ~v0 ~v1 v2 v3
  = du_x'92''92'x'8776'ε_284 v2 v3
du_x'92''92'x'8776'ε_284 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
du_x'92''92'x'8776'ε_284 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0 v1 v1)
      (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                   coe
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3)))))))
         (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0 v1
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))))
         (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                      coe
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0 v1
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                           coe
                             (let v3
                                    = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
                                        (coe v2) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                                      (coe v3)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_leftDivides'691'_3034
                  (MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2)) v1
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))))
         (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'92''92''45'cong'737'_3016
               (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0 v1
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_3116
                  (MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0)) v1))))
-- Algebra.Properties.Loop.ε\\x≈x
d_ε'92''92'x'8776'x_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
d_ε'92''92'x'8776'x_290 ~v0 ~v1 v2 v3
  = du_ε'92''92'x'8776'x_290 v2 v3
du_ε'92''92'x'8776'x_290 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
du_ε'92''92'x'8776'x_290 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0
         (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                   coe
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                      coe
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                           coe
                             (let v3
                                    = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
                                        (coe v2) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                                      (coe v3)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_leftDivides'737'_3032
                  (MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2))
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_3114
            (MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)))
-- Algebra.Properties.Loop.x//ε≈x
d_x'47''47'ε'8776'x_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
d_x'47''47'ε'8776'x_296 ~v0 ~v1 v2 v3
  = du_x'47''47'ε'8776'x_296 v2 v3
du_x'47''47'ε'8776'x_296 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 -> AgdaAny -> AgdaAny
du_x'47''47'ε'8776'x_296 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v1
         (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                   coe
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v1
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                      coe
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v3))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__4408 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v1
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                           coe
                             (let v3
                                    = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
                                        (coe v2) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                                      (coe v3)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_rightDivides'737'_3036
                  (MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v2))
                  (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_3116
            (MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v1
               (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0)))))
-- Algebra.Properties.Loop.identityˡ-unique
d_identity'737''45'unique_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_304 ~v0 ~v1 v2 v3 v4 v5
  = du_identity'737''45'unique_304 v2 v3 v4 v5
du_identity'737''45'unique_304 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_304 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v1 (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v5))))))))
         v1 (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v2 v2)
         (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v5))))))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'47''47'__4412 v0 v2 v2)
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                           coe
                             (let v5
                                    = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
                                        (coe v4) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                                      (coe v5)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))))
            (coe du_x'47''47'x'8776'ε_278 (coe v0) (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_300
            (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4476 (coe v0))
            (coe v1) (coe v2) (coe v2) (coe v3)))
-- Algebra.Properties.Loop.identityʳ-unique
d_identity'691''45'unique_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_316 ~v0 ~v1 v2 v3 v4 v5
  = du_identity'691''45'unique_316 v2 v3 v4 v5
du_identity'691''45'unique_316 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_316 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v2 (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v5))))))))
         v2 (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0 v1 v1)
         (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2984 (coe v5))))))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'92''92'__4410 v0 v1 v1)
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4 = MAlonzo.Code.Algebra.Bundles.d_isLoop_4416 (coe v0) in
                           coe
                             (let v5
                                    = MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3062
                                        (coe v4) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_2984
                                      (coe v5)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe MAlonzo.Code.Algebra.Bundles.d_ε_4414 (coe v0))))
            (coe du_x'92''92'x'8776'ε_284 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_284
            (coe MAlonzo.Code.Algebra.Bundles.du_quasigroup_4476 (coe v0))
            (coe v1) (coe v2) (coe v1) (coe v3)))
-- Algebra.Properties.Loop.identity-unique
d_identity'45'unique_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_326 ~v0 ~v1 v2 v3 v4
  = du_identity'45'unique_326 v2 v3 v4
du_identity'45'unique_326 ::
  MAlonzo.Code.Algebra.Bundles.T_Loop_4384 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_326 v0 v1 v2
  = coe
      du_identity'737''45'unique_304 (coe v0) (coe v1) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2 v1)
