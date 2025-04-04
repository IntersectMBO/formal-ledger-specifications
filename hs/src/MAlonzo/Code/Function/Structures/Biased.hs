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

module MAlonzo.Code.Function.Structures.Biased where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Consequences.Setoid
import qualified MAlonzo.Code.Function.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles.Raw
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Structures.Biased._.IsBijection
d_IsBijection_28 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Function.Structures.Biased._.IsCongruent
d_IsCongruent_30 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Function.Structures.Biased._.IsInjection
d_IsInjection_32 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Function.Structures.Biased._.IsInverse
d_IsInverse_34 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Function.Structures.Biased._.IsLeftInverse
d_IsLeftInverse_36 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Function.Structures.Biased._.IsRightInverse
d_IsRightInverse_38 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Function.Structures.Biased._.IsSurjection
d_IsSurjection_42 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Function.Structures.Biased._.IsBijection.isInjection
d_isInjection_194 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
d_isInjection_194 v0
  = coe MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0)
-- Function.Structures.Biased._.IsBijection.surjective
d_surjective_200 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_200 v0
  = coe MAlonzo.Code.Function.Structures.d_surjective_260 (coe v0)
-- Function.Structures.Biased._.IsCongruent.cong
d_cong_256 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_256 v0
  = coe MAlonzo.Code.Function.Structures.d_cong_32 (coe v0)
-- Function.Structures.Biased._.IsCongruent.isEquivalence₁
d_isEquivalence'8321'_258 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_258 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0)
-- Function.Structures.Biased._.IsCongruent.isEquivalence₂
d_isEquivalence'8322'_260 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_260 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0)
-- Function.Structures.Biased._.IsCongruent.Eq₁._≈_
d__'8776'__264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__264 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₁._≉_
d__'8777'__266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__266 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₁.Carrier
d_Carrier_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 -> ()
d_Carrier_268 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₁.isEquivalence
d_isEquivalence_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_270 v9
du_isEquivalence_270 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_270 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0)
-- Function.Structures.Biased._.IsCongruent.Eq₁.isPartialEquivalence
d_isPartialEquivalence_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_272 v9
du_isPartialEquivalence_272 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_272 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.Biased._.IsCongruent.Eq₁.partialSetoid
d_partialSetoid_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_274 v9
du_partialSetoid_274 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_274 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
      (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0))
-- Function.Structures.Biased._.IsCongruent.Eq₁.rawSetoid
d_rawSetoid_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_276 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₁.refl
d_refl_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
d_refl_278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_278 v9
du_refl_278 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
du_refl_278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0))
-- Function.Structures.Biased._.IsCongruent.Eq₁.reflexive
d_reflexive_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_280 v9
du_reflexive_280 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_280 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Function.Structures.Biased._.IsCongruent.Eq₁.setoid
d_setoid_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du_setoid_282
du_setoid_282 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_282 v0 v1
  = coe MAlonzo.Code.Function.Structures.du_setoid_40 v1
-- Function.Structures.Biased._.IsCongruent.Eq₁.sym
d_sym_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_284 v9
du_sym_284 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_284 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.Biased._.IsCongruent.Eq₁.trans
d_trans_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_286 v9
du_trans_286 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_286 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.Biased._.IsCongruent.Eq₂._≈_
d__'8776'__290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__290 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₂._≉_
d__'8777'__292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__292 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₂.Carrier
d_Carrier_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 -> ()
d_Carrier_294 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₂.isEquivalence
d_isEquivalence_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_296 v9
du_isEquivalence_296 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_296 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0)
-- Function.Structures.Biased._.IsCongruent.Eq₂.isPartialEquivalence
d_isPartialEquivalence_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_298 v9
du_isPartialEquivalence_298 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_298 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.Biased._.IsCongruent.Eq₂.partialSetoid
d_partialSetoid_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_300 v9
du_partialSetoid_300 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
      (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0))
-- Function.Structures.Biased._.IsCongruent.Eq₂.rawSetoid
d_rawSetoid_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_302 = erased
-- Function.Structures.Biased._.IsCongruent.Eq₂.refl
d_refl_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
d_refl_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_304 v9
du_refl_304 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
du_refl_304 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0))
-- Function.Structures.Biased._.IsCongruent.Eq₂.reflexive
d_reflexive_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_306 v9
du_reflexive_306 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_306 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Function.Structures.Biased._.IsCongruent.Eq₂.setoid
d_setoid_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du_setoid_308
du_setoid_308 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_308 v0 v1
  = coe MAlonzo.Code.Function.Structures.du_setoid_68 v1
