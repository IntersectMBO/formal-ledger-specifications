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

module MAlonzo.Code.Algebra.Lattice.Properties.Lattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Lattice.Properties.Lattice._.Idempotent
d_Idempotent_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_112 = erased
-- Algebra.Lattice.Properties.Lattice._.IsBand
d_IsBand_210 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.Lattice._.IsMagma
d_IsMagma_246 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.Lattice._.IsSemigroup
d_IsSemigroup_274 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.Lattice._.IsLattice
d_IsLattice_2598 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.Lattice._.IsSemilattice
d_IsSemilattice_2602 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.Lattice.∧-idem
d_'8743''45'idem_3046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_3046 ~v0 ~v1 v2 v3 = du_'8743''45'idem_3046 v2 v3
du_'8743''45'idem_3046 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_3046 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1)
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)) v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)) v1
               v1)))
-- Algebra.Lattice.Properties.Lattice.∧-isMagma
d_'8743''45'isMagma_3050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8743''45'isMagma_3050 ~v0 ~v1 v2 = du_'8743''45'isMagma_3050 v2
du_'8743''45'isMagma_3050 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8743''45'isMagma_3050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
-- Algebra.Lattice.Properties.Lattice.∧-isSemigroup
d_'8743''45'isSemigroup_3052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8743''45'isSemigroup_3052 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_3052 v2
du_'8743''45'isSemigroup_3052 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8743''45'isSemigroup_3052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe du_'8743''45'isMagma_3050 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
-- Algebra.Lattice.Properties.Lattice.∧-isBand
d_'8743''45'isBand_3054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8743''45'isBand_3054 ~v0 ~v1 v2 = du_'8743''45'isBand_3054 v2
du_'8743''45'isBand_3054 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8743''45'isBand_3054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_10105
      (coe du_'8743''45'isSemigroup_3052 (coe v0))
      (coe du_'8743''45'idem_3046 (coe v0))
-- Algebra.Lattice.Properties.Lattice.∧-isSemilattice
d_'8743''45'isSemilattice_3056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8743''45'isSemilattice_3056 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_3056 v2
du_'8743''45'isSemilattice_3056 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_'8743''45'isSemilattice_3056 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsSemilattice'46'constructor_32583
      (coe du_'8743''45'isBand_3054 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
-- Algebra.Lattice.Properties.Lattice.∧-semilattice
d_'8743''45'semilattice_3058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_3058 ~v0 ~v1 v2
  = du_'8743''45'semilattice_3058 v2
du_'8743''45'semilattice_3058 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8743''45'semilattice_3058 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Semilattice'46'constructor_193
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 (coe v0))
      (coe du_'8743''45'isSemilattice_3056 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3062 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3062 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3062 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3062 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe du_'8743''45'semilattice_3058 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_3064 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3064 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3064 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_3064 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe du_'8743''45'semilattice_3058 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3066 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3066 v2
du_'8743''45'orderTheoreticJoinSemilattice_3066 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3066 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe du_'8743''45'semilattice_3058 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_3068 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3068 v2
du_'8743''45'orderTheoreticMeetSemilattice_3068 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_3068 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe du_'8743''45'semilattice_3058 (coe v0))
-- Algebra.Lattice.Properties.Lattice.∨-idem
d_'8744''45'idem_3070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_3070 ~v0 ~v1 v2 v3 = du_'8744''45'idem_3070 v2 v3
du_'8744''45'idem_3070 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_3070 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v1)
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)) v1
               v1))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))
            (coe v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v1)
            (coe v1) (coe du_'8743''45'idem_3046 (coe v0) (coe v1))))
-- Algebra.Lattice.Properties.Lattice.∨-isMagma
d_'8744''45'isMagma_3074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8744''45'isMagma_3074 ~v0 ~v1 v2 = du_'8744''45'isMagma_3074 v2
du_'8744''45'isMagma_3074 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8744''45'isMagma_3074 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
-- Algebra.Lattice.Properties.Lattice.∨-isSemigroup
d_'8744''45'isSemigroup_3076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8744''45'isSemigroup_3076 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_3076 v2
du_'8744''45'isSemigroup_3076 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8744''45'isSemigroup_3076 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe du_'8744''45'isMagma_3074 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
-- Algebra.Lattice.Properties.Lattice.∨-isBand
d_'8744''45'isBand_3078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8744''45'isBand_3078 ~v0 ~v1 v2 = du_'8744''45'isBand_3078 v2
du_'8744''45'isBand_3078 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8744''45'isBand_3078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_10105
      (coe du_'8744''45'isSemigroup_3076 (coe v0))
      (coe du_'8744''45'idem_3070 (coe v0))
