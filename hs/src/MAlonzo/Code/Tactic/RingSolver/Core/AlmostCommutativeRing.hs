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

module MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing where

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
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.RingWithoutOne
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing
d_IsAlmostCommutativeRing_26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsAlmostCommutativeRing_26
  = C_IsAlmostCommutativeRing'46'constructor_1177 MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
                                                  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                  (AgdaAny -> AgdaAny -> AgdaAny)
                                                  (AgdaAny -> AgdaAny -> AgdaAny)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_62 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_62 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_1177 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿cong
d_'45''8255'cong_64 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_64 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_1177 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_70 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_70 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_1177 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿+-comm
d_'45''8255''43''45'comm_76 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_76 v0
  = case coe v0 of
      C_IsAlmostCommutativeRing'46'constructor_1177 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-assoc
d_'42''45'assoc_80 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_80 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-comm
d_'42''45'comm_82 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_82 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-cong
d_'42''45'cong_84 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_84 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-identity
d_'42''45'identity_90 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_90 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_728
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'737'_726
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeMagma
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_96 v9
du_isCommutativeMagma_96 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_96 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeMonoid
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'42''45'isCommutativeMonoid_98 v9
du_'42''45'isCommutativeMonoid_98 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_98 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeSemigroup
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 v9
  = du_'42''45'isCommutativeSemigroup_100 v9
du_'42''45'isCommutativeSemigroup_100 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_100 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
            (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMagma
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
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_102 v9
du_'42''45'isMagma_102 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_102 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMonoid
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
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_104 v9
du_'42''45'isMonoid_104 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_104 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isSemigroup
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
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_106 v9
du_'42''45'isSemigroup_106 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_106 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc
d_assoc_108 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe d_isCommutativeSemiring_62 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm
d_comm_110 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_748
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong
d_'8729''45'cong_112 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_112 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe d_isCommutativeSemiring_62 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity
d_identity_118 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeMagma
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_124 v9
du_isCommutativeMagma_124 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_124 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_126 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemigroup
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeSemigroup_128 v9
du_isCommutativeSemigroup_128 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_128 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma
d_isMagma_130 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe d_isCommutativeSemiring_62 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMonoid
d_isMonoid_132 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe d_isCommutativeSemiring_62 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup
d_isSemigroup_134 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe d_isCommutativeSemiring_62 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isUnitalMagma
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
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_136 v9
du_isUnitalMagma_136 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_136 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib
d_distrib_138 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_138 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe d_isCommutativeSemiring_62 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribʳ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribˡ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemiringWithoutOne
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 v9
  = du_isCommutativeSemiringWithoutOne_144 v9
du_isCommutativeSemiringWithoutOne_144 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isEquivalence
d_isEquivalence_146 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe d_isCommutativeSemiring_62 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isNearSemiring
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
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isNearSemiring_148 v9
du_isNearSemiring_148 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_148 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isPartialEquivalence
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                              (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiring
d_isSemiring_152 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_154 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe d_isCommutativeSemiring_62 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutOne
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
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutOne_156 v9
du_isSemiringWithoutOne_156 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_156 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.refl
d_refl_158 :: T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny
d_refl_158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.reflexive
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                             (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v7))
                             v8)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.setoid
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
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_162 v9
du_setoid_162 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_162 v0
  = let v1 = d_isCommutativeSemiring_62 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.sym
d_sym_164 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.trans
d_trans_166 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_166 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe d_isCommutativeSemiring_62 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero
d_zero_168 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe d_isCommutativeSemiring_62 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroʳ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroˡ
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing
d_AlmostCommutativeRing_178 a0 a1 = ()
data T_AlmostCommutativeRing_178
  = C_AlmostCommutativeRing'46'constructor_6235 (AgdaAny ->
                                                 AgdaAny -> AgdaAny)
                                                (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                                AgdaAny (AgdaAny -> Maybe AgdaAny) AgdaAny
                                                T_IsAlmostCommutativeRing_26
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.Carrier
d_Carrier_204 :: T_AlmostCommutativeRing_178 -> ()
d_Carrier_204 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._≈_
d__'8776'__206 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> ()
d__'8776'__206 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._+_
d__'43'__208 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__208 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_6235 v3 v4 v5 v6 v7 v8 v9
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._*_
d__'42'__210 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__210 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_6235 v3 v4 v5 v6 v7 v8 v9
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.-_
d_'45'__212 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_'45'__212 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_6235 v3 v4 v5 v6 v7 v8 v9
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.0#
d_0'35'_214 :: T_AlmostCommutativeRing_178 -> AgdaAny
d_0'35'_214 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_6235 v3 v4 v5 v6 v7 v8 v9
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.0≟_
d_0'8799'__218 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__218 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_6235 v3 v4 v5 v6 v7 v8 v9
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.1#
d_1'35'_220 :: T_AlmostCommutativeRing_178 -> AgdaAny
d_1'35'_220 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_6235 v3 v4 v5 v6 v7 v8 v9
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.isAlmostCommutativeRing
d_isAlmostCommutativeRing_222 ::
  T_AlmostCommutativeRing_178 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_222 v0
  = case coe v0 of
      C_AlmostCommutativeRing'46'constructor_6235 v3 v4 v5 v6 v7 v8 v9
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-assoc
d_'42''45'assoc_226 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-comm
d_'42''45'comm_228 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-cong
d_'42''45'cong_230 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_232 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_232 v2
du_'8729''45'cong'691'_232 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_232 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_234 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_234 v2
du_'8729''45'cong'737'_234 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_234 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-identity
d_'42''45'identity_236 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_236 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'691'_238 ~v0 ~v1 v2 = du_identity'691'_238 v2
du_identity'691'_238 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_238 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'737'_240 ~v0 ~v1 v2 = du_identity'737'_240 v2
du_identity'737'_240 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_240 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_242 ~v0 ~v1 v2 = du_isCommutativeMagma_242 v2
du_isCommutativeMagma_242 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_242 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_244 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_244 v2
du_'42''45'isCommutativeMonoid_244 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_244 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_246 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_246 v2
du_'42''45'isCommutativeSemigroup_246 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_246 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMagma
d_'42''45'isMagma_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_248 ~v0 ~v1 v2 = du_'42''45'isMagma_248 v2
du_'42''45'isMagma_248 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_248 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_250 ~v0 ~v1 v2 = du_'42''45'isMonoid_250 v2
du_'42''45'isMonoid_250 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_250 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_252 ~v0 ~v1 v2
  = du_'42''45'isSemigroup_252 v2
du_'42''45'isSemigroup_252 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_252 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.assoc
d_assoc_254 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.comm
d_comm_256 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_748
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong
d_'8729''45'cong_258 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_260 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_260 v2
du_'8729''45'cong'691'_260 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_260 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_262 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_262 v2
du_'8729''45'cong'737'_262 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_262 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identity
d_identity_264 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'691'_266 ~v0 ~v1 v2 = du_identity'691'_266 v2
du_identity'691'_266 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_266 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'737'_268 ~v0 ~v1 v2 = du_identity'737'_268 v2
du_identity'737'_268 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_268 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_270 ~v0 ~v1 v2 = du_isCommutativeMagma_270 v2
du_isCommutativeMagma_270 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_270 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                        (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_272 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_274 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_274 v2
du_isCommutativeSemigroup_274 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_274 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma
d_isMagma_276 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isMonoid
d_isMonoid_278 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup
d_isSemigroup_280 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_280 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isUnitalMagma
d_isUnitalMagma_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_282 ~v0 ~v1 v2 = du_isUnitalMagma_282 v2
du_isUnitalMagma_282 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_282 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_284 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_284 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.-‿+-comm
d_'45''8255''43''45'comm_286 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_286 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.-‿cong
d_'45''8255'cong_288 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_288 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.distrib
d_distrib_290 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.distribʳ
d_distrib'691'_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_292 ~v0 ~v1 v2 = du_distrib'691'_292 v2
du_distrib'691'_292 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_292 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.distribˡ
d_distrib'737'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_294 ~v0 ~v1 v2 = du_distrib'737'_294 v2
du_distrib'737'_294 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_294 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_296 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_296 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_298 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_298 v2
du_isCommutativeSemiringWithoutOne_298 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_298 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isEquivalence
d_isEquivalence_300 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isNearSemiring
d_isNearSemiring_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_302 ~v0 ~v1 v2 = du_isNearSemiring_302 v2
du_isNearSemiring_302 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_302 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_304 ~v0 ~v1 v2
  = du_isPartialEquivalence_304 v2
du_isPartialEquivalence_304 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_304 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                 (coe v8))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiring
d_isSemiring_306 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_306 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_308 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_310 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_310 v2
du_isSemiringWithoutOne_310 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_310 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.reflexive
d_reflexive_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_312 ~v0 ~v1 v2 = du_reflexive_312 v2
du_reflexive_312 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_312 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v8))
                                v9))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.setoid
