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

module MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._._⊓_
d__'8851'__100 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8851'__100 ~v0 v1 ~v2 = du__'8851'__100 v1
du__'8851'__100 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8851'__100 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsDistributiveLattice
d_IsDistributiveLattice_124 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice
d_IsLattice_128 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsDistributiveLattice.isLattice
d_isLattice_348 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_isLattice_348 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_372 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_372 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3074
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_390 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_390 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3072
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.absorptive
d_absorptive_432 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_432 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_3020 (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.isEquivalence
d_isEquivalence_434 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_434 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.∧-assoc
d_'8743''45'assoc_448 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_448 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.∧-comm
d_'8743''45'comm_450 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_450 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.∧-cong
d_'8743''45'cong_452 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_452 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.∨-assoc
d_'8744''45'assoc_460 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_460 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.∨-comm
d_'8744''45'comm_462 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_462 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.IsLattice.∨-cong
d_'8744''45'cong_464 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_464 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
      (coe v0)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.⊓-isSemilattice
d_'8851''45'isSemilattice_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_792 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSemilattice_792 v3 v4
du_'8851''45'isSemilattice_792 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_'8851''45'isSemilattice_792 v0 v1
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_610
      (coe v0) (coe v1)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.⊓-semilattice
d_'8851''45'semilattice_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_794 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'semilattice_794 v3 v4
du_'8851''45'semilattice_794 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8851''45'semilattice_794 v0 v1
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_612
      (coe v0) (coe v1)
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.⊓-isSemilattice
d_'8851''45'isSemilattice_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_798 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSemilattice_798 v3 v5
du_'8851''45'isSemilattice_798 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_'8851''45'isSemilattice_798 v0 v1
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_610
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
         (coe v1))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp._.⊓-semilattice
d_'8851''45'semilattice_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_800 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'semilattice_800 v3 v5
du_'8851''45'semilattice_800 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8851''45'semilattice_800 v0 v1
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_612
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
         (coe v1))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8852''45''8851''45'isLattice_802 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'isLattice_802 v3 v4 v5
du_'8852''45''8851''45'isLattice_802 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
du_'8852''45''8851''45'isLattice_802 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsLattice'46'constructor_36909
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
               (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2974
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2960
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2974
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2960
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3246
         (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8851''45''8852''45'isLattice_804 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'isLattice_804 v3 v4 v5
du_'8851''45''8852''45'isLattice_804 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
du_'8851''45''8852''45'isLattice_804 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsLattice'46'constructor_36909
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_254
               (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2974
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2960
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2886
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2974
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_2960
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3248
         (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8851''45''8852''45'isDistributiveLattice_806 ~v0 ~v1 ~v2 v3 v4
                                                v5
  = du_'8851''45''8852''45'isDistributiveLattice_806 v3 v4 v5
du_'8851''45''8852''45'isDistributiveLattice_806 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
du_'8851''45''8852''45'isDistributiveLattice_806 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsDistributiveLattice'46'constructor_41059
      (coe
         du_'8851''45''8852''45'isLattice_804 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3168
         (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3200
         (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8852''45''8851''45'isDistributiveLattice_808 ~v0 ~v1 ~v2 v3 v4
                                                v5
  = du_'8852''45''8851''45'isDistributiveLattice_808 v3 v4 v5
du_'8852''45''8851''45'isDistributiveLattice_808 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
du_'8852''45''8851''45'isDistributiveLattice_808 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsDistributiveLattice'46'constructor_41059
      (coe
         du_'8852''45''8851''45'isLattice_802 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3200
         (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3168
         (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8852''45''8851''45'lattice_810 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'lattice_810 v3 v4 v5
du_'8852''45''8851''45'lattice_810 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
du_'8852''45''8851''45'lattice_810 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Lattice'46'constructor_7925
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__152
         (coe v2))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe
         du_'8852''45''8851''45'isLattice_802 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8851''45''8852''45'lattice_812 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'lattice_812 v3 v4 v5
du_'8851''45''8852''45'lattice_812 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
du_'8851''45''8852''45'lattice_812 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Lattice'46'constructor_7925
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__152
         (coe v2))
      (coe
         du_'8851''45''8852''45'isLattice_804 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8852''45''8851''45'distributiveLattice_814 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'distributiveLattice_814 v3 v4 v5
du_'8852''45''8851''45'distributiveLattice_814 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
du_'8852''45''8851''45'distributiveLattice_814 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_DistributiveLattice'46'constructor_9515
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__152
         (coe v2))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (coe
         du_'8852''45''8851''45'isDistributiveLattice_808 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8851''45''8852''45'distributiveLattice_816 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'distributiveLattice_816 v3 v4 v5
du_'8851''45''8852''45'distributiveLattice_816 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_232 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_106 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_136 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
du_'8851''45''8852''45'distributiveLattice_816 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_DistributiveLattice'46'constructor_9515
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__122
         (coe v1))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__152
         (coe v2))
      (coe
         du_'8851''45''8852''45'isDistributiveLattice_806 (coe v0) (coe v1)
         (coe v2))
