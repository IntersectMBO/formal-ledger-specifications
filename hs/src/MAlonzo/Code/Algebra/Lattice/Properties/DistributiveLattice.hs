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

module MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Lattice.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures

-- Algebra.Lattice.Properties.DistributiveLattice._.IsDistributiveLattice
d_IsDistributiveLattice_234 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.DistributiveLattice._.IsDistributiveLattice.isLattice
d_isLattice_462 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_isLattice_462 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394 (coe v0)
-- Algebra.Lattice.Properties.DistributiveLattice._.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_486 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_486 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3398
      (coe v0)
-- Algebra.Lattice.Properties.DistributiveLattice._.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_504 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_504 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3396
      (coe v0)
-- Algebra.Lattice.Properties.DistributiveLattice._.poset
d_poset_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_poset_694 ~v0 ~v1 v2 = du_poset_694 v2
du_poset_694 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
du_poset_694 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_poset_162
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-idem
d_'8743''45'idem_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_696 ~v0 ~v1 v2 = du_'8743''45'idem_696 v2
du_'8743''45'idem_696 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_696 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_294
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isBand
d_'8743''45'isBand_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8743''45'isBand_698 ~v0 ~v1 v2 = du_'8743''45'isBand_698 v2
du_'8743''45'isBand_698 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_'8743''45'isBand_698 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isBand_302
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isMagma
d_'8743''45'isMagma_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8743''45'isMagma_700 ~v0 ~v1 v2 = du_'8743''45'isMagma_700 v2
du_'8743''45'isMagma_700 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8743''45'isMagma_700 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isMagma_298
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_702 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_702 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_702 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_702 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
d_'8743''45'isOrderTheoreticMeetSemilattice_704 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_704 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_704 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
du_'8743''45'isOrderTheoreticMeetSemilattice_704 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isSemigroup
d_'8743''45'isSemigroup_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8743''45'isSemigroup_706 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_706 v2
du_'8743''45'isSemigroup_706 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8743''45'isSemigroup_706 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_300
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isSemilattice
d_'8743''45'isSemilattice_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8743''45'isSemilattice_708 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_708 v2
du_'8743''45'isSemilattice_708 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_'8743''45'isSemilattice_708 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemilattice_304
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_710 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_710 v2
du_'8743''45'orderTheoreticJoinSemilattice_710 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_710 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
d_'8743''45'orderTheoreticMeetSemilattice_712 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_712 v2
du_'8743''45'orderTheoreticMeetSemilattice_712 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
du_'8743''45'orderTheoreticMeetSemilattice_712 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-semilattice
d_'8743''45'semilattice_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_714 ~v0 ~v1 v2
  = du_'8743''45'semilattice_714 v2
du_'8743''45'semilattice_714 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8743''45'semilattice_714 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8743''45''8744''45'isLattice_716 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_716 v2
du_'8743''45''8744''45'isLattice_716 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
du_'8743''45''8744''45'isLattice_716 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'isLattice_342
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-∨-lattice
d_'8743''45''8744''45'lattice_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8743''45''8744''45'lattice_718 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_718 v2
du_'8743''45''8744''45'lattice_718 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
du_'8743''45''8744''45'lattice_718 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'lattice_344
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-idem
d_'8744''45'idem_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_720 ~v0 ~v1 v2 = du_'8744''45'idem_720 v2
du_'8744''45'idem_720 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_720 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_318
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isBand
d_'8744''45'isBand_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8744''45'isBand_722 ~v0 ~v1 v2 = du_'8744''45'isBand_722 v2
du_'8744''45'isBand_722 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_'8744''45'isBand_722 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isBand_326
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isMagma
d_'8744''45'isMagma_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8744''45'isMagma_724 ~v0 ~v1 v2 = du_'8744''45'isMagma_724 v2
du_'8744''45'isMagma_724 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8744''45'isMagma_724 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isMagma_322
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_726 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_726 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_726 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_726 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
d_'8743''45'isOrderTheoreticMeetSemilattice_728 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_728 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_728 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
du_'8743''45'isOrderTheoreticMeetSemilattice_728 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isSemigroup
d_'8744''45'isSemigroup_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8744''45'isSemigroup_730 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_730 v2
du_'8744''45'isSemigroup_730 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8744''45'isSemigroup_730 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_324
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isSemilattice
d_'8744''45'isSemilattice_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8744''45'isSemilattice_732 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_732 v2
du_'8744''45'isSemilattice_732 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_'8744''45'isSemilattice_732 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemilattice_328
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_734 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_734 v2
du_'8743''45'orderTheoreticJoinSemilattice_734 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_734 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
d_'8743''45'orderTheoreticMeetSemilattice_736 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_736 v2
du_'8743''45'orderTheoreticMeetSemilattice_736 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
du_'8743''45'orderTheoreticMeetSemilattice_736 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-semilattice
d_'8744''45'semilattice_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_738 ~v0 ~v1 v2
  = du_'8744''45'semilattice_738 v2
du_'8744''45'semilattice_738 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8744''45'semilattice_738 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_'8744''45''8743''45'isOrderTheoreticLattice_740 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_740 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_740 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
du_'8744''45''8743''45'isOrderTheoreticLattice_740 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'isOrderTheoreticLattice_356
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_394
d_'8744''45''8743''45'orderTheoreticLattice_742 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_742 v2
du_'8744''45''8743''45'orderTheoreticLattice_742 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_394
du_'8744''45''8743''45'orderTheoreticLattice_742 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'orderTheoreticLattice_412
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice.∧-∨-isDistributiveLattice
d_'8743''45''8744''45'isDistributiveLattice_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8743''45''8744''45'isDistributiveLattice_744 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isDistributiveLattice_744 v2
du_'8743''45''8744''45'isDistributiveLattice_744 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
du_'8743''45''8744''45'isDistributiveLattice_744 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_constructor_3448
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'isLattice_342
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3398
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isDistributiveLattice_622
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3396
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isDistributiveLattice_622
            (coe v0)))
-- Algebra.Lattice.Properties.DistributiveLattice.∧-∨-distributiveLattice
d_'8743''45''8744''45'distributiveLattice_746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8743''45''8744''45'distributiveLattice_746 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distributiveLattice_746 v2
du_'8743''45''8744''45'distributiveLattice_746 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
du_'8743''45''8744''45'distributiveLattice_746 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_692
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__620 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__618 (coe v0))
      (coe du_'8743''45''8744''45'isDistributiveLattice_744 (coe v0))