d_setoid_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_314 ~v0 ~v1 v2 = du_setoid_314 v2
du_setoid_314 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_314 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.sym
d_sym_316 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.trans
d_trans_318 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_318 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.zero
d_zero_320 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.zeroʳ
d_zero'691'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_zero'691'_322 ~v0 ~v1 v2 = du_zero'691'_322 v2
du_zero'691'_322 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'691'_322 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.zeroˡ
d_zero'737'_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_zero'737'_324 ~v0 ~v1 v2 = du_zero'737'_324 v2
du_zero'737'_324 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'737'_324 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.commutativeSemiring
d_commutativeSemiring_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_commutativeSemiring_326 ~v0 ~v1 v2
  = du_commutativeSemiring_326 v2
du_commutativeSemiring_326 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_commutativeSemiring_326 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      (d__'43'__208 (coe v0)) (d__'42'__210 (coe v0))
      (d_0'35'_214 (coe v0)) (d_1'35'_220 (coe v0))
      (d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeMonoid
d_'42''45'commutativeMonoid_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'commutativeMonoid_330 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_330 v2
du_'42''45'commutativeMonoid_330 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'42''45'commutativeMonoid_330 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2642
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-monoid
d_'42''45'monoid_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'monoid_332 ~v0 ~v1 v2 = du_'42''45'monoid_332 v2
du_'42''45'monoid_332 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'42''45'monoid_332 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
d_semigroup_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_334 ~v0 ~v1 v2 = du_semigroup_334 v2
du_semigroup_334 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_334 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_948
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288 (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.+-commutativeMonoid
d_'43''45'commutativeMonoid_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'commutativeMonoid_336 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_336 v2
du_'43''45'commutativeMonoid_336 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'43''45'commutativeMonoid_336 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.monoid
d_monoid_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_338 ~v0 ~v1 v2 = du_monoid_338 v2
du_monoid_338 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_monoid_338 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1036
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
d_semigroup_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_340 ~v0 ~v1 v2 = du_semigroup_340 v2
du_semigroup_340 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_340 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_948
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.rawSemiring
d_rawSemiring_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_342 ~v0 ~v1 v2 = du_rawSemiring_342 v2
du_rawSemiring_342 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_342 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.semiring
d_semiring_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_semiring_344 ~v0 ~v1 v2 = du_semiring_344 v2
du_semiring_344 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_semiring_344 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2600
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.rawRing
d_rawRing_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_346 ~v0 ~v1 v2 = du_rawRing_346 v2
du_rawRing_346 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_346 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawRing'46'constructor_3989
      (d__'43'__208 (coe v0)) (d__'42'__210 (coe v0))
      (d_'45'__212 (coe v0)) (d_0'35'_214 (coe v0))
      (d_1'35'_220 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._^_
d__'94'__348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
d__'94'__348 ~v0 ~v1 v2 v3 v4 = du__'94'__348 v2 v3 v4
du__'94'__348 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
du__'94'__348 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_222
              (let v3
                     = coe
                         MAlonzo.Code.Algebra.Bundles.du_semiring_2600
                         (coe du_commutativeSemiring_326 (coe v0)) in
               coe
                 (coe
                    MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
                    (coe
                       MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                       (coe v3)))) in
    coe
      (let v4 = subInt (coe v2) (coe (1 :: Integer)) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__88 v3
                    (coe
                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                       (coe v3) (coe v4) (coe v1))
                    v1 in
          coe
            (case coe v2 of
               0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_90 (coe v3)
               1 -> coe v1
               _ -> coe v5)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._-_
d__'45'__350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__350 ~v0 ~v1 v2 v3 v4 = du__'45'__350 v2 v3 v4
du__'45'__350 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__350 v0 v1 v2
  = coe d__'43'__208 v0 v1 (coe d_'45'__212 v0 v2)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.refl
d_refl_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_refl_358 ~v0 ~v1 v2 v3 = du_refl_358 v2 v3
du_refl_358 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_refl_358 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
      v1
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_
d__'45'Raw'45'AlmostCommutative'10230'__372 a0 a1 a2 a3 a4 a5 = ()
data T__'45'Raw'45'AlmostCommutative'10230'__372
  = C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513 (AgdaAny ->
                                                                  AgdaAny)
                                                                 (AgdaAny -> AgdaAny -> AgdaAny)
                                                                 (AgdaAny -> AgdaAny -> AgdaAny)
                                                                 (AgdaAny -> AgdaAny) AgdaAny
                                                                 AgdaAny
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F._*_
d__'42'__388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__388 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__388 v4
du__'42'__388 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__388 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__302 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F._+_
d__'43'__390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__390 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'43'__390 v4
du__'43'__390 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__390 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__300 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.-_
d_'45'__406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_'45'__406 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__406 v4
du_'45'__406 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  AgdaAny -> AgdaAny
du_'45'__406 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.0#
d_0'35'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny
d_0'35'_408 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_0'35'_408 v4
du_0'35'_408 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 -> AgdaAny
du_0'35'_408 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.1#
d_1'35'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny
d_1'35'_410 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_410 v4
du_1'35'_410 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 -> AgdaAny
du_1'35'_410 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.Carrier
d_Carrier_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> ()
d_Carrier_412 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._*_
d__'42'__420 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__420 v0 = coe d__'42'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._+_
d__'43'__422 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__422 v0 = coe d__'43'__208 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._-_
d__'45'__424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__424 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du__'45'__424 v5
du__'45'__424 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__424 v0 = coe du__'45'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._^_
d__'94'__426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
d__'94'__426 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du__'94'__426 v5
du__'94'__426 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
du__'94'__426 v0 = coe du__'94'__348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._≈_
d__'8776'__428 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> ()
d__'8776'__428 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-assoc
d_'42''45'assoc_430 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-comm
d_'42''45'comm_432 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'commutativeMonoid_434 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'commutativeMonoid_434 v5
du_'42''45'commutativeMonoid_434 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'42''45'commutativeMonoid_434 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2642
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-cong
d_'42''45'cong_436 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_438 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_438 v5
du_'8729''45'cong'691'_438 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_438 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_440 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_440 v5
du_'8729''45'cong'737'_440 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_440 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-identity
d_'42''45'identity_442 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityʳ
d_identity'691'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'691'_444 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_444 v5
du_identity'691'_444 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_444 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityˡ
d_identity'737'_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'737'_446 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_446 v5
du_identity'737'_446 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_446 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_448 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_448 v5
du_isCommutativeMagma_448 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_448 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_450 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_450 v5
du_'42''45'isCommutativeMonoid_450 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_450 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_452 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_452 v5
du_'42''45'isCommutativeSemigroup_452 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_452 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isMagma
d_'42''45'isMagma_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_454 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_454 v5
du_'42''45'isMagma_454 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_454 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isMonoid
d_'42''45'isMonoid_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_456 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_456 v5
du_'42''45'isMonoid_456 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_456 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isSemigroup
d_'42''45'isSemigroup_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_458 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_458 v5
du_'42''45'isSemigroup_458 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_458 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-monoid
d_'42''45'monoid_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'monoid_460 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'monoid_460 v5
du_'42''45'monoid_460 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'42''45'monoid_460 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.semigroup
d_semigroup_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_462 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_462 v5
du_semigroup_462 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_462 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_948
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288 (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.assoc
d_assoc_464 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_464 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.comm
d_comm_466 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_466 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_748
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'commutativeMonoid_468 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'commutativeMonoid_468 v5
du_'43''45'commutativeMonoid_468 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'43''45'commutativeMonoid_468 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-cong
d_'8729''45'cong_470 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_470 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_472 v5
du_'8729''45'cong'691'_472 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_472 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_474 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_474 v5
du_'8729''45'cong'737'_474 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_474 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identity
d_identity_476 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityʳ
d_identity'691'_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'691'_478 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_478 v5
du_identity'691'_478 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_478 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityˡ
d_identity'737'_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'737'_480 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_480 v5
du_identity'737'_480 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_480 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_482 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_482 v5
du_isCommutativeMagma_482 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_482 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                        (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_484 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_484 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeSemigroup
d_isCommutativeSemigroup_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_486 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_486 v5
du_isCommutativeSemigroup_486 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_486 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isMagma
d_isMagma_488 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isMonoid
d_isMonoid_490 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_490 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemigroup
d_isSemigroup_492 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isUnitalMagma
d_isUnitalMagma_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_494 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_494 v5
du_isUnitalMagma_494 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_494 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.monoid
d_monoid_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_496 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_monoid_496 v5
du_monoid_496 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_monoid_496 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1036
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.semigroup
d_semigroup_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_498 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_498 v5
du_semigroup_498 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_498 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_948
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-_
d_'45'__500 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_'45'__500 v0 = coe d_'45'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_502 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_502 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-‿+-comm
d_'45''8255''43''45'comm_504 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_504 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-‿cong
d_'45''8255'cong_506 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_506 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.0#
d_0'35'_508 :: T_AlmostCommutativeRing_178 -> AgdaAny
d_0'35'_508 v0 = coe d_0'35'_214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.0≟_
d_0'8799'__510 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__510 v0 = coe d_0'8799'__218 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.1#
d_1'35'_512 :: T_AlmostCommutativeRing_178 -> AgdaAny
d_1'35'_512 v0 = coe d_1'35'_220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.Carrier
d_Carrier_514 :: T_AlmostCommutativeRing_178 -> ()
d_Carrier_514 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.commutativeSemiring
d_commutativeSemiring_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_commutativeSemiring_516 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_commutativeSemiring_516 v5
du_commutativeSemiring_516 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_commutativeSemiring_516 v0
  = coe du_commutativeSemiring_326 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.distrib
d_distrib_518 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_518 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.distribʳ
d_distrib'691'_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'691'_520 v5
du_distrib'691'_520 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_520 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.distribˡ
d_distrib'737'_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'737'_522 v5
du_distrib'737'_522 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_522 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_524 ::
  T_AlmostCommutativeRing_178 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_524 v0
  = coe d_isAlmostCommutativeRing_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeSemiring
d_isCommutativeSemiring_526 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_526 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_528 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_528 v5
du_isCommutativeSemiringWithoutOne_528 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_528 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isEquivalence
d_isEquivalence_530 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isNearSemiring
d_isNearSemiring_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_532 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_532 v5
du_isNearSemiring_532 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_532 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isPartialEquivalence
d_isPartialEquivalence_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_534 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_534 v5
du_isPartialEquivalence_534 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_534 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                 (coe v8))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemiring
d_isSemiring_536 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_538 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemiringWithoutOne
d_isSemiringWithoutOne_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_540 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_540 v5
du_isSemiringWithoutOne_540 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_540 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.rawRing
d_rawRing_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_542 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_rawRing_542 v5
du_rawRing_542 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_542 v0 = coe du_rawRing_346 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.rawSemiring
d_rawSemiring_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_544 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_rawSemiring_544 v5
du_rawSemiring_544 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_544 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.refl
d_refl_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_refl_546 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_refl_546 v5
du_refl_546 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_refl_546 v0 = coe du_refl_358 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.reflexive
d_reflexive_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_548 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_548 v5
du_reflexive_548 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_548 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v8))
                                v9))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.semiring
d_semiring_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_semiring_550 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semiring_550 v5
du_semiring_550 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_semiring_550 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2600
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.setoid
d_setoid_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_552 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_552 v5
du_setoid_552 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_552 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.sym
d_sym_554 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_554 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.trans
d_trans_556 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_556 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.zero
d_zero_558 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.zeroʳ
d_zero'691'_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_zero'691'_560 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'691'_560 v5
du_zero'691'_560 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'691'_560 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.zeroˡ
d_zero'737'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_zero'737'_562 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'737'_562 v5
du_zero'737'_562 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'737'_562 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Homomorphic₀
d_Homomorphic'8320'_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_566 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Homomorphic₁
d_Homomorphic'8321'_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_568 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Homomorphic₂
d_Homomorphic'8322'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_570 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Morphism
d_Morphism_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 -> ()
d_Morphism_572 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._*_
d__'42'__620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__620 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'42'__620 v5
du__'42'__620 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__620 v0 = coe d__'42'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._+_
d__'43'__622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__622 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'43'__622 v5
du__'43'__622 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__622 v0 = coe d__'43'__208 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._-_
d__'45'__624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'45'__624 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'45'__624 v5
du__'45'__624 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__624 v0 = coe du__'45'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._^_
d__'94'__626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> Integer -> AgdaAny
d__'94'__626 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'94'__626 v5
du__'94'__626 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
du__'94'__626 v0 = coe du__'94'__348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._≈_
d__'8776'__628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__628 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-assoc
d_'42''45'assoc_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_630 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'assoc_630 v5
du_'42''45'assoc_630 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'assoc_630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-comm
d_'42''45'comm_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_632 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'comm_632 v5
du_'42''45'comm_632 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'commutativeMonoid_634 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'commutativeMonoid_634 v5
du_'42''45'commutativeMonoid_634 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'42''45'commutativeMonoid_634 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2642
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-cong
d_'42''45'cong_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_636 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'cong_636 v5
du_'42''45'cong_636 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'cong_636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_638 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_638 v5
du_'8729''45'cong'691'_638 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_638 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_640 v5
du_'8729''45'cong'737'_640 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_640 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-identity
d_'42''45'identity_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'identity_642 v5
du_'42''45'identity_642 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'42''45'identity_642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_identity'691'_644 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_644 v5
du_identity'691'_644 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_644 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_identity'737'_646 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_646 v5
du_identity'737'_646 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_646 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_648 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_648 v5
du_isCommutativeMagma_648 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_648 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_650 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeMonoid_650 v5
du_'42''45'isCommutativeMonoid_650 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_650 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_652 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeSemigroup_652 v5
du_'42''45'isCommutativeSemigroup_652 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_652 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMagma
d_'42''45'isMagma_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_654 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isMagma_654 v5
du_'42''45'isMagma_654 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_654 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMonoid
d_'42''45'isMonoid_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_656 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isMonoid_656 v5
du_'42''45'isMonoid_656 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_656 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isSemigroup
d_'42''45'isSemigroup_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_658 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isSemigroup_658 v5
du_'42''45'isSemigroup_658 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_658 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-monoid
d_'42''45'monoid_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'monoid_660 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'monoid_660 v5
du_'42''45'monoid_660 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'42''45'monoid_660 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_662 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_662 v5
du_semigroup_662 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_662 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_948
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288 (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc
d_assoc_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_664 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_assoc_664 v5
du_assoc_664 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_664 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.comm
d_comm_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_666 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_comm_666 v5
du_comm_666 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_748
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'commutativeMonoid_668 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'commutativeMonoid_668 v5
du_'43''45'commutativeMonoid_668 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'43''45'commutativeMonoid_668 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong
d_'8729''45'cong_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_670 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong_670 v5
du_'8729''45'cong_670 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_670 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_672 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_672 v5
du_'8729''45'cong'691'_672 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_672 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_674 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_674 v5
du_'8729''45'cong'737'_674 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_674 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity
d_identity_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_676 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_identity_676 v5
du_identity_676 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_identity'691'_678 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_678 v5
du_identity'691'_678 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_678 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_identity'737'_680 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_680 v5
du_identity'737'_680 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_680 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_682 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_682 v5
du_isCommutativeMagma_682 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_682 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                        (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_684 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'isCommutativeMonoid_684 v5
du_'43''45'isCommutativeMonoid_684 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'43''45'isCommutativeMonoid_684 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemigroup
d_isCommutativeSemigroup_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_686 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemigroup_686 v5
du_isCommutativeSemigroup_686 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_686 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma
d_isMagma_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_688 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMagma_688 v5
du_isMagma_688 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMonoid
d_isMonoid_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_690 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMonoid_690 v5
du_isMonoid_690 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_690 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup
d_isSemigroup_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_692 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemigroup_692 v5
du_isSemigroup_692 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_692 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isUnitalMagma
d_isUnitalMagma_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_694 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isUnitalMagma_694 v5
du_isUnitalMagma_694 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_694 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.monoid
d_monoid_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_696 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_monoid_696 v5
du_monoid_696 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_monoid_696 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1036
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_698 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_698 v5
du_semigroup_698 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_698 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_948
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-_
d_'45'__700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_'45'__700 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_'45'__700 v5
du_'45'__700 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_'45'__700 v0 = coe d_'45'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_702 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''42''45'distrib'737'_702 v5
du_'45''8255''42''45'distrib'737'_702 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_702 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿+-comm
d_'45''8255''43''45'comm_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_704 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''43''45'comm_704 v5
du_'45''8255''43''45'comm_704 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_704 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿cong
d_'45''8255'cong_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_706 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255'cong_706 v5
du_'45''8255'cong_706 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_706 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0#
d_0'35'_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny
d_0'35'_708 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_0'35'_708 v5
du_0'35'_708 :: T_AlmostCommutativeRing_178 -> AgdaAny
du_0'35'_708 v0 = coe d_0'35'_214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0≟_
d_0'8799'__710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> Maybe AgdaAny
d_0'8799'__710 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_0'8799'__710 v5
du_0'8799'__710 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Maybe AgdaAny
du_0'8799'__710 v0 = coe d_0'8799'__218 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.1#
d_1'35'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny
d_1'35'_712 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_1'35'_712 v5
du_1'35'_712 :: T_AlmostCommutativeRing_178 -> AgdaAny
du_1'35'_712 v0 = coe d_1'35'_220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.Carrier
d_Carrier_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> ()
d_Carrier_714 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemiring
d_commutativeSemiring_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_commutativeSemiring_716 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_commutativeSemiring_716 v5
du_commutativeSemiring_716 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_commutativeSemiring_716 v0
  = coe du_commutativeSemiring_326 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distrib
d_distrib_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_718 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_distrib_718 v5
du_distrib_718 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribʳ
d_distrib'691'_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_720 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'691'_720 v5
du_distrib'691'_720 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_720 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribˡ
d_distrib'737'_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_722 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'737'_722 v5
du_distrib'737'_722 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_722 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_724 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isAlmostCommutativeRing_724 v5
du_isAlmostCommutativeRing_724 ::
  T_AlmostCommutativeRing_178 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_724 v0
  = coe d_isAlmostCommutativeRing_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiring
d_isCommutativeSemiring_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_726 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiring_726 v5
du_isCommutativeSemiring_726 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
du_isCommutativeSemiring_726 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_728 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiringWithoutOne_728 v5
du_isCommutativeSemiringWithoutOne_728 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_728 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isEquivalence
d_isEquivalence_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_730 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isEquivalence_730 v5
du_isEquivalence_730 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isNearSemiring
d_isNearSemiring_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_732 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isNearSemiring_732 v5
du_isNearSemiring_732 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_732 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isPartialEquivalence
d_isPartialEquivalence_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_734 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isPartialEquivalence_734 v5
du_isPartialEquivalence_734 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_734 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                 (coe v8))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiring
d_isSemiring_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_736 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isSemiring_736 v5
du_isSemiring_736 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_isSemiring_736 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_738 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutAnnihilatingZero_738 v5
du_isSemiringWithoutAnnihilatingZero_738 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
du_isSemiringWithoutAnnihilatingZero_738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutOne
d_isSemiringWithoutOne_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_740 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutOne_740 v5
du_isSemiringWithoutOne_740 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_740 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawRing
d_rawRing_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_742 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawRing_742 v5
du_rawRing_742 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_742 v0 = coe du_rawRing_346 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawSemiring
d_rawSemiring_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_744 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawSemiring_744 v5
du_rawSemiring_744 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_744 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.refl
d_refl_746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_refl_746 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_refl_746 v5
du_refl_746 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_refl_746 v0 = coe du_refl_358 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.reflexive
d_reflexive_748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_748 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_reflexive_748 v5
du_reflexive_748 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_748 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v8))
                                v9))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semiring
