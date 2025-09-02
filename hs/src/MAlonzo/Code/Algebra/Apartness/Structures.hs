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

module MAlonzo.Code.Algebra.Apartness.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Properties.ApartnessRelation
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Apartness.Structures._.Invertible
d_Invertible_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Invertible_30 = erased
-- Algebra.Apartness.Structures._.IsCommutativeRing
d_IsCommutativeRing_34 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
                       a13 a14 a15
  = ()
-- Algebra.Apartness.Structures._.IsCommutativeRing._//_
d__'47''47'__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__40 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                ~v12 v13 ~v14 ~v15 ~v16
  = du__'47''47'__40 v11 v13
du__'47''47'__40 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__40 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1136 (coe v0)
      (coe v1)
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-comm
d_'42''45'comm_44 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_44 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2906 (coe v0)
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11 v12 v13 v14 ~v15 v16
  = du_'8729''45'cong'691'_48 v11 v12 v13 v14 v16
du_'8729''45'cong'691'_48 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_48 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                    (coe v1) (coe v2) (coe v3) (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v7) in
             coe
               (let v9
                      = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                coe
                  (let v10
                         = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v8) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v10)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v9)))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_50 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11 v12 v13 v14 ~v15 v16
  = du_'8729''45'cong'737'_50 v11 v12 v13 v14 v16
du_'8729''45'cong'737'_50 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_50 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                    (coe v1) (coe v2) (coe v3) (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v7) in
             coe
               (let v9
                      = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                coe
                  (let v10
                         = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v8) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v10)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v9)))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityʳ
d_identity'691'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_identity'691'_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   v12 v13 v14 ~v15 v16
  = du_identity'691'_54 v11 v12 v13 v14 v16
du_identity'691'_54 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'691'_54 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_754
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityˡ
d_identity'737'_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_identity'737'_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   v12 v13 v14 ~v15 v16
  = du_identity'737'_56 v11 v12 v13 v14 v16
du_identity'737'_56 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'737'_56 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_752
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_58 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11 v12 v13 v14 ~v15 v16
  = du_isCommutativeMagma_58 v11 v12 v13 v14 v16
du_isCommutativeMagma_58 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_58 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
               (coe v6))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 v11 v12 v13 v14 ~v15 v16
  = du_'42''45'isCommutativeMonoid_60 v11 v12 v13 v14 v16
du_'42''45'isCommutativeMonoid_60 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_60 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    ~v8 ~v9 ~v10 v11 v12 v13 v14 ~v15 v16
  = du_'42''45'isCommutativeSemigroup_62 v11 v12 v13 v14 v16
du_'42''45'isCommutativeSemigroup_62 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_62 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
            (coe v5)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11 v12 v13 v14 ~v15 v16
  = du_'42''45'isMagma_64 v11 v12 v13 v14 v16
du_'42''45'isMagma_64 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_64 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_66 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      v11 v12 v13 v14 ~v15 v16
  = du_'42''45'isMonoid_66 v11 v12 v13 v14 v16
du_'42''45'isMonoid_66 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_66 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11 v12 v13 v14 ~v15 v16
  = du_'42''45'isSemigroup_68 v11 v12 v13 v14 v16
du_'42''45'isSemigroup_68 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_68 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1326
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.assoc
d_assoc_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
           ~v13 ~v14 ~v15 v16
  = du_assoc_70 v16
du_assoc_70 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_70 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v1))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.comm
d_comm_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 v16
  = du_comm_72 v16
du_comm_72 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_comm_72 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
            (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-cong
d_'8729''45'cong_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_74 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8729''45'cong_74 v16
du_'8729''45'cong_74 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_74 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v1)))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_76 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8729''45'cong'691'_76 v16
du_'8729''45'cong'691'_76 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_76 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (let v8
                               = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v7) in
                         coe
                           (let v9
                                  = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8729''45'cong'737'_78 v16
du_'8729''45'cong'737'_78 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_78 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (let v8
                               = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v7) in
                         coe
                           (let v9
                                  = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identity
d_identity_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_80 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
              ~v12 ~v13 ~v14 ~v15 v16
  = du_identity_80 v16
du_identity_80 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_80 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v1)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityʳ
d_identity'691'_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_identity'691'_82 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_identity'691'_82 v16
du_identity'691'_82 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'691'_82 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityˡ
d_identity'737'_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_identity'737'_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_identity'737'_84 v16
du_identity'737'_84 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'737'_84 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeMagma_88 v16
du_isCommutativeMagma_88 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_88 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                     (coe v4))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_isCommutativeMonoid_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeMonoid_90 v16
du_isCommutativeMonoid_90 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_isCommutativeMonoid_90 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
               (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeSemigroup_92 v16
du_isCommutativeSemigroup_92 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_92 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                  (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isGroup
d_isGroup_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
d_isGroup_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 v16
  = du_isGroup_94 v16
du_isGroup_94 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
du_isGroup_94 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1184
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
            (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
d_isInvertibleMagma_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isInvertibleMagma_96 v16
du_isInvertibleMagma_96 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
du_isInvertibleMagma_96 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1160
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
d_isInvertibleUnitalMagma_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isInvertibleUnitalMagma_98 v16
du_isInvertibleUnitalMagma_98 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
du_isInvertibleUnitalMagma_98 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1162
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isMagma
d_isMagma_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
              ~v12 ~v13 ~v14 ~v15 v16
  = du_isMagma_100 v16
du_isMagma_100 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_100 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v1))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isMonoid
d_isMonoid_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
               ~v12 ~v13 ~v14 ~v15 v16
  = du_isMonoid_102 v16
du_isMonoid_102 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_102 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1184
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v1))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isSemigroup
d_isSemigroup_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                  ~v12 ~v13 ~v14 ~v15 v16
  = du_isSemigroup_104 v16
du_isSemigroup_104 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_104 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v1)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isUnitalMagma_106 v16
du_isUnitalMagma_106 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_106 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8315''185''45'cong_108 v16
du_'8315''185''45'cong_108 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_108 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1184
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v1))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.inverse
d_inverse_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
              ~v12 ~v13 ~v14 ~v15 v16
  = du_inverse_110 v16
