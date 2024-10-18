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
d_Identity_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_132 = erased
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice._.LeftIdentity
d_LeftIdentity_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_158 = erased
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice._.RightIdentity
d_RightIdentity_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_188 = erased
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.identityˡ
d_identity'737'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  AgdaAny -> AgdaAny
d_identity'737'_280 ~v0 ~v1 ~v2 v3 v4 = du_identity'737'_280 v3 v4
du_identity'737'_280 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  AgdaAny -> AgdaAny
du_identity'737'_280 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_184
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
               (coe v0))))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__128 v0
         (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_130
            (coe v0))
         v1)
      v1
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
                     (coe v0)))
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_130
                  (coe v0))
               v1))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_minimum_128
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
               (coe v0))
            v1)
         (let v2
                = MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
                       (coe v2) in
             coe
               (let v4
                      = MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                          (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182 (coe v4))
                     (coe v1))))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
                     (coe v0)))
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_130
                  (coe v0))
               v1)))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.identityʳ
d_identity'691'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  AgdaAny -> AgdaAny
d_identity'691'_288 ~v0 ~v1 ~v2 v3 v4 = du_identity'691'_288 v3 v4
du_identity'691'_288 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  AgdaAny -> AgdaAny
du_identity'691'_288 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_184
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
               (coe v0))))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__128 v0 v1
         (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_130
            (coe v0)))
      v1
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
                     (coe v0)))
               v1
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_130
                  (coe v0))))
         v1
         (let v2
                = MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
                       (coe v2) in
             coe
               (let v4
                      = MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                          (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182 (coe v4))
                     (coe v1)))))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_minimum_128
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
               (coe v0))
            v1))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
            (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
                  (coe v0)))
            v1
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_130
               (coe v0))))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.identity
d_identity_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_296 ~v0 ~v1 ~v2 v3 = du_identity_296 v3
du_identity_296 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_296 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_identity'737'_280 (coe v0))
      (coe du_identity'691'_288 (coe v0))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.dualIsBoundedMeetSemilattice
d_dualIsBoundedMeetSemilattice_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedMeetSemilattice_274
d_dualIsBoundedMeetSemilattice_298 ~v0 ~v1 ~v2 v3
  = du_dualIsBoundedMeetSemilattice_298 v3
du_dualIsBoundedMeetSemilattice_298 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedMeetSemilattice_274
du_dualIsBoundedMeetSemilattice_298 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsBoundedMeetSemilattice'46'constructor_12265
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsMeetSemilattice'46'constructor_7577
         (coe
            MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_142
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.du_poset_90
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.du_joinSemilattice_186
                  (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isJoinSemilattice_126
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
                  (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Structures.d_minimum_128
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isBoundedJoinSemilattice_132
            (coe v0)))
-- Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.dualBoundedMeetSemilattice
d_dualBoundedMeetSemilattice_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedMeetSemilattice_288
d_dualBoundedMeetSemilattice_300 ~v0 ~v1 ~v2 v3
  = du_dualBoundedMeetSemilattice_300 v3
du_dualBoundedMeetSemilattice_300 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedMeetSemilattice_288
du_dualBoundedMeetSemilattice_300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Bundles.C_BoundedMeetSemilattice'46'constructor_6659
      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__128
         (coe v0))
      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_'8869'_130
         (coe v0))
      (coe du_dualIsBoundedMeetSemilattice_298 (coe v0))