d_semiring_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_semiring_750 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semiring_750 v5
du_semiring_750 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_semiring_750 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2600
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.setoid
d_setoid_752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_752 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_setoid_752 v5
du_setoid_752 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_752 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.sym
d_sym_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_754 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_sym_754 v5
du_sym_754 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_754 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.trans
d_trans_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_756 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_trans_756 v5
du_trans_756 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_756 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zero
d_zero_758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_758 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero_758 v5
du_zero_758 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroʳ
d_zero'691'_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_zero'691'_760 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'691'_760 v5
du_zero'691'_760 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'691'_760 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroˡ
d_zero'737'_762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_zero'737'_762 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'737'_762 v5
du_zero'737'_762 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'737'_762 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.⟦_⟧
d_'10214'_'10215'_774 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_774 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513 v1 v2 v3 v4 v5 v6
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.+-homo
d_'43''45'homo_776 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_776 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513 v1 v2 v3 v4 v5 v6
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.*-homo
d_'42''45'homo_778 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_778 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513 v1 v2 v3 v4 v5 v6
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.-‿homo
d_'45''8255'homo_780 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
d_'45''8255'homo_780 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513 v1 v2 v3 v4 v5 v6
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.0-homo
d_0'45'homo_782 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny
d_0'45'homo_782 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513 v1 v2 v3 v4 v5 v6
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.1-homo
d_1'45'homo_784 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny
d_1'45'homo_784 v0
  = case coe v0 of
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513 v1 v2 v3 v4 v5 v6
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.-raw-almostCommutative⟶
d_'45'raw'45'almostCommutative'10230'_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372
d_'45'raw'45'almostCommutative'10230'_792 ~v0 ~v1 v2
  = du_'45'raw'45'almostCommutative'10230'_792 v2
