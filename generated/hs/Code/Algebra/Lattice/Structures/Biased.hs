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

module MAlonzo.Code.Algebra.Lattice.Structures.Biased where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Lattice.Structures.Biased._._DistributesOverʳ_
d__DistributesOver'691'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__22 = erased
-- Algebra.Lattice.Structures.Biased._.Absorptive
d_Absorptive_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_30 = erased
-- Algebra.Lattice.Structures.Biased._.Congruent₁
d_Congruent'8321'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_46 = erased
-- Algebra.Lattice.Structures.Biased._.RightInverse
d_RightInverse_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_118 = erased
-- Algebra.Lattice.Structures.Biased._.IsBooleanAlgebra
d_IsBooleanAlgebra_148 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice
d_IsDistributiveLattice_156 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice
d_IsJoinSemilattice_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_IsJoinSemilattice_158 = erased
-- Algebra.Lattice.Structures.Biased._.IsLattice
d_IsLattice_160 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice
d_IsMeetSemilattice_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_IsMeetSemilattice_162 = erased
-- Algebra.Lattice.Structures.Biased._.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_170 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3112 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036
d_isDistributiveLattice_170 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3132
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsBooleanAlgebra.¬-cong
d_'172''45'cong_186 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3112 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_186 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3138
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_194 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_194 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3136
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_218 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3112 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_218 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_3134
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.isLattice
d_isLattice_380 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
d_isLattice_380 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.isPartialEquivalence
d_isPartialEquivalence_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_382 v6
du_isPartialEquivalence_382 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_382 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
            (coe v1)))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.reflexive
d_reflexive_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_386 v6
du_reflexive_386 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_386 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
              (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
              (coe v1))
           v2)
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_392 v6
du_'8743''45'absorbs'45''8744'_392 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_392 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_3014
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-congʳ
d_'8743''45'cong'691'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'691'_400 v6
du_'8743''45'cong'691'_400 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_400 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3020
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-congˡ
d_'8743''45'cong'737'_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'737'_402 v6
du_'8743''45'cong'737'_402 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_402 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3016
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_404 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_404 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3052
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_406 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'distrib'691''45''8744'_406
du_'8743''45'distrib'691''45''8744'_406 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_406 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_3100
      v2
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_408 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'distrib'737''45''8744'_408
du_'8743''45'distrib'737''45''8744'_408 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_408 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3098
      v2
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_410 v6
du_'8744''45'absorbs'45''8743'_410 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_410 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_3012
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-congʳ
d_'8744''45'cong'691'_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'691'_418 v6
du_'8744''45'cong'691'_418 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_418 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3028
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-congˡ
d_'8744''45'cong'737'_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'737'_420 v6
du_'8744''45'cong'737'_420 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_420 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3024
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_422 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_422 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3050
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_424 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'distrib'691''45''8743'_424
du_'8744''45'distrib'691''45''8743'_424 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_424 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3096
      v2
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_426 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'distrib'737''45''8743'_426
du_'8744''45'distrib'737''45''8743'_426 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_426 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3094
      v2
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.assoc
d_assoc_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_430 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_assoc_430 v5
du_assoc_430 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.idem
d_idem_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
d_idem_434 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_idem_434 v5
du_idem_434 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
du_idem_434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_518
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.isEquivalence
d_isEquivalence_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_438 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_438 v5
du_isEquivalence_438 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.isMagma
d_isMagma_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_440 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_440 v5
du_isMagma_440 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.isPartialEquivalence
d_isPartialEquivalence_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_442 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_442 v5
du_isPartialEquivalence_442 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_442 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.isSemigroup
d_isSemigroup_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_444 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_444 v5
du_isSemigroup_444 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.refl
d_refl_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
d_refl_446 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_refl_446 v5
du_refl_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
du_refl_446 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.reflexive
d_reflexive_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_448 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_448 v5
du_reflexive_448 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_448 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3))
                 v4)))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.setoid
