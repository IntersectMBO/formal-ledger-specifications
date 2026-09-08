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

module MAlonzo.Code.Relation.Binary.Lattice.Properties.JoinSemilattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Relation.Binary.Lattice.Properties.JoinSemilattice._.Associative
d_Associative_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_104 = erased
-- Relation.Binary.Lattice.Properties.JoinSemilattice._.Commutative
d_Commutative_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_108 = erased
-- Relation.Binary.Lattice.Properties.JoinSemilattice._.Idempotent
d_Idempotent_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_118 = erased
-- Relation.Binary.Lattice.Properties.JoinSemilattice.∨-monotonic
d_'8744''45'monotonic_214 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'monotonic_214 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
               (coe v0))
            v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
         v4)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_90
         (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))))
         v1 v2
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
            v4)
         v5
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v2 v4)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_90
         (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))))
         v3 v4
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
            v4)
         v6
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v2 v4))))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.∨-cong
d_'8744''45'cong_234 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_234 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
         v3)
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
         v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
            v4)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_90
            (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            v1 v2
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
               v4)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v1 v2 v5)
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v2 v4)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_90
            (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            v3 v4
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
               v4)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v3 v4 v6)
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     v2 v4)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v2 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
            v3)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_90
            (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            v2 v1
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
               v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v2 v1
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                              (coe v0)))))
                  v1 v2 v5))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v1 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_90
            (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            v4 v3
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
               v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v4 v3
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                              (coe v0)))))
                  v3 v4 v6))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     v1 v3)))))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.∨-comm
d_'8744''45'comm_240 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_240 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
         v2)
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
         v1)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
            v1)
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v2 v1)))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v2 v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v2 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
            v2)
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v1 v2)))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v1 v2)))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.∨-assoc
d_'8744''45'assoc_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_258 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8744''45'assoc_258 v3 v4 v5 v6
du_'8744''45'assoc_258 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'assoc_258 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
            v2)
         v3)
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
            v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                  v2)
               v3))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
               v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                  v3))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_90
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v1 v1
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                     v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_refl_104
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))))
                  (coe v1))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                        v3))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_90
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                  v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                     v3))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     v2 v3))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                        (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))
                        v1
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                           v3))))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_90
            (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
               v3)
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                  v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     v2 v3)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                        v3))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                  v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
               v2)
            v3)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_90
            (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
               v2)
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                  v2)
               v3)
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v1 v2))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                     v2)
                  v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                  (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))
                  v2 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                  v2)
               v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_90
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                  v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                     v2)
                  v3)
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                        (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))
                        v1 v2)))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                        v2)
                     v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_90
               (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               v3 v3
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                     v2)
                  v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_refl_104
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))))
                  (coe v3))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                        (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                           v2)
                        v3))))))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.∨-idempotent
d_'8744''45'idempotent_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny -> AgdaAny
d_'8744''45'idempotent_286 ~v0 ~v1 ~v2 v3 v4
  = du_'8744''45'idempotent_286 v3 v4
du_'8744''45'idempotent_286 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny -> AgdaAny
du_'8744''45'idempotent_286 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
         v1)
      v1
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
               (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                  (coe v0))
               v1 v1))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_104
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_104
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            (coe v1)))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
            (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
               (coe v0))
            v1 v1))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.x≤y⇒x∨y≈y
d_x'8804'y'8658'x'8744'y'8776'y_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8744'y'8776'y_298 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_x'8804'y'8658'x'8744'y'8776'y_298 v3 v4 v5 v6
du_x'8804'y'8658'x'8744'y'8776'y_298 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8744'y'8776'y_298 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
      (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
         v2)
      v2
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                     (coe v0))))
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''8658''8804'_32
                 v6))
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
            v2)
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))))
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                              (coe v0)))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
               v2)
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
               v2)
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                              (coe
                                 MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                 (coe v0)))))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_118
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                              (coe
                                 MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                  v2)
               v2 v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                              (coe v0)))))
                  (coe v2))
               (coe du_'8744''45'idempotent_286 (coe v0) (coe v2)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                     (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                        (coe v0))
                     v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                  v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                  (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))))
                  v1 v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                     v2)
                  v3
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                        (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))
                        v2 v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                  (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0))))
                  v2 v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                     v2)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_refl_104
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                           (coe
                              MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                              (coe v0))))
                     (coe v2))
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                           (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                              (coe v0))
                           v2 v2)))))))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Structures.du_y'8804'x'8744'y_50
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0))
         (coe v1) (coe v2))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.isAlgSemilattice