-- Algebra.Lattice.Properties.Lattice.∨-isSemilattice
d_'8744''45'isSemilattice_3080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8744''45'isSemilattice_3080 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_3080 v2
du_'8744''45'isSemilattice_3080 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_'8744''45'isSemilattice_3080 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsSemilattice'46'constructor_32583
      (coe du_'8744''45'isBand_3078 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
-- Algebra.Lattice.Properties.Lattice.∨-semilattice
d_'8744''45'semilattice_3082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_3082 ~v0 ~v1 v2
  = du_'8744''45'semilattice_3082 v2
du_'8744''45'semilattice_3082 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8744''45'semilattice_3082 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Semilattice'46'constructor_193
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 (coe v0))
      (coe du_'8744''45'isSemilattice_3080 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3086 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3086 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3086 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3086 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe du_'8744''45'semilattice_3082 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_3088 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3088 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3088 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_3088 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe du_'8744''45'semilattice_3082 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3090 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3090 v2
du_'8743''45'orderTheoreticJoinSemilattice_3090 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3090 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe du_'8744''45'semilattice_3082 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_3092 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3092 v2
du_'8743''45'orderTheoreticMeetSemilattice_3092 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_3092 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe du_'8744''45'semilattice_3082 (coe v0))
-- Algebra.Lattice.Properties.Lattice.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_3094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8743''45''8744''45'isLattice_3094 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_3094 v2
du_'8743''45''8744''45'isLattice_3094 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
du_'8743''45''8744''45'isLattice_3094 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsLattice'46'constructor_35597
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe
         MAlonzo.Code.Data.Product.Base.du_swap_370
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2862
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))))
-- Algebra.Lattice.Properties.Lattice.∧-∨-lattice
d_'8743''45''8744''45'lattice_3096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8743''45''8744''45'lattice_3096 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_3096 v2
du_'8743''45''8744''45'lattice_3096 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
du_'8743''45''8744''45'lattice_3096 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Lattice'46'constructor_7961
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 (coe v0))
      (coe du_'8743''45''8744''45'isLattice_3094 (coe v0))
-- Algebra.Lattice.Properties.Lattice._.poset
d_poset_3100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_poset_3100 ~v0 ~v1 v2 = du_poset_3100 v2
du_poset_3100 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
du_poset_3100 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_poset_162
      (coe du_'8743''45'semilattice_3058 (coe v0))
-- Algebra.Lattice.Properties.Lattice._._≤_
d__'8804'__3104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__3104 = erased
-- Algebra.Lattice.Properties.Lattice.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_3108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_'8744''45''8743''45'isOrderTheoreticLattice_3108 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_3108 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_3108 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_'8744''45''8743''45'isOrderTheoreticLattice_3108 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsLattice'46'constructor_15241
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_poset_162
            (coe du_'8743''45'semilattice_3058 (coe v0))))
      (coe du_supremum_3152 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du_infimum_3534
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 (coe v0))
         (coe du_'8743''45'isSemilattice_3056 (coe v0)))
-- Algebra.Lattice.Properties.Lattice._._._≤_
d__'8804'__3120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__3120 = erased
-- Algebra.Lattice.Properties.Lattice._.sound
d_sound_3132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sound_3132 ~v0 ~v1 v2 v3 v4 v5 = du_sound_3132 v2 v3 v4 v5
du_sound_3132 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sound_3132 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v2)
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v2)
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2 v1))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v2))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v2))
                  v1 v1
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522
                                   (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)) v1
                     v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))
                  (coe v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)) v2
                     v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))
               (coe v1) (coe v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2 v1)
               (coe v3))))
-- Algebra.Lattice.Properties.Lattice._.complete
d_complete_3144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_complete_3144 ~v0 ~v1 v2 v3 v4 v5 = du_complete_3144 v2 v3 v4 v5
du_complete_3144 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_complete_3144 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2 v1)
      v2
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2 v1)
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2 v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v2))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v2 v1))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v2 v1))
                  v2 v2
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522
                                   (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)) v2
                     v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))
                  (coe v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0)) v1
                     v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_isLattice_522 (coe v0))
               (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 v0 v1 v2)
               (coe v3))))
-- Algebra.Lattice.Properties.Lattice._.supremum
d_supremum_3152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_3152 ~v0 ~v1 v2 v3 v4 = du_supremum_3152 v2 v3 v4
du_supremum_3152 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_supremum_3152 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_sound_3132 (coe v0) (coe v1)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.Structures.du_x'8804'x'8744'y_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
               (coe du_'8744''45'semilattice_3082 (coe v0)))
            (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_sound_3132 (coe v0) (coe v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.Structures.du_y'8804'x'8744'y_50
               (coe
                  MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
                  (coe du_'8744''45'semilattice_3082 (coe v0)))
               (coe v1) (coe v2)))
         (coe
            (\ v3 v4 v5 ->
               coe
                 du_sound_3132 (coe v0)
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 v0 v1 v2)
                 (coe v3)
                 (coe
                    MAlonzo.Code.Relation.Binary.Lattice.Structures.du_'8744''45'least_64
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
                       (coe du_'8744''45'semilattice_3082 (coe v0)))
                    v1 v2 v3 (coe du_complete_3144 (coe v0) (coe v1) (coe v3) (coe v4))
                    (coe du_complete_3144 (coe v0) (coe v2) (coe v3) (coe v5))))))
-- Algebra.Lattice.Properties.Lattice.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_3164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
d_'8744''45''8743''45'orderTheoreticLattice_3164 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_3164 v2
du_'8744''45''8743''45'orderTheoreticLattice_3164 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
du_'8744''45''8743''45'orderTheoreticLattice_3164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Bundles.C_Lattice'46'constructor_8877
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__518 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__520 (coe v0))
      (coe du_'8744''45''8743''45'isOrderTheoreticLattice_3108 (coe v0))