d_setoid_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_450 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_450 v5
du_setoid_450 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_450 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.sym
d_sym_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_452 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_sym_452 v5
du_sym_452 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_452 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.trans
d_trans_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_454 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_trans_454 v5
du_trans_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.∙-cong
d_'8729''45'cong_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_456 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong_456 v5
du_'8729''45'cong_456 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.∙-congʳ
d_'8729''45'cong'691'_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_458 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_458 v5
du_'8729''45'cong'691'_458 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_458 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.∙-congˡ
d_'8729''45'cong'737'_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_460 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_460 v5
du_'8729''45'cong'737'_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_460 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsLattice.absorptive
d_absorptive_464 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_464 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2998 (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.isEquivalence
d_isEquivalence_466 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_466 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.isPartialEquivalence
d_isPartialEquivalence_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_468 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_468 v6
du_isPartialEquivalence_468 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_468 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsLattice.reflexive
d_reflexive_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_472 v6
du_reflexive_472 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_472 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe v0))
      v1
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_478 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'absorbs'45''8744'_478
du_'8743''45'absorbs'45''8744'_478 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_478 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_3014
      v2
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-assoc
d_'8743''45'assoc_480 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_480 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2994
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-comm
d_'8743''45'comm_482 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_482 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2992
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-cong
d_'8743''45'cong_484 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_484 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2996
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-congʳ
d_'8743''45'cong'691'_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_486 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'cong'691'_486
du_'8743''45'cong'691'_486 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_486 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3020
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-congˡ
d_'8743''45'cong'737'_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_488 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'cong'737'_488
du_'8743''45'cong'737'_488 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_488 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3016
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_490 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'absorbs'45''8743'_490
du_'8744''45'absorbs'45''8743'_490 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_490 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_3012
      v2
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-assoc
d_'8744''45'assoc_492 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_492 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2988
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-comm
d_'8744''45'comm_494 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_494 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2986
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-cong
d_'8744''45'cong_496 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_496 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2990
      (coe v0)
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-congʳ
d_'8744''45'cong'691'_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_498 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'cong'691'_498
du_'8744''45'cong'691'_498 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_498 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3028
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-congˡ
d_'8744''45'cong'737'_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_500 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'cong'737'_500
du_'8744''45'cong'737'_500 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_500 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3024
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.assoc
d_assoc_504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_504 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_assoc_504 v5
du_assoc_504 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_504 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.idem
d_idem_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
d_idem_508 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_idem_508 v5
du_idem_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
du_idem_508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_518
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.isEquivalence
d_isEquivalence_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_512 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_512 v5
du_isEquivalence_512 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_512 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.isMagma
d_isMagma_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_514 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_514 v5
du_isMagma_514 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_514 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.isPartialEquivalence
d_isPartialEquivalence_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_516 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_516 v5
du_isPartialEquivalence_516 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_516 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.isSemigroup
d_isSemigroup_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_518 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_518 v5
du_isSemigroup_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_518 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
      (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.refl
d_refl_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
d_refl_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_refl_520 v5
du_refl_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny
du_refl_520 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.reflexive
d_reflexive_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_522 v5
du_reflexive_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_522 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3))
                 v4)))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.setoid
d_setoid_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_524 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_524 v5
du_setoid_524 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_524 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.sym
d_sym_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_526 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_sym_526 v5
du_sym_526 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_526 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.trans
d_trans_528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_528 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_trans_528 v5
du_trans_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_528 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0)))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.∙-cong
d_'8729''45'cong_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_530 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong_530 v5
du_'8729''45'cong_530 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_530 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.∙-congʳ
d_'8729''45'cong'691'_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_532 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_532 v5
du_'8729''45'cong'691'_532 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_532 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.∙-congˡ
d_'8729''45'cong'737'_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_534 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_534 v5
du_'8729''45'cong'737'_534 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_534 v0
  = let v1 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂
d_IsLattice'8322'_584 a0 a1 a2 a3 a4 a5 = ()
data T_IsLattice'8322'_584
  = C_IsLattice'8322''46'constructor_3561 MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
                                          MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Lattice.Structures.Biased.IsLattice₂.isJoinSemilattice
d_isJoinSemilattice_596 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isJoinSemilattice_596 v0
  = case coe v0 of
      C_IsLattice'8322''46'constructor_3561 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsLattice₂.isMeetSemilattice
d_isMeetSemilattice_598 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_isMeetSemilattice_598 v0
  = case coe v0 of
      C_IsLattice'8322''46'constructor_3561 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsLattice₂.absorptive
d_absorptive_600 ::
  T_IsLattice'8322'_584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_600 v0
  = case coe v0 of
      C_IsLattice'8322''46'constructor_3561 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.assoc
d_assoc_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_assoc_604 v6
du_assoc_604 ::
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_604 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.comm
d_comm_606 ::
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_600
      (coe d_isMeetSemilattice_598 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.idem
d_idem_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
d_idem_608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_idem_608 v6
du_idem_608 :: T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
du_idem_608 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_idem_518
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isBand
d_isBand_610 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isBand_598
      (coe d_isMeetSemilattice_598 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isEquivalence
d_isEquivalence_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_612 v6
du_isEquivalence_612 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_612 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isMagma
d_isMagma_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isMagma_614 v6
du_isMagma_614 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_614 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isPartialEquivalence
d_isPartialEquivalence_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_616 v6
du_isPartialEquivalence_616 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_616 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isSemigroup
d_isSemigroup_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemigroup_618 v6
du_isSemigroup_618 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_618 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.refl
d_refl_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
d_refl_620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_620 v6
du_refl_620 :: T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
du_refl_620 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.reflexive
d_reflexive_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_622 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_622 v6
du_reflexive_622 ::
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_622 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))
                    v5))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.setoid
d_setoid_624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_624 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_624 v6
du_setoid_624 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_624 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.sym
d_sym_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_626 v6
du_sym_626 ::
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_626 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.trans
d_trans_628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_628 v6
du_trans_628 ::
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_628 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.∙-cong
d_'8729''45'cong_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong_630 v6
du_'8729''45'cong_630 ::
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_630 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.∙-congʳ
d_'8729''45'cong'691'_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_632 v6
du_'8729''45'cong'691'_632 ::
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_632 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.∙-congˡ
d_'8729''45'cong'737'_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_634 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_634 v6
du_'8729''45'cong'737'_634 ::
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_634 v0
  = let v1 = d_isMeetSemilattice_598 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.assoc
d_assoc_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_638 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_assoc_638 v6
du_assoc_638 ::
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_638 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.comm
d_comm_640 ::
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_600
      (coe d_isJoinSemilattice_596 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.idem
d_idem_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
d_idem_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_idem_642 v6
du_idem_642 :: T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
du_idem_642 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_idem_518
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isBand
d_isBand_644 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_isBand_644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isBand_598
      (coe d_isJoinSemilattice_596 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isEquivalence
d_isEquivalence_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_646 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_646 v6
du_isEquivalence_646 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_646 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isMagma
d_isMagma_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isMagma_648 v6
du_isMagma_648 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_isMagma_648 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
            (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isPartialEquivalence
d_isPartialEquivalence_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_650 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_650 v6
du_isPartialEquivalence_650 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_650 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isSemigroup
d_isSemigroup_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemigroup_652 v6
du_isSemigroup_652 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_isSemigroup_652 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
         (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.refl
d_refl_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
d_refl_654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_654 v6
du_refl_654 :: T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny
du_refl_654 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.reflexive
d_reflexive_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_656 v6
du_reflexive_656 ::
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_656 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))
                    v5))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.setoid
d_setoid_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_658 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_658 v6
du_setoid_658 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_658 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.sym
d_sym_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_660 v6
du_sym_660 ::
  T_IsLattice'8322'_584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_660 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.trans