du_inverse_110 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_110 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_inverse_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1184
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v1))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.inverseʳ
d_inverse'691'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_inverse'691'_112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_inverse'691'_112 v16
du_inverse'691'_112 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_inverse'691'_112 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.inverseˡ
d_inverse'737'_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_inverse'737'_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_inverse'737'_114 v16
du_inverse'737'_114 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_inverse'737'_114 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.distribʳ
d_distrib'691'_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_distrib'691'_118 v16
du_distrib'691'_118 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_118 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_distrib'691'_2462
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.distribˡ
d_distrib'737'_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_distrib'737'_120 v16
du_distrib'737'_120 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_120 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_distrib'737'_2460
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10
  = du_isCommutativeSemiring_122
du_isCommutativeSemiring_122 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_122 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018 v0 v1
      v2 v3 v5
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 v11 v12 v13 v14 ~v15 v16
  = du_isCommutativeSemiringWithoutOne_124 v11 v12 v13 v14 v16
du_isCommutativeSemiringWithoutOne_124 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_124 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isEquivalence
d_isEquivalence_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isEquivalence_126 v16
du_isEquivalence_126 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_126 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v1)))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11 v12 v13 v14 ~v15 v16
  = du_isNearSemiring_128 v11 v12 v13 v14 v16
du_isNearSemiring_128 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_128 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isPartialEquivalence_130 v16
du_isPartialEquivalence_130 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_130 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                              (coe v7)))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isRing
d_isRing_132 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2740
d_isRing_132 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0)
-- Algebra.Apartness.Structures._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
d_isRingWithoutOne_134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isRingWithoutOne_134 v16
du_isRingWithoutOne_134 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
du_isRingWithoutOne_134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isSemiring
d_isSemiring_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                 v12 v13 v14 ~v15 v16
  = du_isSemiring_136 v11 v12 v13 v14 v16
du_isSemiring_136 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_136 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isSemiringWithoutAnnihilatingZero_138 v16
du_isSemiringWithoutAnnihilatingZero_138 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_138 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11 v12 v13 v14 ~v15 v16
  = du_isSemiringWithoutOne_140 v11 v12 v13 v14 v16
du_isSemiringWithoutOne_140 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_140 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.refl
d_refl_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_refl_142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
           ~v13 ~v14 ~v15 v16
  = du_refl_142 v16
du_refl_142 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_refl_142 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v1))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.reflexive
d_reflexive_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                ~v12 ~v13 ~v14 ~v15 v16
  = du_reflexive_144 v16
du_reflexive_144 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_144 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                             (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v7))
                             v8)))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.setoid
d_setoid_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 v16
  = du_setoid_146 v16
du_setoid_146 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_146 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.sym
d_sym_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 v16
  = du_sym_148 v16
du_sym_148 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_148 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_38
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v1))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.trans
d_trans_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
            ~v13 ~v14 ~v15 v16
  = du_trans_150 v16
du_trans_150 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_150 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v1))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 v11 ~v12 v13 v14 ~v15 v16
  = du_unique'691''45''8315''185'_152 v11 v13 v14 v16
du_unique'691''45''8315''185'_152 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_152 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v3) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1158
               (coe v0) (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v6)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 v11 ~v12 v13 v14 ~v15 v16
  = du_unique'737''45''8315''185'_154 v11 v13 v14 v16
du_unique'737''45''8315''185'_154 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_154 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v3) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1152
               (coe v0) (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v6)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.zero
d_zero_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 v12 v13
           v14 ~v15 v16
  = du_zero_156 v11 v12 v13 v14 v16
du_zero_156 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_156 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2468 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.zeroʳ
d_zero'691'_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_zero'691'_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                v12 v13 v14 ~v15 v16
  = du_zero'691'_158 v11 v12 v13 v14 v16
du_zero'691'_158 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_zero'691'_158 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero'691'_2466 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.zeroˡ
d_zero'737'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
d_zero'737'_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                v12 v13 v14 ~v15 v16
  = du_zero'737'_160 v11 v12 v13 v14 v16
du_zero'737'_160 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_zero'737'_160 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero'737'_2464 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing
d_IsHeytingCommutativeRing_162 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  = ()
data T_IsHeytingCommutativeRing_162
  = C_constructor_466 MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888
                      MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750
                      (AgdaAny ->
                       AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny)
-- Algebra.Apartness.Structures._._//_
d__'47''47'__170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 ~v9 ~v10 ~v11
                 ~v12
  = du__'47''47'__170 v6 v8
du__'47''47'__170 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__170 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1136 (coe v0)
      (coe v1)
-- Algebra.Apartness.Structures._.∙-congʳ
d_'8729''45'cong'691'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11 ~v12
  = du_'8729''45'cong'691'_178 v6 v7 v8 v9 v11
du_'8729''45'cong'691'_178 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_178 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                    (coe v1) (coe v2) (coe v3) (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v7) in
             coe
               (let v9
                      = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                coe
                  (let v10
                         = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v8) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v10)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v9)))))))))
-- Algebra.Apartness.Structures._.∙-congˡ
d_'8729''45'cong'737'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11 ~v12
  = du_'8729''45'cong'737'_180 v6 v7 v8 v9 v11
du_'8729''45'cong'737'_180 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_180 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                    (coe v1) (coe v2) (coe v3) (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v7) in
             coe
               (let v9
                      = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                coe
                  (let v10
                         = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v8) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v10)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v9)))))))))
-- Algebra.Apartness.Structures._.identityʳ
d_identity'691'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_identity'691'_184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
                    ~v12
  = du_identity'691'_184 v6 v7 v8 v9 v11
du_identity'691'_184 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'691'_184 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_754
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures._.identityˡ
d_identity'737'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_identity'737'_186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
                    ~v12
  = du_identity'737'_186 v6 v7 v8 v9 v11
du_identity'737'_186 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'737'_186 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_752
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures._.isCommutativeMagma
d_isCommutativeMagma_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                         v11 ~v12
  = du_isCommutativeMagma_188 v6 v7 v8 v9 v11
du_isCommutativeMagma_188 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_188 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
               (coe v6))))