-- Function.Structures.Biased._.IsCongruent.Eq₂.sym
d_sym_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_310 v9
du_sym_310 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_310 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.Biased._.IsCongruent.Eq₂.trans
d_trans_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_312 v9
du_trans_312 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_312 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.Biased._.IsInjection.injective
d_injective_318 ::
  MAlonzo.Code.Function.Structures.T_IsInjection_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_318 v0
  = coe MAlonzo.Code.Function.Structures.d_injective_106 (coe v0)
-- Function.Structures.Biased._.IsInjection.isCongruent
d_isCongruent_320 ::
  MAlonzo.Code.Function.Structures.T_IsInjection_96 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_320 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v0)
-- Function.Structures.Biased._.IsInverse.inverseʳ
d_inverse'691'_384 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_384 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'691'_526 (coe v0)
-- Function.Structures.Biased._.IsInverse.isLeftInverse
d_isLeftInverse_394 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_394 v0
  = coe MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0)
-- Function.Structures.Biased._.IsLeftInverse.from-cong
d_from'45'cong_460 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_460 v0
  = coe MAlonzo.Code.Function.Structures.d_from'45'cong_352 (coe v0)
-- Function.Structures.Biased._.IsLeftInverse.inverseˡ
d_inverse'737'_462 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_462 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'737'_354 (coe v0)
-- Function.Structures.Biased._.IsLeftInverse.isCongruent
d_isCongruent_464 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_464 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0)
-- Function.Structures.Biased._.IsRightInverse.from-cong
d_from'45'cong_530 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_530 v0
  = coe MAlonzo.Code.Function.Structures.d_from'45'cong_442 (coe v0)
-- Function.Structures.Biased._.IsRightInverse.inverseʳ
d_inverse'691'_532 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_532 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'691'_444 (coe v0)
-- Function.Structures.Biased._.IsRightInverse.isCongruent
d_isCongruent_534 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_534 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0)
-- Function.Structures.Biased._.IsSurjection.isCongruent
d_isCongruent_674 ::
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_674 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_178 (coe v0)
-- Function.Structures.Biased._.IsSurjection.surjective
d_surjective_682 ::
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_682 v0
  = coe MAlonzo.Code.Function.Structures.d_surjective_180 (coe v0)
-- Function.Structures.Biased.IsStrictSurjection
d_IsStrictSurjection_738 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsStrictSurjection_738
  = C_IsStrictSurjection'46'constructor_14143 MAlonzo.Code.Function.Structures.T_IsCongruent_22
                                              (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Function.Structures.Biased.IsStrictSurjection.isCongruent
d_isCongruent_746 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_746 v0
  = case coe v0 of
      C_IsStrictSurjection'46'constructor_14143 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictSurjection.strictlySurjective
d_strictlySurjective_748 ::
  T_IsStrictSurjection_738 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictlySurjective_748 v0
  = case coe v0 of
      C_IsStrictSurjection'46'constructor_14143 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictSurjection._.cong
d_cong_752 ::
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_752 v0
  = coe
      MAlonzo.Code.Function.Structures.d_cong_32
      (coe d_isCongruent_746 (coe v0))
-- Function.Structures.Biased.IsStrictSurjection._.isEquivalence₁
d_isEquivalence'8321'_754 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_754 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
      (coe d_isCongruent_746 (coe v0))
-- Function.Structures.Biased.IsStrictSurjection._.isEquivalence₂
d_isEquivalence'8322'_756 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_756 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
      (coe d_isCongruent_746 (coe v0))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁._≈_
d__'8776'__760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny -> ()
d__'8776'__760 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁._≉_
d__'8777'__762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny -> ()
d__'8777'__762 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.Carrier
d_Carrier_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsStrictSurjection_738 -> ()
d_Carrier_764 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.isEquivalence
d_isEquivalence_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_766 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_766 v9
du_isEquivalence_766 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_766 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_768 v9
du_isPartialEquivalence_768 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_768 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.partialSetoid
d_partialSetoid_770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_770 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_770 v9
du_partialSetoid_770 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_770 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1)))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.rawSetoid
d_rawSetoid_772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_772 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.refl
d_refl_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny
d_refl_774 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_774 v9
du_refl_774 :: T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny
du_refl_774 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v1)))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.reflexive
d_reflexive_776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_776 v9
du_reflexive_776 ::
  T_IsStrictSurjection_738 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_776 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.setoid
d_setoid_778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_778 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_778 v9
du_setoid_778 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_778 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_40
      (coe d_isCongruent_746 (coe v0))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.sym