d_isAlgSemilattice_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_612
d_isAlgSemilattice_400 ~v0 ~v1 ~v2 v3 = du_isAlgSemilattice_400 v3
du_isAlgSemilattice_400 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_612
du_isAlgSemilattice_400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_660
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_564
         (coe
            MAlonzo.Code.Algebra.Structures.C_constructor_522
            (coe
               MAlonzo.Code.Algebra.Structures.C_constructor_210
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                     (coe
                        MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                        (coe
                           MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                           (coe v0)))))
               (coe
                  (\ v1 v2 v3 v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
                       (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                          (coe
                             MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                             (coe v0)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                          v3)
                       (coe
                          MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                          v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                                (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                   (coe v0))
                                v1 v3))
                          (coe
                             MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                             v4)
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                             (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                (coe
                                   MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                      (coe v0))))
                             v1 v2
                             (coe
                                MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                                v4)
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                         (coe v0))))
                                v1 v2 v5)
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                                   (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                      (coe v0))
                                   v2 v4)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                             (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                (coe
                                   MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                      (coe v0))))
                             v3 v4
                             (coe
                                MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                                v4)
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                         (coe v0))))
                                v3 v4 v6)
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                                      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                         (coe v0))
                                      v2 v4)))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                                (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                   (coe v0))
                                v2 v4))
                          (coe
                             MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                             v3)
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                             (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                (coe
                                   MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                      (coe v0))))
                             v2 v1
                             (coe
                                MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                                v3)
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                         (coe v0))))
                                v2 v1
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                               (coe v0)))))
                                   v1 v2 v5))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                                   (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                      (coe v0))
                                   v1 v3)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                             (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                (coe
                                   MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                      (coe v0))))
                             v4 v3
                             (coe
                                MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                                v3)
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                                (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                         (coe v0))))
                                v4 v3
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                   (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                               (coe v0)))))
                                   v3 v4 v6))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                                      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                         (coe v0))
                                      v1 v3))))))))
            (coe du_'8744''45'assoc_258 (coe v0)))
         (coe du_'8744''45'idempotent_286 (coe v0)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
              (MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                 (coe
                    MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                    (coe v0)))
              (coe
                 MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                 v2)
              (coe
                 MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                 v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                       (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                          (coe v0))
                       v1 v2))
                 (coe
                    MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                    v1)
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                          (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                             (coe v0))
                          v2 v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                       (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                          (coe v0))
                       v2 v1)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                       (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                          (coe v0))
                       v2 v1))
                 (coe
                    MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v1
                    v2)
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                          (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                             (coe v0))
                          v1 v2)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
                       (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                          (coe v0))
                       v1 v2)))))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.algSemilattice
d_algSemilattice_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_algSemilattice_402 ~v0 ~v1 ~v2 v3 = du_algSemilattice_402 v3
du_algSemilattice_402 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_algSemilattice_402 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_84
      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38
         (coe v0))
      (coe du_isAlgSemilattice_400 (coe v0))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.dualIsMeetSemilattice
d_dualIsMeetSemilattice_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
d_dualIsMeetSemilattice_404 ~v0 ~v1 ~v2 v3
  = du_dualIsMeetSemilattice_404 v3
du_dualIsMeetSemilattice_404 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
du_dualIsMeetSemilattice_404 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_constructor_274
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_150
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.du_poset_90 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Structures.d_supremum_32
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0)))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.dualMeetSemilattice
d_dualMeetSemilattice_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
d_dualMeetSemilattice_406 ~v0 ~v1 ~v2 v3
  = du_dualMeetSemilattice_406 v3
du_dualMeetSemilattice_406 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
du_dualMeetSemilattice_406 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Bundles.C_constructor_286
      (MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38
         (coe v0))
      (coe du_dualIsMeetSemilattice_404 (coe v0))
-- Relation.Binary.Lattice.Properties.JoinSemilattice.≈-dec⇒≤-dec
d_'8776''45'dec'8658''8804''45'dec_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8776''45'dec'8658''8804''45'dec_408 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8776''45'dec'8658''8804''45'dec_408 v3 v4 v5 v6
du_'8776''45'dec'8658''8804''45'dec_408 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8776''45'dec'8658''8804''45'dec_408 v0 v1 v2 v3
  = let v4
          = coe
              v1
              (coe
                 MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0 v2
                 v3)
              v3 in
    coe
      (case coe v4 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
           -> if coe v5
                then case coe v6 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                         -> coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                                    (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                             (coe v0))))
                                    v2
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38 v0
                                       v2 v3)
                                    v3
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Lattice.Structures.du_x'8804'x'8744'y_38
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                          (coe v0))
                                       (coe v2) (coe v3))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                                       (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Lattice.Bundles.d__'8744'__38
                                          v0 v2 v3)
                                       v3 v7)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                          (coe v5)
                          (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Relation.Binary.Lattice.Properties.JoinSemilattice.≈-dec⇒isDecPartialOrder
d_'8776''45'dec'8658'isDecPartialOrder_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_300
d_'8776''45'dec'8658'isDecPartialOrder_436 ~v0 ~v1 ~v2 v3 v4
  = du_'8776''45'dec'8658'isDecPartialOrder_436 v3 v4
du_'8776''45'dec'8658'isDecPartialOrder_436 ::
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_300
du_'8776''45'dec'8658'isDecPartialOrder_436 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_364
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Structures.d_isPartialOrder_30
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Bundles.d_isJoinSemilattice_40
            (coe v0)))
      (coe v1)
      (coe du_'8776''45'dec'8658''8804''45'dec_408 (coe v0) (coe v1))