-- Algebra.Apartness.Structures._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9 ~v10 v11 ~v12
  = du_'42''45'isCommutativeMonoid_190 v6 v7 v8 v9 v11
du_'42''45'isCommutativeMonoid_190 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_190 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Apartness.Structures._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                     v8 v9 ~v10 v11 ~v12
  = du_'42''45'isCommutativeSemigroup_192 v6 v7 v8 v9 v11
du_'42''45'isCommutativeSemigroup_192 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_192 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
            (coe v5)))
-- Algebra.Apartness.Structures._.*-isMagma
d_'42''45'isMagma_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
                      ~v12
  = du_'42''45'isMagma_194 v6 v7 v8 v9 v11
du_'42''45'isMagma_194 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_194 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures._.*-isMonoid
d_'42''45'isMonoid_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
                       ~v12
  = du_'42''45'isMonoid_196 v6 v7 v8 v9 v11
du_'42''45'isMonoid_196 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_196 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4))
-- Algebra.Apartness.Structures._.*-isSemigroup
d_'42''45'isSemigroup_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11 ~v12
  = du_'42''45'isSemigroup_198 v6 v7 v8 v9 v11
du_'42''45'isSemigroup_198 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_198 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1326
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures._.assoc
d_assoc_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_assoc_200 v11
du_assoc_200 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_200 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v1))))))
-- Algebra.Apartness.Structures._.comm
d_comm_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_comm_202 v11
du_comm_202 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_comm_202 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_1186
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
            (coe v1)))
-- Algebra.Apartness.Structures._.∙-cong
d_'8729''45'cong_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11 ~v12
  = du_'8729''45'cong_204 v11
du_'8729''45'cong_204 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_204 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v1)))))))
-- Algebra.Apartness.Structures._.∙-congʳ
d_'8729''45'cong'691'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'8729''45'cong'691'_206 v11
du_'8729''45'cong'691'_206 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_206 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (let v8
                               = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v7) in
                         coe
                           (let v9
                                  = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Apartness.Structures._.∙-congˡ
d_'8729''45'cong'737'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'8729''45'cong'737'_208 v11
du_'8729''45'cong'737'_208 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_208 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (let v8
                               = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v7) in
                         coe
                           (let v9
                                  = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Apartness.Structures._.identity
d_identity_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
               ~v12
  = du_identity_210 v11
du_identity_210 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_210 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v1)))))
-- Algebra.Apartness.Structures._.identityʳ
d_identity'691'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_identity'691'_212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_identity'691'_212 v11
du_identity'691'_212 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'691'_212 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))))
-- Algebra.Apartness.Structures._.identityˡ
d_identity'737'_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_identity'737'_214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_identity'737'_214 v11
du_identity'737'_214 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_identity'737'_214 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))))
-- Algebra.Apartness.Structures._.isCommutativeMagma
d_isCommutativeMagma_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11 ~v12
  = du_isCommutativeMagma_218 v11
du_isCommutativeMagma_218 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_218 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                     (coe v4))))))
-- Algebra.Apartness.Structures._.isCommutativeMonoid
d_isCommutativeMonoid_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_isCommutativeMonoid_220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_isCommutativeMonoid_220 v11
du_isCommutativeMonoid_220 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_isCommutativeMonoid_220 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
               (coe v2))))
-- Algebra.Apartness.Structures._.isCommutativeSemigroup
d_isCommutativeSemigroup_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 v11 ~v12
  = du_isCommutativeSemigroup_222 v11
du_isCommutativeSemigroup_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_222 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                  (coe v3)))))
-- Algebra.Apartness.Structures._.isGroup
d_isGroup_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
d_isGroup_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_isGroup_224 v11
du_isGroup_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
du_isGroup_224 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1184
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
            (coe v1)))
-- Algebra.Apartness.Structures._.isInvertibleMagma
d_isInvertibleMagma_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
d_isInvertibleMagma_226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11 ~v12
  = du_isInvertibleMagma_226 v11
du_isInvertibleMagma_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
du_isInvertibleMagma_226 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1160
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
d_isInvertibleUnitalMagma_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 v11 ~v12
  = du_isInvertibleUnitalMagma_228 v11
du_isInvertibleUnitalMagma_228 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
du_isInvertibleUnitalMagma_228 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1162
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.isMagma
d_isMagma_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_isMagma_230 v11
du_isMagma_230 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_230 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v1))))))
-- Algebra.Apartness.Structures._.isMonoid
d_isMonoid_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
               ~v12
  = du_isMonoid_232 v11
du_isMonoid_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_232 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1184
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v1))))
-- Algebra.Apartness.Structures._.isSemigroup
d_isSemigroup_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                  ~v12
  = du_isSemigroup_234 v11
du_isSemigroup_234 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_234 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v1)))))
-- Algebra.Apartness.Structures._.isUnitalMagma
d_isUnitalMagma_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_isUnitalMagma_236 v11
du_isUnitalMagma_236 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_236 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4))))))
-- Algebra.Apartness.Structures._.⁻¹-cong
d_'8315''185''45'cong_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'8315''185''45'cong_238 v11
du_'8315''185''45'cong_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_238 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1184
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v1))))
-- Algebra.Apartness.Structures._.inverse
d_inverse_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_inverse_240 v11
du_inverse_240 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_240 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_inverse_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1184
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v1))))
-- Algebra.Apartness.Structures._.inverseʳ
d_inverse'691'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_inverse'691'_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_inverse'691'_242 v11
du_inverse'691'_242 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_inverse'691'_242 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.inverseˡ
d_inverse'737'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_inverse'737'_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_inverse'737'_244 v11
du_inverse'737'_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_inverse'737'_244 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3)))))
-- Algebra.Apartness.Structures._.distribʳ
d_distrib'691'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_distrib'691'_248 v11
du_distrib'691'_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_248 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_distrib'691'_2462
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v1)))
-- Algebra.Apartness.Structures._.distribˡ
d_distrib'737'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_distrib'737'_250 v11
du_distrib'737'_250 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_250 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_distrib'737'_2460
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v1)))
-- Algebra.Apartness.Structures._.isCommutativeSemiring
d_isCommutativeSemiring_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
                            ~v10 v11 ~v12
  = du_isCommutativeSemiring_252 v6 v7 v8 v9 v11
