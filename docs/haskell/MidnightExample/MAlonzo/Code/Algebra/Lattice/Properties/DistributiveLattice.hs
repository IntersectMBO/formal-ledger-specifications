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
d_IsDistributiveLattice_230 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.DistributiveLattice._.poset
d_poset_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_poset_684 ~v0 ~v1 v2 = du_poset_684 v2
du_poset_684 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
du_poset_684 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_poset_162
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-idem
d_'8743''45'idem_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_686 ~v0 ~v1 v2 = du_'8743''45'idem_686 v2
du_'8743''45'idem_686 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_686 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3046
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isBand
d_'8743''45'isBand_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8743''45'isBand_688 ~v0 ~v1 v2 = du_'8743''45'isBand_688 v2
du_'8743''45'isBand_688 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8743''45'isBand_688 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isBand_3054
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isMagma
d_'8743''45'isMagma_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8743''45'isMagma_690 ~v0 ~v1 v2 = du_'8743''45'isMagma_690 v2
du_'8743''45'isMagma_690 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8743''45'isMagma_690 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isMagma_3050
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_692 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_692 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_692 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_692 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_694 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_694 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_694 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_694 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isSemigroup
d_'8743''45'isSemigroup_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8743''45'isSemigroup_696 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_696 v2
du_'8743''45'isSemigroup_696 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8743''45'isSemigroup_696 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_3052
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isSemilattice
d_'8743''45'isSemilattice_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8743''45'isSemilattice_698 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_698 v2
du_'8743''45'isSemilattice_698 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_'8743''45'isSemilattice_698 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemilattice_3056
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_700 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_700 v2
du_'8743''45'orderTheoreticJoinSemilattice_700 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_700 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_702 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_702 v2
du_'8743''45'orderTheoreticMeetSemilattice_702 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_702 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-semilattice
d_'8743''45'semilattice_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_704 ~v0 ~v1 v2
  = du_'8743''45'semilattice_704 v2
du_'8743''45'semilattice_704 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8743''45'semilattice_704 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8743''45''8744''45'isLattice_706 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_706 v2
du_'8743''45''8744''45'isLattice_706 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
du_'8743''45''8744''45'isLattice_706 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'isLattice_3094
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-∨-lattice
d_'8743''45''8744''45'lattice_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8743''45''8744''45'lattice_708 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_708 v2
du_'8743''45''8744''45'lattice_708 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
du_'8743''45''8744''45'lattice_708 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'lattice_3096
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-idem
d_'8744''45'idem_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_710 ~v0 ~v1 v2 = du_'8744''45'idem_710 v2
du_'8744''45'idem_710 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_710 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_3070
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isBand
d_'8744''45'isBand_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8744''45'isBand_712 ~v0 ~v1 v2 = du_'8744''45'isBand_712 v2
du_'8744''45'isBand_712 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8744''45'isBand_712 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isBand_3078
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isMagma
d_'8744''45'isMagma_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8744''45'isMagma_714 ~v0 ~v1 v2 = du_'8744''45'isMagma_714 v2
du_'8744''45'isMagma_714 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8744''45'isMagma_714 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isMagma_3074
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_716 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_716 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_716 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_716 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_718 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_718 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_718 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_718 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isSemigroup
d_'8744''45'isSemigroup_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8744''45'isSemigroup_720 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_720 v2
du_'8744''45'isSemigroup_720 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8744''45'isSemigroup_720 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_3076
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-isSemilattice
d_'8744''45'isSemilattice_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8744''45'isSemilattice_722 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_722 v2
du_'8744''45'isSemilattice_722 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_'8744''45'isSemilattice_722 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemilattice_3080
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_724 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_724 v2
du_'8743''45'orderTheoreticJoinSemilattice_724 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_724 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_726 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_726 v2
du_'8743''45'orderTheoreticMeetSemilattice_726 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_726 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
            (coe v1)))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-semilattice
d_'8744''45'semilattice_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_728 ~v0 ~v1 v2
  = du_'8744''45'semilattice_728 v2
du_'8744''45'semilattice_728 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8744''45'semilattice_728 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_'8744''45''8743''45'isOrderTheoreticLattice_730 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_730 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_730 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_'8744''45''8743''45'isOrderTheoreticLattice_730 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'isOrderTheoreticLattice_3108
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice._.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
d_'8744''45''8743''45'orderTheoreticLattice_732 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_732 v2
du_'8744''45''8743''45'orderTheoreticLattice_732 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
du_'8744''45''8743''45'orderTheoreticLattice_732 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'orderTheoreticLattice_3164
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0))
-- Algebra.Lattice.Properties.DistributiveLattice.∧-∨-isDistributiveLattice
d_'8743''45''8744''45'isDistributiveLattice_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_'8743''45''8744''45'isDistributiveLattice_734 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isDistributiveLattice_734 v2
du_'8743''45''8744''45'isDistributiveLattice_734 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
du_'8743''45''8744''45'isDistributiveLattice_734 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsDistributiveLattice'46'constructor_39691
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'isLattice_3094
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_2916
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isDistributiveLattice_606
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_2914
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isDistributiveLattice_606
            (coe v0)))
-- Algebra.Lattice.Properties.DistributiveLattice.∧-∨-distributiveLattice
d_'8743''45''8744''45'distributiveLattice_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8743''45''8744''45'distributiveLattice_736 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distributiveLattice_736 v2
du_'8743''45''8744''45'distributiveLattice_736 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
du_'8743''45''8744''45'distributiveLattice_736 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_DistributiveLattice'46'constructor_9531
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__604 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__602 (coe v0))
      (coe du_'8743''45''8744''45'isDistributiveLattice_734 (coe v0))