du_'45'raw'45'almostCommutative'10230'_792 ::
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372
du_'45'raw'45'almostCommutative'10230'_792 v0
  = coe
      C__'45'Raw'45'AlmostCommutative'10230'_'46'constructor_10513
      (coe (\ v1 -> v1))
      (coe
         (\ v1 v2 ->
            coe
              du_refl_358 (coe v0)
              (let v3 = coe du_rawRing_346 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__300 v3 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              du_refl_358 (coe v0)
              (let v3 = coe du_rawRing_346 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__302 v3 v1 v2))))
      (coe
         (\ v1 ->
            coe
              du_refl_358 (coe v0)
              (let v2 = coe du_rawRing_346 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__304 v2 v1))))
      (coe
         du_refl_358 (coe v0)
         (let v1 = coe du_rawRing_346 (coe v0) in
          coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_306 (coe v1))))
      (coe
         du_refl_358 (coe v0)
         (let v1 = coe du_rawRing_346 (coe v0) in
          coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_308 (coe v1))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._*_
d__'42'__802 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__802 v0 = coe d__'42'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._+_
d__'43'__804 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__804 v0 = coe d__'43'__208 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._-_
d__'45'__806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__806 ~v0 ~v1 v2 = du__'45'__806 v2
du__'45'__806 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__806 v0 = coe du__'45'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._^_
d__'94'__808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
d__'94'__808 ~v0 ~v1 v2 = du__'94'__808 v2
du__'94'__808 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
du__'94'__808 v0 = coe du__'94'__348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._≈_
d__'8776'__810 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> ()
d__'8776'__810 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-assoc
d_'42''45'assoc_812 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_814 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_814 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'commutativeMonoid_816 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_816 v2
du_'42''45'commutativeMonoid_816 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'42''45'commutativeMonoid_816 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2642
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-cong
d_'42''45'cong_818 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_820 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_820 v2
du_'8729''45'cong'691'_820 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_820 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_822 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_822 v2
du_'8729''45'cong'737'_822 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_822 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-identity
d_'42''45'identity_824 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'691'_826 ~v0 ~v1 v2 = du_identity'691'_826 v2
du_identity'691'_826 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_826 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'737'_828 ~v0 ~v1 v2 = du_identity'737'_828 v2
du_identity'737'_828 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_828 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_830 ~v0 ~v1 v2 = du_isCommutativeMagma_830 v2
du_isCommutativeMagma_830 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_830 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_832 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_832 v2
du_'42''45'isCommutativeMonoid_832 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_832 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_834 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_834 v2
du_'42''45'isCommutativeSemigroup_834 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_834 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMagma
d_'42''45'isMagma_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_836 ~v0 ~v1 v2 = du_'42''45'isMagma_836 v2
du_'42''45'isMagma_836 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_836 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_838 ~v0 ~v1 v2 = du_'42''45'isMonoid_838 v2
du_'42''45'isMonoid_838 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_838 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isSemigroup
d_'42''45'isSemigroup_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_840 ~v0 ~v1 v2
  = du_'42''45'isSemigroup_840 v2
du_'42''45'isSemigroup_840 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_840 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'monoid_842 ~v0 ~v1 v2 = du_'42''45'monoid_842 v2
du_'42''45'monoid_842 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'42''45'monoid_842 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_844 ~v0 ~v1 v2 = du_semigroup_844 v2
du_semigroup_844 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_844 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_948
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288 (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.assoc
d_assoc_846 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.comm
d_comm_848 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_748
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'commutativeMonoid_850 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_850 v2
du_'43''45'commutativeMonoid_850 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'43''45'commutativeMonoid_850 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_852 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_854 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_854 v2
du_'8729''45'cong'691'_854 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_854 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_856 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_856 v2
du_'8729''45'cong'737'_856 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_856 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identity
d_identity_858 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_858 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'691'_860 ~v0 ~v1 v2 = du_identity'691'_860 v2
du_identity'691'_860 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_860 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_identity'737'_862 ~v0 ~v1 v2 = du_identity'737'_862 v2
du_identity'737'_862 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_862 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_864 ~v0 ~v1 v2 = du_isCommutativeMagma_864 v2
du_isCommutativeMagma_864 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_864 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                        (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_866 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_866 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_868 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_868 v2
du_isCommutativeSemigroup_868 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_868 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMagma
d_isMagma_870 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_870 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMonoid
d_isMonoid_872 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_874 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isUnitalMagma
d_isUnitalMagma_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_876 ~v0 ~v1 v2 = du_isUnitalMagma_876 v2
du_isUnitalMagma_876 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_876 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.monoid
d_monoid_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_878 ~v0 ~v1 v2 = du_monoid_878 v2
du_monoid_878 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_monoid_878 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1036
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_880 ~v0 ~v1 v2 = du_semigroup_880 v2
du_semigroup_880 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_880 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_948
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-_
d_'45'__882 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_'45'__882 v0 = coe d_'45'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_884 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_884 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_886 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_886 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_888 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_888 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0#
d_0'35'_890 :: T_AlmostCommutativeRing_178 -> AgdaAny
d_0'35'_890 v0 = coe d_0'35'_214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0≟_
d_0'8799'__892 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__892 v0 = coe d_0'8799'__218 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.1#
d_1'35'_894 :: T_AlmostCommutativeRing_178 -> AgdaAny
d_1'35'_894 v0 = coe d_1'35'_220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.Carrier
d_Carrier_896 :: T_AlmostCommutativeRing_178 -> ()
d_Carrier_896 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_commutativeSemiring_898 ~v0 ~v1 v2
  = du_commutativeSemiring_898 v2
du_commutativeSemiring_898 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_commutativeSemiring_898 v0
  = coe du_commutativeSemiring_326 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distrib
d_distrib_900 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_902 ~v0 ~v1 v2 = du_distrib'691'_902 v2
du_distrib'691'_902 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_902 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_904 ~v0 ~v1 v2 = du_distrib'737'_904 v2
du_distrib'737'_904 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_904 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_906 ::
  T_AlmostCommutativeRing_178 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_906 v0
  = coe d_isAlmostCommutativeRing_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_908 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_908 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_910 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_910 v2
du_isCommutativeSemiringWithoutOne_910 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_910 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_912 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_912 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_914 ~v0 ~v1 v2 = du_isNearSemiring_914 v2
du_isNearSemiring_914 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_914 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_916 ~v0 ~v1 v2
  = du_isPartialEquivalence_916 v2
du_isPartialEquivalence_916 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_916 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                 (coe v8))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiring
d_isSemiring_918 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_918 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_920 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_920 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_922 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_922 v2
du_isSemiringWithoutOne_922 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_922 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawRing
d_rawRing_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_924 ~v0 ~v1 v2 = du_rawRing_924 v2
du_rawRing_924 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_924 v0 = coe du_rawRing_346 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawSemiring
d_rawSemiring_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_926 ~v0 ~v1 v2 = du_rawSemiring_926 v2
du_rawSemiring_926 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_926 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.refl
d_refl_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_refl_928 ~v0 ~v1 v2 = du_refl_928 v2
du_refl_928 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_refl_928 v0 = coe du_refl_358 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.reflexive
d_reflexive_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_930 ~v0 ~v1 v2 = du_reflexive_930 v2
du_reflexive_930 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_930 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v8))
                                v9))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semiring