du_isCommutativeSemiring_252 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_252 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
-- Algebra.Apartness.Structures._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                      v8 v9 ~v10 v11 ~v12
  = du_isCommutativeSemiringWithoutOne_254 v6 v7 v8 v9 v11
du_isCommutativeSemiringWithoutOne_254 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_254 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Apartness.Structures._.isEquivalence
d_isEquivalence_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_isEquivalence_256 v11
du_isEquivalence_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_256 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v1)))))))
-- Algebra.Apartness.Structures._.isNearSemiring
d_isNearSemiring_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
                     ~v12
  = du_isNearSemiring_258 v6 v7 v8 v9 v11
du_isNearSemiring_258 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_258 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures._.isPartialEquivalence
d_isPartialEquivalence_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11 ~v12
  = du_isPartialEquivalence_260 v11
du_isPartialEquivalence_260 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_260 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                              (coe v7)))))))))
-- Algebra.Apartness.Structures._.isRingWithoutOne
d_isRingWithoutOne_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
d_isRingWithoutOne_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11 ~v12
  = du_isRingWithoutOne_264 v11
du_isRingWithoutOne_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
du_isRingWithoutOne_264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0))
-- Algebra.Apartness.Structures._.isSemiring
d_isSemiring_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11 ~v12
  = du_isSemiring_266 v6 v7 v8 v9 v11
du_isSemiring_266 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_266 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4))
-- Algebra.Apartness.Structures._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_isSemiringWithoutAnnihilatingZero_268 v11
du_isSemiringWithoutAnnihilatingZero_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0))
-- Algebra.Apartness.Structures._.isSemiringWithoutOne
d_isSemiringWithoutOne_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                           v11 ~v12
  = du_isSemiringWithoutOne_270 v6 v7 v8 v9 v11
du_isSemiringWithoutOne_270 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_270 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
            (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures._.refl
d_refl_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_refl_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_refl_272 v11
du_refl_272 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_refl_272 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v1))))))))
-- Algebra.Apartness.Structures._.reflexive
d_reflexive_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                ~v12
  = du_reflexive_274 v11
du_reflexive_274 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_274 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                             (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v7))
                             v8)))))))
-- Algebra.Apartness.Structures._.setoid
d_setoid_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_setoid_276 v11
du_setoid_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_276 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6))))))))
-- Algebra.Apartness.Structures._.sym
d_sym_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_sym_278 v11
du_sym_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_278 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_38
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v1))))))))
-- Algebra.Apartness.Structures._.trans
d_trans_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_trans_280 v11
du_trans_280 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_280 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v1))))))))
-- Algebra.Apartness.Structures._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11 ~v12
  = du_unique'691''45''8315''185'_282 v6 v8 v9 v11
du_unique'691''45''8315''185'_282 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_282 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v3) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1158
               (coe v0) (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v6)))))
-- Algebra.Apartness.Structures._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11 ~v12
  = du_unique'737''45''8315''185'_284 v6 v8 v9 v11
du_unique'737''45''8315''185'_284 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_284 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v3) in
    coe
      (let v5
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                    (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1152
               (coe v0) (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v6)))))
-- Algebra.Apartness.Structures._.zero
d_zero_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11 ~v12
  = du_zero_286 v6 v7 v8 v9 v11
du_zero_286 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_286 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero_2468 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures._.zeroʳ
d_zero'691'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_zero'691'_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11 ~v12
  = du_zero'691'_288 v6 v7 v8 v9 v11
du_zero'691'_288 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_zero'691'_288 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero'691'_2466 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures._.zeroˡ
d_zero'737'_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750 ->
  AgdaAny -> AgdaAny
d_zero'737'_290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11 ~v12
  = du_zero'737'_290 v6 v7 v8 v9 v11
du_zero'737'_290 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888 ->
  AgdaAny -> AgdaAny
du_zero'737'_290 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero'737'_2464 (coe v0) (coe v1)
         (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772 (coe v5)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.isCommutativeRing
d_isCommutativeRing_314 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888
d_isCommutativeRing_314 v0
  = case coe v0 of
      C_constructor_466 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.isApartnessRelation
d_isApartnessRelation_316 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750
d_isApartnessRelation_316 v0
  = case coe v0 of
      C_constructor_466 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._._//_
d__'47''47'__320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 ~v9 ~v10 ~v11
  = du__'47''47'__320 v6 v8
du__'47''47'__320 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__320 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1136 (coe v0)
      (coe v1)
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-assoc
d_'42''45'assoc_322 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe d_isCommutativeRing_314 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-comm
d_'42''45'comm_324 ::
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2906
      (coe d_isCommutativeRing_314 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-cong
d_'42''45'cong_326 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2764
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe d_isCommutativeRing_314 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11
  = du_'8729''45'cong'691'_328 v6 v7 v8 v9 v11
du_'8729''45'cong'691'_328 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_328 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v7) in
             coe
               (let v9
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v8) in
                coe
                  (let v10
                         = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v9) in
                   coe
                     (let v11
                            = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v9) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v11)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v10))))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_330 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11
  = du_'8729''45'cong'737'_330 v6 v7 v8 v9 v11
du_'8729''45'cong'737'_330 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_330 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v7) in
             coe
               (let v9
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v8) in
                coe
                  (let v10
                         = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v9) in
                   coe
                     (let v11
                            = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v9) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v11)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v10))))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-identity
d_'42''45'identity_332 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2768
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe d_isCommutativeRing_314 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityʳ
d_identity'691'_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_identity'691'_334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_identity'691'_334 v6 v7 v8 v9 v11
du_identity'691'_334 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_identity'691'_334 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_754
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityˡ
d_identity'737'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_identity'737'_336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_identity'737'_336 v6 v7 v8 v9 v11
du_identity'737'_336 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_identity'737'_336 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_752
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                         v11
  = du_isCommutativeMagma_338 v6 v7 v8 v9 v11
