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
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.isPartialEquivalence
d_isPartialEquivalence_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_380 v6
du_isPartialEquivalence_380 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_380 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
            (coe v1)))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.reflexive
d_reflexive_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_384 v6
du_reflexive_384 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_384 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
              (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
              (coe v1))
           v2)
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_390 v6
du_'8743''45'absorbs'45''8744'_390 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_390 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-congʳ
d_'8743''45'cong'691'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'691'_398 v6
du_'8743''45'cong'691'_398 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_398 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-congˡ
d_'8743''45'cong'737'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'737'_400 v6
du_'8743''45'cong'737'_400 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_400 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_404 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'distrib'691''45''8744'_404
du_'8743''45'distrib'691''45''8744'_404 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_404 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_2964
      v2
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_406 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'distrib'737''45''8744'_406
du_'8743''45'distrib'737''45''8744'_406 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_406 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_2962
      v2
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_408 v6
du_'8744''45'absorbs'45''8743'_408 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_408 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-congʳ
d_'8744''45'cong'691'_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'691'_416 v6
du_'8744''45'cong'691'_416 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_416 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-congˡ
d_'8744''45'cong'737'_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'737'_418 v6
du_'8744''45'cong'737'_418 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_418 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_422 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'distrib'691''45''8743'_422
du_'8744''45'distrib'691''45''8743'_422 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_422 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_2960
      v2
-- Algebra.Lattice.Structures.Biased._.IsDistributiveLattice.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_424 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'distrib'737''45''8743'_424
du_'8744''45'distrib'737''45''8743'_424 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_424 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_2958
      v2
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.isPartialEquivalence
d_isPartialEquivalence_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_440 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_440 v5
du_isPartialEquivalence_440 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_440 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.reflexive
d_reflexive_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_446 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_446 v5
du_reflexive_446 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_446 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.setoid
d_setoid_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_448 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_448 v5
du_setoid_448 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_448 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.∙-congʳ
d_'8729''45'cong'691'_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_456 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_456 v5
du_'8729''45'cong'691'_456 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_456 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsJoinSemilattice.∙-congˡ
d_'8729''45'cong'737'_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_458 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_458 v5
du_'8729''45'cong'737'_458 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_458 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsLattice.isPartialEquivalence
d_isPartialEquivalence_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_466 v6
du_isPartialEquivalence_466 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe v0))
-- Algebra.Lattice.Structures.Biased._.IsLattice.reflexive
d_reflexive_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_470 v6
du_reflexive_470 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_470 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe v0))
      v1
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_476 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'absorbs'45''8744'_476
du_'8743''45'absorbs'45''8744'_476 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_476 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
      v2
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-congʳ
d_'8743''45'cong'691'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_484 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'cong'691'_484
du_'8743''45'cong'691'_484 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_484 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsLattice.∧-congˡ
d_'8743''45'cong'737'_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_486 ~v0 ~v1 ~v2 ~v3
  = du_'8743''45'cong'737'_486
du_'8743''45'cong'737'_486 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_486 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_488 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'absorbs'45''8743'_488
du_'8744''45'absorbs'45''8743'_488 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_488 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
      v2
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-congʳ
d_'8744''45'cong'691'_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_496 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'cong'691'_496
du_'8744''45'cong'691'_496 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_496 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsLattice.∨-congˡ
d_'8744''45'cong'737'_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_498 ~v0 ~v1 ~v2 ~v3
  = du_'8744''45'cong'737'_498
du_'8744''45'cong'737'_498 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_498 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
      v2 v3 v4 v5 v6
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.isPartialEquivalence
d_isPartialEquivalence_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_514 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_514 v5
du_isPartialEquivalence_514 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_514 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.reflexive
d_reflexive_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_520 v5
du_reflexive_520 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_520 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.setoid
d_setoid_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_522 v5
du_setoid_522 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_522 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.∙-congʳ
d_'8729''45'cong'691'_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_530 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_530 v5
du_'8729''45'cong'691'_530 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_530 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.Biased._.IsMeetSemilattice.∙-congˡ
d_'8729''45'cong'737'_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_532 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_532 v5
du_'8729''45'cong'737'_532 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_532 v0
  = let v1
          = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂
d_IsLattice'8322'_582 a0 a1 a2 a3 a4 a5 = ()
data T_IsLattice'8322'_582
  = C_IsLattice'8322''46'constructor_3999 MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
                                          MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Lattice.Structures.Biased.IsLattice₂.isJoinSemilattice
d_isJoinSemilattice_594 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_isJoinSemilattice_594 v0
  = case coe v0 of
      C_IsLattice'8322''46'constructor_3999 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsLattice₂.isMeetSemilattice
d_isMeetSemilattice_596 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_isMeetSemilattice_596 v0
  = case coe v0 of
      C_IsLattice'8322''46'constructor_3999 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsLattice₂.absorptive
d_absorptive_598 ::
  T_IsLattice'8322'_582 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_598 v0
  = case coe v0 of
      C_IsLattice'8322''46'constructor_3999 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.assoc
d_assoc_602 ::
  T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
            (coe d_isMeetSemilattice_596 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.comm
d_comm_604 ::
  T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_604 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_comm_2536
      (coe d_isMeetSemilattice_596 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.idem
d_idem_606 :: T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny
d_idem_606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
         (coe d_isMeetSemilattice_596 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isBand
d_isBand_608 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_608 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
      (coe d_isMeetSemilattice_596 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isEquivalence
d_isEquivalence_610 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
               (coe d_isMeetSemilattice_596 (coe v0)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isMagma
d_isMagma_612 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_612 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
            (coe d_isMeetSemilattice_596 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isPartialEquivalence
d_isPartialEquivalence_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_614 v6
du_isPartialEquivalence_614 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_614 v0
  = let v1 = d_isMeetSemilattice_596 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.isSemigroup
d_isSemigroup_616 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
         (coe d_isMeetSemilattice_596 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.refl
d_refl_618 :: T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny
d_refl_618 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isMeetSemilattice_596 (coe v0))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.reflexive
d_reflexive_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_620 v6
du_reflexive_620 ::
  T_IsLattice'8322'_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_620 v0
  = let v1 = d_isMeetSemilattice_596 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))
                    v5))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.setoid
d_setoid_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_622 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_622 v6
du_setoid_622 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_622 v0
  = let v1 = d_isMeetSemilattice_596 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.sym
d_sym_624 ::
  T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_624 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isMeetSemilattice_596 (coe v0))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.trans
d_trans_626 ::
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_626 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isMeetSemilattice_596 (coe v0))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.∙-cong
d_'8729''45'cong_628 ::
  T_IsLattice'8322'_582 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
               (coe d_isMeetSemilattice_596 (coe v0)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.∙-congʳ
d_'8729''45'cong'691'_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_630 v6
du_'8729''45'cong'691'_630 ::
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_630 v0
  = let v1 = d_isMeetSemilattice_596 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.ML.∙-congˡ
d_'8729''45'cong'737'_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_632 v6
du_'8729''45'cong'737'_632 ::
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_632 v0
  = let v1 = d_isMeetSemilattice_596 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.assoc
d_assoc_636 ::
  T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
            (coe d_isJoinSemilattice_594 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.comm
d_comm_638 ::
  T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_638 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_comm_2536
      (coe d_isJoinSemilattice_594 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.idem
d_idem_640 :: T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny
d_idem_640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
         (coe d_isJoinSemilattice_594 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isBand
d_isBand_642 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_642 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
      (coe d_isJoinSemilattice_594 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isEquivalence
d_isEquivalence_644 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
               (coe d_isJoinSemilattice_594 (coe v0)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isMagma
d_isMagma_646 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
            (coe d_isJoinSemilattice_594 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isPartialEquivalence
d_isPartialEquivalence_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_648 v6
du_isPartialEquivalence_648 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_648 v0
  = let v1 = d_isJoinSemilattice_594 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.isSemigroup
d_isSemigroup_650 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
         (coe d_isJoinSemilattice_594 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.refl
d_refl_652 :: T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny
d_refl_652 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isJoinSemilattice_594 (coe v0))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.reflexive
d_reflexive_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_654 v6
du_reflexive_654 ::
  T_IsLattice'8322'_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_654 v0
  = let v1 = d_isJoinSemilattice_594 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))
                    v5))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.setoid
d_setoid_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_656 v6
du_setoid_656 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_656 v0
  = let v1 = d_isJoinSemilattice_594 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.sym
d_sym_658 ::
  T_IsLattice'8322'_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_658 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isJoinSemilattice_594 (coe v0))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.trans
d_trans_660 ::
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_660 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isJoinSemilattice_594 (coe v0))))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.∙-cong
d_'8729''45'cong_662 ::
  T_IsLattice'8322'_582 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
               (coe d_isJoinSemilattice_594 (coe v0)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.∙-congʳ
d_'8729''45'cong'691'_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_664 v6
du_'8729''45'cong'691'_664 ::
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_664 v0
  = let v1 = d_isJoinSemilattice_594 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.JL.∙-congˡ
d_'8729''45'cong'737'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_666 v6
du_'8729''45'cong'737'_666 ::
  T_IsLattice'8322'_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_666 v0
  = let v1 = d_isJoinSemilattice_594 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.Biased.IsLattice₂.isLattice₂
d_isLattice'8322'_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_isLattice'8322'_668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isLattice'8322'_668 v6
du_isLattice'8322'_668 ::
  T_IsLattice'8322'_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
du_isLattice'8322'_668 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsLattice'46'constructor_35597
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isMeetSemilattice_596 (coe v0))))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_comm_2536
         (coe d_isJoinSemilattice_594 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
               (coe d_isJoinSemilattice_594 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isJoinSemilattice_594 (coe v0))))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_comm_2536
         (coe d_isMeetSemilattice_596 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
               (coe d_isMeetSemilattice_596 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                  (coe d_isMeetSemilattice_596 (coe v0))))))
      (coe d_absorptive_598 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ
d_IsDistributiveLattice'691''690''7504'_674 a0 a1 a2 a3 a4 a5 = ()
data T_IsDistributiveLattice'691''690''7504'_674
  = C_IsDistributiveLattice'691''690''7504''46'constructor_7033 MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
                                                                (AgdaAny ->
                                                                 AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.isLattice
d_isLattice_684 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_isLattice_684 v0
  = case coe v0 of
      C_IsDistributiveLattice'691''690''7504''46'constructor_7033 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_686 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_686 v0
  = case coe v0 of
      C_IsDistributiveLattice'691''690''7504''46'constructor_7033 v1 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.absorptive
d_absorptive_690 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_690 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2862
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.isEquivalence
d_isEquivalence_692 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_692 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.isPartialEquivalence
d_isPartialEquivalence_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_694 v6
du_isPartialEquivalence_694 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_694 v0
  = let v1 = d_isLattice_684 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
            (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.refl
d_refl_696 ::
  T_IsDistributiveLattice'691''690''7504'_674 -> AgdaAny -> AgdaAny
d_refl_696 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe d_isLattice_684 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.reflexive
d_reflexive_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_698 v6
du_reflexive_698 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_698 v0
  = let v1 = d_isLattice_684 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
              (coe v1))
           v2)
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.sym
d_sym_700 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_700 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe d_isLattice_684 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.trans
d_trans_702 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_702 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe d_isLattice_684 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_704 v6
du_'8743''45'absorbs'45''8744'_704 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_704 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-assoc
d_'8743''45'assoc_706 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_706 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-comm
d_'8743''45'comm_708 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_708 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-cong
d_'8743''45'cong_710 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_710 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-congʳ
d_'8743''45'cong'691'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'691'_712 v6
du_'8743''45'cong'691'_712 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_712 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∧-congˡ
d_'8743''45'cong'737'_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'737'_714 v6
du_'8743''45'cong'737'_714 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_714 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_716 v6
du_'8744''45'absorbs'45''8743'_716 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_716 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-assoc
d_'8744''45'assoc_718 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_718 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-comm
d_'8744''45'comm_720 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_720 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-cong
d_'8744''45'cong_722 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_722 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-congʳ
d_'8744''45'cong'691'_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'691'_724 v6
du_'8744''45'cong'691'_724 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_724 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ._.∨-congˡ
d_'8744''45'cong'737'_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'737'_726 v6
du_'8744''45'cong'737'_726 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_726 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
      (coe d_isLattice_684 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.setoid
d_setoid_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_728 v6
du_setoid_728 ::
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_728 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_727
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe d_isLattice_684 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∨-distrib-∧
d_'8744''45'distrib'45''8743'_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_730 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8744''45'distrib'45''8743'_730 v4 v5 v6
du_'8744''45'distrib'45''8743'_730 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'distrib'45''8743'_730 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'691''8658'distr_528
      (coe du_setoid_728 (coe v2)) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
         (coe d_isLattice_684 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe d_isLattice_684 (coe v2)))
      (coe d_'8744''45'distrib'691''45''8743'_686 (coe v2))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_732 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8743''45'distrib'737''45''8744'_732 v4 v5 v6
du_'8743''45'distrib'737''45''8744'_732 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_732 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_distrib'43'absorbs'8658'distrib'737'_562
      (coe du_setoid_728 (coe v2)) (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
         (coe d_isLattice_684 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
         (coe d_isLattice_684 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe d_isLattice_684 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
         (coe d_isLattice_684 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
         (coe d_isLattice_684 (coe v2)))
      (coe du_'8744''45'distrib'45''8743'_730 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.∧-distrib-∨
d_'8743''45'distrib'45''8744'_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_734 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8743''45'distrib'45''8744'_734 v4 v5 v6
du_'8743''45'distrib'45''8744'_734 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8744'_734 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr_524
      (coe du_setoid_728 (coe v2)) (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
         (coe d_isLattice_684 (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe d_isLattice_684 (coe v2)))
      (coe
         du_'8743''45'distrib'737''45''8744'_732 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Structures.Biased.IsDistributiveLatticeʳʲᵐ.isDistributiveLatticeʳʲᵐ
d_isDistributiveLattice'691''690''7504'_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_isDistributiveLattice'691''690''7504'_736 ~v0 ~v1 ~v2 ~v3 v4 v5
                                            v6
  = du_isDistributiveLattice'691''690''7504'_736 v4 v5 v6
du_isDistributiveLattice'691''690''7504'_736 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice'691''690''7504'_674 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
du_isDistributiveLattice'691''690''7504'_736 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsDistributiveLattice'46'constructor_39691
      (coe d_isLattice_684 (coe v2))
      (coe du_'8744''45'distrib'45''8743'_730 (coe v0) (coe v1) (coe v2))
      (coe du_'8743''45'distrib'45''8744'_734 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ
d_IsBooleanAlgebra'691'_748 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsBooleanAlgebra'691'_748
  = C_IsBooleanAlgebra'691''46'constructor_11051 MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
                                                 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                                 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.isDistributiveLattice
d_isDistributiveLattice_768 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_isDistributiveLattice_768 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_11051 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.∨-complementʳ
d_'8744''45'complement'691'_770 ::
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny
d_'8744''45'complement'691'_770 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_11051 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.∧-complementʳ
d_'8743''45'complement'691'_772 ::
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny
d_'8743''45'complement'691'_772 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_11051 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.¬-cong
d_'172''45'cong_774 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_774 v0
  = case coe v0 of
      C_IsBooleanAlgebra'691''46'constructor_11051 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.absorptive
d_absorptive_778 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_778 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2862
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.isEquivalence
d_isEquivalence_780 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_780 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.isLattice
d_isLattice_782 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_isLattice_782 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
      (coe d_isDistributiveLattice_768 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.isPartialEquivalence
d_isPartialEquivalence_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_784 v9
du_isPartialEquivalence_784 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_784 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
               (coe v2))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.refl
d_refl_786 :: T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny
d_refl_786 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe d_isDistributiveLattice_768 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.reflexive
d_reflexive_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_788 v9
du_reflexive_788 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_788 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe v2))
              v3))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.sym
d_sym_790 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_790 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe d_isDistributiveLattice_768 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.trans
d_trans_792 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_792 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe d_isDistributiveLattice_768 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 v9
  = du_'8743''45'absorbs'45''8744'_794 v9
du_'8743''45'absorbs'45''8744'_794 ::
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_794 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-assoc
d_'8743''45'assoc_796 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_796 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-comm
d_'8743''45'comm_798 ::
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_798 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-cong
d_'8743''45'cong_800 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_800 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-congʳ
d_'8743''45'cong'691'_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'691'_802 v9
du_'8743''45'cong'691'_802 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_802 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-congˡ
d_'8743''45'cong'737'_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'737'_804 v9
du_'8743''45'cong'737'_804 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_804 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-distrib-∨
d_'8743''45'distrib'45''8744'_806 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_806 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_2916
      (coe d_isDistributiveLattice_768 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8743''45'distrib'691''45''8744'_808 v9
du_'8743''45'distrib'691''45''8744'_808 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_808 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_2964
      (coe d_isDistributiveLattice_768 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8743''45'distrib'737''45''8744'_810 v9
du_'8743''45'distrib'737''45''8744'_810 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_810 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_2962
      (coe d_isDistributiveLattice_768 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 v9
  = du_'8744''45'absorbs'45''8743'_812 v9
du_'8744''45'absorbs'45''8743'_812 ::
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_812 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-assoc
d_'8744''45'assoc_814 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_814 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-comm
d_'8744''45'comm_816 ::
  T_IsBooleanAlgebra'691'_748 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_816 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-cong
d_'8744''45'cong_818 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_818 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe d_isDistributiveLattice_768 (coe v0)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-congʳ
d_'8744''45'cong'691'_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'691'_820 v9
du_'8744''45'cong'691'_820 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_820 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-congˡ
d_'8744''45'cong'737'_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'737'_822 v9
du_'8744''45'cong'737'_822 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_822 v0
  = let v1 = d_isDistributiveLattice_768 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-distrib-∧
d_'8744''45'distrib'45''8743'_824 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_824 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_2914
      (coe d_isDistributiveLattice_768 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8744''45'distrib'691''45''8743'_826 v9
du_'8744''45'distrib'691''45''8743'_826 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_826 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_2960
      (coe d_isDistributiveLattice_768 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ._.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_'8744''45'distrib'737''45''8743'_828 v9
du_'8744''45'distrib'737''45''8743'_828 ::
  T_IsBooleanAlgebra'691'_748 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_828 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_2958
      (coe d_isDistributiveLattice_768 (coe v0))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.setoid
d_setoid_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_830 v9
du_setoid_830 ::
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_830 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_727
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe d_isDistributiveLattice_768 (coe v0))))
-- Algebra.Lattice.Structures.Biased.IsBooleanAlgebraʳ.isBooleanAlgebraʳ
d_isBooleanAlgebra'691'_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976
d_isBooleanAlgebra'691'_832 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_isBooleanAlgebra'691'_832 v4 v5 v6 v7 v8 v9
du_isBooleanAlgebra'691'_832 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra'691'_748 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976
du_isBooleanAlgebra'691'_832 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsBooleanAlgebra'46'constructor_42757
      (coe d_isDistributiveLattice_768 (coe v5))
      (coe
         MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'inv'691''8658'inv_436
         (coe du_setoid_830 (coe v5)) (coe v0) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe d_isDistributiveLattice_768 (coe v5))))
         (coe d_'8744''45'complement'691'_770 (coe v5)))
      (coe
         MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'inv'691''8658'inv_436
         (coe du_setoid_830 (coe v5)) (coe v1) (coe v2) (coe v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe d_isDistributiveLattice_768 (coe v5))))
         (coe d_'8743''45'complement'691'_772 (coe v5)))
      (coe d_'172''45'cong_774 (coe v5))