d_semiring_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_semiring_932 ~v0 ~v1 v2 = du_semiring_932 v2
du_semiring_932 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_semiring_932 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2600
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.setoid
d_setoid_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_934 ~v0 ~v1 v2 = du_setoid_934 v2
du_setoid_934 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_934 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.sym
d_sym_936 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_936 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.trans
d_trans_938 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_938 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zero
d_zero_940 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_zero'691'_942 ~v0 ~v1 v2 = du_zero'691'_942 v2
du_zero'691'_942 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'691'_942 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
d_zero'737'_944 ~v0 ~v1 v2 = du_zero'737'_944 v2
du_zero'737'_944 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'737'_944 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.Induced-equivalence
d_Induced'45'equivalence_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> ()
d_Induced'45'equivalence_968 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._*_
d__'42'__984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__984 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'42'__984 v5
du__'42'__984 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__984 v0 = coe d__'42'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._+_
d__'43'__986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__986 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'43'__986 v5
du__'43'__986 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__986 v0 = coe d__'43'__208 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._-_
d__'45'__988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__988 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'45'__988 v5
du__'45'__988 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__988 v0 = coe du__'45'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._^_
d__'94'__990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> AgdaAny
d__'94'__990 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'94'__990 v5
du__'94'__990 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Integer -> AgdaAny
du__'94'__990 v0 = coe du__'94'__348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._≈_
d__'8776'__992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8776'__992 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-assoc
d_'42''45'assoc_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_994 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'assoc_994 v5
du_'42''45'assoc_994 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'assoc_994 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_996 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'comm_996 v5
du_'42''45'comm_996 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_996 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'42''45'commutativeMonoid_998 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'commutativeMonoid_998 v5
du_'42''45'commutativeMonoid_998 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'42''45'commutativeMonoid_998 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2642
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-cong
d_'42''45'cong_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1000 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'cong_1000 v5
du_'42''45'cong_1000 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'cong_1000 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1002 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_1002 v5
du_'8729''45'cong'691'_1002 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1002 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1004 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_1004 v5
du_'8729''45'cong'737'_1004 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1004 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-identity
d_'42''45'identity_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1006 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'identity_1006 v5
du_'42''45'identity_1006 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'42''45'identity_1006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_1008 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_1008 v5
du_identity'691'_1008 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_1008 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_1010 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_1010 v5
du_identity'737'_1010 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_1010 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1012 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_1012 v5
du_isCommutativeMagma_1012 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1012 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_1014 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                   ~v8
  = du_'42''45'isCommutativeMonoid_1014 v5