du_isCommutativeMagma_338 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_338 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                  (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9 ~v10 v11
  = du_'42''45'isCommutativeMonoid_340 v6 v7 v8 v9 v11
du_'42''45'isCommutativeMonoid_340 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_340 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                     v8 v9 ~v10 v11
  = du_'42''45'isCommutativeSemigroup_342 v6 v7 v8 v9 v11
du_'42''45'isCommutativeSemigroup_342 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_342 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isMagma
d_'42''45'isMagma_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_'42''45'isMagma_344 v6 v7 v8 v9 v11
du_'42''45'isMagma_344 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_344 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_'42''45'isMonoid_346 v6 v7 v8 v9 v11
du_'42''45'isMonoid_346 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_346 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11
  = du_'42''45'isSemigroup_348 v6 v7 v8 v9 v11
du_'42''45'isSemigroup_348 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_348 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1326
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.assoc
d_assoc_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_assoc_350 v11
du_assoc_350 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_350 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v2)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.comm
d_comm_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_comm_352 v11
du_comm_352 ::
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_352 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_comm_1186
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-cong
d_'8729''45'cong_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11
  = du_'8729''45'cong_354 v11
du_'8729''45'cong_354 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_354 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v2))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'691'_356 v11
du_'8729''45'cong'691'_356 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_356 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7) in
                         coe
                           (let v9
                                  = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                            coe
                              (let v10
                                     = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                    (coe v10)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                          (coe v9)))))))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'737'_358 v11
du_'8729''45'cong'737'_358 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_358 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7) in
                         coe
                           (let v9
                                  = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v8) in
                            coe
                              (let v10
                                     = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                    (coe v10)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                          (coe v9)))))))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identity
d_identity_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_360 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_identity_360 v11
du_identity_360 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_360 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_identity_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v2))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityʳ
d_identity'691'_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_identity'691'_362 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'691'_362 v11
du_identity'691'_362 ::
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_identity'691'_362 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityˡ
d_identity'737'_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_identity'737'_364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'737'_364 v11
du_identity'737'_364 ::
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_identity'737'_364 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_366 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172
d_'43''45'isAbelianGroup_366 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe d_isCommutativeRing_314 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isCommutativeMagma_368 v11
du_isCommutativeMagma_368 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_368 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                        (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_isCommutativeMonoid_370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_isCommutativeMonoid_370 v11
du_isCommutativeMonoid_370 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_isCommutativeMonoid_370 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 v11
  = du_isCommutativeSemigroup_372 v11
du_isCommutativeSemigroup_372 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_372 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isGroup
d_isGroup_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
d_isGroup_374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isGroup_374 v11
du_isGroup_374 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
du_isGroup_374 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1184
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isInvertibleMagma
d_isInvertibleMagma_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
d_isInvertibleMagma_376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11
  = du_isInvertibleMagma_376 v11
du_isInvertibleMagma_376 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
du_isInvertibleMagma_376 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1160
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
d_isInvertibleUnitalMagma_378 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 v11
  = du_isInvertibleUnitalMagma_378 v11
du_isInvertibleUnitalMagma_378 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
du_isInvertibleUnitalMagma_378 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1162
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isMagma
d_isMagma_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isMagma_380 v11
du_isMagma_380 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_380 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v2)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isMonoid
d_isMonoid_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isMonoid_382 v11
du_isMonoid_382 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_382 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v2)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemigroup
d_isSemigroup_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemigroup_384 v11
du_isSemigroup_384 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_384 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v2))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isUnitalMagma
d_isUnitalMagma_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isUnitalMagma_386 v11
du_isUnitalMagma_386 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_386 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.⁻¹-cong
d_'8315''185''45'cong_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8315''185''45'cong_388 v11
du_'8315''185''45'cong_388 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_388 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v2)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.inverse
d_inverse_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse_390 v11
du_inverse_390 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_390 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_inverse_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v2)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.inverseʳ
d_inverse'691'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_inverse'691'_392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'691'_392 v11
du_inverse'691'_392 ::
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_inverse'691'_392 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.inverseˡ
d_inverse'737'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_inverse'737'_394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'737'_394 v11
du_inverse'737'_394 ::
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_inverse'737'_394 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.distrib
d_distrib_396 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2770
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe d_isCommutativeRing_314 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.distribʳ
d_distrib'691'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'691'_398 v11
du_distrib'691'_398 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_398 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'691'_2462
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.distribˡ
d_distrib'737'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'737'_400 v11
du_distrib'737'_400 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_400 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'737'_2460
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
                            ~v10 v11
  = du_isCommutativeSemiring_402 v6 v7 v8 v9 v11
du_isCommutativeSemiring_402 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_402 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe d_isCommutativeRing_314 (coe v4))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                      v8 v9 ~v10 v11
  = du_isCommutativeSemiringWithoutOne_404 v6 v7 v8 v9 v11
du_isCommutativeSemiringWithoutOne_404 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_404 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isEquivalence
d_isEquivalence_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isEquivalence_406 v11
du_isEquivalence_406 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_406 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v2))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isNearSemiring
d_isNearSemiring_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_isNearSemiring_408 v6 v7 v8 v9 v11
du_isNearSemiring_408 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_408 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
            (coe v1) (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
               (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_410 v11
du_isPartialEquivalence_410 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_410 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                 (coe v8))))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isRing
d_isRing_412 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2740
d_isRing_412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_2904
      (coe d_isCommutativeRing_314 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isRingWithoutOne
d_isRingWithoutOne_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
d_isRingWithoutOne_414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_isRingWithoutOne_414 v11
du_isRingWithoutOne_414 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
du_isRingWithoutOne_414 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemiring
d_isSemiring_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_isSemiring_416 v6 v7 v8 v9 v11
du_isSemiring_416 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_416 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
         (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemiringWithoutAnnihilatingZero_418 v11
du_isSemiringWithoutAnnihilatingZero_418 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_418 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                           v11
  = du_isSemiringWithoutOne_420 v6 v7 v8 v9 v11
du_isSemiringWithoutOne_420 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_420 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
               (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.refl
d_refl_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_refl_422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_422 v11
du_refl_422 :: T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_refl_422 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                              (coe v2)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.reflexive
d_reflexive_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_424 v11
du_reflexive_424 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_424 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v8))
                                v9))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.setoid
