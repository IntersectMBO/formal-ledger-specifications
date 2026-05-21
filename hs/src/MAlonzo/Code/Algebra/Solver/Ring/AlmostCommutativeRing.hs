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

module MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.RingWithoutOne
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing
d_IsAlmostCommutativeRing_26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsAlmostCommutativeRing_26
  = C_constructor_174 MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_62 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_62 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿cong
d_'45''8255'cong_64 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_64 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_70 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_70 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿+-comm
d_'45''8255''43''45'comm_76 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_76 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-assoc
d_'42''45'assoc_80 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_80 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-comm
d_'42''45'comm_82 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_82 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-cong
d_'42''45'cong_84 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_84 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_86 v9
du_'8729''45'cong'691'_86 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_86 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v5) in
                   coe
                     (let v7
                            = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_88 v9
du_'8729''45'cong'737'_88 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_88 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v5) in
                   coe
                     (let v7
                            = coe MAlonzo.Code.Algebra.Structures.du_setoid_202 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-identity
d_'42''45'identity_90 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_90 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ
d_identity'691'_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'691'_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_92 v9
du_identity'691'_92 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'691'_92 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_754
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ
d_identity'737'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'737'_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_94 v9
du_identity'737'_94 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'737'_94 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'737'_752
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_96 v9
du_isCommutativeMagma_96 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_96 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'42''45'isCommutativeMonoid_98 v9
du_'42''45'isCommutativeMonoid_98 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_98 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 v9
  = du_'42''45'isCommutativeSemigroup_100 v9
du_'42''45'isCommutativeSemigroup_100 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_100 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
            (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMagma
d_'42''45'isMagma_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_102 v9
du_'42''45'isMagma_102 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_102 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_104 v9
du_'42''45'isMonoid_104 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_104 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_106 v9
du_'42''45'isSemigroup_106 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_106 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1616
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc
d_assoc_108 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe d_isCommutativeSemiring_62 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm
d_comm_110 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong
d_'8729''45'cong_112 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe d_isCommutativeSemiring_62 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_114 v9
du_'8729''45'cong'691'_114 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_114 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_116 v9
du_'8729''45'cong'737'_116 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_116 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity
d_identity_118 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ
d_identity'691'_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'691'_120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_120 v9
du_identity'691'_120 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'691'_120 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ
d_identity'737'_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_identity'737'_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_122 v9
du_identity'737'_122 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_identity'737'_122 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_124 v9
du_isCommutativeMagma_124 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_124 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_126 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeSemigroup_128 v9
du_isCommutativeSemigroup_128 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_128 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma
d_isMagma_130 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_496
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe d_isCommutativeSemiring_62 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMonoid
d_isMonoid_132 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup
d_isSemigroup_134 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isUnitalMagma
d_isUnitalMagma_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_136 v9
du_isUnitalMagma_136 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_136 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib
d_distrib_138 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_138 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribʳ
d_distrib'691'_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_140 v9
du_distrib'691'_140 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_140 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribˡ
d_distrib'737'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_142 v9
du_distrib'737'_142 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_142 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 v9
  = du_isCommutativeSemiringWithoutOne_144 v9
du_isCommutativeSemiringWithoutOne_144 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isEquivalence
d_isEquivalence_146 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe d_isCommutativeSemiring_62 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isNearSemiring
d_isNearSemiring_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isNearSemiring_148 v9
du_isNearSemiring_148 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_148 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1428
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_150 v9
du_isPartialEquivalence_150 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_150 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiring
d_isSemiring_152 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_154 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe d_isCommutativeSemiring_62 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutOne_156 v9
du_isSemiringWithoutOne_156 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_156 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.refl
d_refl_158 :: T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_refl_158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.reflexive
d_reflexive_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_160 v9
du_reflexive_160 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_160 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.setoid
d_setoid_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_162 v9
du_setoid_162 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_162 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v6))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.sym
d_sym_164 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.trans
d_trans_166 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero
d_zero_168 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe d_isCommutativeSemiring_62 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroʳ
d_zero'691'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_zero'691'_170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_170 v9
du_zero'691'_170 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_zero'691'_170 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroˡ
d_zero'737'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_zero'737'_172 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_172 v9
du_zero'737'_172 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
du_zero'737'_172 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing
d_AlmostCommutativeRing_180 a0 a1 = ()
data T_AlmostCommutativeRing_180
  = C_constructor_348 (AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                      AgdaAny T_IsAlmostCommutativeRing_26
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.Carrier
d_Carrier_202 :: T_AlmostCommutativeRing_180 -> ()
d_Carrier_202 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._≈_
d__'8776'__204 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> ()
d__'8776'__204 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._+_
d__'43'__206 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__206 v0
  = case coe v0 of
      C_constructor_348 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._*_
d__'42'__208 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__208 v0
  = case coe v0 of
      C_constructor_348 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.-_
d_'45'__210 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__210 v0
  = case coe v0 of
      C_constructor_348 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.0#
d_0'35'_212 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_212 v0
  = case coe v0 of
      C_constructor_348 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.1#
d_1'35'_214 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_214 v0
  = case coe v0 of
      C_constructor_348 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.isAlmostCommutativeRing
d_isAlmostCommutativeRing_216 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_216 v0
  = case coe v0 of
      C_constructor_348 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-assoc
d_'42''45'assoc_220 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-comm
d_'42''45'comm_222 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-cong
d_'42''45'cong_224 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_224 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_226 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_226 v2
du_'8729''45'cong'691'_226 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_226 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_228 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_228 v2
du_'8729''45'cong'737'_228 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_228 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-identity
d_'42''45'identity_230 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_232 ~v0 ~v1 v2 = du_identity'691'_232 v2
du_identity'691'_232 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_232 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_234 ~v0 ~v1 v2 = du_identity'737'_234 v2
du_identity'737'_234 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_234 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_236 ~v0 ~v1 v2 = du_isCommutativeMagma_236 v2
du_isCommutativeMagma_236 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_236 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_238 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_238 v2
du_'42''45'isCommutativeMonoid_238 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_238 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_240 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_240 v2
du_'42''45'isCommutativeSemigroup_240 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_240 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMagma
d_'42''45'isMagma_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_242 ~v0 ~v1 v2 = du_'42''45'isMagma_242 v2
du_'42''45'isMagma_242 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_242 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_244 ~v0 ~v1 v2 = du_'42''45'isMonoid_244 v2
du_'42''45'isMonoid_244 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_244 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_246 ~v0 ~v1 v2
  = du_'42''45'isSemigroup_246 v2
du_'42''45'isSemigroup_246 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_246 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1616
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.assoc
d_assoc_248 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.comm
d_comm_250 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong
d_'8729''45'cong_252 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_254 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_254 v2
du_'8729''45'cong'691'_254 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_254 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_256 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_256 v2
du_'8729''45'cong'737'_256 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_256 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identity
d_identity_258 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_260 ~v0 ~v1 v2 = du_identity'691'_260 v2
du_identity'691'_260 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_260 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_262 ~v0 ~v1 v2 = du_identity'737'_262 v2
du_identity'737'_262 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_262 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_264 ~v0 ~v1 v2 = du_isCommutativeMagma_264 v2
du_isCommutativeMagma_264 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_264 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                        (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_266 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_268 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_268 v2
du_isCommutativeSemigroup_268 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_268 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma
d_isMagma_270 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_496
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMonoid
d_isMonoid_272 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup
d_isSemigroup_274 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isUnitalMagma
d_isUnitalMagma_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_276 ~v0 ~v1 v2 = du_isUnitalMagma_276 v2
du_isUnitalMagma_276 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_276 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_278 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_278 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿+-comm
d_'45''8255''43''45'comm_280 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_280 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿cong
d_'45''8255'cong_282 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_282 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distrib
d_distrib_284 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribʳ
d_distrib'691'_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_286 ~v0 ~v1 v2 = du_distrib'691'_286 v2
du_distrib'691'_286 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_286 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribˡ
d_distrib'737'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_288 ~v0 ~v1 v2 = du_distrib'737'_288 v2
du_distrib'737'_288 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_288 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_290 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_290 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_292 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_292 v2
du_isCommutativeSemiringWithoutOne_292 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_292 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isEquivalence
d_isEquivalence_294 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isNearSemiring
d_isNearSemiring_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_296 ~v0 ~v1 v2 = du_isNearSemiring_296 v2
du_isNearSemiring_296 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_296 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1428
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_298 ~v0 ~v1 v2
  = du_isPartialEquivalence_298 v2
du_isPartialEquivalence_298 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_298 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiring
d_isSemiring_300 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_302 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_304 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_304 v2
du_isSemiringWithoutOne_304 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_304 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.refl
d_refl_306 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_refl_306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.reflexive
d_reflexive_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_308 ~v0 ~v1 v2 = du_reflexive_308 v2
du_reflexive_308 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_308 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.setoid
d_setoid_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_310 ~v0 ~v1 v2 = du_setoid_310 v2
du_setoid_310 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_310 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.sym
d_sym_312 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.trans
d_trans_314 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_314 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zero
d_zero_316 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroʳ
d_zero'691'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'691'_318 ~v0 ~v1 v2 = du_zero'691'_318 v2
du_zero'691'_318 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_318 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroˡ
d_zero'737'_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'737'_320 ~v0 ~v1 v2 = du_zero'737'_320 v2
du_zero'737'_320 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_320 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.commutativeSemiring
d_commutativeSemiring_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_322 ~v0 ~v1 v2
  = du_commutativeSemiring_322 v2
du_commutativeSemiring_322 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_322 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      (d__'43'__206 (coe v0)) (d__'42'__208 (coe v0))
      (d_0'35'_212 (coe v0)) (d_1'35'_214 (coe v0))
      (d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeMonoid
d_'42''45'commutativeMonoid_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_326 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_326 v2
du_'42''45'commutativeMonoid_326 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_326 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.commutativeSemigroup
d_commutativeSemigroup_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_commutativeSemigroup_328 ~v0 ~v1 v2
  = du_commutativeSemigroup_328 v2
du_commutativeSemigroup_328 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_commutativeSemigroup_328 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1082
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
            (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.magma
d_magma_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_330 ~v0 ~v1 v2 = du_magma_330 v2
du_magma_330 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_330 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_magma_606
                  (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-monoid
d_'42''45'monoid_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_332 ~v0 ~v1 v2 = du_'42''45'monoid_332 v2
du_'42''45'monoid_332 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_332 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
d_semigroup_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_334 ~v0 ~v1 v2 = du_semigroup_334 v2
du_semigroup_334 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_334 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-commutativeMonoid
d_'43''45'commutativeMonoid_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_336 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_336 v2
du_'43''45'commutativeMonoid_336 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_336 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.magma
d_magma_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_338 ~v0 ~v1 v2 = du_magma_338 v2
du_magma_338 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_338 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_magma_606
                     (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.monoid
d_monoid_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_340 ~v0 ~v1 v2 = du_monoid_340 v2
du_monoid_340 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_340 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1066
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
d_semigroup_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_342 ~v0 ~v1 v2 = du_semigroup_342 v2
du_semigroup_342 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_342 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_976
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semiring
d_semiring_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_344 ~v0 ~v1 v2 = du_semiring_344 v2
du_semiring_344 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_344 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.rawRing
d_rawRing_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_346 ~v0 ~v1 v2 = du_rawRing_346 v2
du_rawRing_346 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_346 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_344
      (d__'43'__206 (coe v0)) (d__'42'__208 (coe v0))
      (d_'45'__210 (coe v0)) (d_0'35'_212 (coe v0))
      (d_1'35'_214 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_
d__'45'Raw'45'AlmostCommutative'10230'__362 a0 a1 a2 a3 a4 a5 = ()
data T__'45'Raw'45'AlmostCommutative'10230'__362
  = C_constructor_772 (AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny) AgdaAny AgdaAny
-- Algebra.Solver.Ring.AlmostCommutativeRing.F._*_
d__'42'__378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__378 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__378 v4
du__'42'__378 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__378 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F._+_
d__'43'__380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__380 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'43'__380 v4
du__'43'__380 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__380 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.-_
d_'45'__396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__396 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__396 v4
du_'45'__396 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  AgdaAny -> AgdaAny
du_'45'__396 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.0#
d_0'35'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_398 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_0'35'_398 v4
du_0'35'_398 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 -> AgdaAny
du_0'35'_398 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.1#
d_1'35'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_400 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_400 v4
du_1'35'_400 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 -> AgdaAny
du_1'35'_400 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.F.Carrier
d_Carrier_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> ()
d_Carrier_402 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.T._*_
d__'42'__410 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__410 v0 = coe d__'42'__208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T._+_
d__'43'__412 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__412 v0 = coe d__'43'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T._≈_
d__'8776'__414 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> ()
d__'8776'__414 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-assoc
d_'42''45'assoc_416 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-comm
d_'42''45'comm_418 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_418 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_420 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'commutativeMonoid_420 v5
du_'42''45'commutativeMonoid_420 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_420 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.commutativeSemigroup
d_commutativeSemigroup_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_commutativeSemigroup_422 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_commutativeSemigroup_422 v5
du_commutativeSemigroup_422 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_commutativeSemigroup_422 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1082
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
            (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-cong
d_'42''45'cong_424 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_426 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_426 v5
du_'8729''45'cong'691'_426 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_426 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_428 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_428 v5
du_'8729''45'cong'737'_428 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_428 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-identity
d_'42''45'identity_430 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ
d_identity'691'_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_432 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_432 v5
du_identity'691'_432 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_432 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ
d_identity'737'_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_434 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_434 v5
du_identity'737'_434 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_434 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_436 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_436 v5
du_isCommutativeMagma_436 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_436 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_438 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_438 v5
du_'42''45'isCommutativeMonoid_438 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_438 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_440 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_440 v5
du_'42''45'isCommutativeSemigroup_440 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_440 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isMagma
d_'42''45'isMagma_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_442 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_442 v5
du_'42''45'isMagma_442 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_442 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isMonoid
d_'42''45'isMonoid_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_444 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_444 v5
du_'42''45'isMonoid_444 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_444 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isSemigroup
d_'42''45'isSemigroup_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_446 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_446 v5
du_'42''45'isSemigroup_446 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_446 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1616
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.magma
d_magma_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_448 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_magma_448 v5
du_magma_448 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_448 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_magma_606
                  (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.*-monoid
d_'42''45'monoid_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_450 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'monoid_450 v5
du_'42''45'monoid_450 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_450 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup
d_semigroup_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_452 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_452 v5
du_semigroup_452 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_452 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.assoc
d_assoc_454 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.comm
d_comm_456 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_458 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'commutativeMonoid_458 v5
du_'43''45'commutativeMonoid_458 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_458 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-cong
d_'8729''45'cong_460 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_462 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_462 v5
du_'8729''45'cong'691'_462 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_462 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_464 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_464 v5
du_'8729''45'cong'737'_464 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_464 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identity
d_identity_466 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ
d_identity'691'_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_468 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_468 v5
du_identity'691'_468 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_468 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ
d_identity'737'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_470 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_470 v5
du_identity'737'_470 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_470 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_472 v5
du_isCommutativeMagma_472 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_472 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                        (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_474 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_474 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemigroup
d_isCommutativeSemigroup_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_476 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_476 v5
du_isCommutativeSemigroup_476 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_476 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isMagma
d_isMagma_478 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_496
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isMonoid
d_isMonoid_480 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_480 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemigroup
d_isSemigroup_482 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_482 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isUnitalMagma
d_isUnitalMagma_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_484 v5
du_isUnitalMagma_484 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_484 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.magma
d_magma_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_486 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_magma_486 v5
du_magma_486 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_486 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_magma_606
                     (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.monoid
d_monoid_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_488 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_monoid_488 v5
du_monoid_488 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_488 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1066
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup
d_semigroup_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_490 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_490 v5
du_semigroup_490 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_490 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_976
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-_
d_'45'__492 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__492 v0 = coe d_'45'__210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_494 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_494 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿+-comm
d_'45''8255''43''45'comm_496 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_496 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿cong
d_'45''8255'cong_498 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_498 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.0#
d_0'35'_500 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_500 v0 = coe d_0'35'_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.1#
d_1'35'_502 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_502 v0 = coe d_1'35'_214 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.Carrier
d_Carrier_504 :: T_AlmostCommutativeRing_180 -> ()
d_Carrier_504 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.commutativeSemiring
d_commutativeSemiring_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_506 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_commutativeSemiring_506 v5
du_commutativeSemiring_506 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_506 v0
  = coe du_commutativeSemiring_322 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.distrib
d_distrib_508 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.distribʳ
d_distrib'691'_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_510 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'691'_510 v5
du_distrib'691'_510 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_510 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.distribˡ
d_distrib'737'_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_512 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'737'_512 v5
du_distrib'737'_512 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_512 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_514 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_514 v0
  = coe d_isAlmostCommutativeRing_216 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiring
d_isCommutativeSemiring_516 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_516 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_518 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_518 v5
du_isCommutativeSemiringWithoutOne_518 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_518 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isEquivalence
d_isEquivalence_520 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isNearSemiring
d_isNearSemiring_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_522 v5
du_isNearSemiring_522 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_522 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1428
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isPartialEquivalence
d_isPartialEquivalence_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_524 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_524 v5
du_isPartialEquivalence_524 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_524 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiring
d_isSemiring_526 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_528 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutOne
d_isSemiringWithoutOne_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_530 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_530 v5
du_isSemiringWithoutOne_530 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_530 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.rawRing
d_rawRing_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_532 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_rawRing_532 v5
du_rawRing_532 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_532 v0 = coe du_rawRing_346 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.refl
d_refl_534 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_refl_534 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.reflexive
d_reflexive_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_536 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_536 v5
du_reflexive_536 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_536 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.semiring
d_semiring_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_538 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semiring_538 v5
du_semiring_538 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_538 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.setoid
d_setoid_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_540 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_540 v5
du_setoid_540 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_540 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.sym
d_sym_542 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_542 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.trans
d_trans_544 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_544 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.zero
d_zero_546 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_546 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroʳ
d_zero'691'_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'691'_548 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'691'_548 v5
du_zero'691'_548 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_548 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroˡ
d_zero'737'_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'737'_550 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'737'_550 v5
du_zero'737'_550 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_550 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₀
d_Homomorphic'8320'_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_554 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₁
d_Homomorphic'8321'_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_556 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₂
d_Homomorphic'8322'_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_558 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._.Morphism
d_Morphism_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> ()
d_Morphism_560 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._*_
d__'42'__608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__608 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'42'__608 v5
du__'42'__608 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__608 v0 = coe d__'42'__208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._+_
d__'43'__610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__610 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'43'__610 v5
du__'43'__610 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__610 v0 = coe d__'43'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._≈_
d__'8776'__612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__612 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-assoc
d_'42''45'assoc_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_614 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'assoc_614 v5
du_'42''45'assoc_614 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'assoc_614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-comm
d_'42''45'comm_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_616 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'comm_616 v5
du_'42''45'comm_616 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_618 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'commutativeMonoid_618 v5
du_'42''45'commutativeMonoid_618 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_618 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemigroup
d_commutativeSemigroup_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_commutativeSemigroup_620 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_commutativeSemigroup_620 v5
du_commutativeSemigroup_620 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_commutativeSemigroup_620 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1082
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
            (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-cong
d_'42''45'cong_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_622 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'cong_622 v5
du_'42''45'cong_622 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'cong_622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_624 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_624 v5
du_'8729''45'cong'691'_624 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_624 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_626 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_626 v5
du_'8729''45'cong'737'_626 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_626 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-identity
d_'42''45'identity_628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_628 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'identity_628 v5
du_'42''45'identity_628 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'42''45'identity_628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_identity'691'_630 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_630 v5
du_identity'691'_630 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_630 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_identity'737'_632 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_632 v5
du_identity'737'_632 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_632 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_634 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_634 v5
du_isCommutativeMagma_634 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_634 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_636 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeMonoid_636 v5
du_'42''45'isCommutativeMonoid_636 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_636 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_638 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeSemigroup_638 v5
du_'42''45'isCommutativeSemigroup_638 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_638 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMagma
d_'42''45'isMagma_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isMagma_640 v5
du_'42''45'isMagma_640 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_640 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMonoid
d_'42''45'isMonoid_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isMonoid_642 v5
du_'42''45'isMonoid_642 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_642 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isSemigroup
d_'42''45'isSemigroup_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_644 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isSemigroup_644 v5
du_'42''45'isSemigroup_644 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_644 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1616
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.magma
d_magma_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_646 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_magma_646 v5
du_magma_646 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_646 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_magma_606
                  (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-monoid
d_'42''45'monoid_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_648 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'monoid_648 v5
du_'42''45'monoid_648 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_648 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_650 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_650 v5
du_semigroup_650 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_650 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc
d_assoc_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_652 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_assoc_652 v5
du_assoc_652 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_652 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.comm
d_comm_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_654 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_comm_654 v5
du_comm_654 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_656 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'commutativeMonoid_656 v5
du_'43''45'commutativeMonoid_656 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_656 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong
d_'8729''45'cong_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_658 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong_658 v5
du_'8729''45'cong_658 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_658 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_660 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_660 v5
du_'8729''45'cong'691'_660 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_660 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_662 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_662 v5
du_'8729''45'cong'737'_662 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_662 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity
d_identity_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_664 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_identity_664 v5
du_identity_664 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_664 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_identity'691'_666 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_666 v5
du_identity'691'_666 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_666 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_identity'737'_668 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_668 v5
du_identity'737'_668 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_668 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_670 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_670 v5
du_isCommutativeMagma_670 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_670 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                        (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_672 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'isCommutativeMonoid_672 v5
du_'43''45'isCommutativeMonoid_672 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'43''45'isCommutativeMonoid_672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemigroup
d_isCommutativeSemigroup_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_674 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemigroup_674 v5
du_isCommutativeSemigroup_674 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_674 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma
d_isMagma_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_676 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMagma_676 v5
du_isMagma_676 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_496
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMonoid
d_isMonoid_678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_678 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMonoid_678 v5
du_isMonoid_678 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_678 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup
d_isSemigroup_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_680 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemigroup_680 v5
du_isSemigroup_680 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isUnitalMagma
d_isUnitalMagma_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_682 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isUnitalMagma_682 v5
du_isUnitalMagma_682 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_682 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.magma
d_magma_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_684 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_magma_684 v5
du_magma_684 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_684 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_magma_606
                     (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.monoid
d_monoid_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_686 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_monoid_686 v5
du_monoid_686 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_686 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1066
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_688 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_688 v5
du_semigroup_688 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_688 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_976
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-_
d_'45'__690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_'45'__690 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_'45'__690 v5
du_'45'__690 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_'45'__690 v0 = coe d_'45'__210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_692 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''42''45'distrib'737'_692 v5
du_'45''8255''42''45'distrib'737'_692 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_692 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿+-comm
d_'45''8255''43''45'comm_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_694 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''43''45'comm_694 v5
du_'45''8255''43''45'comm_694 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_694 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿cong
d_'45''8255'cong_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_696 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255'cong_696 v5
du_'45''8255'cong_696 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_696 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0#
d_0'35'_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny
d_0'35'_698 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_0'35'_698 v5
du_0'35'_698 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_0'35'_698 v0 = coe d_0'35'_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.1#
d_1'35'_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny
d_1'35'_700 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_1'35'_700 v5
du_1'35'_700 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_1'35'_700 v0 = coe d_1'35'_214 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.Carrier
d_Carrier_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> ()
d_Carrier_702 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemiring
d_commutativeSemiring_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_704 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_commutativeSemiring_704 v5
du_commutativeSemiring_704 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_704 v0
  = coe du_commutativeSemiring_322 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distrib
d_distrib_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_706 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_distrib_706 v5
du_distrib_706 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_706 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribʳ
d_distrib'691'_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_708 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'691'_708 v5
du_distrib'691'_708 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_708 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribˡ
d_distrib'737'_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_710 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'737'_710 v5
du_distrib'737'_710 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_710 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_712 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isAlmostCommutativeRing_712 v5
du_isAlmostCommutativeRing_712 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_712 v0
  = coe d_isAlmostCommutativeRing_216 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiring
d_isCommutativeSemiring_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_714 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiring_714 v5
du_isCommutativeSemiring_714 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_714 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_716 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiringWithoutOne_716 v5
du_isCommutativeSemiringWithoutOne_716 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_716 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isEquivalence
d_isEquivalence_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_718 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isEquivalence_718 v5
du_isEquivalence_718 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isNearSemiring
d_isNearSemiring_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_720 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isNearSemiring_720 v5
du_isNearSemiring_720 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_720 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1428
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isPartialEquivalence
d_isPartialEquivalence_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_722 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isPartialEquivalence_722 v5
du_isPartialEquivalence_722 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_722 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiring
d_isSemiring_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_724 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isSemiring_724 v5
du_isSemiring_724 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_726 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutAnnihilatingZero_726 v5
du_isSemiringWithoutAnnihilatingZero_726 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutOne
d_isSemiringWithoutOne_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_728 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutOne_728 v5
du_isSemiringWithoutOne_728 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_728 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawRing
d_rawRing_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_730 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawRing_730 v5
du_rawRing_730 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_730 v0 = coe du_rawRing_346 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.refl
d_refl_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_refl_732 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_refl_732 v5
du_refl_732 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_refl_732 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.reflexive
d_reflexive_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_734 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_reflexive_734 v5
du_reflexive_734 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_734 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semiring
d_semiring_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_736 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semiring_736 v5
du_semiring_736 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_736 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.setoid
d_setoid_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_738 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_setoid_738 v5
du_setoid_738 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_738 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.sym
d_sym_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_740 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_sym_740 v5
du_sym_740 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_740 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.trans
d_trans_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_742 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_trans_742 v5
du_trans_742 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_742 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zero
d_zero_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_744 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero_744 v5
du_zero_744 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroʳ
d_zero'691'_746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_zero'691'_746 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'691'_746 v5
du_zero'691'_746 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_746 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroˡ
d_zero'737'_748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_zero'737'_748 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'737'_748 v5
du_zero'737'_748 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_748 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.⟦_⟧
d_'10214'_'10215'_760 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_760 v0
  = case coe v0 of
      C_constructor_772 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.+-homo
d_'43''45'homo_762 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_762 v0
  = case coe v0 of
      C_constructor_772 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.*-homo
d_'42''45'homo_764 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_764 v0
  = case coe v0 of
      C_constructor_772 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.-‿homo
d_'45''8255'homo_766 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
d_'45''8255'homo_766 v0
  = case coe v0 of
      C_constructor_772 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.0-homo
d_0'45'homo_768 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny
d_0'45'homo_768 v0
  = case coe v0 of
      C_constructor_772 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.1-homo
d_1'45'homo_770 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny
d_1'45'homo_770 v0
  = case coe v0 of
      C_constructor_772 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Solver.Ring.AlmostCommutativeRing.-raw-almostCommutative⟶
d_'45'raw'45'almostCommutative'10230'_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362
d_'45'raw'45'almostCommutative'10230'_780 ~v0 ~v1 v2
  = du_'45'raw'45'almostCommutative'10230'_780 v2
du_'45'raw'45'almostCommutative'10230'_780 ::
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362
du_'45'raw'45'almostCommutative'10230'_780 v0
  = coe
      C_constructor_772 (coe (\ v1 -> v1))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_496
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                   (coe
                                      d_isCommutativeSemiring_62
                                      (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
              (let v3 = coe du_rawRing_346 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314 v3 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_496
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                   (coe
                                      d_isCommutativeSemiring_62
                                      (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
              (let v3 = coe du_rawRing_346 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316 v3 v1 v2))))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_496
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                   (coe
                                      d_isCommutativeSemiring_62
                                      (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
              (let v2 = coe du_rawRing_346 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318 v2 v1))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                              (coe
                                 d_isCommutativeSemiring_62
                                 (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
         (let v1 = coe du_rawRing_346 (coe v0) in
          coe (MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320 (coe v1))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_496
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                              (coe
                                 d_isCommutativeSemiring_62
                                 (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
         (let v1 = coe du_rawRing_346 (coe v0) in
          coe (MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322 (coe v1))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._*_
d__'42'__790 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__790 v0 = coe d__'42'__208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._+_
d__'43'__792 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__792 v0 = coe d__'43'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_
d__'8776'__794 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> ()
d__'8776'__794 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-assoc
d_'42''45'assoc_796 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_798 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_800 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_800 v2
du_'42''45'commutativeMonoid_800 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_800 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemigroup
d_commutativeSemigroup_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_commutativeSemigroup_802 ~v0 ~v1 v2
  = du_commutativeSemigroup_802 v2
du_commutativeSemigroup_802 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_commutativeSemigroup_802 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1082
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
            (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-cong
d_'42''45'cong_804 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_806 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_806 v2
du_'8729''45'cong'691'_806 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_806 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_808 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_808 v2
du_'8729''45'cong'737'_808 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_808 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-identity
d_'42''45'identity_810 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_810 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_812 ~v0 ~v1 v2 = du_identity'691'_812 v2
du_identity'691'_812 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_812 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_814 ~v0 ~v1 v2 = du_identity'737'_814 v2
du_identity'737'_814 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_814 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_816 ~v0 ~v1 v2 = du_isCommutativeMagma_816 v2
du_isCommutativeMagma_816 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_816 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_818 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_818 v2
du_'42''45'isCommutativeMonoid_818 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_818 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_820 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_820 v2
du_'42''45'isCommutativeSemigroup_820 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_820 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMagma
d_'42''45'isMagma_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_822 ~v0 ~v1 v2 = du_'42''45'isMagma_822 v2
du_'42''45'isMagma_822 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_822 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_824 ~v0 ~v1 v2 = du_'42''45'isMonoid_824 v2
du_'42''45'isMonoid_824 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_824 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isSemigroup
d_'42''45'isSemigroup_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_826 ~v0 ~v1 v2
  = du_'42''45'isSemigroup_826 v2
du_'42''45'isSemigroup_826 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_826 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1616
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_828 ~v0 ~v1 v2 = du_magma_828 v2
du_magma_828 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_828 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_magma_606
                  (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_830 ~v0 ~v1 v2 = du_'42''45'monoid_830 v2
du_'42''45'monoid_830 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_830 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_832 ~v0 ~v1 v2 = du_semigroup_832 v2
du_semigroup_832 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_832 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc
d_assoc_834 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_834 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.comm
d_comm_836 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_836 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_838 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_838 v2
du_'43''45'commutativeMonoid_838 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_838 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_840 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_842 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_842 v2
du_'8729''45'cong'691'_842 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_842 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_844 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_844 v2
du_'8729''45'cong'737'_844 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_844 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identity
d_identity_846 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_848 ~v0 ~v1 v2 = du_identity'691'_848 v2
du_identity'691'_848 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_848 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_850 ~v0 ~v1 v2 = du_identity'737'_850 v2
du_identity'737'_850 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_850 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_852 ~v0 ~v1 v2 = du_isCommutativeMagma_852 v2
du_isCommutativeMagma_852 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_852 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                        (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_854 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_854 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_856 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_856 v2
du_isCommutativeSemigroup_856 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_856 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma
d_isMagma_858 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_858 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_496
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid
d_isMonoid_860 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_860 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_862 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isUnitalMagma
d_isUnitalMagma_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_864 ~v0 ~v1 v2 = du_isUnitalMagma_864 v2
du_isUnitalMagma_864 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_864 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_866 ~v0 ~v1 v2 = du_magma_866 v2
du_magma_866 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_866 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_magma_606
                     (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid
d_monoid_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_868 ~v0 ~v1 v2 = du_monoid_868 v2
du_monoid_868 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_868 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1066
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_870 ~v0 ~v1 v2 = du_semigroup_870 v2
du_semigroup_870 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_870 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_976
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-_
d_'45'__872 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__872 v0 = coe d_'45'__210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_874 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_874 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_876 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_876 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_878 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_878 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.0#
d_0'35'_880 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_880 v0 = coe d_0'35'_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.1#
d_1'35'_882 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_882 v0 = coe d_1'35'_214 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier
d_Carrier_884 :: T_AlmostCommutativeRing_180 -> ()
d_Carrier_884 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_886 ~v0 ~v1 v2
  = du_commutativeSemiring_886 v2
du_commutativeSemiring_886 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_886 v0
  = coe du_commutativeSemiring_322 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib
d_distrib_888 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_890 ~v0 ~v1 v2 = du_distrib'691'_890 v2
du_distrib'691'_890 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_890 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_892 ~v0 ~v1 v2 = du_distrib'737'_892 v2
du_distrib'737'_892 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_892 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_894 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_894 v0
  = coe d_isAlmostCommutativeRing_216 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_896 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_896 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_898 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_898 v2
du_isCommutativeSemiringWithoutOne_898 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_898 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_900 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_902 ~v0 ~v1 v2 = du_isNearSemiring_902 v2
du_isNearSemiring_902 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_902 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1428
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_904 ~v0 ~v1 v2
  = du_isPartialEquivalence_904 v2
du_isPartialEquivalence_904 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_904 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring
d_isSemiring_906 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_906 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_908 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_908 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_910 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_910 v2
du_isSemiringWithoutOne_910 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_910 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing
d_rawRing_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_912 ~v0 ~v1 v2 = du_rawRing_912 v2
du_rawRing_912 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_912 v0 = coe du_rawRing_346 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.refl
d_refl_914 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_refl_914 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive
d_reflexive_916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_916 ~v0 ~v1 v2 = du_reflexive_916 v2
du_reflexive_916 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_916 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring
d_semiring_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_918 ~v0 ~v1 v2 = du_semiring_918 v2
du_semiring_918 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_918 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid
d_setoid_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_920 ~v0 ~v1 v2 = du_setoid_920 v2
du_setoid_920 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_920 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.sym
d_sym_922 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_922 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.trans
d_trans_924 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_924 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zero
d_zero_926 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_926 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'691'_928 ~v0 ~v1 v2 = du_zero'691'_928 v2
du_zero'691'_928 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_928 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'737'_930 ~v0 ~v1 v2 = du_zero'737'_930 v2
du_zero'737'_930 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_930 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.Induced-equivalence
d_Induced'45'equivalence_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> ()
d_Induced'45'equivalence_954 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._*_
d__'42'__970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__970 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'42'__970 v5
du__'42'__970 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__970 v0 = coe d__'42'__208 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._+_
d__'43'__972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__972 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'43'__972 v5
du__'43'__972 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__972 v0 = coe d__'43'__206 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_
d__'8776'__974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8776'__974 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-assoc
d_'42''45'assoc_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_976 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'assoc_976 v5
du_'42''45'assoc_976 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'assoc_976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_978 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'comm_978 v5
du_'42''45'comm_978 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_978 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_980 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'commutativeMonoid_980 v5
du_'42''45'commutativeMonoid_980 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_980 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemigroup
d_commutativeSemigroup_982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
d_commutativeSemigroup_982 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_commutativeSemigroup_982 v5
du_commutativeSemigroup_982 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_688
du_commutativeSemigroup_982 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1082
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
            (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-cong
d_'42''45'cong_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_984 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'cong_984 v5
du_'42''45'cong_984 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'cong_984 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_986 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_986 v5
du_'8729''45'cong'691'_986 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_986 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_988 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_988 v5
du_'8729''45'cong'737'_988 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_988 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                          (coe v4) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-identity
d_'42''45'identity_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_990 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'identity_990 v5
du_'42''45'identity_990 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'42''45'identity_990 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_992 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_992 v5
du_identity'691'_992 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_992 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_994 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_994 v5
du_identity'737'_994 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_994 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_996 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_996 v5
du_isCommutativeMagma_996 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_996 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_998 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                  ~v8
  = du_'42''45'isCommutativeMonoid_998 v5
du_'42''45'isCommutativeMonoid_998 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_998 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_1000 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 ~v8
  = du_'42''45'isCommutativeSemigroup_1000 v5
du_'42''45'isCommutativeSemigroup_1000 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_1000 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMagma
d_'42''45'isMagma_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_1002 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isMagma_1002 v5
du_'42''45'isMagma_1002 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_1002 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_1004 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isMonoid_1004 v5
du_'42''45'isMonoid_1004 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_1004 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1618
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isSemigroup
d_'42''45'isSemigroup_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_1006 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isSemigroup_1006 v5
du_'42''45'isSemigroup_1006 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_1006 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1616
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_1008 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_magma_1008 v5
du_magma_1008 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_1008 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_magma_606
                  (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_1010 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'monoid_1010 v5
du_'42''45'monoid_1010 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_1010 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_1012 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_1012 v5
du_semigroup_1012 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_1012 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_976
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338 (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc
d_assoc_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1014 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_assoc_1014 v5
du_assoc_1014 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.comm
d_comm_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1016 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_comm_1016 v5
du_comm_1016 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_1016 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_1018 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'43''45'commutativeMonoid_1018 v5
du_'43''45'commutativeMonoid_1018 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_1018 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1020 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong_1020 v5
du_'8729''45'cong_1020 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1022 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_1022 v5
du_'8729''45'cong'691'_1022 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1022 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1024 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_1024 v5
du_'8729''45'cong'737'_1024 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1024 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identity
d_identity_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1026 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity_1026 v5
du_identity_1026 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1026 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ
d_identity'691'_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_1028 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_1028 v5
du_identity'691'_1028 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_1028 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ
d_identity'737'_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_1030 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_1030 v5
du_identity'737'_1030 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_1030 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_1032 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_1032 v5
du_isCommutativeMagma_1032 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_1032 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_606
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                        (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_1034 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                   ~v8
  = du_'43''45'isCommutativeMonoid_1034 v5
du_'43''45'isCommutativeMonoid_1034 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'43''45'isCommutativeMonoid_1034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_1036 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemigroup_1036 v5
du_isCommutativeSemigroup_1036 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_1036 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_814
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma
d_isMagma_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_1038 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMagma_1038 v5
du_isMagma_1038 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_1038 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_496
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_774
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_216 (coe v0))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid
d_isMonoid_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_1040 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMonoid_1040 v5
du_isMonoid_1040 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_216 (coe v0))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_1042 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemigroup_1042 v5
du_isSemigroup_1042 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_1042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_216 (coe v0)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isUnitalMagma
d_isUnitalMagma_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_1044 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isUnitalMagma_1044 v5
du_isUnitalMagma_1044 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_1044 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_756
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.magma
d_magma_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_magma_1046 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_magma_1046 v5
du_magma_1046 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_magma_1046 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_magma_606
                     (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v5)))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid
d_monoid_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1048 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_monoid_1048 v5
du_monoid_1048 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_1048 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1066
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup
d_semigroup_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_1050 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_1050 v5
du_semigroup_1050 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_1050 v0
  = let v1 = coe du_commutativeSemiring_322 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_976
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v4))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-_
d_'45'__1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45'__1052 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_'45'__1052 v5
du_'45'__1052 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_'45'__1052 v0 = coe d_'45'__210 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_1054 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 ~v8
  = du_'45''8255''42''45'distrib'737'_1054 v5
du_'45''8255''42''45'distrib'737'_1054 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_1054 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_1056 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255''43''45'comm_1056 v5
du_'45''8255''43''45'comm_1056 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_1056 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_1058 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255'cong_1058 v5
du_'45''8255'cong_1058 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_1058 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.0#
d_0'35'_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'35'_1060 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_0'35'_1060 v5
du_0'35'_1060 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_0'35'_1060 v0 = coe d_0'35'_212 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.1#
d_1'35'_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'35'_1062 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_1'35'_1062 v5
du_1'35'_1062 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_1'35'_1062 v0 = coe d_1'35'_214 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier
d_Carrier_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> ()
d_Carrier_1064 = erased
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_1066 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_commutativeSemiring_1066 v5
du_commutativeSemiring_1066 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_1066 v0
  = coe du_commutativeSemiring_322 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib
d_distrib_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1068 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib_1068 v5
du_distrib_1068 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_1068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_216 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1070 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'691'_1070 v5
du_distrib'691'_1070 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1070 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1072 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'737'_1072 v5
du_distrib'737'_1072 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1072 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_1074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_1074 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isAlmostCommutativeRing_1074 v5
du_isAlmostCommutativeRing_1074 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_1074 v0
  = coe d_isAlmostCommutativeRing_216 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_1076 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemiring_1076 v5
du_isCommutativeSemiring_1076 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_1076 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_216 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_1078 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                       ~v7 ~v8
  = du_isCommutativeSemiringWithoutOne_1078 v5
du_isCommutativeSemiringWithoutOne_1078 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_1078 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1080 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isEquivalence_1080 v5
du_isEquivalence_1080 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_1080 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_216 (coe v0)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_1082 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isNearSemiring_1082 v5
du_isNearSemiring_1082 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_1082 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1428
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1084 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isPartialEquivalence_1084 v5
du_isPartialEquivalence_1084 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1084 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring
d_isSemiring_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_1086 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiring_1086 v5
du_isSemiring_1086 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_1086 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_216 (coe v0)))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_1088 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                         ~v7 ~v8
  = du_isSemiringWithoutAnnihilatingZero_1088 v5
du_isSemiringWithoutAnnihilatingZero_1088 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_1088 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_1090 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiringWithoutOne_1090 v5
du_isSemiringWithoutOne_1090 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_1090 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing
d_rawRing_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_1092 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_rawRing_1092 v5
du_rawRing_1092 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_1092 v0 = coe du_rawRing_346 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.refl
d_refl_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_refl_1094 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_refl_1094 v5
du_refl_1094 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_refl_1094 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive
d_reflexive_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1096 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_reflexive_1096 v5
du_reflexive_1096 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1096 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
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
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring
d_semiring_1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_1098 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semiring_1098 v5
du_semiring_1098 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_1098 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_322 (coe v0))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid
d_setoid_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1100 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_setoid_1100 v5
du_setoid_1100 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1100 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_774 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_722 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_496 (coe v7)))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.sym
d_sym_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1102 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_sym_1102 v5
du_sym_1102 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.trans
d_trans_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1104 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_trans_1104 v5
du_trans_1104 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1104 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_216 (coe v0))))))))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zero
d_zero_1106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1106 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_zero_1106 v5
du_zero_1106 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_1106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_216 (coe v0))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'691'_1108 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'691'_1108 v5
du_zero'691'_1108 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_1108 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_1110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'737'_1110 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'737'_1110 v5
du_zero'737'_1110 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_1110 v0
  = let v1 = d_isAlmostCommutativeRing_216 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
                  (coe v3)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.*-homo
d_'42''45'homo_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'42''45'homo_1114 v6
du_'42''45'homo_1114 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'homo_1114 v0 = coe d_'42''45'homo_764 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.+-homo
d_'43''45'homo_1116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_1116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'43''45'homo_1116 v6
du_'43''45'homo_1116 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'43''45'homo_1116 v0 = coe d_'43''45'homo_762 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿homo
d_'45''8255'homo_1118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'homo_1118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'45''8255'homo_1118 v6
du_'45''8255'homo_1118 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
du_'45''8255'homo_1118 v0 = coe d_'45''8255'homo_766 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.0-homo
d_0'45'homo_1120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'45'homo_1120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_0'45'homo_1120 v6
du_0'45'homo_1120 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny
du_0'45'homo_1120 v0 = coe d_0'45'homo_768 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.1-homo
d_1'45'homo_1122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'45'homo_1122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_1'45'homo_1122 v6
du_1'45'homo_1122 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny
du_1'45'homo_1122 v0 = coe d_1'45'homo_770 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing._._.⟦_⟧
d_'10214'_'10215'_1124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__362 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_'10214'_'10215'_1124 v6
du_'10214'_'10215'_1124 ::
  T__'45'Raw'45'AlmostCommutative'10230'__362 -> AgdaAny -> AgdaAny
du_'10214'_'10215'_1124 v0 = coe d_'10214'_'10215'_760 (coe v0)
-- Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeRing
d_fromCommutativeRing_1130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  T_AlmostCommutativeRing_180
d_fromCommutativeRing_1130 ~v0 ~v1 v2
  = du_fromCommutativeRing_1130 v2
du_fromCommutativeRing_1130 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  T_AlmostCommutativeRing_180
du_fromCommutativeRing_1130 v0
  = coe
      C_constructor_348
      (MAlonzo.Code.Algebra.Bundles.d__'43'__4152 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__4154 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'45'__4156 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_4158 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_4160 (coe v0))
      (coe
         C_constructor_174
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_3018
            (coe MAlonzo.Code.Algebra.Bundles.d__'43'__4152 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__4154 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4156 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_4158 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4162 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1184
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2762
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2904
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4162 (coe v0))))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isRing_2904
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4162
                                         (coe v0)))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'45'__4156 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__4154 v0 v1 v2))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'42'__4154 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4156 v0 v1) v2)
                 (coe
                    MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'737''45''42'_260
                    (coe
                       MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4058
                       (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0)))
                    (coe v1) (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_244
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_4056
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0)))))
-- Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeSemiring
d_fromCommutativeSemiring_1506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  T_AlmostCommutativeRing_180
d_fromCommutativeSemiring_1506 ~v0 ~v1 v2
  = du_fromCommutativeSemiring_1506 v2
du_fromCommutativeSemiring_1506 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  T_AlmostCommutativeRing_180
du_fromCommutativeSemiring_1506 v0
  = coe
      C_constructor_348
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2548 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2550 (coe v0)) (\ v1 -> v1)
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2552 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2554 (coe v0))
      (coe
         C_constructor_174
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2556 (coe v0))
         (coe (\ v1 v2 v3 -> v3))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_496
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2556
                                         (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2550 v0 v1 v2)))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_496
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2556
                                         (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d__'43'__2548 v0 v1 v2))))