d_trans_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_662 v6
du_trans_662 ::
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_662 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.∙-cong
d_'8729''45'cong_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong_664 v6
du_'8729''45'cong_664 ::
  T_IsLattice'8322'_584 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_664 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.∙-congʳ
d_'8729''45'cong'691'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_666 v6
du_'8729''45'cong'691'_666 ::
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_666 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.∙-congˡ
d_'8729''45'cong'737'_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_668 v6
du_'8729''45'cong'737'_668 ::
  T_IsLattice'8322'_584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_668 v0
  = let v1 = d_isJoinSemilattice_596 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_516 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.isLattice₂
d_isLattice'8322'_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
d_isLattice'8322'_670 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isLattice'8322'_670 v6
du_isLattice'8322'_670 ::
  T_IsLattice'8322'_584 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
du_isLattice'8322'_670 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsLattice'46'constructor_36793
      (let v1 = d_isMeetSemilattice_598 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_600
         (coe d_isJoinSemilattice_596 (coe v0)))
      (let v1 = d_isJoinSemilattice_596 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_482
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
      (let v1 = d_isJoinSemilattice_596 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_600
         (coe d_isMeetSemilattice_598 (coe v0)))
      (let v1 = d_isMeetSemilattice_598 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_482
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
               (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1)))))
      (let v1 = d_isMeetSemilattice_598 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_480
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_516
                  (coe MAlonzo.Code.Algebra.Structures.d_isBand_598 (coe v1))))))
      (coe d_absorptive_600 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ
d_IsDistributiveLattice'691''690''7504'_676 a0 a1 a2 a3 a4 a5 = ()
data T_IsDistributiveLattice'691''690''7504'_676
  = C_IsDistributiveLattice'691''690''7504''46'constructor_6385 MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
                                                                (AgdaAny ->
                                                                 AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.isLattice
d_isLattice_686 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
d_isLattice_686 v0
  = case coe v0 of
      C_IsDistributiveLattice'691''690''7504''46'constructor_6385 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_688 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_688 v0
  = case coe v0 of
      C_IsDistributiveLattice'691''690''7504''46'constructor_6385 v1 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.absorptive
d_absorptive_692 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_692 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2998
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.isEquivalence
d_isEquivalence_694 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_694 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.isPartialEquivalence
d_isPartialEquivalence_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_696 v6
du_isPartialEquivalence_696 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_696 v0
  = let v1 = d_isLattice_686 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
            (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.refl
d_refl_698 ::
  T_IsDistributiveLattice'691''690''7504'_676 -> AgdaAny -> AgdaAny
d_refl_698 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe d_isLattice_686 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.reflexive
d_reflexive_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_700 v6
du_reflexive_700 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_700 v0
  = let v1 = d_isLattice_686 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
              (coe v1))
           v2)
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.sym
d_sym_702 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_702 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe d_isLattice_686 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.trans
d_trans_704 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_704 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe d_isLattice_686 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_706 v6
du_'8743''45'absorbs'45''8744'_706 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_706 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_3014
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-assoc
d_'8743''45'assoc_708 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_708 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2994
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-comm
d_'8743''45'comm_710 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_710 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2992
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-cong
d_'8743''45'cong_712 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_712 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2996
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-congʳ
d_'8743''45'cong'691'_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'691'_714 v6
du_'8743''45'cong'691'_714 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_714 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3020
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-congˡ
d_'8743''45'cong'737'_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'737'_716 v6
du_'8743''45'cong'737'_716 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_716 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3016
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_718 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_718 v6
du_'8744''45'absorbs'45''8743'_718 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_718 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_3012
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-assoc
d_'8744''45'assoc_720 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_720 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2988
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-comm
d_'8744''45'comm_722 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_722 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2986
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-cong
d_'8744''45'cong_724 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_724 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2990
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-congʳ
d_'8744''45'cong'691'_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'691'_726 v6
du_'8744''45'cong'691'_726 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_726 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3028
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-congˡ
d_'8744''45'cong'737'_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'737'_728 v6
du_'8744''45'cong'737'_728 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_728 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3024
      (coe d_isLattice_686 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.setoid
d_setoid_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_730 v6
du_setoid_730 ::
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_730 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_733
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe d_isLattice_686 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∨-distrib-∧
d_'8744''45'distrib'45''8743'_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_732 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8744''45'distrib'45''8743'_732 v4 v5 v6
du_'8744''45'distrib'45''8743'_732 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'distrib'45''8743'_732 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'691''8658'distr_528
      (coe du_setoid_730 (coe v2)) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2996
         (coe d_isLattice_686 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2986
         (coe d_isLattice_686 (coe v2)))
      (coe d_'8744''45'distrib'691''45''8743'_688 (coe v2))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_734 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8743''45'distrib'737''45''8744'_734 v4 v5 v6
du_'8743''45'distrib'737''45''8744'_734 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_734 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_distrib'8743'absorbs'8658'distrib'737'_562
      (coe du_setoid_730 (coe v2)) (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2996
         (coe d_isLattice_686 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2994
         (coe d_isLattice_686 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2986
         (coe d_isLattice_686 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_3014
         (coe d_isLattice_686 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_3012
         (coe d_isLattice_686 (coe v2)))
      (coe du_'8744''45'distrib'45''8743'_732 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∧-distrib-∨
d_'8743''45'distrib'45''8744'_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_736 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8743''45'distrib'45''8744'_736 v4 v5 v6
du_'8743''45'distrib'45''8744'_736 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8744'_736 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr_524
      (coe du_setoid_730 (coe v2)) (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2990
         (coe d_isLattice_686 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2992
         (coe d_isLattice_686 (coe v2)))
      (coe
         du_'8743''45'distrib'737''45''8744'_734 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.isDistributiveLatticeʳʲᵐ
d_isDistributiveLattice'691''690''7504'_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036
d_isDistributiveLattice'691''690''7504'_738 ~v0 ~v1 ~v2 ~v3 v4 v5
                                            v6
  = du_isDistributiveLattice'691''690''7504'_738 v4 v5 v6
du_isDistributiveLattice'691''690''7504'_738 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_676 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036
du_isDistributiveLattice'691''690''7504'_738 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsDistributiveLattice'46'constructor_40943
      (coe d_isLattice_686 (coe v2))
      (coe du_'8744''45'distrib'45''8743'_732 (coe v0) (coe v1) (coe v2))
      (coe du_'8743''45'distrib'45''8744'_736 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ
d_IsBooleanAlgebra'691'_750 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsBooleanAlgebra'691'_750
  = C_IsBooleanAlgebra'691''46'constructor_10405 MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036
                                                 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                                 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.isDistributiveLattice
d_isDistributiveLattice_770 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036
d_isDistributiveLattice_770 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_10405 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.∨-complementʳ
d_'8744''45'complement'691'_772 ::
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny
d_'8744''45'complement'691'_772 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_10405 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.∧-complementʳ
d_'8743''45'complement'691'_774 ::
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny
d_'8743''45'complement'691'_774 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_10405 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.¬-cong
d_'172''45'cong_776 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_776 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_10405 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.absorptive
d_absorptive_780 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_780 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2998
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.isEquivalence
d_isEquivalence_782 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_782 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.isLattice
d_isLattice_784 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
d_isLattice_784 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
      (coe d_isDistributiveLattice_770 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.isPartialEquivalence
d_isPartialEquivalence_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_786 v9
du_isPartialEquivalence_786 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_786 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
               (coe v2))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.refl
d_refl_788 :: T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny
d_refl_788 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
            (coe d_isDistributiveLattice_770 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.reflexive
d_reflexive_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_790 v9
du_reflexive_790 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_790 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
                 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
                 (coe v2))
              v3))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.sym
d_sym_792 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_792 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
            (coe d_isDistributiveLattice_770 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.trans
d_trans_794 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_794 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
            (coe d_isDistributiveLattice_770 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 v9
  = du_'8743''45'absorbs'45''8744'_796 v9
du_'8743''45'absorbs'45''8744'_796 ::
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_796 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_3014
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-assoc
d_'8743''45'assoc_798 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_798 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2994
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-comm
d_'8743''45'comm_800 ::
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_800 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2992
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-cong
d_'8743''45'cong_802 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_802 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2996
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-congʳ
d_'8743''45'cong'691'_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'691'_804 v9
du_'8743''45'cong'691'_804 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_804 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3020
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-congˡ
d_'8743''45'cong'737'_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'737'_806 v9
du_'8743''45'cong'737'_806 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_806 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3016
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-distrib-∨
d_'8743''45'distrib'45''8744'_808 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_808 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3052
      (coe d_isDistributiveLattice_770 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8743''45'distrib'691''45''8744'_810 v9
du_'8743''45'distrib'691''45''8744'_810 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_810 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_3100
      (coe d_isDistributiveLattice_770 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8743''45'distrib'737''45''8744'_812 v9
du_'8743''45'distrib'737''45''8744'_812 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_812 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3098
      (coe d_isDistributiveLattice_770 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 v9
  = du_'8744''45'absorbs'45''8743'_814 v9
du_'8744''45'absorbs'45''8743'_814 ::
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_814 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_3012
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-assoc
d_'8744''45'assoc_816 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_816 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2988
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-comm
d_'8744''45'comm_818 ::
  T_IsBooleanAlgebra'691'_750 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_818 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2986
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-cong
d_'8744''45'cong_820 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_820 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2990
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
         (coe d_isDistributiveLattice_770 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-congʳ
d_'8744''45'cong'691'_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'691'_822 v9
du_'8744''45'cong'691'_822 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_822 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3028
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-congˡ
d_'8744''45'cong'737'_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'737'_824 v9
du_'8744''45'cong'737'_824 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_824 v0
  = let v1 = d_isDistributiveLattice_770 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3024
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-distrib-∧
d_'8744''45'distrib'45''8743'_826 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_826 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3050
      (coe d_isDistributiveLattice_770 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8744''45'distrib'691''45''8743'_828 v9
du_'8744''45'distrib'691''45''8743'_828 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_828 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3096
      (coe d_isDistributiveLattice_770 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8744''45'distrib'737''45''8743'_830 v9
du_'8744''45'distrib'737''45''8743'_830 ::
  T_IsBooleanAlgebra'691'_750 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_830 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3094
      (coe d_isDistributiveLattice_770 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.setoid
d_setoid_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_832 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_832 v9
du_setoid_832 ::
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_832 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_733
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2984
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
            (coe d_isDistributiveLattice_770 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.isBooleanAlgebraʳ
d_isBooleanAlgebra'691'_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3112
d_isBooleanAlgebra'691'_834 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_isBooleanAlgebra'691'_834 v4 v5 v6 v7 v8 v9
du_isBooleanAlgebra'691'_834 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_750 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3112
du_isBooleanAlgebra'691'_834 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsBooleanAlgebra'46'constructor_44015
      (coe d_isDistributiveLattice_770 (coe v5))
      (coe
         MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'inv'691''8658'inv_436
         (coe du_setoid_832 (coe v5)) (coe v0) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2986
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
               (coe d_isDistributiveLattice_770 (coe v5))))
         (coe d_'8744''45'complement'691'_772 (coe v5)))
      (coe
         MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'inv'691''8658'inv_436
         (coe du_setoid_832 (coe v5)) (coe v1) (coe v2) (coe v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2992
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3048
               (coe d_isDistributiveLattice_770 (coe v5))))
         (coe d_'8743''45'complement'691'_774 (coe v5)))
      (coe d_'172''45'cong_776 (coe v5))