d_setoid_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_426 v11
du_setoid_426 ::
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_426 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.sym
d_sym_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_sym_428 v11
du_sym_428 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_428 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                              (coe v2)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.trans
d_trans_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_trans_430 v11
du_trans_430 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_430 v0
  = let v1 = d_isCommutativeRing_314 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                              (coe v2)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'691''45''8315''185'_432 v6 v8 v9 v11
du_unique'691''45''8315''185'_432 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_432 v0 v1 v2 v3
  = let v4 = d_isCommutativeRing_314 (coe v3) in
    coe
      (let v5 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v5) in
          coe
            (let v7
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v6) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1158
                  (coe v0) (coe v2) (coe v1)
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v7))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'737''45''8315''185'_434 v6 v8 v9 v11
du_unique'737''45''8315''185'_434 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_434 v0 v1 v2 v3
  = let v4 = d_isCommutativeRing_314 (coe v3) in
    coe
      (let v5 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v4) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                    (coe v5) in
          coe
            (let v7
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                       (coe v6) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1152
                  (coe v0) (coe v2) (coe v1)
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v7))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.zero
d_zero_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_436 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_zero_436 v6 v7 v8 v9 v11
du_zero_436 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_436 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero_2468 (coe v0) (coe v1)
            (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
               (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.zeroʳ
d_zero'691'_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_zero'691'_438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_zero'691'_438 v6 v7 v8 v9 v11
du_zero'691'_438 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_zero'691'_438 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'691'_2466 (coe v0) (coe v1)
            (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
               (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.zeroˡ
d_zero'737'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
d_zero'737'_440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_zero'737'_440 v6 v7 v8 v9 v11
du_zero'737'_440 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny
du_zero'737'_440 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_314 (coe v4) in
    coe
      (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'737'_2464 (coe v0) (coe v1)
            (coe v2) (coe v3)
            (coe
               MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
               (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._._¬#_
d__'172''35'__444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 -> AgdaAny -> AgdaAny -> ()
d__'172''35'__444 = erased
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.cotrans
d_cotrans_446 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_446 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_cotrans_764
      (coe d_isApartnessRelation_316 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.irrefl
d_irrefl_448 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_448 = erased
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.sym
d_sym_450 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_450 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_762
      (coe d_isApartnessRelation_316 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.#⇒invertible
d_'35''8658'invertible_456 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'35''8658'invertible_456 v0
  = case coe v0 of
      C_constructor_466 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.invertible⇒#
d_invertible'8658''35'_462 ::
  T_IsHeytingCommutativeRing_162 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_invertible'8658''35'_462 v0
  = case coe v0 of
      C_constructor_466 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.¬#-isEquivalence
d_'172''35''45'isEquivalence_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'172''35''45'isEquivalence_464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 ~v11
  = du_'172''35''45'isEquivalence_464
du_'172''35''45'isEquivalence_464 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_'172''35''45'isEquivalence_464
  = coe
      MAlonzo.Code.Relation.Binary.Properties.ApartnessRelation.du_'172''35''45'isEquivalence_20
-- Algebra.Apartness.Structures.IsHeytingField
d_IsHeytingField_468 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T_IsHeytingField_468
  = C_constructor_620 T_IsHeytingCommutativeRing_162
                      (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Apartness.Structures.IsHeytingField.isHeytingCommutativeRing
d_isHeytingCommutativeRing_474 ::
  T_IsHeytingField_468 -> T_IsHeytingCommutativeRing_162
d_isHeytingCommutativeRing_474 v0
  = case coe v0 of
      C_constructor_620 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingField.tight
d_tight_476 ::
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_tight_476 v0
  = case coe v0 of
      C_constructor_620 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingField._._//_
d__'47''47'__480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__480 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 ~v9 ~v10 ~v11
  = du__'47''47'__480 v6 v8
du__'47''47'__480 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__480 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1136 (coe v0)
      (coe v1)
-- Algebra.Apartness.Structures.IsHeytingField._._¬#_
d__'172''35'__482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> ()
d__'172''35'__482 = erased
-- Algebra.Apartness.Structures.IsHeytingField._.cotrans
d_cotrans_484 ::
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_484 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_cotrans_764
      (coe
         d_isApartnessRelation_316
         (coe d_isHeytingCommutativeRing_474 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.irrefl
d_irrefl_486 ::
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_486 = erased
-- Algebra.Apartness.Structures.IsHeytingField._.sym
d_sym_488 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_488 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_762
      (coe
         d_isApartnessRelation_316
         (coe d_isHeytingCommutativeRing_474 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.#⇒invertible
d_'35''8658'invertible_490 ::
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'35''8658'invertible_490 v0
  = coe
      d_'35''8658'invertible_456
      (coe d_isHeytingCommutativeRing_474 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.*-assoc
d_'42''45'assoc_492 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe
            d_isCommutativeRing_314
            (coe d_isHeytingCommutativeRing_474 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-comm
d_'42''45'comm_494 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2906
      (coe
         d_isCommutativeRing_314
         (coe d_isHeytingCommutativeRing_474 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.*-cong
d_'42''45'cong_496 ::
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_496 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2764
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe
            d_isCommutativeRing_314
            (coe d_isHeytingCommutativeRing_474 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congʳ
d_'8729''45'cong'691'_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11
  = du_'8729''45'cong'691'_498 v6 v7 v8 v9 v11
du_'8729''45'cong'691'_498 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_498 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v7) in
             coe
               (let v9
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                          (coe v1) (coe v2) (coe v3) (coe v8) in
                coe
                  (let v10
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v9) in
                   coe
                     (let v11
                            = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v10) in
                      coe
                        (let v12
                               = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v10) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v12)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v11)))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congˡ
d_'8729''45'cong'737'_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11
  = du_'8729''45'cong'737'_500 v6 v7 v8 v9 v11
du_'8729''45'cong'737'_500 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_500 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v7) in
             coe
               (let v9
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                          (coe v1) (coe v2) (coe v3) (coe v8) in
                coe
                  (let v10
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324 (coe v9) in
                   coe
                     (let v11
                            = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v10) in
                      coe
                        (let v12
                               = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v10) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v12)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v11)))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-identity
d_'42''45'identity_502 ::
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_502 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2768
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe
            d_isCommutativeRing_314
            (coe d_isHeytingCommutativeRing_474 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityʳ
d_identity'691'_504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_identity'691'_504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_identity'691'_504 v6 v7 v8 v9 v11
du_identity'691'_504 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_identity'691'_504 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_754
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityˡ
d_identity'737'_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_identity'737'_506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_identity'737'_506 v6 v7 v8 v9 v11
du_identity'737'_506 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_identity'737'_506 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'737'_752
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeMagma
d_isCommutativeMagma_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_508 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                         v11
  = du_isCommutativeMagma_508 v6 v7 v8 v9 v11
du_isCommutativeMagma_508 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_508 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                       (coe v7) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                     (coe v8))))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_510 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9 ~v10 v11
  = du_'42''45'isCommutativeMonoid_510 v6 v7 v8 v9 v11
du_'42''45'isCommutativeMonoid_510 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_510 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_512 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                     v8 v9 ~v10 v11
  = du_'42''45'isCommutativeSemigroup_512 v6 v7 v8 v9 v11
du_'42''45'isCommutativeSemigroup_512 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_512 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                  (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isMagma
d_'42''45'isMagma_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_514 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_'42''45'isMagma_514 v6 v7 v8 v9 v11
du_'42''45'isMagma_514 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_514 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v7) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1324
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                     (coe v1) (coe v2) (coe v3) (coe v8))))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isMonoid
d_'42''45'isMonoid_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_'42''45'isMonoid_516 v6 v7 v8 v9 v11
du_'42''45'isMonoid_516 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_516 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2860 (coe v0)
            (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isSemigroup
d_'42''45'isSemigroup_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                          v11
  = du_'42''45'isSemigroup_518 v6 v7 v8 v9 v11
du_'42''45'isSemigroup_518 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_518 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (let v8
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v7) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1326
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
                     (coe v1) (coe v2) (coe v3) (coe v8))))))
-- Algebra.Apartness.Structures.IsHeytingField._.assoc
d_assoc_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_assoc_520 v11
du_assoc_520 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_520 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v3))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.comm
d_comm_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_comm_522 v11
du_comm_522 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_522 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-cong
d_'8729''45'cong_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11
  = du_'8729''45'cong_524 v11
du_'8729''45'cong_524 ::
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_524 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                              (coe v3)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congʳ
d_'8729''45'cong'691'_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'691'_526 v11
du_'8729''45'cong'691'_526 ::
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_526 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (let v10
                                     = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v9) in
                               coe
                                 (let v11
                                        = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                            (coe v9) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                       (coe v11)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                             (coe v10))))))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congˡ
