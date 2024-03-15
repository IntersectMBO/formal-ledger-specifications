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

module MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Construct.NaturalOrder.Left._.Commutative
d_Commutative_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_48 = erased
-- Relation.Binary.Construct.NaturalOrder.Left._.Idempotent
d_Idempotent_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_58 = erased
-- Relation.Binary.Construct.NaturalOrder.Left._.Selective
d_Selective_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_130 = erased
-- Relation.Binary.Construct.NaturalOrder.Left._.IsBand
d_IsBand_156 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Construct.NaturalOrder.Left._.IsMagma
d_IsMagma_192 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Construct.NaturalOrder.Left._.IsSemigroup
d_IsSemigroup_220 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Construct.NaturalOrder.Left._.IsSemilattice
d_IsSemilattice_2548 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Construct.NaturalOrder.Left._≤_
d__'8804'__2952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d__'8804'__2952 = erased
-- Relation.Binary.Construct.NaturalOrder.Left.reflexive
d_reflexive_2958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_2958 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_reflexive_2958 v4 v5 v6 v7 v8 v9
du_reflexive_2958 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_2958 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      v3 (coe v0 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))))
         v3 (coe v0 v3 v3) (coe v0 v3 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))))
            (coe v0 v3 v3) (coe v0 v3 v4) (coe v0 v3 v4)
            (let v6
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v6))
                  (coe v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v1 v3 v3 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1)) v3)
               v5))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))
            (coe v0 v3 v3) v3 (coe v2 v3)))
-- Relation.Binary.Construct.NaturalOrder.Left.refl
d_refl_3036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_refl_3036 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_refl_3036 v4 v5 v6 v7
du_refl_3036 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_refl_3036 v0 v1 v2 v3 = coe v1 (coe v0 v3 v3) v3 (coe v2 v3)
-- Relation.Binary.Construct.NaturalOrder.Left.antisym
d_antisym_3044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_3044 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_antisym_3044 v4 v5 v6 v7 v8 v9 v10
du_antisym_3044 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_3044 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v3 v4
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
         v3 (coe v0 v3 v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
            (coe v0 v3 v4) (coe v0 v4 v3) v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
               (coe v0 v4 v3) v4 v4
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v1) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v7))
                     (coe v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36 v1 v4
                  (coe v0 v4 v3) v6))
            (coe v2 v3 v4))
         v5)
-- Relation.Binary.Construct.NaturalOrder.Left.total
d_total_3114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_3114 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_total_3114 v4 v5 v6 v7 v8 v9 v10
du_total_3114 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_3114 v0 v1 v2 v3 v4 v5 v6
  = let v7 = coe v3 v5 v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe v1 (coe v0 v5 v6) v5 v8)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                (coe
                   v1 (coe v0 v6 v5) v6
                   (coe v2 (coe v0 v6 v5) (coe v0 v5 v6) v6 (coe v4 v6 v5) v8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Relation.Binary.Construct.NaturalOrder.Left.trans
d_trans_3160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3160 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_trans_3160 v4 v5 v6 v7 v8 v9 v10
du_trans_3160 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_3160 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v2 (coe v0 v2 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1))))))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1))))))
            (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v4)) (coe v0 v2 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1))))))
               (coe v0 v2 (coe v0 v3 v4)) (coe v0 (coe v0 v2 v3) v4)
               (coe v0 v2 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1))))))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 v4) (coe v0 v2 v4)
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                   (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v7))
                        (coe v0 v2 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                     (MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1))
                     (coe v0 v2 v3) v2 v4 v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
                        v2 (coe v0 v2 v3) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
                        v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
                  (coe v0 (coe v0 v2 v3) v4) (coe v0 v2 (coe v0 v3 v4))
                  (coe MAlonzo.Code.Algebra.Structures.d_assoc_450 v1 v2 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
               (MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)) v2 v2 v3
               (coe v0 v3 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
                  v2)
               v6))
         v5)
-- Relation.Binary.Construct.NaturalOrder.Left.respʳ
d_resp'691'_3244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'691'_3244 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_resp'691'_3244 v4 v5 v6 v7 v8 v9 v10
du_resp'691'_3244 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'691'_3244 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v2 (coe v0 v2 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))))
         v2 (coe v0 v2 v3) (coe v0 v2 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))))
            (coe v0 v2 v3) (coe v0 v2 v4) (coe v0 v2 v4)
            (let v7
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v7))
                  (coe v0 v2 v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v1 v2 v2 v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1)) v2)
               v5))
         v6)
-- Relation.Binary.Construct.NaturalOrder.Left.respˡ
d_resp'737'_3324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp'737'_3324 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10
  = du_resp'737'_3324 v4 v5 v6 v7 v8 v9 v10
