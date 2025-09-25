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

module MAlonzo.Code.Relation.Binary.Lattice.Properties.BoundedJoinSemilattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice._.Identity
d_Identity_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_90 = erased
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice._.LeftIdentity
d_LeftIdentity_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_92 = erased
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice._.RightIdentity
d_RightIdentity_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_94 = erased
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.identityˡ
d_identity'737'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  AgdaAny -> AgdaAny
d_identity'737'_100 ~v0 ~v1 ~v2 v3 v4 = du_identity'737'_100 v3 v4
du_identity'737'_100 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  AgdaAny -> AgdaAny
du_identity'737'_100 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
               (coe v0))))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__130 v0
         (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_132
            (coe v0))
         v1)
      v1
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
                     (coe v0)))
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_132
                  (coe v0))
               v1))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_minimum_130
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
               (coe v0))
            v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_104
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
                        (coe v0)))))
            (coe v1)))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
                     (coe v0)))
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_132
                  (coe v0))
               v1)))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.identityʳ
d_identity'691'_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  AgdaAny -> AgdaAny
d_identity'691'_108 ~v0 ~v1 ~v2 v3 v4 = du_identity'691'_108 v3 v4
du_identity'691'_108 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  AgdaAny -> AgdaAny
du_identity'691'_108 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
               (coe v0))))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__130 v0 v1
         (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_132
            (coe v0)))
      v1
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
                     (coe v0)))
               v1
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_132
                  (coe v0))))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_104
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
                        (coe v0)))))
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_minimum_130
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
               (coe v0))
            v1))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
            (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
                  (coe v0)))
            v1
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_132
               (coe v0))))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.identity
d_identity_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_116 ~v0 ~v1 ~v2 v3 = du_identity_116 v3
du_identity_116 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_116 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_identity'737'_100 (coe v0))
      (coe du_identity'691'_108 (coe v0))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.dualIsBoundedMeetSemilattice
d_dualIsBoundedMeetSemilattice_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedMeetSemilattice_280
d_dualIsBoundedMeetSemilattice_118 ~v0 ~v1 ~v2 v3
  = du_dualIsBoundedMeetSemilattice_118 v3
du_dualIsBoundedMeetSemilattice_118 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedMeetSemilattice_280
du_dualIsBoundedMeetSemilattice_118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_constructor_342
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Structures.C_constructor_274
         (coe
            MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_150
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.du_poset_90
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.du_joinSemilattice_188
                  (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_128
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
                  (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Structures.d_minimum_130
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_134
            (coe v0)))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.dualBoundedMeetSemilattice
d_dualBoundedMeetSemilattice_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedMeetSemilattice_294
d_dualBoundedMeetSemilattice_120 ~v0 ~v1 ~v2 v3
  = du_dualBoundedMeetSemilattice_120 v3
du_dualBoundedMeetSemilattice_120 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedMeetSemilattice_294
du_dualBoundedMeetSemilattice_120 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Bundles.C_constructor_386
      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__130
         (coe v0))
      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_132
         (coe v0))
      (coe du_dualIsBoundedMeetSemilattice_118 (coe v0))