d_'8729''45'cong'737'_528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_528 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'737'_528 v11
du_'8729''45'cong'737'_528 ::
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_528 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (let v10
                                     = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v9) in
                               coe
                                 (let v11
                                        = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                                            (coe v9) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                       (coe v11)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                             (coe v10))))))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.identity
d_identity_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_identity_530 v11
du_identity_530 ::
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_530 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_identity_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v3)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityʳ
d_identity'691'_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_identity'691'_532 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'691'_532 v11
du_identity'691'_532 :: T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_identity'691'_532 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityˡ
d_identity'737'_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_identity'737'_534 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'737'_534 v11
du_identity'737'_534 :: T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_identity'737'_534 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.+-isAbelianGroup
d_'43''45'isAbelianGroup_536 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1172
d_'43''45'isAbelianGroup_536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe
            d_isCommutativeRing_314
            (coe d_isHeytingCommutativeRing_474 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeMagma
d_isCommutativeMagma_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isCommutativeMagma_538 v11
du_isCommutativeMagma_538 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_538 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                             (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                           (coe v6))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeMonoid
d_isCommutativeMonoid_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_isCommutativeMonoid_540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_isCommutativeMonoid_540 v11
du_isCommutativeMonoid_540 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_isCommutativeMonoid_540 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeSemigroup
d_isCommutativeSemigroup_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 v11
  = du_isCommutativeSemigroup_542 v11
du_isCommutativeSemigroup_542 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_542 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1244
                        (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isGroup
d_isGroup_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
d_isGroup_544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isGroup_544 v11
du_isGroup_544 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1074
du_isGroup_544 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.isInvertibleMagma
d_isInvertibleMagma_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
d_isInvertibleMagma_546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11
  = du_isInvertibleMagma_546 v11
du_isInvertibleMagma_546 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_958
du_isInvertibleMagma_546 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1160
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
d_isInvertibleUnitalMagma_548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 v11
  = du_isInvertibleUnitalMagma_548 v11
du_isInvertibleUnitalMagma_548 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1012
du_isInvertibleUnitalMagma_548 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1162
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isMagma
d_isMagma_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isMagma_550 v11
du_isMagma_550 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_550 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                           (coe v3))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isMonoid
d_isMonoid_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isMonoid_552 v11
du_isMonoid_552 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_552 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v3))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemigroup
d_isSemigroup_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_554 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemigroup_554 v11
du_isSemigroup_554 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_554 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                        (coe v3)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isUnitalMagma
d_isUnitalMagma_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isUnitalMagma_556 v11
du_isUnitalMagma_556 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_556 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.⁻¹-cong
d_'8315''185''45'cong_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8315''185''45'cong_558 v11
du_'8315''185''45'cong_558 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_558 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v3))))))
-- Algebra.Apartness.Structures.IsHeytingField._.inverse
d_inverse_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse_560 v11
du_inverse_560 ::
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_560 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_inverse_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                     (coe v3))))))
-- Algebra.Apartness.Structures.IsHeytingField._.inverseʳ
d_inverse'691'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_inverse'691'_562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'691'_562 v11
du_inverse'691'_562 :: T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_inverse'691'_562 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.inverseˡ
d_inverse'737'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_inverse'737'_564 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'737'_564 v11
du_inverse'737'_564 :: T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_inverse'737'_564 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.distrib
d_distrib_566 ::
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_566 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2770
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2904
         (coe
            d_isCommutativeRing_314
            (coe d_isHeytingCommutativeRing_474 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.distribʳ
d_distrib'691'_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'691'_568 v11
du_distrib'691'_568 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_568 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_2462
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.distribˡ
d_distrib'737'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'737'_570 v11
du_distrib'737'_570 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_570 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_2460
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.invertible⇒#
d_invertible'8658''35'_572 ::
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_invertible'8658''35'_572 v0
  = coe
      d_invertible'8658''35'_462
      (coe d_isHeytingCommutativeRing_474 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.isApartnessRelation
d_isApartnessRelation_574 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_750
d_isApartnessRelation_574 v0
  = coe
      d_isApartnessRelation_316
      (coe d_isHeytingCommutativeRing_474 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeRing
d_isCommutativeRing_576 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2888
d_isCommutativeRing_576 v0
  = coe
      d_isCommutativeRing_314
      (coe d_isHeytingCommutativeRing_474 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeSemiring
d_isCommutativeSemiring_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
                            ~v10 v11
  = du_isCommutativeSemiring_578 v6 v7 v8 v9 v11
du_isCommutativeSemiring_578 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_578 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe d_isCommutativeRing_314 (coe v5)))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                      v8 v9 ~v10 v11
  = du_isCommutativeSemiringWithoutOne_580 v6 v7 v8 v9 v11
du_isCommutativeSemiringWithoutOne_580 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_580 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingField._.isEquivalence
d_isEquivalence_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isEquivalence_582 v11
du_isEquivalence_582 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_582 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                              (coe v3)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isNearSemiring
d_isNearSemiring_584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_584 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_isNearSemiring_584 v6 v7 v8 v9 v11
du_isNearSemiring_584 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_584 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_2470 (coe v0)
               (coe v1) (coe v2) (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                  (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.isPartialEquivalence
d_isPartialEquivalence_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_586 v11
du_isPartialEquivalence_586 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_586 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                                    (coe v9)))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isRing
d_isRing_588 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2740
d_isRing_588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_2904
      (coe
         d_isCommutativeRing_314
         (coe d_isHeytingCommutativeRing_474 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.isRingWithoutOne
d_isRingWithoutOne_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
d_isRingWithoutOne_590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_isRingWithoutOne_590 v11
du_isRingWithoutOne_590 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2368
du_isRingWithoutOne_590 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemiring
d_isSemiring_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_isSemiring_592 v6 v7 v8 v9 v11
du_isSemiring_592 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_592 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
            (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6))))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemiringWithoutAnnihilatingZero_594 v11
du_isSemiringWithoutAnnihilatingZero_594 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_594 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemiringWithoutOne
d_isSemiringWithoutOne_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
                           v11
  = du_isSemiringWithoutOne_596 v6 v7 v8 v9 v11
du_isSemiringWithoutOne_596 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_596 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiring_2870 (coe v0)
                  (coe v1) (coe v2) (coe v3) (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.refl
d_refl_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_refl_598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_598 v11
du_refl_598 :: T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_refl_598 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                                 (coe v3))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.reflexive
d_reflexive_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_600 v11
du_reflexive_600 ::
  T_IsHeytingField_468 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_600 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (let v9 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8) in
                            coe
                              (\ v10 v11 v12 ->
                                 coe
                                   MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186 (coe v9))
                                   v10)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.setoid
d_setoid_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_602 v11
du_setoid_602 ::
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_602 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1088 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_202
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v8))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.sym
d_sym_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_sym_604 v11
du_sym_604 ::
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_604 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                                 (coe v3))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.trans
d_trans_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_trans_606 v11
du_trans_606 ::
  T_IsHeytingField_468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_606 v0
  = let v1 = d_isHeytingCommutativeRing_474 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_314 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_1184
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                                 (coe v3))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'691''45''8315''185'_608 v6 v8 v9 v11
du_unique'691''45''8315''185'_608 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_608 v0 v1 v2 v3
  = let v4 = d_isHeytingCommutativeRing_474 (coe v3) in
    coe
      (let v5 = d_isCommutativeRing_314 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
          coe
            (let v7
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v6) in
             coe
               (let v8
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v7) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1158
                     (coe v0) (coe v2) (coe v1)
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v8)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_610 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'737''45''8315''185'_610 v6 v8 v9 v11
du_unique'737''45''8315''185'_610 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_610 v0 v1 v2 v3
  = let v4 = d_isHeytingCommutativeRing_474 (coe v3) in
    coe
      (let v5 = d_isCommutativeRing_314 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v5) in
          coe
            (let v7
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                       (coe v6) in
             coe
               (let v8
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2386
                          (coe v7) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1152
                     (coe v0) (coe v2) (coe v1)
                     (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1184 (coe v8)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.zero
d_zero_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_zero_612 v6 v7 v8 v9 v11
du_zero_612 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_612 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero_2468 (coe v0) (coe v1)
               (coe v2) (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                  (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.zeroʳ
d_zero'691'_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_zero'691'_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_zero'691'_614 v6 v7 v8 v9 v11
du_zero'691'_614 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_zero'691'_614 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_2466 (coe v0) (coe v1)
               (coe v2) (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                  (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.zeroˡ
d_zero'737'_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
d_zero'737'_616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10 v11
  = du_zero'737'_616 v6 v7 v8 v9 v11
du_zero'737'_616 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsHeytingField_468 -> AgdaAny -> AgdaAny
du_zero'737'_616 v0 v1 v2 v3 v4
  = let v5 = d_isHeytingCommutativeRing_474 (coe v4) in
    coe
      (let v6 = d_isCommutativeRing_314 (coe v5) in
       coe
         (let v7 = MAlonzo.Code.Algebra.Structures.d_isRing_2904 (coe v6) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_2464 (coe v0) (coe v1)
               (coe v2) (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2772
                  (coe v7)))))
-- Algebra.Apartness.Structures.IsHeytingField._.¬#-isEquivalence
d_'172''35''45'isEquivalence_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'172''35''45'isEquivalence_618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 ~v11
  = du_'172''35''45'isEquivalence_618
du_'172''35''45'isEquivalence_618 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_'172''35''45'isEquivalence_618
  = coe du_'172''35''45'isEquivalence_464