d_sym_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_780 v9
du_sym_780 ::
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_780 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₁.trans
d_trans_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_782 v9
du_trans_782 ::
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_782 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂._≈_
d__'8776'__786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny -> ()
d__'8776'__786 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂._≉_
d__'8777'__788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny -> ()
d__'8777'__788 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.Carrier
d_Carrier_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsStrictSurjection_738 -> ()
d_Carrier_790 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.isEquivalence
d_isEquivalence_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_792 v9
du_isEquivalence_792 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_792 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_794 v9
du_isPartialEquivalence_794 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_794 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.partialSetoid
d_partialSetoid_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_796 v9
du_partialSetoid_796 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_796 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1)))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.rawSetoid
d_rawSetoid_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_798 = erased
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.refl
d_refl_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny
d_refl_800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_800 v9
du_refl_800 :: T_IsStrictSurjection_738 -> AgdaAny -> AgdaAny
du_refl_800 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v1)))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.reflexive
d_reflexive_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_802 v9
du_reflexive_802 ::
  T_IsStrictSurjection_738 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_802 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.setoid
d_setoid_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_804 v9
du_setoid_804 ::
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_804 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_68
      (coe d_isCongruent_746 (coe v0))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.sym
d_sym_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_806 v9
du_sym_806 ::
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_806 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictSurjection._.Eq₂.trans
d_trans_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_808 v9
du_trans_808 ::
  T_IsStrictSurjection_738 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_808 v0
  = let v1 = d_isCongruent_746 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictSurjection.isSurjection
d_isSurjection_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
d_isSurjection_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_isSurjection_810 v8 v9
du_isSurjection_810 ::
  (AgdaAny -> AgdaAny) ->
  T_IsStrictSurjection_738 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
du_isSurjection_810 v0 v1
  = coe
      MAlonzo.Code.Function.Structures.C_IsSurjection'46'constructor_6703
      (coe d_isCongruent_746 (coe v1))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_strictlySurjective'8658'surjective_88
         (coe
            MAlonzo.Code.Function.Structures.du_setoid_68
            (coe d_isCongruent_746 (coe v1)))
         v0
         (MAlonzo.Code.Function.Structures.d_cong_32
            (coe d_isCongruent_746 (coe v1)))
         (d_strictlySurjective_748 (coe v1)))
-- Function.Structures.Biased.IsStrictBijection
d_IsStrictBijection_814 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsStrictBijection_814
  = C_IsStrictBijection'46'constructor_17351 MAlonzo.Code.Function.Structures.T_IsInjection_96
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Function.Structures.Biased.IsStrictBijection.isInjection
d_isInjection_822 ::
  T_IsStrictBijection_814 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
d_isInjection_822 v0
  = case coe v0 of
      C_IsStrictBijection'46'constructor_17351 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictBijection.strictlySurjective
d_strictlySurjective_824 ::
  T_IsStrictBijection_814 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictlySurjective_824 v0
  = case coe v0 of
      C_IsStrictBijection'46'constructor_17351 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictBijection.isBijection
d_isBijection_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictBijection_814 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
d_isBijection_826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_isBijection_826 v8 v9
du_isBijection_826 ::
  (AgdaAny -> AgdaAny) ->
  T_IsStrictBijection_814 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
du_isBijection_826 v0 v1
  = coe
      MAlonzo.Code.Function.Structures.C_IsBijection'46'constructor_10473
      (coe d_isInjection_822 (coe v1))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_strictlySurjective'8658'surjective_88
         (let v2 = d_isInjection_822 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Function.Structures.du_setoid_68
               (coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v2))))
         v0
         (MAlonzo.Code.Function.Structures.d_cong_32
            (coe
               MAlonzo.Code.Function.Structures.d_isCongruent_104
               (coe d_isInjection_822 (coe v1))))
         (d_strictlySurjective_824 (coe v1)))
-- Function.Structures.Biased.IsStrictLeftInverse
d_IsStrictLeftInverse_900 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_IsStrictLeftInverse_900
  = C_IsStrictLeftInverse'46'constructor_21263 MAlonzo.Code.Function.Structures.T_IsCongruent_22
                                               (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                               (AgdaAny -> AgdaAny)
-- Function.Structures.Biased.IsStrictLeftInverse.isCongruent
d_isCongruent_912 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_912 v0
  = case coe v0 of
      C_IsStrictLeftInverse'46'constructor_21263 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictLeftInverse.from-cong
d_from'45'cong_914 ::
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_914 v0
  = case coe v0 of
      C_IsStrictLeftInverse'46'constructor_21263 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictLeftInverse.strictlyInverseˡ
d_strictlyInverse'737'_916 ::
  T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny
d_strictlyInverse'737'_916 v0
  = case coe v0 of
      C_IsStrictLeftInverse'46'constructor_21263 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictLeftInverse.isLeftInverse
d_isLeftInverse_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_isLeftInverse_918 v8 v9 v10
du_isLeftInverse_918 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
du_isLeftInverse_918 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsLeftInverse'46'constructor_14843
      (coe d_isCongruent_912 (coe v2)) (coe d_from'45'cong_914 (coe v2))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_strictlyInverse'737''8658'inverse'737'_92
         (coe
            MAlonzo.Code.Function.Structures.du_setoid_68
            (coe d_isCongruent_912 (coe v2)))
         v0 v1
         (MAlonzo.Code.Function.Structures.d_cong_32
            (coe d_isCongruent_912 (coe v2)))
         (d_strictlyInverse'737'_916 (coe v2)))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁._≈_