du_resp'737'_3324 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp'737'_3324 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v4 (coe v0 v4 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))))
         v4 v3 (coe v0 v4 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))))
            v3 (coe v0 v3 v2) (coe v0 v4 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))))
               (coe v0 v3 v2) (coe v0 v4 v2) (coe v0 v4 v2)
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v7))
                     (coe v0 v4 v2)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154 v1 v3 v4 v2 v2
                  v5
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1))
                     v2)))
            v6)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v1)) v3
            v4 v5))
-- Relation.Binary.Construct.NaturalOrder.Left.resp₂
d_resp'8322'_3404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_resp'8322'_3404 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_resp'8322'_3404 v4 v5
du_resp'8322'_3404 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_resp'8322'_3404 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_resp'691'_3244 (coe v0) (coe v1))
      (coe du_resp'737'_3324 (coe v0) (coe v1))
-- Relation.Binary.Construct.NaturalOrder.Left.dec
d_dec_3408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec_3408 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_dec_3408 v4 v5 v6 v7
du_dec_3408 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_dec_3408 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤x
d_x'8729'y'8804'x_3500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8804'x_3500 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_x'8729'y'8804'x_3500 v4 v5 v6 v7
du_x'8729'y'8804'x_3500 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8804'x_3500 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe v0 v2 v3) (coe v0 (coe v0 v2 v3) v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
         (coe v0 v2 v3) (coe v0 (coe v0 v2 v2) v3)
         (coe v0 (coe v0 v2 v3) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
            (coe v0 (coe v0 v2 v2) v3) (coe v0 v2 (coe v0 v2 v3))
            (coe v0 (coe v0 v2 v3) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v4) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
               (coe v0 v2 (coe v0 v2 v3)) (coe v0 (coe v0 v2 v3) v2)
               (coe v0 (coe v0 v2 v3) v2)
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                                        (coe v1) in
                              coe
                                (let v5
                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                                           (coe v4) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_168
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe v5)))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe v0 (coe v0 v2 v3) v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_comm_2536 v1 v2
                  (coe v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_450
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))
               v2 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
            (MAlonzo.Code.Algebra.Structures.d_isMagma_448
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1))))
            v2 (coe v0 v2 v2) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))))
               (coe v0 v2 v2) v2
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_486
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1))
                  v2))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))))
               v3)))
-- Relation.Binary.Construct.NaturalOrder.Left._.x∙y≤y
d_x'8729'y'8804'y_3510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8804'y_3510 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_x'8729'y'8804'y_3510 v4 v5 v6 v7
du_x'8729'y'8804'y_3510 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8804'y_3510 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe v0 v2 v3) (coe v0 (coe v0 v2 v3) v3)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
         (coe v0 v2 v3) (coe v0 v2 (coe v0 v3 v3))
         (coe v0 (coe v0 v2 v3) v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
            (coe v0 v2 (coe v0 v3 v3)) (coe v0 (coe v0 v2 v3) v3)
            (coe v0 (coe v0 v2 v3) v3)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4
                                 = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                           coe
                             (let v5
                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v4) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Structures.du_setoid_168
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe v0 (coe v0 v2 v3) v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))))
               (coe v0 (coe v0 v2 v3) v3) (coe v0 v2 (coe v0 v3 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_450
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))
                  v2 v3 v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
            (MAlonzo.Code.Algebra.Structures.d_isMagma_448
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1))))
            v2 v2 v3 (coe v0 v3 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))))
               v2)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))))
               (coe v0 v3 v3) v3
               (coe
                  MAlonzo.Code.Algebra.Structures.d_idem_486
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1))
                  v3))))
-- Relation.Binary.Construct.NaturalOrder.Left._.∙-presʳ-≤
d_'8729''45'pres'691''45''8804'_3522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'pres'691''45''8804'_3522 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                     v9 v10
  = du_'8729''45'pres'691''45''8804'_3522 v4 v5 v6 v7 v8 v9 v10
du_'8729''45'pres'691''45''8804'_3522 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'pres'691''45''8804'_3522 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      v4 (coe v0 v4 (coe v0 v2 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v7
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                   coe
                     (let v8
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v7) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8))))))))
         v4 (coe v0 v4 v3) (coe v0 v4 (coe v0 v2 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v7
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8))))))))
            (coe v0 v4 v3) (coe v0 (coe v0 v4 v2) v3)
            (coe v0 v4 (coe v0 v2 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v7
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1) in
                         coe
                           (let v8
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8))))))))
               (coe v0 (coe v0 v4 v2) v3) (coe v0 v4 (coe v0 v2 v3))
               (coe v0 v4 (coe v0 v2 v3))
               (let v7
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v7
                                    = MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534
                                        (coe v1) in
                              coe
                                (let v8
                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                                           (coe v7) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_168
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe v8)))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v7))
                     (coe v0 v4 (coe v0 v2 v3))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_450
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))
                  v4 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
               (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1))))
               v4 (coe v0 v4 v2) v3 v3 v5
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))))
                  v3)))
         v6)