du_'42''45'isCommutativeMonoid_1014 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'42''45'isCommutativeMonoid_1014 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1808
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'42''45'isCommutativeSemigroup_1016 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 ~v8
  = du_'42''45'isCommutativeSemigroup_1016 v5
du_'42''45'isCommutativeSemigroup_1016 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_'42''45'isCommutativeSemigroup_1016 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1474
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMagma
d_'42''45'isMagma_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_1018 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isMagma_1018 v5
du_'42''45'isMagma_1018 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'42''45'isMagma_1018 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_1566
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_1020 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isMonoid_1020 v5
du_'42''45'isMonoid_1020 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'42''45'isMonoid_1020 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_1570
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isSemigroup
d_'42''45'isSemigroup_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_1022 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isSemigroup_1022 v5
du_'42''45'isSemigroup_1022 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'42''45'isSemigroup_1022 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_1568
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_'42''45'monoid_1024 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'monoid_1024 v5
du_'42''45'monoid_1024 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_'42''45'monoid_1024 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_1026 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_1026 v5
du_semigroup_1026 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_1026 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semigroup_948
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2288 (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.assoc
d_assoc_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1028 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_assoc_1028 v5
du_assoc_1028 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.comm
d_comm_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1030 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_comm_1030 v5
du_comm_1030 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_1030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_748
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
d_'43''45'commutativeMonoid_1032 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'43''45'commutativeMonoid_1032 v5
du_'43''45'commutativeMonoid_1032 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966
du_'43''45'commutativeMonoid_1032 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1034 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong_1034 v5
du_'8729''45'cong_1034 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1036 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_1036 v5
du_'8729''45'cong'691'_1036 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1036 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1038 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_1038 v5
du_'8729''45'cong'737'_1038 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1038 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identity
d_identity_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1040 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity_1040 v5
du_identity_1040 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_1042 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_1042 v5
du_identity'691'_1042 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'691'_1042 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_1044 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_1044 v5
du_identity'737'_1044 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_identity'737'_1044 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_1046 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_1046 v5
du_isCommutativeMagma_1046 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_1046 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                        (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_1048 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                   ~v8
  = du_'43''45'isCommutativeMonoid_1048 v5
du_'43''45'isCommutativeMonoid_1048 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'43''45'isCommutativeMonoid_1048 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_1050 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemigroup_1050 v5
du_isCommutativeSemigroup_1050 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_1050 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMagma
d_isMagma_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_1052 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMagma_1052 v5
du_isMagma_1052 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_1052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_746
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                     (coe
                        d_isCommutativeSemiring_62
                        (coe d_isAlmostCommutativeRing_222 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMonoid
d_isMonoid_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_1054 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMonoid_1054 v5
du_isMonoid_1054 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_isMonoid_1054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_746
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
               (coe
                  d_isCommutativeSemiring_62
                  (coe d_isAlmostCommutativeRing_222 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1056 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemigroup_1056 v5
du_isSemigroup_1056 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_1056 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                  (coe
                     d_isCommutativeSemiring_62
                     (coe d_isAlmostCommutativeRing_222 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isUnitalMagma
d_isUnitalMagma_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1058 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isUnitalMagma_1058 v5
du_isUnitalMagma_1058 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1058 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.monoid
d_monoid_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1060 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_monoid_1060 v5
du_monoid_1060 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
du_monoid_1060 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1036
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
d_semigroup_1062 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_1062 v5
du_semigroup_1062 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_540
du_semigroup_1062 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2266
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_semigroup_948
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v4))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-_
d_'45'__1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45'__1064 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_'45'__1064 v5
du_'45'__1064 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_'45'__1064 v0 = coe d_'45'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_1066 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 ~v8
  = du_'45''8255''42''45'distrib'737'_1066 v5
du_'45''8255''42''45'distrib'737'_1066 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_1066 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_1068 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255''43''45'comm_1068 v5
du_'45''8255''43''45'comm_1068 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_1068 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_1070 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255'cong_1070 v5
du_'45''8255'cong_1070 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_1070 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0#
d_0'35'_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'35'_1072 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_0'35'_1072 v5
du_0'35'_1072 :: T_AlmostCommutativeRing_178 -> AgdaAny
du_0'35'_1072 v0 = coe d_0'35'_214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0≟_
d_0'8799'__1074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
d_0'8799'__1074 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_0'8799'__1074 v5
du_0'8799'__1074 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> Maybe AgdaAny
du_0'8799'__1074 v0 = coe d_0'8799'__218 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.1#
d_1'35'_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'35'_1076 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_1'35'_1076 v5
du_1'35'_1076 :: T_AlmostCommutativeRing_178 -> AgdaAny
du_1'35'_1076 v0 = coe d_1'35'_220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.Carrier
d_Carrier_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> ()
d_Carrier_1078 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_commutativeSemiring_1080 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_commutativeSemiring_1080 v5
du_commutativeSemiring_1080 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_commutativeSemiring_1080 v0
  = coe du_commutativeSemiring_326 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distrib
d_distrib_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1082 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib_1082 v5
du_distrib_1082 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_1082 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1516
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_222 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1084 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'691'_1084 v5
du_distrib'691'_1084 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1084 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1520
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1086 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'737'_1086 v5
du_distrib'737'_1086 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1086 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1518
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_1088 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isAlmostCommutativeRing_1088 v5
du_isAlmostCommutativeRing_1088 ::
  T_AlmostCommutativeRing_178 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_1088 v0
  = coe d_isAlmostCommutativeRing_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_1090 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemiring_1090 v5
du_isCommutativeSemiring_1090 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
du_isCommutativeSemiring_1090 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
d_isCommutativeSemiringWithoutOne_1092 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                       ~v7 ~v8
  = du_isCommutativeSemiringWithoutOne_1092 v5
du_isCommutativeSemiringWithoutOne_1092 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1392
du_isCommutativeSemiringWithoutOne_1092 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1800
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1094 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isEquivalence_1094 v5
du_isEquivalence_1094 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1094 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                        (coe
                           d_isCommutativeSemiring_62
                           (coe d_isAlmostCommutativeRing_222 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_1096 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isNearSemiring_1096 v5
du_isNearSemiring_1096 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_1096 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1384
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1098 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isPartialEquivalence_1098 v5
du_isPartialEquivalence_1098 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1098 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                 (coe v8))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiring
d_isSemiring_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_1100 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiring_1100 v5
du_isSemiring_1100 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_isSemiring_1100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_222 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_1102 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                         ~v7 ~v8
  = du_isSemiringWithoutAnnihilatingZero_1102 v5
du_isSemiringWithoutAnnihilatingZero_1102 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
du_isSemiringWithoutAnnihilatingZero_1102 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_1104 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiringWithoutOne_1104 v5
du_isSemiringWithoutOne_1104 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_1104 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawRing
d_rawRing_1106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
d_rawRing_1106 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_rawRing_1106 v5
du_rawRing_1106 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276
du_rawRing_1106 v0 = coe du_rawRing_346 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawSemiring
d_rawSemiring_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
d_rawSemiring_1108 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_rawSemiring_1108 v5
du_rawSemiring_1108 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_180
du_rawSemiring_1108 v0
  = let v1 = coe du_commutativeSemiring_326 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2600 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2260
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2422
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.refl
d_refl_1110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_refl_1110 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_refl_1110 v5
du_refl_1110 :: T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_refl_1110 v0 = coe du_refl_358 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.reflexive
d_reflexive_1112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1112 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_reflexive_1112 v5
du_reflexive_1112 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1112 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v8))
                                v9))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semiring
d_semiring_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_semiring_1114 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semiring_1114 v5
du_semiring_1114 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
du_semiring_1114 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2600
      (coe du_commutativeSemiring_326 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.setoid
d_setoid_1116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1116 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_setoid_1116 v5
du_setoid_1116 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1116 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.sym
d_sym_1118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1118 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_sym_1118 v5
du_sym_1118 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.trans
d_trans_1120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1120 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_trans_1120 v5
du_trans_1120 ::
  T_AlmostCommutativeRing_178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1120 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                           (coe
                              d_isCommutativeSemiring_62
                              (coe d_isAlmostCommutativeRing_222 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zero
d_zero_1122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1122 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_zero_1122 v5
du_zero_1122 ::
  T_AlmostCommutativeRing_178 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_1122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_222 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_1124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'691'_1124 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'691'_1124 v5
du_zero'691'_1124 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'691'_1124 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'691'_1382
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_1126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_276 ->
  T_AlmostCommutativeRing_178 ->
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'737'_1126 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'737'_1126 v5
du_zero'737'_1126 ::
  T_AlmostCommutativeRing_178 -> AgdaAny -> AgdaAny
du_zero'737'_1126 v0
  = let v1 = d_isAlmostCommutativeRing_222 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_zero'737'_1380
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1680
                  (coe v3)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-homo
d_'42''45'homo_1130 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1130 v0 ~v1 ~v2 = du_'42''45'homo_1130 v0
du_'42''45'homo_1130 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'homo_1130 v0 = coe d_'42''45'homo_778 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-homo
d_'43''45'homo_1132 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_1132 v0 ~v1 ~v2 = du_'43''45'homo_1132 v0
du_'43''45'homo_1132 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'43''45'homo_1132 v0 = coe d_'43''45'homo_776 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿homo
d_'45''8255'homo_1134 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'homo_1134 v0 ~v1 ~v2 = du_'45''8255'homo_1134 v0
du_'45''8255'homo_1134 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
du_'45''8255'homo_1134 v0 = coe d_'45''8255'homo_780 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0-homo
d_0'45'homo_1136 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'45'homo_1136 v0 ~v1 ~v2 = du_0'45'homo_1136 v0
du_0'45'homo_1136 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny
du_0'45'homo_1136 v0 = coe d_0'45'homo_782 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.1-homo
d_1'45'homo_1138 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'45'homo_1138 v0 ~v1 ~v2 = du_1'45'homo_1138 v0
du_1'45'homo_1138 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny
du_1'45'homo_1138 v0 = coe d_1'45'homo_784 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.⟦_⟧
d_'10214'_'10215'_1140 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1140 v0 ~v1 ~v2 = du_'10214'_'10215'_1140 v0
du_'10214'_'10215'_1140 ::
  T__'45'Raw'45'AlmostCommutative'10230'__372 -> AgdaAny -> AgdaAny
du_'10214'_'10215'_1140 v0 = coe d_'10214'_'10215'_774 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.fromCommutativeRing
d_fromCommutativeRing_1350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_178
d_fromCommutativeRing_1350 ~v0 ~v1 v2 v3
  = du_fromCommutativeRing_1350 v2 v3
du_fromCommutativeRing_1350 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_178
du_fromCommutativeRing_1350 v0 v1
  = coe
      C_AlmostCommutativeRing'46'constructor_6235
      (MAlonzo.Code.Algebra.Bundles.d__'43'__4080 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__4082 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'45'__4084 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_4086 (coe v0)) v1
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_4088 (coe v0))
      (coe
         C_IsAlmostCommutativeRing'46'constructor_1177
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2948
            (coe MAlonzo.Code.Algebra.Bundles.d__'43'__4080 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__4082 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4084 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_4086 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4090 (coe v0)))
         (let v2
                = MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4090 (coe v0) in
          coe
            (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1054
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                        (coe v3))))))
         (coe
            (\ v2 v3 ->
               let v4
                     = MAlonzo.Code.Algebra.Bundles.d_isCommutativeRing_4090 (coe v0) in
               coe
                 (let v5 = MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v4) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                       (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isMagma_480
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
                                         (coe v5)))))))
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_'45'__4084 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d__'42'__4082 v0 v2 v3))
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'42'__4082 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4084 v0 v2) v3)
                       (coe
                          MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'737''45''42'_260
                          (coe
                             MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3988
                             (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v0)))
                          (coe v2) (coe v3))))))
         (coe
            MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_244
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3986
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4216 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.fromCommutativeSemiring
d_fromCommutativeSemiring_1890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_178
d_fromCommutativeSemiring_1890 ~v0 ~v1 v2 v3
  = du_fromCommutativeSemiring_1890 v2 v3
du_fromCommutativeSemiring_1890 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_178
du_fromCommutativeSemiring_1890 v0 v1
  = coe
      C_AlmostCommutativeRing'46'constructor_6235
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2494 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2496 (coe v0)) (\ v2 -> v2)
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2498 (coe v0)) v1
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2500 (coe v0))
      (coe
         C_IsAlmostCommutativeRing'46'constructor_1177
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2502 (coe v0))
         (coe (\ v2 v3 v4 -> v4))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2502
                                         (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2496 v0 v2 v3)))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isSemiring_1712
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2502
                                         (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d__'43'__2494 v0 v2 v3))))