d__'8776'__934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny -> ()
d__'8776'__934 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁._≉_
d__'8777'__936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny -> ()
d__'8777'__936 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.Carrier
d_Carrier_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsStrictLeftInverse_900 -> ()
d_Carrier_938 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.isEquivalence
d_isEquivalence_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_940 v10
du_isEquivalence_940 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_940 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_942 v10
du_isPartialEquivalence_942 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_942 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.partialSetoid
d_partialSetoid_944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_944 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_944 v10
du_partialSetoid_944 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_944 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1)))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.rawSetoid
d_rawSetoid_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_946 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.refl
d_refl_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny
d_refl_948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_948 v10
du_refl_948 :: T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny
du_refl_948 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v1)))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.reflexive
d_reflexive_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_950 v10
du_reflexive_950 ::
  T_IsStrictLeftInverse_900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_950 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.setoid
d_setoid_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_952 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_952 v10
du_setoid_952 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_952 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_40
      (coe d_isCongruent_912 (coe v0))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.sym
d_sym_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_954 v10
du_sym_954 ::
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_954 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₁.trans
d_trans_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_956 v10
du_trans_956 ::
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_956 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂._≈_
d__'8776'__960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny -> ()
d__'8776'__960 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂._≉_
d__'8777'__962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny -> ()
d__'8777'__962 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.Carrier
d_Carrier_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsStrictLeftInverse_900 -> ()
d_Carrier_964 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.isEquivalence
d_isEquivalence_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_966 v10
du_isEquivalence_966 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_966 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_968 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_968 v10
du_isPartialEquivalence_968 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_968 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.partialSetoid
d_partialSetoid_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_970 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_970 v10
du_partialSetoid_970 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_970 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1)))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.rawSetoid
d_rawSetoid_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_972 = erased
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.refl
d_refl_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny
d_refl_974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_974 v10
du_refl_974 :: T_IsStrictLeftInverse_900 -> AgdaAny -> AgdaAny
du_refl_974 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v1)))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.reflexive
d_reflexive_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_976 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_976 v10
du_reflexive_976 ::
  T_IsStrictLeftInverse_900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_976 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.setoid
d_setoid_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_978 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_978 v10
du_setoid_978 ::
  T_IsStrictLeftInverse_900 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_978 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_68
      (coe d_isCongruent_912 (coe v0))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.sym
d_sym_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_980 v10
du_sym_980 ::
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_980 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictLeftInverse._._.Eq₂.trans
d_trans_982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_982 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_982 v10
du_trans_982 ::
  T_IsStrictLeftInverse_900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_982 v0
  = let v1 = d_isCongruent_912 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictRightInverse
d_IsStrictRightInverse_988 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_IsStrictRightInverse_988
  = C_IsStrictRightInverse'46'constructor_25853 MAlonzo.Code.Function.Structures.T_IsCongruent_22
                                                (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                (AgdaAny -> AgdaAny)
-- Function.Structures.Biased.IsStrictRightInverse.isCongruent
d_isCongruent_1000 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_1000 v0
  = case coe v0 of
      C_IsStrictRightInverse'46'constructor_25853 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictRightInverse.from-cong
d_from'45'cong_1002 ::
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_1002 v0
  = case coe v0 of
      C_IsStrictRightInverse'46'constructor_25853 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictRightInverse.strictlyInverseʳ
d_strictlyInverse'691'_1004 ::
  T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny
d_strictlyInverse'691'_1004 v0
  = case coe v0 of
      C_IsStrictRightInverse'46'constructor_25853 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictRightInverse.isRightInverse
d_isRightInverse_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
d_isRightInverse_1006 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_isRightInverse_1006 v8 v9 v10
du_isRightInverse_1006 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
du_isRightInverse_1006 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsRightInverse'46'constructor_19449
      (coe d_isCongruent_1000 (coe v2))
      (coe d_from'45'cong_1002 (coe v2))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_strictlyInverse'691''8658'inverse'691'_96
         (coe
            MAlonzo.Code.Function.Structures.du_setoid_40
            (coe d_isCongruent_1000 (coe v2)))
         v1 v0 (d_from'45'cong_1002 (coe v2))
         (d_strictlyInverse'691'_1004 (coe v2)))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁._≈_