-- Relation.Binary.Construct.NaturalOrder.Left._.infimum
d_infimum_3534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_3534 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_infimum_3534 v4 v5 v6 v7
du_infimum_3534 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_infimum_3534 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_x'8729'y'8804'x_3500 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_x'8729'y'8804'y_3510 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            du_'8729''45'pres'691''45''8804'_3522 (coe v0) (coe v1) (coe v2)
            (coe v3)))
-- Relation.Binary.Construct.NaturalOrder.Left.isPreorder
d_isPreorder_3540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_3540 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_isPreorder_3540 v4 v5
du_isPreorder_3540 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_3540 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1))))
      (coe
         du_reflexive_2958 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1)))
         (coe MAlonzo.Code.Algebra.Structures.d_idem_486 (coe v1)))
      (coe
         du_trans_3160 (coe v0)
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1)))
-- Relation.Binary.Construct.NaturalOrder.Left.isPartialOrder
d_isPartialOrder_3574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_isPartialOrder_3574 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_isPartialOrder_3574 v4 v5
du_isPartialOrder_3574 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_isPartialOrder_3574 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe
         du_isPreorder_3540 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))
      (coe
         du_antisym_3044 (coe v0)
         (coe
            MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_448
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1)))))
         (coe MAlonzo.Code.Algebra.Lattice.Structures.d_comm_2536 (coe v1)))
-- Relation.Binary.Construct.NaturalOrder.Left.isDecPartialOrder
d_isDecPartialOrder_3616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_224
d_isDecPartialOrder_3616 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isDecPartialOrder_3616 v4 v5 v6
du_isDecPartialOrder_3616 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_224
du_isDecPartialOrder_3616 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecPartialOrder'46'constructor_11657
      (coe du_isPartialOrder_3574 (coe v0) (coe v1)) (coe v2)
      (coe du_dec_3408 (coe v0) (coe v2))
-- Relation.Binary.Construct.NaturalOrder.Left.isTotalOrder
d_isTotalOrder_3622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_isTotalOrder_3622 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isTotalOrder_3622 v4 v5 v6
du_isTotalOrder_3622 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
du_isTotalOrder_3622 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20499
      (coe du_isPartialOrder_3574 (coe v0) (coe v1))
      (coe
         du_total_3114 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1))))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v1))))))
         (coe v2)
         (coe MAlonzo.Code.Algebra.Lattice.Structures.d_comm_2536 (coe v1)))
-- Relation.Binary.Construct.NaturalOrder.Left.isDecTotalOrder
d_isDecTotalOrder_3666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_isDecTotalOrder_3666 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_isDecTotalOrder_3666 v4 v5 v6 v7
du_isDecTotalOrder_3666 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
du_isDecTotalOrder_3666 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22635
      (coe du_isTotalOrder_3622 (coe v0) (coe v1) (coe v2)) (coe v3)
      (coe du_dec_3408 (coe v0) (coe v3))
-- Relation.Binary.Construct.NaturalOrder.Left.preorder
d_preorder_3674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_3674 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_preorder_3674 v4 v5
du_preorder_3674 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_3674 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      (coe du_isPreorder_3540 (coe v0) (coe v1))
-- Relation.Binary.Construct.NaturalOrder.Left.poset
d_poset_3678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_poset_3678 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_poset_3678 v4 v5
du_poset_3678 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
du_poset_3678 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6347
      (coe du_isPartialOrder_3574 (coe v0) (coe v1))
-- Relation.Binary.Construct.NaturalOrder.Left.decPoset
d_decPoset_3682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_406
d_decPoset_3682 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_decPoset_3682 v4 v5 v6
du_decPoset_3682 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_406
du_decPoset_3682 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecPoset'46'constructor_8159
      (coe du_isDecPartialOrder_3616 (coe v0) (coe v1) (coe v2))
-- Relation.Binary.Construct.NaturalOrder.Left.totalOrder
d_totalOrder_3688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
d_totalOrder_3688 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_totalOrder_3688 v4 v5 v6
du_totalOrder_3688 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
du_totalOrder_3688 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_15657
      (coe du_isTotalOrder_3622 (coe v0) (coe v1) (coe v2))
-- Relation.Binary.Construct.NaturalOrder.Left.decTotalOrder
d_decTotalOrder_3694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_decTotalOrder_3694 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_decTotalOrder_3694 v4 v5 v6 v7
du_decTotalOrder_3694 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
du_decTotalOrder_3694 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17747
      (coe du_isDecTotalOrder_3666 (coe v0) (coe v1) (coe v2) (coe v3))
