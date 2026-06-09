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
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.RingWithoutOne
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing
d_IsAlmostCommutativeRing_26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsAlmostCommutativeRing_26
  = C_constructor_174 MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_62 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_62 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿cong
d_'45''8255'cong_64 ::
  T_IsAlmostCommutativeRing_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_64 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_70 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_70 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿+-comm
d_'45''8255''43''45'comm_76 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_76 v0
  = case coe v0 of
      C_constructor_174 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-assoc
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-comm
d_'42''45'comm_82 ::
  T_IsAlmostCommutativeRing_26 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_82 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-cong
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-identity
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.+-isCommutativeMonoid
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMonoid
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'691'_1568
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'737'_1566
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isEquivalence
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiring
d_isSemiring_152 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe d_isCommutativeSemiring_62 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_154 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.refl
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.sym
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.trans
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero
d_zero_168 ::
  T_IsAlmostCommutativeRing_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'691'_1426
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
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
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'737'_1424
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing
d_AlmostCommutativeRing_180 a0 a1 = ()
data T_AlmostCommutativeRing_180
  = C_constructor_362 (AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                      (AgdaAny -> Maybe AgdaAny) AgdaAny T_IsAlmostCommutativeRing_26
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.Carrier
d_Carrier_206 :: T_AlmostCommutativeRing_180 -> ()
d_Carrier_206 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._≈_
d__'8776'__208 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> ()
d__'8776'__208 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._+_
d__'43'__210 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__210 v0
  = case coe v0 of
      C_constructor_362 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._*_
d__'42'__212 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__212 v0
  = case coe v0 of
      C_constructor_362 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.-_
d_'45'__214 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__214 v0
  = case coe v0 of
      C_constructor_362 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.0#
d_0'35'_216 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_216 v0
  = case coe v0 of
      C_constructor_362 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.0≟_
d_0'8799'__220 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__220 v0
  = case coe v0 of
      C_constructor_362 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.1#
d_1'35'_222 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_222 v0
  = case coe v0 of
      C_constructor_362 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.isAlmostCommutativeRing
d_isAlmostCommutativeRing_224 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_224 v0
  = case coe v0 of
      C_constructor_362 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-assoc
d_'42''45'assoc_228 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-comm
d_'42''45'comm_230 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-cong
d_'42''45'cong_232 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_234 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_234 v2
du_'8729''45'cong'691'_234 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_234 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_236 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_236 v2
du_'8729''45'cong'737'_236 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_236 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-identity
d_'42''45'identity_238 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_240 ~v0 ~v1 v2 = du_identity'691'_240 v2
du_identity'691'_240 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_240 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_242 ~v0 ~v1 v2 = du_identity'737'_242 v2
du_identity'737'_242 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_242 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_244 ~v0 ~v1 v2 = du_isCommutativeMagma_244 v2
du_isCommutativeMagma_244 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_244 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_246 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_246 v2
du_'42''45'isCommutativeMonoid_246 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_246 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_248 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_248 v2
du_'42''45'isCommutativeSemigroup_248 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_248 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMagma
d_'42''45'isMagma_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_250 ~v0 ~v1 v2 = du_'42''45'isMagma_250 v2
du_'42''45'isMagma_250 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_250 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_252 ~v0 ~v1 v2 = du_'42''45'isMonoid_252 v2
du_'42''45'isMonoid_252 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_252 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_254 ~v0 ~v1 v2
  = du_'42''45'isSemigroup_254 v2
du_'42''45'isSemigroup_254 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_254 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.assoc
d_assoc_256 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_256 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.comm
d_comm_258 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_258 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong
d_'8729''45'cong_260 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_260 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_262 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_262 v2
du_'8729''45'cong'691'_262 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_262 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_264 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_264 v2
du_'8729''45'cong'737'_264 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_264 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identity
d_identity_266 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_266 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ
d_identity'691'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_268 ~v0 ~v1 v2 = du_identity'691'_268 v2
du_identity'691'_268 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_268 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ
d_identity'737'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_270 ~v0 ~v1 v2 = du_identity'737'_270 v2
du_identity'737'_270 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_270 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_272 ~v0 ~v1 v2 = du_isCommutativeMagma_272 v2
du_isCommutativeMagma_272 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_272 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_274 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_276 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_276 v2
du_isCommutativeSemigroup_276 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_276 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma
d_isMagma_278 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_278 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isMonoid
d_isMonoid_280 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_280 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup
d_isSemigroup_282 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_282 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isUnitalMagma
d_isUnitalMagma_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_284 ~v0 ~v1 v2 = du_isUnitalMagma_284 v2
du_isUnitalMagma_284 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_284 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_286 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_286 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.-‿+-comm
d_'45''8255''43''45'comm_288 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_288 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.-‿cong
d_'45''8255'cong_290 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_290 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.distrib
d_distrib_292 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.distribʳ
d_distrib'691'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_294 ~v0 ~v1 v2 = du_distrib'691'_294 v2
du_distrib'691'_294 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_294 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.distribˡ
d_distrib'737'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_296 ~v0 ~v1 v2 = du_distrib'737'_296 v2
du_distrib'737'_296 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_296 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_298 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_298 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_300 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_300 v2
du_isCommutativeSemiringWithoutOne_300 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_300 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isEquivalence
d_isEquivalence_302 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_302 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isNearSemiring
d_isNearSemiring_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_304 ~v0 ~v1 v2 = du_isNearSemiring_304 v2
du_isNearSemiring_304 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_304 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_306 ~v0 ~v1 v2
  = du_isPartialEquivalence_306 v2
du_isPartialEquivalence_306 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_306 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiring
d_isSemiring_308 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_308 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_310 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_310 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_312 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_312 v2
du_isSemiringWithoutOne_312 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_312 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.reflexive
d_reflexive_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_314 ~v0 ~v1 v2 = du_reflexive_314 v2
du_reflexive_314 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_314 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.setoid
d_setoid_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_316 ~v0 ~v1 v2 = du_setoid_316 v2
du_setoid_316 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_316 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.sym
d_sym_318 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_318 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.trans
d_trans_320 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_320 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.zero
d_zero_322 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.zeroʳ
d_zero'691'_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'691'_324 ~v0 ~v1 v2 = du_zero'691'_324 v2
du_zero'691'_324 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_324 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.zeroˡ
d_zero'737'_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'737'_326 ~v0 ~v1 v2 = du_zero'737'_326 v2
du_zero'737'_326 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_326 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.commutativeSemiring
d_commutativeSemiring_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_328 ~v0 ~v1 v2
  = du_commutativeSemiring_328 v2
du_commutativeSemiring_328 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_328 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      (d__'43'__210 (coe v0)) (d__'42'__212 (coe v0))
      (d_0'35'_216 (coe v0)) (d_1'35'_222 (coe v0))
      (d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeMonoid
d_'42''45'commutativeMonoid_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_332 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_332 v2
du_'42''45'commutativeMonoid_332 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_332 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.*-monoid
d_'42''45'monoid_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_334 ~v0 ~v1 v2 = du_'42''45'monoid_334 v2
du_'42''45'monoid_334 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_334 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
d_semigroup_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_336 ~v0 ~v1 v2 = du_semigroup_336 v2
du_semigroup_336 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_336 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.+-commutativeMonoid
d_'43''45'commutativeMonoid_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_338 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_338 v2
du_'43''45'commutativeMonoid_338 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_338 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.monoid
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
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup
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
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.rawSemiring
d_rawSemiring_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_344 ~v0 ~v1 v2 = du_rawSemiring_344 v2
du_rawSemiring_344 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_344 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._.semiring
d_semiring_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_346 ~v0 ~v1 v2 = du_semiring_346 v2
du_semiring_346 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_346 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.rawRing
d_rawRing_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_348 ~v0 ~v1 v2 = du_rawRing_348 v2
du_rawRing_348 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_348 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_344
      (d__'43'__210 (coe v0)) (d__'42'__212 (coe v0))
      (d_'45'__214 (coe v0)) (d_0'35'_216 (coe v0))
      (d_1'35'_222 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._^_
d__'94'__350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
d__'94'__350 ~v0 ~v1 v2 v3 v4 = du__'94'__350 v2 v3 v4
du__'94'__350 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
du__'94'__350 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
              (coe
                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                 (coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe
                       MAlonzo.Code.Algebra.Bundles.du_semiring_2654
                       (coe du_commutativeSemiring_328 (coe v0))))) in
    coe
      (let v4 = subInt (coe v2) (coe (1 :: Integer)) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                    (coe
                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                       (coe v3) (coe v4) (coe v1))
                    v1 in
          coe
            (case coe v2 of
               0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
               1 -> coe v1
               _ -> coe v5)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing._-_
d__'45'__352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__352 ~v0 ~v1 v2 v3 v4 = du__'45'__352 v2 v3 v4
du__'45'__352 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__352 v0 v1 v2
  = coe d__'43'__210 v0 v1 (coe d_'45'__214 v0 v2)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.AlmostCommutativeRing.refl
d_refl_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_refl_360 ~v0 ~v1 v2 v3 = du_refl_360 v2 v3
du_refl_360 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_refl_360 v0 v1
  = coe
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
      v1
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_
d__'45'Raw'45'AlmostCommutative'10230'__376 a0 a1 a2 a3 a4 a5 = ()
data T__'45'Raw'45'AlmostCommutative'10230'__376
  = C_constructor_790 (AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny) AgdaAny AgdaAny
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F._*_
d__'42'__392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__392 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'42'__392 v4
du__'42'__392 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42'__392 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F._+_
d__'43'__394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__394 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'43'__394 v4
du__'43'__394 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'43'__394 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.-_
d_'45'__410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__410 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_'45'__410 v4
du_'45'__410 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  AgdaAny -> AgdaAny
du_'45'__410 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.0#
d_0'35'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_412 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_0'35'_412 v4
du_0'35'_412 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 -> AgdaAny
du_0'35'_412 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.1#
d_1'35'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_414 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_1'35'_414 v4
du_1'35'_414 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 -> AgdaAny
du_1'35'_414 v0
  = coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.F.Carrier
d_Carrier_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> ()
d_Carrier_416 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._*_
d__'42'__424 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__424 v0 = coe d__'42'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._+_
d__'43'__426 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__426 v0 = coe d__'43'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._-_
d__'45'__428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__428 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du__'45'__428 v5
du__'45'__428 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__428 v0 = coe du__'45'__352 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._^_
d__'94'__430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
d__'94'__430 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du__'94'__430 v5
du__'94'__430 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
du__'94'__430 v0 = coe du__'94'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T._≈_
d__'8776'__432 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> ()
d__'8776'__432 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-assoc
d_'42''45'assoc_434 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-comm
d_'42''45'comm_436 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_438 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'commutativeMonoid_438 v5
du_'42''45'commutativeMonoid_438 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_438 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-cong
d_'42''45'cong_440 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_442 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_442 v5
du_'8729''45'cong'691'_442 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_442 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_444 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_444 v5
du_'8729''45'cong'737'_444 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_444 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-identity
d_'42''45'identity_446 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityʳ
d_identity'691'_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_448 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_448 v5
du_identity'691'_448 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_448 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityˡ
d_identity'737'_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_450 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_450 v5
du_identity'737'_450 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_450 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_452 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_452 v5
du_isCommutativeMagma_452 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_452 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_454 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeMonoid_454 v5
du_'42''45'isCommutativeMonoid_454 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_454 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_456 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isCommutativeSemigroup_456 v5
du_'42''45'isCommutativeSemigroup_456 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_456 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isMagma
d_'42''45'isMagma_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_458 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMagma_458 v5
du_'42''45'isMagma_458 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_458 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isMonoid
d_'42''45'isMonoid_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_460 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isMonoid_460 v5
du_'42''45'isMonoid_460 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_460 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-isSemigroup
d_'42''45'isSemigroup_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_462 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'isSemigroup_462 v5
du_'42''45'isSemigroup_462 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_462 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.*-monoid
d_'42''45'monoid_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_464 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'monoid_464 v5
du_'42''45'monoid_464 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_464 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.semigroup
d_semigroup_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_466 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_466 v5
du_semigroup_466 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_466 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.assoc
d_assoc_468 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_468 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.comm
d_comm_470 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_470 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'commutativeMonoid_472 v5
du_'43''45'commutativeMonoid_472 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_472 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-cong
d_'8729''45'cong_474 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_474 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congʳ
d_'8729''45'cong'691'_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_476 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_476 v5
du_'8729''45'cong'691'_476 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_476 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.∙-congˡ
d_'8729''45'cong'737'_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_478 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_478 v5
du_'8729''45'cong'737'_478 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_478 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identity
d_identity_480 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_480 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityʳ
d_identity'691'_482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_482 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'691'_482 v5
du_identity'691'_482 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_482 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.identityˡ
d_identity'737'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_identity'737'_484 v5
du_identity'737'_484 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_484 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeMagma
d_isCommutativeMagma_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_486 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_486 v5
du_isCommutativeMagma_486 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_486 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_488 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeSemigroup
d_isCommutativeSemigroup_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_490 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_490 v5
du_isCommutativeSemigroup_490 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_490 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isMagma
d_isMagma_492 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_492 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isMonoid
d_isMonoid_494 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_494 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemigroup
d_isSemigroup_496 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_496 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isUnitalMagma
d_isUnitalMagma_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_498 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isUnitalMagma_498 v5
du_isUnitalMagma_498 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_498 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.monoid
d_monoid_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_500 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_monoid_500 v5
du_monoid_500 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_500 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.semigroup
d_semigroup_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_502 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_502 v5
du_semigroup_502 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_502 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-_
d_'45'__504 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__504 v0 = coe d_'45'__214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_506 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_506 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-‿+-comm
d_'45''8255''43''45'comm_508 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_508 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.-‿cong
d_'45''8255'cong_510 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_510 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.0#
d_0'35'_512 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_512 v0 = coe d_0'35'_216 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.0≟_
d_0'8799'__514 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__514 v0 = coe d_0'8799'__220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.1#
d_1'35'_516 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_516 v0 = coe d_1'35'_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.Carrier
d_Carrier_518 :: T_AlmostCommutativeRing_180 -> ()
d_Carrier_518 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.commutativeSemiring
d_commutativeSemiring_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_commutativeSemiring_520 v5
du_commutativeSemiring_520 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_520 v0
  = coe du_commutativeSemiring_328 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.distrib
d_distrib_522 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.distribʳ
d_distrib'691'_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_524 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'691'_524 v5
du_distrib'691'_524 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_524 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.distribˡ
d_distrib'737'_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_526 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_distrib'737'_526 v5
du_distrib'737'_526 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_526 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_528 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_528 v0
  = coe d_isAlmostCommutativeRing_224 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeSemiring
d_isCommutativeSemiring_530 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_530 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_532 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemiringWithoutOne_532 v5
du_isCommutativeSemiringWithoutOne_532 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_532 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isEquivalence
d_isEquivalence_534 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_534 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isNearSemiring
d_isNearSemiring_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_536 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isNearSemiring_536 v5
du_isNearSemiring_536 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_536 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isPartialEquivalence
d_isPartialEquivalence_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_538 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_538 v5
du_isPartialEquivalence_538 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_538 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemiring
d_isSemiring_540 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_542 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.isSemiringWithoutOne
d_isSemiringWithoutOne_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_544 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isSemiringWithoutOne_544 v5
du_isSemiringWithoutOne_544 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_544 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.rawRing
d_rawRing_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_546 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_rawRing_546 v5
du_rawRing_546 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_546 v0 = coe du_rawRing_348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.rawSemiring
d_rawSemiring_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_548 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_rawSemiring_548 v5
du_rawSemiring_548 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_548 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.refl
d_refl_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_refl_550 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_refl_550 v5
du_refl_550 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_refl_550 v0 = coe du_refl_360 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.reflexive
d_reflexive_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_552 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_552 v5
du_reflexive_552 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_552 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.semiring
d_semiring_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_554 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semiring_554 v5
du_semiring_554 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_554 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.setoid
d_setoid_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_556 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_556 v5
du_setoid_556 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_556 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.sym
d_sym_558 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_558 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.trans
d_trans_560 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_560 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.zero
d_zero_562 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.zeroʳ
d_zero'691'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'691'_564 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'691'_564 v5
du_zero'691'_564 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_564 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.T.zeroˡ
d_zero'737'_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'737'_566 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_zero'737'_566 v5
du_zero'737'_566 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_566 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Homomorphic₀
d_Homomorphic'8320'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_570 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Homomorphic₁
d_Homomorphic'8321'_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_572 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Homomorphic₂
d_Homomorphic'8322'_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_574 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._.Morphism
d_Morphism_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 -> ()
d_Morphism_576 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._*_
d__'42'__624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__624 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'42'__624 v5
du__'42'__624 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__624 v0 = coe d__'42'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._+_
d__'43'__626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__626 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'43'__626 v5
du__'43'__626 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__626 v0 = coe d__'43'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._-_
d__'45'__628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'45'__628 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'45'__628 v5
du__'45'__628 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__628 v0 = coe du__'45'__352 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._^_
d__'94'__630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> Integer -> AgdaAny
d__'94'__630 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du__'94'__630 v5
du__'94'__630 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
du__'94'__630 v0 = coe du__'94'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._≈_
d__'8776'__632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__632 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-assoc
d_'42''45'assoc_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_634 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'assoc_634 v5
du_'42''45'assoc_634 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'assoc_634 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-comm
d_'42''45'comm_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_636 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'comm_636 v5
du_'42''45'comm_636 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-commutativeMonoid
d_'42''45'commutativeMonoid_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_638 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'commutativeMonoid_638 v5
du_'42''45'commutativeMonoid_638 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_638 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-cong
d_'42''45'cong_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'cong_640 v5
du_'42''45'cong_640 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'cong_640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_642 v5
du_'8729''45'cong'691'_642 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_642 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_644 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_644 v5
du_'8729''45'cong'737'_644 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_644 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-identity
d_'42''45'identity_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_646 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'identity_646 v5
du_'42''45'identity_646 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'42''45'identity_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_identity'691'_648 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_648 v5
du_identity'691'_648 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_648 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_identity'737'_650 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_650 v5
du_identity'737'_650 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_650 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_652 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_652 v5
du_isCommutativeMagma_652 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_652 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_654 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeMonoid_654 v5
du_'42''45'isCommutativeMonoid_654 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_654 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_656 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isCommutativeSemigroup_656 v5
du_'42''45'isCommutativeSemigroup_656 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_656 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMagma
d_'42''45'isMagma_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_658 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isMagma_658 v5
du_'42''45'isMagma_658 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_658 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMonoid
d_'42''45'isMonoid_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_660 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isMonoid_660 v5
du_'42''45'isMonoid_660 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_660 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isSemigroup
d_'42''45'isSemigroup_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_662 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'isSemigroup_662 v5
du_'42''45'isSemigroup_662 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_662 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-monoid
d_'42''45'monoid_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_664 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'42''45'monoid_664 v5
du_'42''45'monoid_664 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_664 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_666 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_666 v5
du_semigroup_666 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_666 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc
d_assoc_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_668 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_assoc_668 v5
du_assoc_668 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_668 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.comm
d_comm_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_670 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_comm_670 v5
du_comm_670 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_670 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-commutativeMonoid
d_'43''45'commutativeMonoid_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_672 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'commutativeMonoid_672 v5
du_'43''45'commutativeMonoid_672 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_672 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong
d_'8729''45'cong_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_674 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong_674 v5
du_'8729''45'cong_674 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_674 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ
d_'8729''45'cong'691'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_676 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_676 v5
du_'8729''45'cong'691'_676 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_676 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ
d_'8729''45'cong'737'_678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_678 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_678 v5
du_'8729''45'cong'737'_678 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_678 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity
d_identity_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_680 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_identity_680 v5
du_identity_680 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_680 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ
d_identity'691'_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_identity'691'_682 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'691'_682 v5
du_identity'691'_682 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_682 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ
d_identity'737'_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_identity'737'_684 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_identity'737'_684 v5
du_identity'737'_684 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_684 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeMagma
d_isCommutativeMagma_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_686 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeMagma_686 v5
du_isCommutativeMagma_686 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_686 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_688 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'43''45'isCommutativeMonoid_688 v5
du_'43''45'isCommutativeMonoid_688 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'43''45'isCommutativeMonoid_688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemigroup
d_isCommutativeSemigroup_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_690 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemigroup_690 v5
du_isCommutativeSemigroup_690 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_690 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma
d_isMagma_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_692 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMagma_692 v5
du_isMagma_692 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_692 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMonoid
d_isMonoid_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_694 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isMonoid_694 v5
du_isMonoid_694 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_694 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup
d_isSemigroup_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_696 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemigroup_696 v5
du_isSemigroup_696 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_696 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isUnitalMagma
d_isUnitalMagma_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_698 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isUnitalMagma_698 v5
du_isUnitalMagma_698 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_698 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.monoid
d_monoid_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_700 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_monoid_700 v5
du_monoid_700 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_700 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup
d_semigroup_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_702 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semigroup_702 v5
du_semigroup_702 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_702 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-_
d_'45'__704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_'45'__704 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_'45'__704 v5
du_'45'__704 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_'45'__704 v0 = coe d_'45'__214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_706 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''42''45'distrib'737'_706 v5
du_'45''8255''42''45'distrib'737'_706 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_706 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿+-comm
d_'45''8255''43''45'comm_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_708 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255''43''45'comm_708 v5
du_'45''8255''43''45'comm_708 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_708 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿cong
d_'45''8255'cong_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_710 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'45''8255'cong_710 v5
du_'45''8255'cong_710 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_710 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0#
d_0'35'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny
d_0'35'_712 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_0'35'_712 v5
du_0'35'_712 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_0'35'_712 v0 = coe d_0'35'_216 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0≟_
d_0'8799'__714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> Maybe AgdaAny
d_0'8799'__714 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_0'8799'__714 v5
du_0'8799'__714 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Maybe AgdaAny
du_0'8799'__714 v0 = coe d_0'8799'__220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.1#
d_1'35'_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny
d_1'35'_716 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_1'35'_716 v5
du_1'35'_716 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_1'35'_716 v0 = coe d_1'35'_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.Carrier
d_Carrier_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> ()
d_Carrier_718 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemiring
d_commutativeSemiring_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_720 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_commutativeSemiring_720 v5
du_commutativeSemiring_720 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_720 v0
  = coe du_commutativeSemiring_328 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distrib
d_distrib_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_722 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_distrib_722 v5
du_distrib_722 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribʳ
d_distrib'691'_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_724 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'691'_724 v5
du_distrib'691'_724 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_724 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribˡ
d_distrib'737'_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_726 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_distrib'737'_726 v5
du_distrib'737'_726 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_726 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isAlmostCommutativeRing
d_isAlmostCommutativeRing_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_728 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isAlmostCommutativeRing_728 v5
du_isAlmostCommutativeRing_728 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_728 v0
  = coe d_isAlmostCommutativeRing_224 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiring
d_isCommutativeSemiring_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_730 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiring_730 v5
du_isCommutativeSemiring_730 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_730 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_732 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isCommutativeSemiringWithoutOne_732 v5
du_isCommutativeSemiringWithoutOne_732 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_732 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isEquivalence
d_isEquivalence_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_734 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isEquivalence_734 v5
du_isEquivalence_734 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_734 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isNearSemiring
d_isNearSemiring_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_736 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isNearSemiring_736 v5
du_isNearSemiring_736 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_736 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isPartialEquivalence
d_isPartialEquivalence_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_738 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isPartialEquivalence_738 v5
du_isPartialEquivalence_738 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_738 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiring
d_isSemiring_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_740 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_isSemiring_740 v5
du_isSemiring_740 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_742 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutAnnihilatingZero_742 v5
du_isSemiringWithoutAnnihilatingZero_742 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutOne
d_isSemiringWithoutOne_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_744 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_isSemiringWithoutOne_744 v5
du_isSemiringWithoutOne_744 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_744 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawRing
d_rawRing_746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_746 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_rawRing_746 v5
du_rawRing_746 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_746 v0 = coe du_rawRing_348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawSemiring
d_rawSemiring_748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_748 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_rawSemiring_748 v5
du_rawSemiring_748 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_748 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.refl
d_refl_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_refl_750 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_refl_750 v5
du_refl_750 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_refl_750 v0 = coe du_refl_360 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.reflexive
d_reflexive_752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_752 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_reflexive_752 v5
du_reflexive_752 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_752 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semiring
d_semiring_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_754 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_semiring_754 v5
du_semiring_754 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_754 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.setoid
d_setoid_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_756 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_setoid_756 v5
du_setoid_756 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_756 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.sym
d_sym_758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_758 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_sym_758 v5
du_sym_758 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_758 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.trans
d_trans_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_760 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_trans_760 v5
du_trans_760 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_760 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zero
d_zero_762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_762 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero_762 v5
du_zero_762 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroʳ
d_zero'691'_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_zero'691'_764 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'691'_764 v5
du_zero'691'_764 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_764 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroˡ
d_zero'737'_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_zero'737'_766 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_zero'737'_766 v5
du_zero'737'_766 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_766 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.⟦_⟧
d_'10214'_'10215'_778 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_778 v0
  = case coe v0 of
      C_constructor_790 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.+-homo
d_'43''45'homo_780 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_780 v0
  = case coe v0 of
      C_constructor_790 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.*-homo
d_'42''45'homo_782 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_782 v0
  = case coe v0 of
      C_constructor_790 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.-‿homo
d_'45''8255'homo_784 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
d_'45''8255'homo_784 v0
  = case coe v0 of
      C_constructor_790 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.0-homo
d_0'45'homo_786 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny
d_0'45'homo_786 v0
  = case coe v0 of
      C_constructor_790 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.1-homo
d_1'45'homo_788 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny
d_1'45'homo_788 v0
  = case coe v0 of
      C_constructor_790 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.RingSolver.Core.AlmostCommutativeRing.-raw-almostCommutative⟶
d_'45'raw'45'almostCommutative'10230'_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376
d_'45'raw'45'almostCommutative'10230'_798 ~v0 ~v1 v2
  = du_'45'raw'45'almostCommutative'10230'_798 v2
du_'45'raw'45'almostCommutative'10230'_798 ::
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376
du_'45'raw'45'almostCommutative'10230'_798 v0
  = coe
      C_constructor_790 (coe (\ v1 -> v1))
      (coe
         (\ v1 v2 ->
            coe
              du_refl_360 (coe v0)
              (let v3 = coe du_rawRing_348 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'43'__314 v3 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              du_refl_360 (coe v0)
              (let v3 = coe du_rawRing_348 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__316 v3 v1 v2))))
      (coe
         (\ v1 ->
            coe
              du_refl_360 (coe v0)
              (let v2 = coe du_rawRing_348 (coe v0) in
               coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d_'45'__318 v2 v1))))
      (coe
         du_refl_360 (coe v0)
         (let v1 = coe du_rawRing_348 (coe v0) in
          coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d_0'35'_320 (coe v1))))
      (coe
         du_refl_360 (coe v0)
         (let v1 = coe du_rawRing_348 (coe v0) in
          coe (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_322 (coe v1))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._*_
d__'42'__808 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__808 v0 = coe d__'42'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._+_
d__'43'__810 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__810 v0 = coe d__'43'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._-_
d__'45'__812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__812 ~v0 ~v1 v2 = du__'45'__812 v2
du__'45'__812 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__812 v0 = coe du__'45'__352 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._^_
d__'94'__814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
d__'94'__814 ~v0 ~v1 v2 = du__'94'__814 v2
du__'94'__814 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
du__'94'__814 v0 = coe du__'94'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._≈_
d__'8776'__816 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> ()
d__'8776'__816 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-assoc
d_'42''45'assoc_818 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_820 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_820 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_822 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_822 v2
du_'42''45'commutativeMonoid_822 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_822 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-cong
d_'42''45'cong_824 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_826 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_826 v2
du_'8729''45'cong'691'_826 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_826 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_828 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_828 v2
du_'8729''45'cong'737'_828 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_828 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-identity
d_'42''45'identity_830 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_832 ~v0 ~v1 v2 = du_identity'691'_832 v2
du_identity'691'_832 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_832 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_834 ~v0 ~v1 v2 = du_identity'737'_834 v2
du_identity'737'_834 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_834 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_836 ~v0 ~v1 v2 = du_isCommutativeMagma_836 v2
du_isCommutativeMagma_836 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_836 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_838 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_838 v2
du_'42''45'isCommutativeMonoid_838 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_838 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_840 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_840 v2
du_'42''45'isCommutativeSemigroup_840 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_840 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMagma
d_'42''45'isMagma_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_842 ~v0 ~v1 v2 = du_'42''45'isMagma_842 v2
du_'42''45'isMagma_842 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_842 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_844 ~v0 ~v1 v2 = du_'42''45'isMonoid_844 v2
du_'42''45'isMonoid_844 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_844 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isSemigroup
d_'42''45'isSemigroup_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_846 ~v0 ~v1 v2
  = du_'42''45'isSemigroup_846 v2
du_'42''45'isSemigroup_846 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_846 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_848 ~v0 ~v1 v2 = du_'42''45'monoid_848 v2
du_'42''45'monoid_848 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_848 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_850 ~v0 ~v1 v2 = du_semigroup_850 v2
du_semigroup_850 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_850 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.assoc
d_assoc_852 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_852 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.comm
d_comm_854 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_854 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_856 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_856 v2
du_'43''45'commutativeMonoid_856 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_856 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_858 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_858 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_860 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_860 v2
du_'8729''45'cong'691'_860 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_860 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_862 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_862 v2
du_'8729''45'cong'737'_862 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_862 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identity
d_identity_864 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_864 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'691'_866 ~v0 ~v1 v2 = du_identity'691'_866 v2
du_identity'691'_866 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_866 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_identity'737'_868 ~v0 ~v1 v2 = du_identity'737'_868 v2
du_identity'737'_868 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_868 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_870 ~v0 ~v1 v2 = du_isCommutativeMagma_870 v2
du_isCommutativeMagma_870 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_870 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_872 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_874 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_874 v2
du_isCommutativeSemigroup_874 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_874 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMagma
d_isMagma_876 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_876 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMonoid
d_isMonoid_878 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_878 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_880 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_880 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isUnitalMagma
d_isUnitalMagma_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_882 ~v0 ~v1 v2 = du_isUnitalMagma_882 v2
du_isUnitalMagma_882 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_882 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.monoid
d_monoid_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_884 ~v0 ~v1 v2 = du_monoid_884 v2
du_monoid_884 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_884 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_886 ~v0 ~v1 v2 = du_semigroup_886 v2
du_semigroup_886 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_886 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-_
d_'45'__888 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_'45'__888 v0 = coe d_'45'__214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_890 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_890 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_892 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_892 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_894 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_894 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0#
d_0'35'_896 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_0'35'_896 v0 = coe d_0'35'_216 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0≟_
d_0'8799'__898 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Maybe AgdaAny
d_0'8799'__898 v0 = coe d_0'8799'__220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.1#
d_1'35'_900 :: T_AlmostCommutativeRing_180 -> AgdaAny
d_1'35'_900 v0 = coe d_1'35'_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.Carrier
d_Carrier_902 :: T_AlmostCommutativeRing_180 -> ()
d_Carrier_902 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_904 ~v0 ~v1 v2
  = du_commutativeSemiring_904 v2
du_commutativeSemiring_904 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_904 v0
  = coe du_commutativeSemiring_328 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distrib
d_distrib_906 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_906 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_908 ~v0 ~v1 v2 = du_distrib'691'_908 v2
du_distrib'691'_908 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_908 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_910 ~v0 ~v1 v2 = du_distrib'737'_910 v2
du_distrib'737'_910 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_910 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_912 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_912 v0
  = coe d_isAlmostCommutativeRing_224 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_914 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_914 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_916 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_916 v2
du_isCommutativeSemiringWithoutOne_916 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_916 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_918 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_918 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_920 ~v0 ~v1 v2 = du_isNearSemiring_920 v2
du_isNearSemiring_920 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_920 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_922 ~v0 ~v1 v2
  = du_isPartialEquivalence_922 v2
du_isPartialEquivalence_922 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_922 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiring
d_isSemiring_924 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_926 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_926 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_928 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_928 v2
du_isSemiringWithoutOne_928 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_928 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawRing
d_rawRing_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_930 ~v0 ~v1 v2 = du_rawRing_930 v2
du_rawRing_930 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_930 v0 = coe du_rawRing_348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawSemiring
d_rawSemiring_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_932 ~v0 ~v1 v2 = du_rawSemiring_932 v2
du_rawSemiring_932 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_932 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.refl
d_refl_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_refl_934 ~v0 ~v1 v2 = du_refl_934 v2
du_refl_934 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_refl_934 v0 = coe du_refl_360 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.reflexive
d_reflexive_936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_936 ~v0 ~v1 v2 = du_reflexive_936 v2
du_reflexive_936 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_936 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semiring
d_semiring_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_938 ~v0 ~v1 v2 = du_semiring_938 v2
du_semiring_938 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_938 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.setoid
d_setoid_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_940 ~v0 ~v1 v2 = du_setoid_940 v2
du_setoid_940 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_940 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.sym
d_sym_942 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_942 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.trans
d_trans_944 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_944 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zero
d_zero_946 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'691'_948 ~v0 ~v1 v2 = du_zero'691'_948 v2
du_zero'691'_948 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_948 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
d_zero'737'_950 ~v0 ~v1 v2 = du_zero'737'_950 v2
du_zero'737'_950 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_950 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing.Induced-equivalence
d_Induced'45'equivalence_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> ()
d_Induced'45'equivalence_974 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._*_
d__'42'__990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__990 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'42'__990 v5
du__'42'__990 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'42'__990 v0 = coe d__'42'__212 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._+_
d__'43'__992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__992 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'43'__992 v5
du__'43'__992 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'43'__992 v0 = coe d__'43'__210 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._-_
d__'45'__994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__994 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'45'__994 v5
du__'45'__994 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__994 v0 = coe du__'45'__352 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._^_
d__'94'__996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> AgdaAny
d__'94'__996 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du__'94'__996 v5
du__'94'__996 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Integer -> AgdaAny
du__'94'__996 v0 = coe du__'94'__350 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._._≈_
d__'8776'__998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8776'__998 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-assoc
d_'42''45'assoc_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1000 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'assoc_1000 v5
du_'42''45'assoc_1000 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'assoc_1000 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1560
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-comm
d_'42''45'comm_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1002 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'comm_1002 v5
du_'42''45'comm_1002 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'comm_1002 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1766
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-commutativeMonoid
d_'42''45'commutativeMonoid_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'42''45'commutativeMonoid_1004 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'commutativeMonoid_1004 v5
du_'42''45'commutativeMonoid_1004 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'42''45'commutativeMonoid_1004 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-cong
d_'42''45'cong_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1006 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'cong_1006 v5
du_'42''45'cong_1006 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'cong_1006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1008 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_1008 v5
du_'8729''45'cong'691'_1008 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1008 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1010 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_1010 v5
du_'8729''45'cong'737'_1010 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1010 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-identity
d_'42''45'identity_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1012 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'identity_1012 v5
du_'42''45'identity_1012 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'42''45'identity_1012 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1562
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_1014 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_1014 v5
du_identity'691'_1014 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_1014 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_1016 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_1016 v5
du_identity'737'_1016 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_1016 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_1018 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_1018 v5
du_isCommutativeMagma_1018 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_1018 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'42''45'isCommutativeMonoid_1020 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                   ~v8
  = du_'42''45'isCommutativeMonoid_1020 v5
du_'42''45'isCommutativeMonoid_1020 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'42''45'isCommutativeMonoid_1020 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1860
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_'42''45'isCommutativeSemigroup_1022 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 ~v8
  = du_'42''45'isCommutativeSemigroup_1022 v5
du_'42''45'isCommutativeSemigroup_1022 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_'42''45'isCommutativeSemigroup_1022 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1520
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMagma
d_'42''45'isMagma_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_'42''45'isMagma_1024 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isMagma_1024 v5
du_'42''45'isMagma_1024 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_'42''45'isMagma_1024 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isMonoid
d_'42''45'isMonoid_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_'42''45'isMonoid_1026 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isMonoid_1026 v5
du_'42''45'isMonoid_1026 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_'42''45'isMonoid_1026 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-isSemigroup
d_'42''45'isSemigroup_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_'42''45'isSemigroup_1028 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'isSemigroup_1028 v5
du_'42''45'isSemigroup_1028 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_'42''45'isSemigroup_1028 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-monoid
d_'42''45'monoid_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'42''45'monoid_1030 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'42''45'monoid_1030 v5
du_'42''45'monoid_1030 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'42''45'monoid_1030 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_1032 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_1032 v5
du_semigroup_1032 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_1032 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.assoc
d_assoc_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1034 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_assoc_1034 v5
du_assoc_1034 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1034 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.comm
d_comm_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1036 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_comm_1036 v5
du_comm_1036 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_1036 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-commutativeMonoid
d_'43''45'commutativeMonoid_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'43''45'commutativeMonoid_1038 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'43''45'commutativeMonoid_1038 v5
du_'43''45'commutativeMonoid_1038 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'43''45'commutativeMonoid_1038 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'commutativeMonoid_2316
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-cong
d_'8729''45'cong_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1040 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong_1040 v5
du_'8729''45'cong_1040 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1040 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congʳ
d_'8729''45'cong'691'_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1042 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'691'_1042 v5
du_'8729''45'cong'691'_1042 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1042 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.∙-congˡ
d_'8729''45'cong'737'_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1044 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'8729''45'cong'737'_1044 v5
du_'8729''45'cong'737'_1044 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1044 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identity
d_identity_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1046 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity_1046 v5
du_identity_1046 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1046 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityʳ
d_identity'691'_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691'_1048 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'691'_1048 v5
du_identity'691'_1048 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'691'_1048 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.identityˡ
d_identity'737'_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737'_1050 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_identity'737'_1050 v5
du_identity'737'_1050 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_identity'737'_1050 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeMagma
d_isCommutativeMagma_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
d_isCommutativeMagma_1052 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeMagma_1052 v5
du_isCommutativeMagma_1052 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_214
du_isCommutativeMagma_1052 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_'43''45'isCommutativeMonoid_1054 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7
                                   ~v8
  = du_'43''45'isCommutativeMonoid_1054 v5
du_'43''45'isCommutativeMonoid_1054 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
du_'43''45'isCommutativeMonoid_1054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1556
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemigroup
d_isCommutativeSemigroup_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_isCommutativeSemigroup_1056 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemigroup_1056 v5
du_isCommutativeSemigroup_1056 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_isCommutativeSemigroup_1056 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMagma
d_isMagma_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_1058 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMagma_1058 v5
du_isMagma_1058 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
du_isMagma_1058 v0
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
                        (coe d_isAlmostCommutativeRing_224 (coe v0))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isMonoid
d_isMonoid_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
d_isMonoid_1060 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isMonoid_1060 v5
du_isMonoid_1060 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_712
du_isMonoid_1060 v0
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
                  (coe d_isAlmostCommutativeRing_224 (coe v0))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemigroup
d_isSemigroup_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_1062 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemigroup_1062 v5
du_isSemigroup_1062 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
du_isSemigroup_1062 v0
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
                     (coe d_isAlmostCommutativeRing_224 (coe v0)))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isUnitalMagma
d_isUnitalMagma_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
d_isUnitalMagma_1064 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isUnitalMagma_1064 v5
du_isUnitalMagma_1064 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_666
du_isUnitalMagma_1064 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.monoid
d_monoid_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1066 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_monoid_1066 v5
du_monoid_1066 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_monoid_1066 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semigroup
d_semigroup_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_semigroup_1068 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semigroup_1068 v5
du_semigroup_1068 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_semigroup_1068 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-_
d_'45'__1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45'__1070 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_'45'__1070 v5
du_'45'__1070 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_'45'__1070 v0 = coe d_'45'__214 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿*-distribˡ
d_'45''8255''42''45'distrib'737'_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''42''45'distrib'737'_1072 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 ~v8
  = du_'45''8255''42''45'distrib'737'_1072 v5
du_'45''8255''42''45'distrib'737'_1072 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''42''45'distrib'737'_1072 v0
  = coe
      d_'45''8255''42''45'distrib'737'_70
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿+-comm
d_'45''8255''43''45'comm_1074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255''43''45'comm_1074 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255''43''45'comm_1074 v5
du_'45''8255''43''45'comm_1074 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255''43''45'comm_1074 v0
  = coe
      d_'45''8255''43''45'comm_76
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿cong
d_'45''8255'cong_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'cong_1076 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_'45''8255'cong_1076 v5
du_'45''8255'cong_1076 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'cong_1076 v0
  = coe
      d_'45''8255'cong_64 (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0#
d_0'35'_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'35'_1078 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_0'35'_1078 v5
du_0'35'_1078 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_0'35'_1078 v0 = coe d_0'35'_216 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0≟_
d_0'8799'__1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
d_0'8799'__1080 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_0'8799'__1080 v5
du_0'8799'__1080 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> Maybe AgdaAny
du_0'8799'__1080 v0 = coe d_0'8799'__220 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.1#
d_1'35'_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'35'_1082 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_1'35'_1082 v5
du_1'35'_1082 :: T_AlmostCommutativeRing_180 -> AgdaAny
du_1'35'_1082 v0 = coe d_1'35'_222 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.Carrier
d_Carrier_1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> ()
d_Carrier_1084 = erased
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.commutativeSemiring
d_commutativeSemiring_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_commutativeSemiring_1086 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_commutativeSemiring_1086 v5
du_commutativeSemiring_1086 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_commutativeSemiring_1086 v0
  = coe du_commutativeSemiring_328 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distrib
d_distrib_1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1088 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib_1088 v5
du_distrib_1088 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_1088 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1564
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               d_isCommutativeSemiring_62
               (coe d_isAlmostCommutativeRing_224 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribʳ
d_distrib'691'_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1090 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'691'_1090 v5
du_distrib'691'_1090 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1090 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.distribˡ
d_distrib'737'_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1092 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_distrib'737'_1092 v5
du_distrib'737'_1092 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1092 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isAlmostCommutativeRing
d_isAlmostCommutativeRing_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> T_IsAlmostCommutativeRing_26
d_isAlmostCommutativeRing_1094 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isAlmostCommutativeRing_1094 v5
du_isAlmostCommutativeRing_1094 ::
  T_AlmostCommutativeRing_180 -> T_IsAlmostCommutativeRing_26
du_isAlmostCommutativeRing_1094 v0
  = coe d_isAlmostCommutativeRing_224 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiring
d_isCommutativeSemiring_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
d_isCommutativeSemiring_1096 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isCommutativeSemiring_1096 v5
du_isCommutativeSemiring_1096 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1750
du_isCommutativeSemiring_1096 v0
  = coe
      d_isCommutativeSemiring_62
      (coe d_isAlmostCommutativeRing_224 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
d_isCommutativeSemiringWithoutOne_1098 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                       ~v7 ~v8
  = du_isCommutativeSemiringWithoutOne_1098 v5
du_isCommutativeSemiringWithoutOne_1098 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1438
du_isCommutativeSemiringWithoutOne_1098 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1852
         (coe d_isCommutativeSemiring_62 (coe v1)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isEquivalence
d_isEquivalence_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1100 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isEquivalence_1100 v5
du_isEquivalence_1100 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_1100 v0
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
                           (coe d_isAlmostCommutativeRing_224 (coe v0)))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isNearSemiring
d_isNearSemiring_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
d_isNearSemiring_1102 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isNearSemiring_1102 v5
du_isNearSemiring_1102 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1260
du_isNearSemiring_1102 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isPartialEquivalence
d_isPartialEquivalence_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1104 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isPartialEquivalence_1104 v5
du_isPartialEquivalence_1104 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1104 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiring
d_isSemiring_1106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
d_isSemiring_1106 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiring_1106 v5
du_isSemiring_1106 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1640
du_isSemiring_1106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
      (coe
         d_isCommutativeSemiring_62
         (coe d_isAlmostCommutativeRing_224 (coe v0)))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
d_isSemiringWithoutAnnihilatingZero_1108 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                         ~v7 ~v8
  = du_isSemiringWithoutAnnihilatingZero_1108 v5
du_isSemiringWithoutAnnihilatingZero_1108 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1536
du_isSemiringWithoutAnnihilatingZero_1108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.isSemiringWithoutOne
d_isSemiringWithoutOne_1110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
d_isSemiringWithoutOne_1110 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_isSemiringWithoutOne_1110 v5
du_isSemiringWithoutOne_1110 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1342
du_isSemiringWithoutOne_1110 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
    coe
      (let v2 = d_isCommutativeSemiring_62 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1730
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1764 (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawRing
d_rawRing_1112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_rawRing_1112 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_rawRing_1112 v5
du_rawRing_1112 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
du_rawRing_1112 v0 = coe du_rawRing_348 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.rawSemiring
d_rawSemiring_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_rawSemiring_1114 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_rawSemiring_1114 v5
du_rawSemiring_1114 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
du_rawSemiring_1114 v0
  = let v1 = coe du_commutativeSemiring_328 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
            (coe
               MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
               (coe v2))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.refl
d_refl_1116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_refl_1116 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_refl_1116 v5
du_refl_1116 :: T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_refl_1116 v0 = coe du_refl_360 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.reflexive
d_reflexive_1118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1118 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_reflexive_1118 v5
du_reflexive_1118 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1118 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.semiring
d_semiring_1120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_semiring_1120 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_semiring_1120 v5
du_semiring_1120 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
du_semiring_1120 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_semiring_2654
      (coe du_commutativeSemiring_328 (coe v0))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.setoid
d_setoid_1122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1122 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_setoid_1122 v5
du_setoid_1122 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1122 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.sym
d_sym_1124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1124 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_sym_1124 v5
du_sym_1124 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1124 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.trans
d_trans_1126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1126 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_trans_1126 v5
du_trans_1126 ::
  T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1126 v0
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
                              (coe d_isAlmostCommutativeRing_224 (coe v0))))))))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zero
d_zero_1128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1128 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 = du_zero_1128 v5
du_zero_1128 ::
  T_AlmostCommutativeRing_180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_1128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1656
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
         (coe
            d_isCommutativeSemiring_62
            (coe d_isAlmostCommutativeRing_224 (coe v0))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroʳ
d_zero'691'_1130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'691'_1130 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'691'_1130 v5
du_zero'691'_1130 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'691'_1130 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.zeroˡ
d_zero'737'_1132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290 ->
  T_AlmostCommutativeRing_180 ->
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_zero'737'_1132 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8
  = du_zero'737'_1132 v5
du_zero'737'_1132 ::
  T_AlmostCommutativeRing_180 -> AgdaAny -> AgdaAny
du_zero'737'_1132 v0
  = let v1 = d_isAlmostCommutativeRing_224 (coe v0) in
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
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.*-homo
d_'42''45'homo_1136 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'homo_1136 v0 ~v1 ~v2 = du_'42''45'homo_1136 v0
du_'42''45'homo_1136 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'42''45'homo_1136 v0 = coe d_'42''45'homo_782 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.+-homo
d_'43''45'homo_1138 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'homo_1138 v0 ~v1 ~v2 = du_'43''45'homo_1138 v0
du_'43''45'homo_1138 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'43''45'homo_1138 v0 = coe d_'43''45'homo_780 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.-‿homo
d_'45''8255'homo_1140 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'homo_1140 v0 ~v1 ~v2 = du_'45''8255'homo_1140 v0
du_'45''8255'homo_1140 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
du_'45''8255'homo_1140 v0 = coe d_'45''8255'homo_784 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.0-homo
d_0'45'homo_1142 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_0'45'homo_1142 v0 ~v1 ~v2 = du_0'45'homo_1142 v0
du_0'45'homo_1142 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny
du_0'45'homo_1142 v0 = coe d_0'45'homo_786 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.1-homo
d_1'45'homo_1144 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_1'45'homo_1144 v0 ~v1 ~v2 = du_1'45'homo_1144 v0
du_1'45'homo_1144 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny
du_1'45'homo_1144 v0 = coe d_1'45'homo_788 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing._._.⟦_⟧
d_'10214'_'10215'_1146 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1146 v0 ~v1 ~v2 = du_'10214'_'10215'_1146 v0
du_'10214'_'10215'_1146 ::
  T__'45'Raw'45'AlmostCommutative'10230'__376 -> AgdaAny -> AgdaAny
du_'10214'_'10215'_1146 v0 = coe d_'10214'_'10215'_778 (coe v0)
-- Tactic.RingSolver.Core.AlmostCommutativeRing.fromCommutativeRing
d_fromCommutativeRing_1356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_180
d_fromCommutativeRing_1356 ~v0 ~v1 v2 v3
  = du_fromCommutativeRing_1356 v2 v3
du_fromCommutativeRing_1356 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4126 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_180
du_fromCommutativeRing_1356 v0 v1
  = coe
      C_constructor_362
      (MAlonzo.Code.Algebra.Bundles.d__'43'__4152 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__4154 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'45'__4156 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_4158 (coe v0)) v1
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
            (\ v2 v3 ->
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
                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__4154 v0 v2 v3))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'42'__4154 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4156 v0 v2) v3)
                 (coe
                    MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'737''45''42'_260
                    (coe
                       MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4058
                       (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0)))
                    (coe v2) (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_244
            (coe
               MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_4056
               (coe MAlonzo.Code.Algebra.Bundles.du_ring_4288 (coe v0)))))
-- Tactic.RingSolver.Core.AlmostCommutativeRing.fromCommutativeSemiring
d_fromCommutativeSemiring_1896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_180
d_fromCommutativeSemiring_1896 ~v0 ~v1 v2 v3
  = du_fromCommutativeSemiring_1896 v2 v3
du_fromCommutativeSemiring_1896 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  (AgdaAny -> Maybe AgdaAny) -> T_AlmostCommutativeRing_180
du_fromCommutativeSemiring_1896 v0 v1
  = coe
      C_constructor_362
      (MAlonzo.Code.Algebra.Bundles.d__'43'__2548 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'42'__2550 (coe v0)) (\ v2 -> v2)
      (MAlonzo.Code.Algebra.Bundles.d_0'35'_2552 (coe v0)) v1
      (MAlonzo.Code.Algebra.Bundles.d_1'35'_2554 (coe v0))
      (coe
         C_constructor_174
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemiring_2556 (coe v0))
         (coe (\ v2 v3 v4 -> v4))
         (coe
            (\ v2 v3 ->
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
                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__2550 v0 v2 v3)))
         (coe
            (\ v2 v3 ->
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
                 (coe MAlonzo.Code.Algebra.Bundles.d__'43'__2548 v0 v2 v3))))