d__'8776'__1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1022 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁._≉_
d__'8777'__1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1024 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.Carrier
d_Carrier_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsStrictRightInverse_988 -> ()
d_Carrier_1026 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.isEquivalence
d_isEquivalence_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1028 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_1028 v10
du_isEquivalence_1028 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1028 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            v10
  = du_isPartialEquivalence_1030 v10
du_isPartialEquivalence_1030 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1030 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.partialSetoid
d_partialSetoid_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_1032 v10
du_partialSetoid_1032 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1032 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1)))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.rawSetoid
d_rawSetoid_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1034 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.refl
d_refl_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny
d_refl_1036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_1036 v10
du_refl_1036 :: T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny
du_refl_1036 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v1)))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.reflexive
d_reflexive_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1038 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_1038 v10
du_reflexive_1038 ::
  T_IsStrictRightInverse_988 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1038 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.setoid
d_setoid_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_1040 v10
du_setoid_1040 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1040 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_40
      (coe d_isCongruent_1000 (coe v0))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.sym
d_sym_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1042 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_1042 v10
du_sym_1042 ::
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1042 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₁.trans
d_trans_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1044 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_1044 v10
du_trans_1044 ::
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1044 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂._≈_
d__'8776'__1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1048 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂._≉_
d__'8777'__1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1050 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.Carrier
d_Carrier_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsStrictRightInverse_988 -> ()
d_Carrier_1052 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.isEquivalence
d_isEquivalence_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_1054 v10
du_isEquivalence_1054 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1054 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            v10
  = du_isPartialEquivalence_1056 v10
du_isPartialEquivalence_1056 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1056 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.partialSetoid
d_partialSetoid_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1058 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_1058 v10
du_partialSetoid_1058 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1058 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1)))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.rawSetoid
d_rawSetoid_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1060 = erased
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.refl
d_refl_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny
d_refl_1062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_1062 v10
du_refl_1062 :: T_IsStrictRightInverse_988 -> AgdaAny -> AgdaAny
du_refl_1062 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v1)))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.reflexive
d_reflexive_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_1064 v10
du_reflexive_1064 ::
  T_IsStrictRightInverse_988 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1064 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.setoid
d_setoid_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_1066 v10
du_setoid_1066 ::
  T_IsStrictRightInverse_988 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1066 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_68
      (coe d_isCongruent_1000 (coe v0))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.sym
d_sym_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1068 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_1068 v10
du_sym_1068 ::
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1068 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictRightInverse._._.Eq₂.trans
d_trans_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_1070 v10
du_trans_1070 ::
  T_IsStrictRightInverse_988 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1070 v0
  = let v1 = d_isCongruent_1000 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.Biased.IsStrictInverse
d_IsStrictInverse_1076 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_IsStrictInverse_1076
  = C_IsStrictInverse'46'constructor_29981 MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
                                           (AgdaAny -> AgdaAny)
-- Function.Structures.Biased.IsStrictInverse.isLeftInverse
d_isLeftInverse_1086 ::
  T_IsStrictInverse_1076 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_1086 v0
  = case coe v0 of
      C_IsStrictInverse'46'constructor_29981 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictInverse.strictlyInverseʳ
d_strictlyInverse'691'_1088 ::
  T_IsStrictInverse_1076 -> AgdaAny -> AgdaAny
d_strictlyInverse'691'_1088 v0
  = case coe v0 of
      C_IsStrictInverse'46'constructor_29981 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.Biased.IsStrictInverse.isInverse
d_isInverse_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictInverse_1076 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514
d_isInverse_1090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_isInverse_1090 v8 v9 v10
du_isInverse_1090 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T_IsStrictInverse_1076 ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514
du_isInverse_1090 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsInverse'46'constructor_23193
      (coe d_isLeftInverse_1086 (coe v2))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_strictlyInverse'691''8658'inverse'691'_96
         (let v3 = d_isLeftInverse_1086 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Function.Structures.du_setoid_40
               (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3))))
         v1 v0
         (MAlonzo.Code.Function.Structures.d_from'45'cong_352
            (coe d_isLeftInverse_1086 (coe v2)))
         (d_strictlyInverse'691'_1088 (coe v2)))
