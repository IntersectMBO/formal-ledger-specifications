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

module MAlonzo.Code.Function.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Consequences.Propositional
import qualified MAlonzo.Code.Function.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles.Raw
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Bundles._._._≈_
d__'8776'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__30 = erased
-- Function.Bundles._._.Carrier
d_Carrier_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 -> ()
d_Carrier_32 = erased
-- Function.Bundles._._.IsBijection
d_IsBijection_46 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Bundles._._.IsCongruent
d_IsCongruent_48 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Bundles._._.IsInjection
d_IsInjection_50 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Bundles._._.IsSurjection
d_IsSurjection_60 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Bundles._._.IsBijection.isInjection
d_isInjection_212 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
d_isInjection_212 v0
  = coe MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0)
-- Function.Bundles._._.IsBijection.surjective
d_surjective_218 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_218 v0
  = coe MAlonzo.Code.Function.Structures.d_surjective_260 (coe v0)
-- Function.Bundles._._.IsBijection.Eq₁._≈_
d__'8776'__222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__222 = erased
-- Function.Bundles._._.IsBijection.Eq₁._≉_
d__'8777'__224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__224 = erased
-- Function.Bundles._._.IsBijection.Eq₁.Carrier
d_Carrier_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 -> ()
d_Carrier_226 = erased
-- Function.Bundles._._.IsBijection.Eq₁.isEquivalence
d_isEquivalence_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_228 v7
du_isEquivalence_228 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_228 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v2)))
-- Function.Bundles._._.IsBijection.Eq₁.isPartialEquivalence
d_isPartialEquivalence_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_230 v7
du_isPartialEquivalence_230 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_230 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsBijection.Eq₁.partialSetoid
d_partialSetoid_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_partialSetoid_232 v7
du_partialSetoid_232 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_232 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2))))
-- Function.Bundles._._.IsBijection.Eq₁.rawSetoid
d_rawSetoid_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_234 = erased
-- Function.Bundles._._.IsBijection.Eq₁.refl
d_refl_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny
d_refl_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_236 v7
du_refl_236 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny
du_refl_236 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v2))))
-- Function.Bundles._._.IsBijection.Eq₁.reflexive
d_reflexive_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_238 v7
du_reflexive_238 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_238 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Bundles._._.IsBijection.Eq₁.setoid
d_setoid_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_240 v7
du_setoid_240 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_240 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1)))
-- Function.Bundles._._.IsBijection.Eq₁.sym
d_sym_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_242 v7
du_sym_242 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_242 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsBijection.Eq₁.trans
d_trans_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_244 v7
du_trans_244 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_244 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsBijection.Eq₂._≈_
d__'8776'__248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__248 = erased
-- Function.Bundles._._.IsBijection.Eq₂._≉_
d__'8777'__250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__250 = erased
-- Function.Bundles._._.IsBijection.Eq₂.Carrier
d_Carrier_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 -> ()
d_Carrier_252 = erased
-- Function.Bundles._._.IsBijection.Eq₂.isEquivalence
d_isEquivalence_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_254 v7
du_isEquivalence_254 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_254 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v2)))
-- Function.Bundles._._.IsBijection.Eq₂.isPartialEquivalence
d_isPartialEquivalence_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_256 v7
du_isPartialEquivalence_256 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_256 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsBijection.Eq₂.partialSetoid
d_partialSetoid_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_partialSetoid_258 v7
du_partialSetoid_258 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_258 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2))))
-- Function.Bundles._._.IsBijection.Eq₂.rawSetoid
d_rawSetoid_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_260 = erased
-- Function.Bundles._._.IsBijection.Eq₂.refl
d_refl_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny
d_refl_262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_262 v7
du_refl_262 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny
du_refl_262 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v2))))
-- Function.Bundles._._.IsBijection.Eq₂.reflexive
d_reflexive_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_264 v7
du_reflexive_264 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_264 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Bundles._._.IsBijection.Eq₂.setoid
d_setoid_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_266 v7
du_setoid_266 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_266 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1)))
-- Function.Bundles._._.IsBijection.Eq₂.sym
d_sym_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_268 v7
du_sym_268 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_268 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsBijection.Eq₂.trans
d_trans_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_270 v7
du_trans_270 ::
  MAlonzo.Code.Function.Structures.T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_270 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsCongruent.cong
d_cong_274 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_274 v0
  = coe MAlonzo.Code.Function.Structures.d_cong_32 (coe v0)
-- Function.Bundles._._.IsCongruent.isEquivalence₁
d_isEquivalence'8321'_276 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_276 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0)
-- Function.Bundles._._.IsCongruent.isEquivalence₂
d_isEquivalence'8322'_278 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_278 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0)
-- Function.Bundles._._.IsCongruent.Eq₁._≈_
d__'8776'__282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__282 = erased
-- Function.Bundles._._.IsCongruent.Eq₁._≉_
d__'8777'__284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__284 = erased
-- Function.Bundles._._.IsCongruent.Eq₁.Carrier
d_Carrier_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 -> ()
d_Carrier_286 = erased
-- Function.Bundles._._.IsCongruent.Eq₁.isEquivalence
d_isEquivalence_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_288 v7
du_isEquivalence_288 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_288 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0)
-- Function.Bundles._._.IsCongruent.Eq₁.isPartialEquivalence
d_isPartialEquivalence_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_290 v7
du_isPartialEquivalence_290 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_290 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Bundles._._.IsCongruent.Eq₁.partialSetoid
d_partialSetoid_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_partialSetoid_292 v7
du_partialSetoid_292 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
      (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0))
-- Function.Bundles._._.IsCongruent.Eq₁.rawSetoid
d_rawSetoid_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_294 = erased
-- Function.Bundles._._.IsCongruent.Eq₁.refl
d_refl_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
d_refl_296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_296 v7
du_refl_296 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
du_refl_296 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0))
-- Function.Bundles._._.IsCongruent.Eq₁.reflexive
d_reflexive_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_298 v7
du_reflexive_298 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_298 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Function.Bundles._._.IsCongruent.Eq₁.setoid
d_setoid_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_setoid_300
du_setoid_300 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_300 v0 v1
  = coe MAlonzo.Code.Function.Structures.du_setoid_40 v1
-- Function.Bundles._._.IsCongruent.Eq₁.sym
d_sym_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_302 v7
du_sym_302 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_302 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Bundles._._.IsCongruent.Eq₁.trans
d_trans_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_304 v7
du_trans_304 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_304 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Bundles._._.IsCongruent.Eq₂._≈_
d__'8776'__308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__308 = erased
-- Function.Bundles._._.IsCongruent.Eq₂._≉_
d__'8777'__310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__310 = erased
-- Function.Bundles._._.IsCongruent.Eq₂.Carrier
d_Carrier_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 -> ()
d_Carrier_312 = erased
-- Function.Bundles._._.IsCongruent.Eq₂.isEquivalence
d_isEquivalence_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_314 v7
du_isEquivalence_314 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_314 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0)
-- Function.Bundles._._.IsCongruent.Eq₂.isPartialEquivalence
d_isPartialEquivalence_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_316 v7
du_isPartialEquivalence_316 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_316 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Bundles._._.IsCongruent.Eq₂.partialSetoid
d_partialSetoid_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_partialSetoid_318 v7
du_partialSetoid_318 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
      (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0))
-- Function.Bundles._._.IsCongruent.Eq₂.rawSetoid
d_rawSetoid_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_320 = erased
-- Function.Bundles._._.IsCongruent.Eq₂.refl
d_refl_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
d_refl_322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_322 v7
du_refl_322 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny
du_refl_322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0))
-- Function.Bundles._._.IsCongruent.Eq₂.reflexive
d_reflexive_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_324 v7
du_reflexive_324 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_324 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Function.Bundles._._.IsCongruent.Eq₂.setoid
d_setoid_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_setoid_326
du_setoid_326 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_326 v0 v1
  = coe MAlonzo.Code.Function.Structures.du_setoid_68 v1
-- Function.Bundles._._.IsCongruent.Eq₂.sym
d_sym_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_328 v7
du_sym_328 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_328 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Bundles._._.IsCongruent.Eq₂.trans
d_trans_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_330 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_330 v7
du_trans_330 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_330 v0
  = let v1
          = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Bundles._._.IsInjection.injective
d_injective_336 ::
  MAlonzo.Code.Function.Structures.T_IsInjection_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_336 v0
  = coe MAlonzo.Code.Function.Structures.d_injective_106 (coe v0)
-- Function.Bundles._._.IsInjection.isCongruent
d_isCongruent_338 ::
  MAlonzo.Code.Function.Structures.T_IsInjection_96 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_338 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v0)
-- Function.Bundles._._.IsSurjection.isCongruent
d_isCongruent_692 ::
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_692 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_178 (coe v0)
-- Function.Bundles._._.IsSurjection.strictlySurjective
d_strictlySurjective_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictlySurjective_698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_strictlySurjective_698
du_strictlySurjective_698 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictlySurjective_698 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_strictlySurjective_242 v1 v2
-- Function.Bundles._._.IsSurjection.surjective
d_surjective_700 ::
  MAlonzo.Code.Function.Structures.T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_700 v0
  = coe MAlonzo.Code.Function.Structures.d_surjective_180 (coe v0)
-- Function.Bundles._.Func
d_Func_754 a0 a1 a2 a3 a4 a5 = ()
data T_Func_754
  = C_Func'46'constructor_6655 (AgdaAny -> AgdaAny)
                               (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Bundles._.Func.to
d_to_760 :: T_Func_754 -> AgdaAny -> AgdaAny
d_to_760 v0
  = case coe v0 of
      C_Func'46'constructor_6655 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Func.cong
d_cong_762 ::
  T_Func_754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_762 v0
  = case coe v0 of
      C_Func'46'constructor_6655 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Func.isCongruent
d_isCongruent_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_764 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_764 v4 v5 v6
du_isCongruent_764 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_764 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
      (coe d_cong_762 (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
-- Function.Bundles._.Func._.Eq₁._≈_
d__'8776'__770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> ()
d__'8776'__770 = erased
-- Function.Bundles._.Func._.Eq₁._≉_
d__'8777'__772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> ()
d__'8777'__772 = erased
-- Function.Bundles._.Func._.Eq₁.Carrier
d_Carrier_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> ()
d_Carrier_774 = erased
-- Function.Bundles._.Func._.Eq₁.isEquivalence
d_isEquivalence_776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_776 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_776 v4 v5 v6
du_isEquivalence_776 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_776 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v3))
-- Function.Bundles._.Func._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_778 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_778 v4 v5 v6
du_isPartialEquivalence_778 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_778 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
-- Function.Bundles._.Func._.Eq₁.partialSetoid
d_partialSetoid_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_780 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_780 v4 v5 v6
du_partialSetoid_780 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_780 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v3)))
-- Function.Bundles._.Func._.Eq₁.rawSetoid
d_rawSetoid_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_782 = erased
-- Function.Bundles._.Func._.Eq₁.refl
d_refl_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny
d_refl_784 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_784 v4 v5 v6
du_refl_784 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny
du_refl_784 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v3)))
-- Function.Bundles._.Func._.Eq₁.reflexive
d_reflexive_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_786 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_786 v4 v5 v6
du_reflexive_786 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_786 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v3) in
       coe
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))
              v5))
-- Function.Bundles._.Func._.Eq₁.setoid
d_setoid_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_788 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_788 v4 v5 v6
du_setoid_788 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_788 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_40
      (coe du_isCongruent_764 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.Func._.Eq₁.sym
d_sym_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_790 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_790 v4 v5 v6
du_sym_790 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_790 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
-- Function.Bundles._.Func._.Eq₁.trans
d_trans_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_792 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_792 v4 v5 v6
du_trans_792 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_792 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
-- Function.Bundles._.Func._.Eq₂._≈_
d__'8776'__796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> ()
d__'8776'__796 = erased
-- Function.Bundles._.Func._.Eq₂._≉_
d__'8777'__798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> ()
d__'8777'__798 = erased
-- Function.Bundles._.Func._.Eq₂.Carrier
d_Carrier_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> ()
d_Carrier_800 = erased
-- Function.Bundles._.Func._.Eq₂.isEquivalence
d_isEquivalence_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_802 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_802 v4 v5 v6
du_isEquivalence_802 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_802 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v3))
-- Function.Bundles._.Func._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_804 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_804 v4 v5 v6
du_isPartialEquivalence_804 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_804 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
-- Function.Bundles._.Func._.Eq₂.partialSetoid
d_partialSetoid_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_806 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_806 v4 v5 v6
du_partialSetoid_806 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_806 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v3)))
-- Function.Bundles._.Func._.Eq₂.rawSetoid
d_rawSetoid_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_808 = erased
-- Function.Bundles._.Func._.Eq₂.refl
d_refl_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny
d_refl_810 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_810 v4 v5 v6
du_refl_810 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny
du_refl_810 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v3)))
-- Function.Bundles._.Func._.Eq₂.reflexive
d_reflexive_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_812 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_812 v4 v5 v6
du_reflexive_812 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_812 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v3) in
       coe
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))
              v5))
-- Function.Bundles._.Func._.Eq₂.setoid
d_setoid_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_814 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_814 v4 v5 v6
du_setoid_814 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_814 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_68
      (coe du_isCongruent_764 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.Func._.Eq₂.sym
d_sym_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_816 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_816 v4 v5 v6
du_sym_816 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_816 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
-- Function.Bundles._.Func._.Eq₂.trans
d_trans_818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_818 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_818 v4 v5 v6
du_trans_818 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Func_754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_818 v0 v1 v2
  = let v3 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4))))
-- Function.Bundles._.Injection
d_Injection_820 a0 a1 a2 a3 a4 a5 = ()
data T_Injection_820
  = C_Injection'46'constructor_9107 (AgdaAny -> AgdaAny)
                                    (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                    (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Bundles._.Injection.to
d_to_828 :: T_Injection_820 -> AgdaAny -> AgdaAny
d_to_828 v0
  = case coe v0 of
      C_Injection'46'constructor_9107 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Injection.cong
d_cong_830 ::
  T_Injection_820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_830 v0
  = case coe v0 of
      C_Injection'46'constructor_9107 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Injection.injective
d_injective_832 ::
  T_Injection_820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_832 v0
  = case coe v0 of
      C_Injection'46'constructor_9107 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Injection.function
d_function_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> T_Func_754
d_function_834 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_function_834 v6
du_function_834 :: T_Injection_820 -> T_Func_754
du_function_834 v0
  = coe
      C_Func'46'constructor_6655 (coe d_to_828 (coe v0))
      (coe d_cong_830 (coe v0))
-- Function.Bundles._.Injection._.isCongruent
d_isCongruent_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_838 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_838 v4 v5 v6
du_isCongruent_838 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_838 v0 v1 v2
  = coe
      du_isCongruent_764 (coe v0) (coe v1) (coe du_function_834 (coe v2))
-- Function.Bundles._.Injection._.Eq₁._≈_
d__'8776'__842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> ()
d__'8776'__842 = erased
-- Function.Bundles._.Injection._.Eq₁._≉_
d__'8777'__844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> ()
d__'8777'__844 = erased
-- Function.Bundles._.Injection._.Eq₁.Carrier
d_Carrier_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> ()
d_Carrier_846 = erased
-- Function.Bundles._.Injection._.Eq₁.isEquivalence
d_isEquivalence_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_848 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_848 v4 v5 v6
du_isEquivalence_848 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_848 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v4)))
-- Function.Bundles._.Injection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_850 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_850 v4 v5 v6
du_isPartialEquivalence_850 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_850 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Injection._.Eq₁.partialSetoid
d_partialSetoid_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_852 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_852 v4 v5 v6
du_partialSetoid_852 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_852 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4))))
-- Function.Bundles._.Injection._.Eq₁.rawSetoid
d_rawSetoid_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_854 = erased
-- Function.Bundles._.Injection._.Eq₁.refl
d_refl_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny
d_refl_856 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_856 v4 v5 v6
du_refl_856 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny
du_refl_856 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v4))))
-- Function.Bundles._.Injection._.Eq₁.reflexive
d_reflexive_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_858 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_858 v4 v5 v6
du_reflexive_858 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_858 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.Injection._.Eq₁.setoid
d_setoid_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_860 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_860 v4 v5 v6
du_setoid_860 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_860 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe du_isCongruent_764 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Injection._.Eq₁.sym
d_sym_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_862 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_862 v4 v5 v6
du_sym_862 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_862 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Injection._.Eq₁.trans
d_trans_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_864 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_864 v4 v5 v6
du_trans_864 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_864 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Injection._.Eq₂._≈_
d__'8776'__868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> ()
d__'8776'__868 = erased
-- Function.Bundles._.Injection._.Eq₂._≉_
d__'8777'__870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> ()
d__'8777'__870 = erased
-- Function.Bundles._.Injection._.Eq₂.Carrier
d_Carrier_872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> ()
d_Carrier_872 = erased
-- Function.Bundles._.Injection._.Eq₂.isEquivalence
d_isEquivalence_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_874 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_874 v4 v5 v6
du_isEquivalence_874 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_874 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v4)))
-- Function.Bundles._.Injection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_876 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_876 v4 v5 v6
du_isPartialEquivalence_876 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_876 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Injection._.Eq₂.partialSetoid
d_partialSetoid_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_878 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_878 v4 v5 v6
du_partialSetoid_878 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_878 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4))))
-- Function.Bundles._.Injection._.Eq₂.rawSetoid
d_rawSetoid_880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_880 = erased
-- Function.Bundles._.Injection._.Eq₂.refl
d_refl_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny
d_refl_882 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_882 v4 v5 v6
du_refl_882 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny
du_refl_882 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v4))))
-- Function.Bundles._.Injection._.Eq₂.reflexive
d_reflexive_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_884 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_884 v4 v5 v6
du_reflexive_884 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_884 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.Injection._.Eq₂.setoid
d_setoid_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_886 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_886 v4 v5 v6
du_setoid_886 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_886 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe du_isCongruent_764 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Injection._.Eq₂.sym
d_sym_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_888 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_888 v4 v5 v6
du_sym_888 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_888 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Injection._.Eq₂.trans
d_trans_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_890 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_890 v4 v5 v6
du_trans_890 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_890 v0 v1 v2
  = let v3 = coe du_function_834 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Injection.isInjection
d_isInjection_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
d_isInjection_892 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isInjection_892 v4 v5 v6
du_isInjection_892 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Injection_820 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
du_isInjection_892 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsInjection'46'constructor_4117
      (coe
         du_isCongruent_764 (coe v0) (coe v1)
         (coe du_function_834 (coe v2)))
      (coe d_injective_832 (coe v2))
-- Function.Bundles._.Surjection
d_Surjection_894 a0 a1 a2 a3 a4 a5 = ()
data T_Surjection_894
  = C_Surjection'46'constructor_11713 (AgdaAny -> AgdaAny)
                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                      (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Function.Bundles._.Surjection.to
d_to_902 :: T_Surjection_894 -> AgdaAny -> AgdaAny
d_to_902 v0
  = case coe v0 of
      C_Surjection'46'constructor_11713 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Surjection.cong
d_cong_904 ::
  T_Surjection_894 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_904 v0
  = case coe v0 of
      C_Surjection'46'constructor_11713 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Surjection.surjective
d_surjective_906 ::
  T_Surjection_894 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_906 v0
  = case coe v0 of
      C_Surjection'46'constructor_11713 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Surjection.function
d_function_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> T_Func_754
d_function_908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_function_908 v6
du_function_908 :: T_Surjection_894 -> T_Func_754
du_function_908 v0
  = coe
      C_Func'46'constructor_6655 (coe d_to_902 (coe v0))
      (coe d_cong_904 (coe v0))
-- Function.Bundles._.Surjection._.isCongruent
d_isCongruent_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_912 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_912 v4 v5 v6
du_isCongruent_912 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_912 v0 v1 v2
  = coe
      du_isCongruent_764 (coe v0) (coe v1) (coe du_function_908 (coe v2))
-- Function.Bundles._.Surjection._.Eq₁._≈_
d__'8776'__916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> ()
d__'8776'__916 = erased
-- Function.Bundles._.Surjection._.Eq₁._≉_
d__'8777'__918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> ()
d__'8777'__918 = erased
-- Function.Bundles._.Surjection._.Eq₁.Carrier
d_Carrier_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> ()
d_Carrier_920 = erased
-- Function.Bundles._.Surjection._.Eq₁.isEquivalence
d_isEquivalence_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_922 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_922 v4 v5 v6
du_isEquivalence_922 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_922 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v4)))
-- Function.Bundles._.Surjection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_924 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_924 v4 v5 v6
du_isPartialEquivalence_924 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_924 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Surjection._.Eq₁.partialSetoid
d_partialSetoid_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_926 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_926 v4 v5 v6
du_partialSetoid_926 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_926 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4))))
-- Function.Bundles._.Surjection._.Eq₁.rawSetoid
d_rawSetoid_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_928 = erased
-- Function.Bundles._.Surjection._.Eq₁.refl
d_refl_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny
d_refl_930 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_930 v4 v5 v6
du_refl_930 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny
du_refl_930 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v4))))
-- Function.Bundles._.Surjection._.Eq₁.reflexive
d_reflexive_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_932 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_932 v4 v5 v6
du_reflexive_932 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_932 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.Surjection._.Eq₁.setoid
d_setoid_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_934 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_934 v4 v5 v6
du_setoid_934 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_934 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe du_isCongruent_764 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Surjection._.Eq₁.sym
d_sym_936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_936 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_936 v4 v5 v6
du_sym_936 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_936 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Surjection._.Eq₁.trans
d_trans_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_938 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_938 v4 v5 v6
du_trans_938 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_938 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Surjection._.Eq₂._≈_
d__'8776'__942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> ()
d__'8776'__942 = erased
-- Function.Bundles._.Surjection._.Eq₂._≉_
d__'8777'__944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> ()
d__'8777'__944 = erased
-- Function.Bundles._.Surjection._.Eq₂.Carrier
d_Carrier_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> ()
d_Carrier_946 = erased
-- Function.Bundles._.Surjection._.Eq₂.isEquivalence
d_isEquivalence_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_948 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_948 v4 v5 v6
du_isEquivalence_948 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_948 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v4)))
-- Function.Bundles._.Surjection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_950 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_950 v4 v5 v6
du_isPartialEquivalence_950 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_950 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Surjection._.Eq₂.partialSetoid
d_partialSetoid_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_952 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_952 v4 v5 v6
du_partialSetoid_952 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_952 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4))))
-- Function.Bundles._.Surjection._.Eq₂.rawSetoid
d_rawSetoid_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_954 = erased
-- Function.Bundles._.Surjection._.Eq₂.refl
d_refl_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny
d_refl_956 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_956 v4 v5 v6
du_refl_956 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny
du_refl_956 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v4))))
-- Function.Bundles._.Surjection._.Eq₂.reflexive
d_reflexive_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_958 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_958 v4 v5 v6
du_reflexive_958 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_958 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.Surjection._.Eq₂.setoid
d_setoid_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_960 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_960 v4 v5 v6
du_setoid_960 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_960 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe du_isCongruent_764 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Surjection._.Eq₂.sym
d_sym_962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_962 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_962 v4 v5 v6
du_sym_962 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_962 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Surjection._.Eq₂.trans
d_trans_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_964 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_964 v4 v5 v6
du_trans_964 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_964 v0 v1 v2
  = let v3 = coe du_function_908 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Surjection.isSurjection
d_isSurjection_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
d_isSurjection_966 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isSurjection_966 v4 v5 v6
du_isSurjection_966 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
du_isSurjection_966 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsSurjection'46'constructor_6703
      (coe
         du_isCongruent_764 (coe v0) (coe v1)
         (coe du_function_908 (coe v2)))
      (coe d_surjective_906 (coe v2))
-- Function.Bundles._.Surjection._.strictlySurjective
d_strictlySurjective_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictlySurjective_970 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_strictlySurjective_970 v4 v5 v6
du_strictlySurjective_970 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictlySurjective_970 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_strictlySurjective_242
      (coe du_isSurjection_966 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.Surjection.to⁻
d_to'8315'_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny
d_to'8315'_972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_to'8315'_972 v6 v7
du_to'8315'_972 :: T_Surjection_894 -> AgdaAny -> AgdaAny
du_to'8315'_972 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_surjective_906 v0 v1)
-- Function.Bundles._.Surjection.to∘to⁻
d_to'8728'to'8315'_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny
d_to'8728'to'8315'_976 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_to'8728'to'8315'_976 v4 v5 v6 v7
du_to'8728'to'8315'_976 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Surjection_894 -> AgdaAny -> AgdaAny
du_to'8728'to'8315'_976 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Structures.du_strictlySurjective_242
         (coe du_isSurjection_966 (coe v0) (coe v1) (coe v2)) (coe v3))
-- Function.Bundles._.Bijection
d_Bijection_978 a0 a1 a2 a3 a4 a5 = ()
data T_Bijection_978
  = C_Bijection'46'constructor_15877 (AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Function.Bundles._.Bijection.to
d_to_986 :: T_Bijection_978 -> AgdaAny -> AgdaAny
d_to_986 v0
  = case coe v0 of
      C_Bijection'46'constructor_15877 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Bijection.cong
d_cong_988 ::
  T_Bijection_978 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_988 v0
  = case coe v0 of
      C_Bijection'46'constructor_15877 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Bijection.bijective
d_bijective_990 ::
  T_Bijection_978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bijective_990 v0
  = case coe v0 of
      C_Bijection'46'constructor_15877 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Bijection.injective
d_injective_992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_992 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_injective_992 v6 v7 v8
du_injective_992 ::
  T_Bijection_978 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_injective_992 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (d_bijective_990 (coe v0))
      v1 v2
-- Function.Bundles._.Bijection.surjective
d_surjective_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_994 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_surjective_994 v6
du_surjective_994 ::
  T_Bijection_978 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_surjective_994 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_bijective_990 (coe v0))
-- Function.Bundles._.Bijection.injection
d_injection_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> T_Injection_820
d_injection_996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_injection_996 v6
du_injection_996 :: T_Bijection_978 -> T_Injection_820
du_injection_996 v0
  = coe
      C_Injection'46'constructor_9107 (coe d_to_986 (coe v0))
      (coe d_cong_988 (coe v0)) (coe du_injective_992 (coe v0))
-- Function.Bundles._.Bijection.surjection
d_surjection_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> T_Surjection_894
d_surjection_998 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_surjection_998 v6
du_surjection_998 :: T_Bijection_978 -> T_Surjection_894
du_surjection_998 v0
  = coe
      C_Surjection'46'constructor_11713 (coe d_to_986 (coe v0))
      (coe d_cong_988 (coe v0)) (coe du_surjective_994 (coe v0))
-- Function.Bundles._.Bijection._.isInjection
d_isInjection_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
d_isInjection_1002 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isInjection_1002 v4 v5 v6
du_isInjection_1002 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Function.Structures.T_IsInjection_96
du_isInjection_1002 v0 v1 v2
  = coe
      du_isInjection_892 (coe v0) (coe v1)
      (coe du_injection_996 (coe v2))
-- Function.Bundles._.Bijection._.isSurjection
d_isSurjection_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
d_isSurjection_1006 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isSurjection_1006 v4 v5 v6
du_isSurjection_1006 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
du_isSurjection_1006 v0 v1 v2
  = coe
      du_isSurjection_966 (coe v0) (coe v1)
      (coe du_surjection_998 (coe v2))
-- Function.Bundles._.Bijection._.strictlySurjective
d_strictlySurjective_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictlySurjective_1008 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_strictlySurjective_1008 v4 v5 v6
du_strictlySurjective_1008 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictlySurjective_1008 v0 v1 v2
  = let v3 = coe du_surjection_998 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_strictlySurjective_242
         (coe du_isSurjection_966 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Bijection._.to⁻
d_to'8315'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny
d_to'8315'_1010 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_to'8315'_1010 v6
du_to'8315'_1010 :: T_Bijection_978 -> AgdaAny -> AgdaAny
du_to'8315'_1010 v0
  = coe du_to'8315'_972 (coe du_surjection_998 (coe v0))
-- Function.Bundles._.Bijection.isBijection
d_isBijection_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
d_isBijection_1012 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isBijection_1012 v4 v5 v6
du_isBijection_1012 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Function.Structures.T_IsBijection_250
du_isBijection_1012 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsBijection'46'constructor_10473
      (coe
         du_isInjection_892 (coe v0) (coe v1)
         (coe du_injection_996 (coe v2)))
      (coe du_surjective_994 (coe v2))
-- Function.Bundles._.Bijection._.Eq₁._≈_
d__'8776'__1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1018 = erased
-- Function.Bundles._.Bijection._.Eq₁._≉_
d__'8777'__1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1020 = erased
-- Function.Bundles._.Bijection._.Eq₁.Carrier
d_Carrier_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> ()
d_Carrier_1022 = erased
-- Function.Bundles._.Bijection._.Eq₁.isEquivalence
d_isEquivalence_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1024 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_1024 v4 v5 v6
du_isEquivalence_1024 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1024 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v5))))
-- Function.Bundles._.Bijection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1026 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_1026 v4 v5 v6
du_isPartialEquivalence_1026 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1026 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Bijection._.Eq₁.partialSetoid
d_partialSetoid_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1028 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_1028 v4 v5 v6
du_partialSetoid_1028 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1028 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
               (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5)))))
-- Function.Bundles._.Bijection._.Eq₁.rawSetoid
d_rawSetoid_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1030 = erased
-- Function.Bundles._.Bijection._.Eq₁.refl
d_refl_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny
d_refl_1032 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_1032 v4 v5 v6
du_refl_1032 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny
du_refl_1032 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (coe
                  MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
                  (coe v5)))))
-- Function.Bundles._.Bijection._.Eq₁.reflexive
d_reflexive_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1034 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_1034 v4 v5 v6
du_reflexive_1034 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1034 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (\ v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v6))
                    v7))))
-- Function.Bundles._.Bijection._.Eq₁.setoid
d_setoid_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1036 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_1036 v4 v5 v6
du_setoid_1036 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1036 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.du_setoid_40
            (coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4))))
-- Function.Bundles._.Bijection._.Eq₁.sym
d_sym_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1038 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_1038 v4 v5 v6
du_sym_1038 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1038 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Bijection._.Eq₁.trans
d_trans_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1040 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_1040 v4 v5 v6
du_trans_1040 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1040 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Bijection._.Eq₂._≈_
d__'8776'__1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1044 = erased
-- Function.Bundles._.Bijection._.Eq₂._≉_
d__'8777'__1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1046 = erased
-- Function.Bundles._.Bijection._.Eq₂.Carrier
d_Carrier_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> ()
d_Carrier_1048 = erased
-- Function.Bundles._.Bijection._.Eq₂.isEquivalence
d_isEquivalence_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1050 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_1050 v4 v5 v6
du_isEquivalence_1050 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1050 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v5))))
-- Function.Bundles._.Bijection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1052 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_1052 v4 v5 v6
du_isPartialEquivalence_1052 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1052 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Bijection._.Eq₂.partialSetoid
d_partialSetoid_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1054 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_1054 v4 v5 v6
du_partialSetoid_1054 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1054 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
               (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5)))))
-- Function.Bundles._.Bijection._.Eq₂.rawSetoid
d_rawSetoid_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1056 = erased
-- Function.Bundles._.Bijection._.Eq₂.refl
d_refl_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny
d_refl_1058 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_1058 v4 v5 v6
du_refl_1058 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny
du_refl_1058 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (coe
                  MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
                  (coe v5)))))
-- Function.Bundles._.Bijection._.Eq₂.reflexive
d_reflexive_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1060 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_1060 v4 v5 v6
du_reflexive_1060 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1060 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (\ v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v6))
                    v7))))
-- Function.Bundles._.Bijection._.Eq₂.setoid
d_setoid_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1062 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_1062 v4 v5 v6
du_setoid_1062 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1062 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.du_setoid_68
            (coe MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4))))
-- Function.Bundles._.Bijection._.Eq₂.sym
d_sym_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1064 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_1064 v4 v5 v6
du_sym_1064 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1064 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Bijection._.Eq₂.trans
d_trans_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1066 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_1066 v4 v5 v6
du_trans_1066 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Bijection_978 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1066 v0 v1 v2
  = let v3 = coe du_isBijection_1012 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._._._≈_
d__'8776'__1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1086 = erased
-- Function.Bundles._._.Carrier
d_Carrier_1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 -> ()
d_Carrier_1088 = erased
-- Function.Bundles._._.IsBiInverse
d_IsBiInverse_1100 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Function.Bundles._._.IsCongruent
d_IsCongruent_1104 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Bundles._._.IsInverse
d_IsInverse_1108 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Function.Bundles._._.IsLeftInverse
d_IsLeftInverse_1110 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Function.Bundles._._.IsRightInverse
d_IsRightInverse_1112 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Function.Bundles._._.IsSplitSurjection
d_IsSplitSurjection_1114 a0 a1 a2 a3 a4 a5 a6 = ()
-- Function.Bundles._._.IsBiInverse.from₁-cong
d_from'8321''45'cong_1186 ::
  MAlonzo.Code.Function.Structures.T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8321''45'cong_1186 v0
  = coe
      MAlonzo.Code.Function.Structures.d_from'8321''45'cong_718 (coe v0)
-- Function.Bundles._._.IsBiInverse.from₂-cong
d_from'8322''45'cong_1188 ::
  MAlonzo.Code.Function.Structures.T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8322''45'cong_1188 v0
  = coe
      MAlonzo.Code.Function.Structures.d_from'8322''45'cong_720 (coe v0)
-- Function.Bundles._._.IsBiInverse.inverseʳ
d_inverse'691'_1190 ::
  MAlonzo.Code.Function.Structures.T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_1190 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'691'_724 (coe v0)
-- Function.Bundles._._.IsBiInverse.inverseˡ
d_inverse'737'_1192 ::
  MAlonzo.Code.Function.Structures.T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_1192 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'737'_722 (coe v0)
-- Function.Bundles._._.IsBiInverse.to-isCongruent
d_to'45'isCongruent_1200 ::
  MAlonzo.Code.Function.Structures.T_IsBiInverse_698 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_to'45'isCongruent_1200 v0
  = coe
      MAlonzo.Code.Function.Structures.d_to'45'isCongruent_716 (coe v0)
-- Function.Bundles._._.IsCongruent.cong
d_cong_1330 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1330 v0
  = coe MAlonzo.Code.Function.Structures.d_cong_32 (coe v0)
-- Function.Bundles._._.IsCongruent.isEquivalence₁
d_isEquivalence'8321'_1332 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_1332 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v0)
-- Function.Bundles._._.IsCongruent.isEquivalence₂
d_isEquivalence'8322'_1334 ::
  MAlonzo.Code.Function.Structures.T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_1334 v0
  = coe
      MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v0)
-- Function.Bundles._._.IsInverse.inverseʳ
d_inverse'691'_1458 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_1458 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'691'_526 (coe v0)
-- Function.Bundles._._.IsInverse.isLeftInverse
d_isLeftInverse_1468 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_1468 v0
  = coe MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0)
-- Function.Bundles._._.IsInverse.Eq₁._≈_
d__'8776'__1482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1482 = erased
-- Function.Bundles._._.IsInverse.Eq₁._≉_
d__'8777'__1484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__1484 = erased
-- Function.Bundles._._.IsInverse.Eq₁.Carrier
d_Carrier_1486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 -> ()
d_Carrier_1486 = erased
-- Function.Bundles._._.IsInverse.Eq₁.isEquivalence
d_isEquivalence_1488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isEquivalence_1488 v8
du_isEquivalence_1488 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1488 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v2)))
-- Function.Bundles._._.IsInverse.Eq₁.isPartialEquivalence
d_isPartialEquivalence_1490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1490 v8
du_isPartialEquivalence_1490 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1490 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsInverse.Eq₁.partialSetoid
d_partialSetoid_1492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_partialSetoid_1492 v8
du_partialSetoid_1492 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1492 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2))))
-- Function.Bundles._._.IsInverse.Eq₁.rawSetoid
d_rawSetoid_1494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1494 = erased
-- Function.Bundles._._.IsInverse.Eq₁.refl
d_refl_1496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny
d_refl_1496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_1496 v8
du_refl_1496 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny
du_refl_1496 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v2))))
-- Function.Bundles._._.IsInverse.Eq₁.reflexive
d_reflexive_1498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1498 v8
du_reflexive_1498 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1498 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Bundles._._.IsInverse.Eq₁.setoid
d_setoid_1500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1500 v8
du_setoid_1500 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1500 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1)))
-- Function.Bundles._._.IsInverse.Eq₁.sym
d_sym_1502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_sym_1502 v8
du_sym_1502 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1502 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsInverse.Eq₁.trans
d_trans_1504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_trans_1504 v8
du_trans_1504 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1504 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsInverse.Eq₂._≈_
d__'8776'__1508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1508 = erased
-- Function.Bundles._._.IsInverse.Eq₂._≉_
d__'8777'__1510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__1510 = erased
-- Function.Bundles._._.IsInverse.Eq₂.Carrier
d_Carrier_1512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 -> ()
d_Carrier_1512 = erased
-- Function.Bundles._._.IsInverse.Eq₂.isEquivalence
d_isEquivalence_1514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1514 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isEquivalence_1514 v8
du_isEquivalence_1514 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1514 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v2)))
-- Function.Bundles._._.IsInverse.Eq₂.isPartialEquivalence
d_isPartialEquivalence_1516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1516 v8
du_isPartialEquivalence_1516 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1516 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsInverse.Eq₂.partialSetoid
d_partialSetoid_1518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_partialSetoid_1518 v8
du_partialSetoid_1518 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1518 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2))))
-- Function.Bundles._._.IsInverse.Eq₂.rawSetoid
d_rawSetoid_1520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1520 = erased
-- Function.Bundles._._.IsInverse.Eq₂.refl
d_refl_1522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny
d_refl_1522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_1522 v8
du_refl_1522 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny
du_refl_1522 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v2))))
-- Function.Bundles._._.IsInverse.Eq₂.reflexive
d_reflexive_1524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1524 v8
du_reflexive_1524 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1524 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Bundles._._.IsInverse.Eq₂.setoid
d_setoid_1526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1526 v8
du_setoid_1526 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1526 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1)))
-- Function.Bundles._._.IsInverse.Eq₂.sym
d_sym_1528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1528 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_sym_1528 v8
du_sym_1528 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1528 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsInverse.Eq₂.trans
d_trans_1530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_trans_1530 v8
du_trans_1530 ::
  MAlonzo.Code.Function.Structures.T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1530 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Bundles._._.IsLeftInverse.from-cong
d_from'45'cong_1534 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_1534 v0
  = coe MAlonzo.Code.Function.Structures.d_from'45'cong_352 (coe v0)
-- Function.Bundles._._.IsLeftInverse.inverseˡ
d_inverse'737'_1536 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_1536 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'737'_354 (coe v0)
-- Function.Bundles._._.IsLeftInverse.isCongruent
d_isCongruent_1538 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_1538 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0)
-- Function.Bundles._._.IsLeftInverse.isSurjection
d_isSurjection_1544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
d_isSurjection_1544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_isSurjection_1544
du_isSurjection_1544 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
du_isSurjection_1544 v0 v1 v2
  = coe MAlonzo.Code.Function.Structures.du_isSurjection_420 v1 v2
-- Function.Bundles._._.IsLeftInverse.strictlyInverseˡ
d_strictlyInverse'737'_1546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny
d_strictlyInverse'737'_1546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_strictlyInverse'737'_1546
du_strictlyInverse'737'_1546 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny
du_strictlyInverse'737'_1546 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Structures.du_strictlyInverse'737'_416 v1 v2
      v3
-- Function.Bundles._._.IsLeftInverse.Eq₁._≈_
d__'8776'__1552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1552 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₁._≉_
d__'8777'__1554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__1554 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₁.Carrier
d_Carrier_1556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 -> ()
d_Carrier_1556 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₁.isEquivalence
d_isEquivalence_1558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isEquivalence_1558 v8
du_isEquivalence_1558 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1558 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v1))
-- Function.Bundles._._.IsLeftInverse.Eq₁.isPartialEquivalence
d_isPartialEquivalence_1560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1560 v8
du_isPartialEquivalence_1560 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1560 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsLeftInverse.Eq₁.partialSetoid
d_partialSetoid_1562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_partialSetoid_1562 v8
du_partialSetoid_1562 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1562 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1)))
-- Function.Bundles._._.IsLeftInverse.Eq₁.rawSetoid
d_rawSetoid_1564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1564 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₁.refl
d_refl_1566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny
d_refl_1566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_1566 v8
du_refl_1566 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny
du_refl_1566 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v1)))
-- Function.Bundles._._.IsLeftInverse.Eq₁.reflexive
d_reflexive_1568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1568 v8
du_reflexive_1568 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1568 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
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
-- Function.Bundles._._.IsLeftInverse.Eq₁.setoid
d_setoid_1570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1570 v8
du_setoid_1570 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1570 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_40
      (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0))
-- Function.Bundles._._.IsLeftInverse.Eq₁.sym
d_sym_1572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_sym_1572 v8
du_sym_1572 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1572 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsLeftInverse.Eq₁.trans
d_trans_1574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1574 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_trans_1574 v8
du_trans_1574 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1574 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsLeftInverse.Eq₂._≈_
d__'8776'__1578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1578 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₂._≉_
d__'8777'__1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__1580 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₂.Carrier
d_Carrier_1582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 -> ()
d_Carrier_1582 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₂.isEquivalence
d_isEquivalence_1584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1584 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isEquivalence_1584 v8
du_isEquivalence_1584 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1584 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v1))
-- Function.Bundles._._.IsLeftInverse.Eq₂.isPartialEquivalence
d_isPartialEquivalence_1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1586 v8
du_isPartialEquivalence_1586 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1586 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsLeftInverse.Eq₂.partialSetoid
d_partialSetoid_1588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_partialSetoid_1588 v8
du_partialSetoid_1588 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1588 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1)))
-- Function.Bundles._._.IsLeftInverse.Eq₂.rawSetoid
d_rawSetoid_1590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1590 = erased
-- Function.Bundles._._.IsLeftInverse.Eq₂.refl
d_refl_1592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny
d_refl_1592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_1592 v8
du_refl_1592 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny
du_refl_1592 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v1)))
-- Function.Bundles._._.IsLeftInverse.Eq₂.reflexive
d_reflexive_1594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1594 v8
du_reflexive_1594 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1594 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
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
-- Function.Bundles._._.IsLeftInverse.Eq₂.setoid
d_setoid_1596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1596 v8
du_setoid_1596 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1596 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_68
      (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0))
-- Function.Bundles._._.IsLeftInverse.Eq₂.sym
d_sym_1598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_sym_1598 v8
du_sym_1598 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1598 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsLeftInverse.Eq₂.trans
d_trans_1600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_trans_1600 v8
du_trans_1600 ::
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1600 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsRightInverse.from-cong
d_from'45'cong_1604 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_1604 v0
  = coe MAlonzo.Code.Function.Structures.d_from'45'cong_442 (coe v0)
-- Function.Bundles._._.IsRightInverse.inverseʳ
d_inverse'691'_1606 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_1606 v0
  = coe MAlonzo.Code.Function.Structures.d_inverse'691'_444 (coe v0)
-- Function.Bundles._._.IsRightInverse.isCongruent
d_isCongruent_1608 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_1608 v0
  = coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0)
-- Function.Bundles._._.IsRightInverse.strictlyInverseʳ
d_strictlyInverse'691'_1614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny
d_strictlyInverse'691'_1614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_strictlyInverse'691'_1614
du_strictlyInverse'691'_1614 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny
du_strictlyInverse'691'_1614 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Structures.du_strictlyInverse'691'_506 v0 v2
      v3
-- Function.Bundles._._.IsRightInverse.Eq₁._≈_
d__'8776'__1620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1620 = erased
-- Function.Bundles._._.IsRightInverse.Eq₁._≉_
d__'8777'__1622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__1622 = erased
-- Function.Bundles._._.IsRightInverse.Eq₁.Carrier
d_Carrier_1624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 -> ()
d_Carrier_1624 = erased
-- Function.Bundles._._.IsRightInverse.Eq₁.isEquivalence
d_isEquivalence_1626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isEquivalence_1626 v8
du_isEquivalence_1626 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1626 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34 (coe v1))
-- Function.Bundles._._.IsRightInverse.Eq₁.isPartialEquivalence
d_isPartialEquivalence_1628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1628 v8
du_isPartialEquivalence_1628 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1628 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsRightInverse.Eq₁.partialSetoid
d_partialSetoid_1630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_partialSetoid_1630 v8
du_partialSetoid_1630 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1630 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1)))
-- Function.Bundles._._.IsRightInverse.Eq₁.rawSetoid
d_rawSetoid_1632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1632 = erased
-- Function.Bundles._._.IsRightInverse.Eq₁.refl
d_refl_1634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny
d_refl_1634 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_1634 v8
du_refl_1634 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny
du_refl_1634 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v1)))
-- Function.Bundles._._.IsRightInverse.Eq₁.reflexive
d_reflexive_1636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1636 v8
du_reflexive_1636 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1636 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
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
-- Function.Bundles._._.IsRightInverse.Eq₁.setoid
d_setoid_1638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1638 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1638 v8
du_setoid_1638 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1638 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_40
      (coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0))
-- Function.Bundles._._.IsRightInverse.Eq₁.sym
d_sym_1640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_sym_1640 v8
du_sym_1640 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1640 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsRightInverse.Eq₁.trans
d_trans_1642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_trans_1642 v8
du_trans_1642 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1642 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsRightInverse.Eq₂._≈_
d__'8776'__1646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1646 = erased
-- Function.Bundles._._.IsRightInverse.Eq₂._≉_
d__'8777'__1648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__1648 = erased
-- Function.Bundles._._.IsRightInverse.Eq₂.Carrier
d_Carrier_1650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 -> ()
d_Carrier_1650 = erased
-- Function.Bundles._._.IsRightInverse.Eq₂.isEquivalence
d_isEquivalence_1652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isEquivalence_1652 v8
du_isEquivalence_1652 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1652 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36 (coe v1))
-- Function.Bundles._._.IsRightInverse.Eq₂.isPartialEquivalence
d_isPartialEquivalence_1654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1654 v8
du_isPartialEquivalence_1654 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1654 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsRightInverse.Eq₂.partialSetoid
d_partialSetoid_1656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_partialSetoid_1656 v8
du_partialSetoid_1656 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1656 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1)))
-- Function.Bundles._._.IsRightInverse.Eq₂.rawSetoid
d_rawSetoid_1658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1658 = erased
-- Function.Bundles._._.IsRightInverse.Eq₂.refl
d_refl_1660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny
d_refl_1660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_1660 v8
du_refl_1660 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny
du_refl_1660 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v1)))
-- Function.Bundles._._.IsRightInverse.Eq₂.reflexive
d_reflexive_1662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1662 v8
du_reflexive_1662 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1662 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
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
-- Function.Bundles._._.IsRightInverse.Eq₂.setoid
d_setoid_1664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1664 v8
du_setoid_1664 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1664 v0
  = coe
      MAlonzo.Code.Function.Structures.du_setoid_68
      (coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0))
-- Function.Bundles._._.IsRightInverse.Eq₂.sym
d_sym_1666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_sym_1666 v8
du_sym_1666 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1666 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsRightInverse.Eq₂.trans
d_trans_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_trans_1668 v8
du_trans_1668 ::
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1668 v0
  = let v1
          = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Bundles._._.IsSplitSurjection.from
d_from_1672 ::
  MAlonzo.Code.Function.Structures.T_IsSplitSurjection_788 ->
  AgdaAny -> AgdaAny
d_from_1672 v0
  = coe MAlonzo.Code.Function.Structures.d_from_796 (coe v0)
-- Function.Bundles._._.IsSplitSurjection.isLeftInverse
d_isLeftInverse_1684 ::
  MAlonzo.Code.Function.Structures.T_IsSplitSurjection_788 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_1684 v0
  = coe MAlonzo.Code.Function.Structures.d_isLeftInverse_798 (coe v0)
-- Function.Bundles._.Equivalence
d_Equivalence_1810 a0 a1 a2 a3 a4 a5 = ()
data T_Equivalence_1810
  = C_Equivalence'46'constructor_26829 (AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Bundles._.Equivalence.to
d_to_1820 :: T_Equivalence_1810 -> AgdaAny -> AgdaAny
d_to_1820 v0
  = case coe v0 of
      C_Equivalence'46'constructor_26829 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Equivalence.from
d_from_1822 :: T_Equivalence_1810 -> AgdaAny -> AgdaAny
d_from_1822 v0
  = case coe v0 of
      C_Equivalence'46'constructor_26829 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Equivalence.to-cong
d_to'45'cong_1824 ::
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'cong_1824 v0
  = case coe v0 of
      C_Equivalence'46'constructor_26829 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Equivalence.from-cong
d_from'45'cong_1826 ::
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_1826 v0
  = case coe v0 of
      C_Equivalence'46'constructor_26829 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Equivalence.toFunction
d_toFunction_1828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> T_Func_754
d_toFunction_1828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_toFunction_1828 v6
du_toFunction_1828 :: T_Equivalence_1810 -> T_Func_754
du_toFunction_1828 v0
  = coe
      C_Func'46'constructor_6655 (coe d_to_1820 (coe v0))
      (coe d_to'45'cong_1824 (coe v0))
-- Function.Bundles._.Equivalence._.isCongruent
d_isCongruent_1832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_1832 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_1832 v4 v5 v6
du_isCongruent_1832 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_1832 v0 v1 v2
  = coe
      du_isCongruent_764 (coe v0) (coe v1)
      (coe du_toFunction_1828 (coe v2))
-- Function.Bundles._.Equivalence._.Eq₁._≈_
d__'8776'__1836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1836 = erased
-- Function.Bundles._.Equivalence._.Eq₁._≉_
d__'8777'__1838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1838 = erased
-- Function.Bundles._.Equivalence._.Eq₁.Carrier
d_Carrier_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> ()
d_Carrier_1840 = erased
-- Function.Bundles._.Equivalence._.Eq₁.isEquivalence
d_isEquivalence_1842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1842 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_1842 v4 v5 v6
du_isEquivalence_1842 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1842 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v4)))
-- Function.Bundles._.Equivalence._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_1844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1844 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_1844 v4 v5 v6
du_isPartialEquivalence_1844 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1844 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Equivalence._.Eq₁.partialSetoid
d_partialSetoid_1846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1846 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_1846 v4 v5 v6
du_partialSetoid_1846 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1846 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4))))
-- Function.Bundles._.Equivalence._.Eq₁.rawSetoid
d_rawSetoid_1848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1848 = erased
-- Function.Bundles._.Equivalence._.Eq₁.refl
d_refl_1850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny
d_refl_1850 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_1850 v4 v5 v6
du_refl_1850 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny
du_refl_1850 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v4))))
-- Function.Bundles._.Equivalence._.Eq₁.reflexive
d_reflexive_1852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1852 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_1852 v4 v5 v6
du_reflexive_1852 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1852 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.Equivalence._.Eq₁.setoid
d_setoid_1854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1854 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_1854 v4 v5 v6
du_setoid_1854 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1854 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe du_isCongruent_764 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Equivalence._.Eq₁.sym
d_sym_1856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1856 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_1856 v4 v5 v6
du_sym_1856 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1856 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Equivalence._.Eq₁.trans
d_trans_1858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1858 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_1858 v4 v5 v6
du_trans_1858 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1858 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Equivalence._.Eq₂._≈_
d__'8776'__1862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1862 = erased
-- Function.Bundles._.Equivalence._.Eq₂._≉_
d__'8777'__1864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1864 = erased
-- Function.Bundles._.Equivalence._.Eq₂.Carrier
d_Carrier_1866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> ()
d_Carrier_1866 = erased
-- Function.Bundles._.Equivalence._.Eq₂.isEquivalence
d_isEquivalence_1868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1868 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_1868 v4 v5 v6
du_isEquivalence_1868 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1868 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v4)))
-- Function.Bundles._.Equivalence._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_1870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1870 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_1870 v4 v5 v6
du_isPartialEquivalence_1870 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1870 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Equivalence._.Eq₂.partialSetoid
d_partialSetoid_1872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1872 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_1872 v4 v5 v6
du_partialSetoid_1872 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1872 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4))))
-- Function.Bundles._.Equivalence._.Eq₂.rawSetoid
d_rawSetoid_1874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1874 = erased
-- Function.Bundles._.Equivalence._.Eq₂.refl
d_refl_1876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny
d_refl_1876 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_1876 v4 v5 v6
du_refl_1876 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny
du_refl_1876 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v4))))
-- Function.Bundles._.Equivalence._.Eq₂.reflexive
d_reflexive_1878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1878 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_1878 v4 v5 v6
du_reflexive_1878 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1878 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.Equivalence._.Eq₂.setoid
d_setoid_1880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1880 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_1880 v4 v5 v6
du_setoid_1880 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1880 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe du_isCongruent_764 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Equivalence._.Eq₂.sym
d_sym_1882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1882 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_1882 v4 v5 v6
du_sym_1882 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1882 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Equivalence._.Eq₂.trans
d_trans_1884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1884 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_1884 v4 v5 v6
du_trans_1884 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1884 v0 v1 v2
  = let v3 = coe du_toFunction_1828 (coe v2) in
    coe
      (let v4 = coe du_isCongruent_764 (coe v0) (coe v1) (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.Equivalence.fromFunction
d_fromFunction_1886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 -> T_Func_754
d_fromFunction_1886 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_fromFunction_1886 v6
du_fromFunction_1886 :: T_Equivalence_1810 -> T_Func_754
du_fromFunction_1886 v0
  = coe
      C_Func'46'constructor_6655 (coe d_from_1822 (coe v0))
      (coe d_from'45'cong_1826 (coe v0))
-- Function.Bundles._.Equivalence._.isCongruent
d_isCongruent_1890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_1890 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_1890 v4 v5 v6
du_isCongruent_1890 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Equivalence_1810 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_1890 v0 v1 v2
  = coe
      du_isCongruent_764 (coe v1) (coe v0)
      (coe du_fromFunction_1886 (coe v2))
-- Function.Bundles._.LeftInverse
d_LeftInverse_1892 a0 a1 a2 a3 a4 a5 = ()
data T_LeftInverse_1892
  = C_LeftInverse'46'constructor_30891 (AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Bundles._.LeftInverse.to
d_to_1904 :: T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_to_1904 v0
  = case coe v0 of
      C_LeftInverse'46'constructor_30891 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.LeftInverse.from
d_from_1906 :: T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_from_1906 v0
  = case coe v0 of
      C_LeftInverse'46'constructor_30891 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.LeftInverse.to-cong
d_to'45'cong_1908 ::
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'cong_1908 v0
  = case coe v0 of
      C_LeftInverse'46'constructor_30891 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.LeftInverse.from-cong
d_from'45'cong_1910 ::
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_1910 v0
  = case coe v0 of
      C_LeftInverse'46'constructor_30891 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.LeftInverse.inverseˡ
d_inverse'737'_1912 ::
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_1912 v0
  = case coe v0 of
      C_LeftInverse'46'constructor_30891 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.LeftInverse.isCongruent
d_isCongruent_1914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_1914 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_1914 v4 v5 v6
du_isCongruent_1914 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_1914 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
      (coe d_to'45'cong_1908 (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
-- Function.Bundles._.LeftInverse.isLeftInverse
d_isLeftInverse_1916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_1916 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isLeftInverse_1916 v4 v5 v6
du_isLeftInverse_1916 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
du_isLeftInverse_1916 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsLeftInverse'46'constructor_14843
      (coe du_isCongruent_1914 (coe v0) (coe v1) (coe v2))
      (coe d_from'45'cong_1910 (coe v2))
      (coe d_inverse'737'_1912 (coe v2))
-- Function.Bundles._.LeftInverse._.isSurjection
d_isSurjection_1920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
d_isSurjection_1920 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isSurjection_1920 v4 v5 v6
du_isSurjection_1920 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
du_isSurjection_1920 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_isSurjection_420
      (coe d_from_1906 (coe v2))
      (coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.LeftInverse._.strictlyInverseˡ
d_strictlyInverse'737'_1922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_strictlyInverse'737'_1922 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_strictlyInverse'737'_1922 v4 v5 v6
du_strictlyInverse'737'_1922 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
du_strictlyInverse'737'_1922 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_strictlyInverse'737'_416
      (coe d_from_1906 (coe v2))
      (coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.LeftInverse._.Eq₁._≈_
d__'8776'__1926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1926 = erased
-- Function.Bundles._.LeftInverse._.Eq₁._≉_
d__'8777'__1928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1928 = erased
-- Function.Bundles._.LeftInverse._.Eq₁.Carrier
d_Carrier_1930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> ()
d_Carrier_1930 = erased
-- Function.Bundles._.LeftInverse._.Eq₁.isEquivalence
d_isEquivalence_1932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1932 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_1932 v4 v5 v6
du_isEquivalence_1932 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1932 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v4)))
-- Function.Bundles._.LeftInverse._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_1934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1934 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_1934 v4 v5 v6
du_isPartialEquivalence_1934 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1934 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.LeftInverse._.Eq₁.partialSetoid
d_partialSetoid_1936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1936 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_1936 v4 v5 v6
du_partialSetoid_1936 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1936 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4))))
-- Function.Bundles._.LeftInverse._.Eq₁.rawSetoid
d_rawSetoid_1938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1938 = erased
-- Function.Bundles._.LeftInverse._.Eq₁.refl
d_refl_1940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_refl_1940 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_1940 v4 v5 v6
du_refl_1940 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
du_refl_1940 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v4))))
-- Function.Bundles._.LeftInverse._.Eq₁.reflexive
d_reflexive_1942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1942 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_1942 v4 v5 v6
du_reflexive_1942 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1942 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.LeftInverse._.Eq₁.setoid
d_setoid_1944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1944 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_1944 v4 v5 v6
du_setoid_1944 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1944 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3)))
-- Function.Bundles._.LeftInverse._.Eq₁.sym
d_sym_1946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1946 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_1946 v4 v5 v6
du_sym_1946 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1946 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.LeftInverse._.Eq₁.trans
d_trans_1948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1948 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_1948 v4 v5 v6
du_trans_1948 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1948 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.LeftInverse._.Eq₂._≈_
d__'8776'__1952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1952 = erased
-- Function.Bundles._.LeftInverse._.Eq₂._≉_
d__'8777'__1954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1954 = erased
-- Function.Bundles._.LeftInverse._.Eq₂.Carrier
d_Carrier_1956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> ()
d_Carrier_1956 = erased
-- Function.Bundles._.LeftInverse._.Eq₂.isEquivalence
d_isEquivalence_1958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1958 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_1958 v4 v5 v6
du_isEquivalence_1958 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1958 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v4)))
-- Function.Bundles._.LeftInverse._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_1960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1960 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_1960 v4 v5 v6
du_isPartialEquivalence_1960 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1960 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.LeftInverse._.Eq₂.partialSetoid
d_partialSetoid_1962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1962 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_1962 v4 v5 v6
du_partialSetoid_1962 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1962 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4))))
-- Function.Bundles._.LeftInverse._.Eq₂.rawSetoid
d_rawSetoid_1964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1964 = erased
-- Function.Bundles._.LeftInverse._.Eq₂.refl
d_refl_1966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_refl_1966 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_1966 v4 v5 v6
du_refl_1966 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
du_refl_1966 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v4))))
-- Function.Bundles._.LeftInverse._.Eq₂.reflexive
d_reflexive_1968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1968 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_1968 v4 v5 v6
du_reflexive_1968 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1968 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.LeftInverse._.Eq₂.setoid
d_setoid_1970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1970 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_1970 v4 v5 v6
du_setoid_1970 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1970 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3)))
-- Function.Bundles._.LeftInverse._.Eq₂.sym
d_sym_1972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1972 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_1972 v4 v5 v6
du_sym_1972 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1972 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.LeftInverse._.Eq₂.trans
d_trans_1974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1974 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_1974 v4 v5 v6
du_trans_1974 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1974 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.LeftInverse.equivalence
d_equivalence_1976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> T_Equivalence_1810
d_equivalence_1976 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_equivalence_1976 v6
du_equivalence_1976 :: T_LeftInverse_1892 -> T_Equivalence_1810
du_equivalence_1976 v0
  = coe
      C_Equivalence'46'constructor_26829 (coe d_to_1904 (coe v0))
      (coe d_from_1906 (coe v0)) (coe d_to'45'cong_1908 (coe v0))
      (coe d_from'45'cong_1910 (coe v0))
-- Function.Bundles._.LeftInverse.isSplitSurjection
d_isSplitSurjection_1978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSplitSurjection_788
d_isSplitSurjection_1978 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isSplitSurjection_1978 v4 v5 v6
du_isSplitSurjection_1978 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSplitSurjection_788
du_isSplitSurjection_1978 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsSplitSurjection'46'constructor_36665
      (coe d_from_1906 (coe v2))
      (coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.LeftInverse.surjection
d_surjection_1980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> T_Surjection_894
d_surjection_1980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_surjection_1980 v6
du_surjection_1980 :: T_LeftInverse_1892 -> T_Surjection_894
du_surjection_1980 v0
  = coe
      C_Surjection'46'constructor_11713 (coe d_to_1904 (coe v0))
      (coe d_to'45'cong_1908 (coe v0))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe d_from_1906 v0 v1)
              (coe d_inverse'737'_1912 v0 v1)))
-- Function.Bundles._.RightInverse
d_RightInverse_1984 a0 a1 a2 a3 a4 a5 = ()
data T_RightInverse_1984
  = C_RightInverse'46'constructor_35773 (AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Bundles._.RightInverse.to
d_to_1996 :: T_RightInverse_1984 -> AgdaAny -> AgdaAny
d_to_1996 v0
  = case coe v0 of
      C_RightInverse'46'constructor_35773 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.RightInverse.from
d_from_1998 :: T_RightInverse_1984 -> AgdaAny -> AgdaAny
d_from_1998 v0
  = case coe v0 of
      C_RightInverse'46'constructor_35773 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.RightInverse.to-cong
d_to'45'cong_2000 ::
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'cong_2000 v0
  = case coe v0 of
      C_RightInverse'46'constructor_35773 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.RightInverse.from-cong
d_from'45'cong_2002 ::
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_2002 v0
  = case coe v0 of
      C_RightInverse'46'constructor_35773 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.RightInverse.inverseʳ
d_inverse'691'_2004 ::
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_2004 v0
  = case coe v0 of
      C_RightInverse'46'constructor_35773 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.RightInverse.isCongruent
d_isCongruent_2006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_2006 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_2006 v4 v5 v6
du_isCongruent_2006 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_2006 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
      (coe d_to'45'cong_2000 (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
-- Function.Bundles._.RightInverse.isRightInverse
d_isRightInverse_2008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
d_isRightInverse_2008 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isRightInverse_2008 v4 v5 v6
du_isRightInverse_2008 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
du_isRightInverse_2008 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsRightInverse'46'constructor_19449
      (coe du_isCongruent_2006 (coe v0) (coe v1) (coe v2))
      (coe d_from'45'cong_2002 (coe v2))
      (coe d_inverse'691'_2004 (coe v2))
-- Function.Bundles._.RightInverse._.strictlyInverseʳ
d_strictlyInverse'691'_2012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny
d_strictlyInverse'691'_2012 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_strictlyInverse'691'_2012 v4 v5 v6
du_strictlyInverse'691'_2012 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny
du_strictlyInverse'691'_2012 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_strictlyInverse'691'_506
      (coe d_to_1996 (coe v2))
      (coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.RightInverse._.Eq₁._≈_
d__'8776'__2016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2016 = erased
-- Function.Bundles._.RightInverse._.Eq₁._≉_
d__'8777'__2018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2018 = erased
-- Function.Bundles._.RightInverse._.Eq₁.Carrier
d_Carrier_2020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> ()
d_Carrier_2020 = erased
-- Function.Bundles._.RightInverse._.Eq₁.isEquivalence
d_isEquivalence_2022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2022 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_2022 v4 v5 v6
du_isEquivalence_2022 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2022 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v4)))
-- Function.Bundles._.RightInverse._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_2024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2024 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_2024 v4 v5 v6
du_isPartialEquivalence_2024 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2024 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.RightInverse._.Eq₁.partialSetoid
d_partialSetoid_2026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_2026 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_2026 v4 v5 v6
du_partialSetoid_2026 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_2026 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4))))
-- Function.Bundles._.RightInverse._.Eq₁.rawSetoid
d_rawSetoid_2028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_2028 = erased
-- Function.Bundles._.RightInverse._.Eq₁.refl
d_refl_2030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny
d_refl_2030 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_2030 v4 v5 v6
du_refl_2030 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny
du_refl_2030 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v4))))
-- Function.Bundles._.RightInverse._.Eq₁.reflexive
d_reflexive_2032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2032 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_2032 v4 v5 v6
du_reflexive_2032 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2032 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.RightInverse._.Eq₁.setoid
d_setoid_2034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2034 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_2034 v4 v5 v6
du_setoid_2034 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2034 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3)))
-- Function.Bundles._.RightInverse._.Eq₁.sym
d_sym_2036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2036 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_2036 v4 v5 v6
du_sym_2036 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2036 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.RightInverse._.Eq₁.trans
d_trans_2038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2038 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_2038 v4 v5 v6
du_trans_2038 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2038 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.RightInverse._.Eq₂._≈_
d__'8776'__2042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2042 = erased
-- Function.Bundles._.RightInverse._.Eq₂._≉_
d__'8777'__2044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2044 = erased
-- Function.Bundles._.RightInverse._.Eq₂.Carrier
d_Carrier_2046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> ()
d_Carrier_2046 = erased
-- Function.Bundles._.RightInverse._.Eq₂.isEquivalence
d_isEquivalence_2048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2048 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_2048 v4 v5 v6
du_isEquivalence_2048 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2048 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v4)))
-- Function.Bundles._.RightInverse._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_2050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2050 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_2050 v4 v5 v6
du_isPartialEquivalence_2050 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2050 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.RightInverse._.Eq₂.partialSetoid
d_partialSetoid_2052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_2052 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_2052 v4 v5 v6
du_partialSetoid_2052 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_2052 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4))))
-- Function.Bundles._.RightInverse._.Eq₂.rawSetoid
d_rawSetoid_2054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_2054 = erased
-- Function.Bundles._.RightInverse._.Eq₂.refl
d_refl_2056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny
d_refl_2056 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_2056 v4 v5 v6
du_refl_2056 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny
du_refl_2056 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v4))))
-- Function.Bundles._.RightInverse._.Eq₂.reflexive
d_reflexive_2058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2058 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_2058 v4 v5 v6
du_reflexive_2058 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2058 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.RightInverse._.Eq₂.setoid
d_setoid_2060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2060 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_2060 v4 v5 v6
du_setoid_2060 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2060 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3)))
-- Function.Bundles._.RightInverse._.Eq₂.sym
d_sym_2062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2062 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_2062 v4 v5 v6
du_sym_2062 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2062 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.RightInverse._.Eq₂.trans
d_trans_2064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2064 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_2064 v4 v5 v6
du_trans_2064 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2064 v0 v1 v2
  = let v3 = coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_440 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.RightInverse.equivalence
d_equivalence_2066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_RightInverse_1984 -> T_Equivalence_1810
d_equivalence_2066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_equivalence_2066 v6
du_equivalence_2066 :: T_RightInverse_1984 -> T_Equivalence_1810
du_equivalence_2066 v0
  = coe
      C_Equivalence'46'constructor_26829 (coe d_to_1996 (coe v0))
      (coe d_from_1998 (coe v0)) (coe d_to'45'cong_2000 (coe v0))
      (coe d_from'45'cong_2002 (coe v0))
-- Function.Bundles._.Inverse
d_Inverse_2068 a0 a1 a2 a3 a4 a5 = ()
data T_Inverse_2068
  = C_Inverse'46'constructor_39905 (AgdaAny -> AgdaAny)
                                   (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                   (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Function.Bundles._.Inverse.to
d_to_2080 :: T_Inverse_2068 -> AgdaAny -> AgdaAny
d_to_2080 v0
  = case coe v0 of
      C_Inverse'46'constructor_39905 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Inverse.from
d_from_2082 :: T_Inverse_2068 -> AgdaAny -> AgdaAny
d_from_2082 v0
  = case coe v0 of
      C_Inverse'46'constructor_39905 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Inverse.to-cong
d_to'45'cong_2084 ::
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'cong_2084 v0
  = case coe v0 of
      C_Inverse'46'constructor_39905 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Inverse.from-cong
d_from'45'cong_2086 ::
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_2086 v0
  = case coe v0 of
      C_Inverse'46'constructor_39905 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Inverse.inverse
d_inverse_2088 ::
  T_Inverse_2068 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2088 v0
  = case coe v0 of
      C_Inverse'46'constructor_39905 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.Inverse.inverseˡ
d_inverse'737'_2090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_2090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_inverse'737'_2090 v6 v7 v8
du_inverse'737'_2090 ::
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737'_2090 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (d_inverse_2088 (coe v0))
      v1 v2
-- Function.Bundles._.Inverse.inverseʳ
d_inverse'691'_2092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_2092 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_inverse'691'_2092 v6 v7 v8
du_inverse'691'_2092 ::
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691'_2092 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (d_inverse_2088 (coe v0))
      v1 v2
-- Function.Bundles._.Inverse.leftInverse
d_leftInverse_2094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> T_LeftInverse_1892
d_leftInverse_2094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_leftInverse_2094 v6
du_leftInverse_2094 :: T_Inverse_2068 -> T_LeftInverse_1892
du_leftInverse_2094 v0
  = coe
      C_LeftInverse'46'constructor_30891 (coe d_to_2080 (coe v0))
      (coe d_from_2082 (coe v0)) (coe d_to'45'cong_2084 (coe v0))
      (coe d_from'45'cong_2086 (coe v0))
      (coe du_inverse'737'_2090 (coe v0))
-- Function.Bundles._.Inverse.rightInverse
d_rightInverse_2096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> T_RightInverse_1984
d_rightInverse_2096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_rightInverse_2096 v6
du_rightInverse_2096 :: T_Inverse_2068 -> T_RightInverse_1984
du_rightInverse_2096 v0
  = coe
      C_RightInverse'46'constructor_35773 (coe d_to_2080 (coe v0))
      (coe d_from_2082 (coe v0)) (coe d_to'45'cong_2084 (coe v0))
      (coe d_from'45'cong_2086 (coe v0))
      (coe du_inverse'691'_2092 (coe v0))
-- Function.Bundles._.Inverse._.isLeftInverse
d_isLeftInverse_2100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_2100 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isLeftInverse_2100 v4 v5 v6
du_isLeftInverse_2100 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
du_isLeftInverse_2100 v0 v1 v2
  = coe
      du_isLeftInverse_1916 (coe v0) (coe v1)
      (coe du_leftInverse_2094 (coe v2))
-- Function.Bundles._.Inverse._.strictlyInverseˡ
d_strictlyInverse'737'_2102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
d_strictlyInverse'737'_2102 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_strictlyInverse'737'_2102 v4 v5 v6
du_strictlyInverse'737'_2102 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
du_strictlyInverse'737'_2102 v0 v1 v2
  = let v3 = coe du_leftInverse_2094 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_strictlyInverse'737'_416
         (coe d_from_1906 (coe v3))
         (coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Inverse._.isRightInverse
d_isRightInverse_2106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
d_isRightInverse_2106 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isRightInverse_2106 v4 v5 v6
du_isRightInverse_2106 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Function.Structures.T_IsRightInverse_428
du_isRightInverse_2106 v0 v1 v2
  = coe
      du_isRightInverse_2008 (coe v0) (coe v1)
      (coe du_rightInverse_2096 (coe v2))
-- Function.Bundles._.Inverse._.strictlyInverseʳ
d_strictlyInverse'691'_2108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
d_strictlyInverse'691'_2108 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_strictlyInverse'691'_2108 v4 v5 v6
du_strictlyInverse'691'_2108 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
du_strictlyInverse'691'_2108 v0 v1 v2
  = let v3 = coe du_rightInverse_2096 (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_strictlyInverse'691'_506
         (coe d_to_1996 (coe v3))
         (coe du_isRightInverse_2008 (coe v0) (coe v1) (coe v3)))
-- Function.Bundles._.Inverse.isInverse
d_isInverse_2110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> MAlonzo.Code.Function.Structures.T_IsInverse_514
d_isInverse_2110 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isInverse_2110 v4 v5 v6
du_isInverse_2110 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> MAlonzo.Code.Function.Structures.T_IsInverse_514
du_isInverse_2110 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsInverse'46'constructor_23193
      (coe
         du_isLeftInverse_1916 (coe v0) (coe v1)
         (coe du_leftInverse_2094 (coe v2)))
      (coe du_inverse'691'_2092 (coe v2))
-- Function.Bundles._.Inverse._.Eq₁._≈_
d__'8776'__2116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2116 = erased
-- Function.Bundles._.Inverse._.Eq₁._≉_
d__'8777'__2118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2118 = erased
-- Function.Bundles._.Inverse._.Eq₁.Carrier
d_Carrier_2120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> ()
d_Carrier_2120 = erased
-- Function.Bundles._.Inverse._.Eq₁.isEquivalence
d_isEquivalence_2122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2122 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_2122 v4 v5 v6
du_isEquivalence_2122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2122 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v5))))
-- Function.Bundles._.Inverse._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_2124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2124 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_2124 v4 v5 v6
du_isPartialEquivalence_2124 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2124 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Inverse._.Eq₁.partialSetoid
d_partialSetoid_2126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_2126 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_2126 v4 v5 v6
du_partialSetoid_2126 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_2126 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
               (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5)))))
-- Function.Bundles._.Inverse._.Eq₁.rawSetoid
d_rawSetoid_2128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_2128 = erased
-- Function.Bundles._.Inverse._.Eq₁.refl
d_refl_2130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
d_refl_2130 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_2130 v4 v5 v6
du_refl_2130 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
du_refl_2130 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (coe
                  MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
                  (coe v5)))))
-- Function.Bundles._.Inverse._.Eq₁.reflexive
d_reflexive_2132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2132 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_2132 v4 v5 v6
du_reflexive_2132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2132 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (\ v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v6))
                    v7))))
-- Function.Bundles._.Inverse._.Eq₁.setoid
d_setoid_2134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2134 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_2134 v4 v5 v6
du_setoid_2134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2134 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.du_setoid_40
            (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4))))
-- Function.Bundles._.Inverse._.Eq₁.sym
d_sym_2136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2136 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_2136 v4 v5 v6
du_sym_2136 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2136 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Inverse._.Eq₁.trans
d_trans_2138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2138 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_2138 v4 v5 v6
du_trans_2138 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2138 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Inverse._.Eq₂._≈_
d__'8776'__2142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2142 = erased
-- Function.Bundles._.Inverse._.Eq₂._≉_
d__'8777'__2144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2144 = erased
-- Function.Bundles._.Inverse._.Eq₂.Carrier
d_Carrier_2146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> ()
d_Carrier_2146 = erased
-- Function.Bundles._.Inverse._.Eq₂.isEquivalence
d_isEquivalence_2148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2148 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_2148 v4 v5 v6
du_isEquivalence_2148 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2148 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v5))))
-- Function.Bundles._.Inverse._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_2150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2150 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_2150 v4 v5 v6
du_isPartialEquivalence_2150 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2150 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Inverse._.Eq₂.partialSetoid
d_partialSetoid_2152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_2152 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_2152 v4 v5 v6
du_partialSetoid_2152 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_2152 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
               (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5)))))
-- Function.Bundles._.Inverse._.Eq₂.rawSetoid
d_rawSetoid_2154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_2154 = erased
-- Function.Bundles._.Inverse._.Eq₂.refl
d_refl_2156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
d_refl_2156 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_2156 v4 v5 v6
du_refl_2156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny
du_refl_2156 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (coe
                  MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
                  (coe v5)))))
-- Function.Bundles._.Inverse._.Eq₂.reflexive
d_reflexive_2158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2158 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_2158 v4 v5 v6
du_reflexive_2158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2158 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (\ v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v6))
                    v7))))
-- Function.Bundles._.Inverse._.Eq₂.setoid
d_setoid_2160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2160 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_2160 v4 v5 v6
du_setoid_2160 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2160 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.du_setoid_68
            (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4))))
-- Function.Bundles._.Inverse._.Eq₂.sym
d_sym_2162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2162 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_2162 v4 v5 v6
du_sym_2162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2162 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.Inverse._.Eq₂.trans
d_trans_2164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2164 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_2164 v4 v5 v6
du_trans_2164 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2164 v0 v1 v2
  = let v3 = coe du_isInverse_2110 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isLeftInverse_524 (coe v3) in
       coe
         (let v5
                = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v4) in
          coe
            (let v6
                   = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
-- Function.Bundles._.BiEquivalence
d_BiEquivalence_2166 a0 a1 a2 a3 a4 a5 = ()
data T_BiEquivalence_2166
  = C_BiEquivalence'46'constructor_46061 (AgdaAny -> AgdaAny)
                                         (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Bundles._.BiEquivalence.to
d_to_2180 :: T_BiEquivalence_2166 -> AgdaAny -> AgdaAny
d_to_2180 v0
  = case coe v0 of
      C_BiEquivalence'46'constructor_46061 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiEquivalence.from₁
d_from'8321'_2182 :: T_BiEquivalence_2166 -> AgdaAny -> AgdaAny
d_from'8321'_2182 v0
  = case coe v0 of
      C_BiEquivalence'46'constructor_46061 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiEquivalence.from₂
d_from'8322'_2184 :: T_BiEquivalence_2166 -> AgdaAny -> AgdaAny
d_from'8322'_2184 v0
  = case coe v0 of
      C_BiEquivalence'46'constructor_46061 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiEquivalence.to-cong
d_to'45'cong_2186 ::
  T_BiEquivalence_2166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'cong_2186 v0
  = case coe v0 of
      C_BiEquivalence'46'constructor_46061 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiEquivalence.from₁-cong
d_from'8321''45'cong_2188 ::
  T_BiEquivalence_2166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8321''45'cong_2188 v0
  = case coe v0 of
      C_BiEquivalence'46'constructor_46061 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiEquivalence.from₂-cong
d_from'8322''45'cong_2190 ::
  T_BiEquivalence_2166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8322''45'cong_2190 v0
  = case coe v0 of
      C_BiEquivalence'46'constructor_46061 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse
d_BiInverse_2192 a0 a1 a2 a3 a4 a5 = ()
data T_BiInverse_2192
  = C_BiInverse'46'constructor_48807 (AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Bundles._.BiInverse.to
d_to_2210 :: T_BiInverse_2192 -> AgdaAny -> AgdaAny
d_to_2210 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.from₁
d_from'8321'_2212 :: T_BiInverse_2192 -> AgdaAny -> AgdaAny
d_from'8321'_2212 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.from₂
d_from'8322'_2214 :: T_BiInverse_2192 -> AgdaAny -> AgdaAny
d_from'8322'_2214 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.to-cong
d_to'45'cong_2216 ::
  T_BiInverse_2192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'cong_2216 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.from₁-cong
d_from'8321''45'cong_2218 ::
  T_BiInverse_2192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8321''45'cong_2218 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.from₂-cong
d_from'8322''45'cong_2220 ::
  T_BiInverse_2192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8322''45'cong_2220 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.inverseˡ
d_inverse'737'_2222 ::
  T_BiInverse_2192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_2222 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.inverseʳ
d_inverse'691'_2224 ::
  T_BiInverse_2192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_2224 v0
  = case coe v0 of
      C_BiInverse'46'constructor_48807 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Bundles._.BiInverse.to-isCongruent
d_to'45'isCongruent_2226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_BiInverse_2192 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_to'45'isCongruent_2226 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_to'45'isCongruent_2226 v4 v5 v6
du_to'45'isCongruent_2226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_BiInverse_2192 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_to'45'isCongruent_2226 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsCongruent'46'constructor_985
      (coe d_to'45'cong_2216 (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
-- Function.Bundles._.BiInverse.isBiInverse
d_isBiInverse_2228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_BiInverse_2192 ->
  MAlonzo.Code.Function.Structures.T_IsBiInverse_698
d_isBiInverse_2228 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isBiInverse_2228 v4 v5 v6
du_isBiInverse_2228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_BiInverse_2192 ->
  MAlonzo.Code.Function.Structures.T_IsBiInverse_698
du_isBiInverse_2228 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.C_IsBiInverse'46'constructor_33751
      (coe du_to'45'isCongruent_2226 (coe v0) (coe v1) (coe v2))
      (coe d_from'8321''45'cong_2218 (coe v2))
      (coe d_from'8322''45'cong_2220 (coe v2))
      (coe d_inverse'737'_2222 (coe v2))
      (coe d_inverse'691'_2224 (coe v2))
-- Function.Bundles._.BiInverse.biEquivalence
d_biEquivalence_2230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_BiInverse_2192 -> T_BiEquivalence_2166
d_biEquivalence_2230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_biEquivalence_2230 v6
du_biEquivalence_2230 :: T_BiInverse_2192 -> T_BiEquivalence_2166
du_biEquivalence_2230 v0
  = coe
      C_BiEquivalence'46'constructor_46061 (coe d_to_2210 (coe v0))
      (coe d_from'8321'_2212 (coe v0)) (coe d_from'8322'_2214 (coe v0))
      (coe d_to'45'cong_2216 (coe v0))
      (coe d_from'8321''45'cong_2218 (coe v0))
      (coe d_from'8322''45'cong_2220 (coe v0))
-- Function.Bundles._.SplitSurjection
d_SplitSurjection_2232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 -> ()
d_SplitSurjection_2232 = erased
-- Function.Bundles._.SplitSurjection.equivalence
d_equivalence_2238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> T_Equivalence_1810
d_equivalence_2238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_equivalence_2238 v6
du_equivalence_2238 :: T_LeftInverse_1892 -> T_Equivalence_1810
du_equivalence_2238 v0 = coe du_equivalence_1976 (coe v0)
-- Function.Bundles._.SplitSurjection.from
d_from_2240 :: T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_from_2240 v0 = coe d_from_1906 (coe v0)
-- Function.Bundles._.SplitSurjection.from-cong
d_from'45'cong_2242 ::
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_2242 v0 = coe d_from'45'cong_1910 (coe v0)
-- Function.Bundles._.SplitSurjection.inverseˡ
d_inverse'737'_2244 ::
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_2244 v0 = coe d_inverse'737'_1912 (coe v0)
-- Function.Bundles._.SplitSurjection.isCongruent
d_isCongruent_2246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
d_isCongruent_2246 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCongruent_2246 v4 v5 v6
du_isCongruent_2246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsCongruent_22
du_isCongruent_2246 v0 v1 v2
  = coe du_isCongruent_1914 (coe v0) (coe v1) (coe v2)
-- Function.Bundles._.SplitSurjection.isLeftInverse
d_isLeftInverse_2248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
d_isLeftInverse_2248 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isLeftInverse_2248 v4 v5 v6
du_isLeftInverse_2248 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsLeftInverse_338
du_isLeftInverse_2248 v0 v1 v2
  = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2)
-- Function.Bundles._.SplitSurjection.isSplitSurjection
d_isSplitSurjection_2250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSplitSurjection_788
d_isSplitSurjection_2250 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isSplitSurjection_2250 v4 v5 v6
du_isSplitSurjection_2250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSplitSurjection_788
du_isSplitSurjection_2250 v0 v1 v2
  = coe du_isSplitSurjection_1978 (coe v0) (coe v1) (coe v2)
-- Function.Bundles._.SplitSurjection.isSurjection
d_isSurjection_2252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
d_isSurjection_2252 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isSurjection_2252 v4 v5 v6
du_isSurjection_2252 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Structures.T_IsSurjection_170
du_isSurjection_2252 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_isSurjection_420
      (coe d_from_1906 (coe v2))
      (coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.SplitSurjection.strictlyInverseˡ
d_strictlyInverse'737'_2254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_strictlyInverse'737'_2254 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_strictlyInverse'737'_2254 v4 v5 v6
du_strictlyInverse'737'_2254 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
du_strictlyInverse'737'_2254 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Structures.du_strictlyInverse'737'_416
      (coe d_from_1906 (coe v2))
      (coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2))
-- Function.Bundles._.SplitSurjection.surjection
d_surjection_2256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> T_Surjection_894
d_surjection_2256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_surjection_2256 v6
du_surjection_2256 :: T_LeftInverse_1892 -> T_Surjection_894
du_surjection_2256 v0 = coe du_surjection_1980 (coe v0)
-- Function.Bundles._.SplitSurjection.to
d_to_2258 :: T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_to_2258 v0 = coe d_to_1904 (coe v0)
-- Function.Bundles._.SplitSurjection.to-cong
d_to'45'cong_2260 ::
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'cong_2260 v0 = coe d_to'45'cong_1908 (coe v0)
-- Function.Bundles._.SplitSurjection.Eq₁._≈_
d__'8776'__2264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2264 = erased
-- Function.Bundles._.SplitSurjection.Eq₁._≉_
d__'8777'__2266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2266 = erased
-- Function.Bundles._.SplitSurjection.Eq₁.Carrier
d_Carrier_2268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> ()
d_Carrier_2268 = erased
-- Function.Bundles._.SplitSurjection.Eq₁.isEquivalence
d_isEquivalence_2270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2270 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_2270 v4 v5 v6
du_isEquivalence_2270 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2270 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
            (coe v4)))
-- Function.Bundles._.SplitSurjection.Eq₁.isPartialEquivalence
d_isPartialEquivalence_2272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2272 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_2272 v4 v5 v6
du_isPartialEquivalence_2272 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2272 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.SplitSurjection.Eq₁.partialSetoid
d_partialSetoid_2274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_2274 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_2274 v4 v5 v6
du_partialSetoid_2274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_2274 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4))))
-- Function.Bundles._.SplitSurjection.Eq₁.rawSetoid
d_rawSetoid_2276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_2276 = erased
-- Function.Bundles._.SplitSurjection.Eq₁.refl
d_refl_2278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_refl_2278 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_2278 v4 v5 v6
du_refl_2278 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
du_refl_2278 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8321'_34
               (coe v4))))
-- Function.Bundles._.SplitSurjection.Eq₁.reflexive
d_reflexive_2280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2280 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_2280 v4 v5 v6
du_reflexive_2280 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2280 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.SplitSurjection.Eq₁.setoid
d_setoid_2282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2282 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_2282 v4 v5 v6
du_setoid_2282 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2282 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_40
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3)))
-- Function.Bundles._.SplitSurjection.Eq₁.sym
d_sym_2284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2284 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_2284 v4 v5 v6
du_sym_2284 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2284 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.SplitSurjection.Eq₁.trans
d_trans_2286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2286 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_2286 v4 v5 v6
du_trans_2286 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2286 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.SplitSurjection.Eq₂._≈_
d__'8776'__2290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2290 = erased
-- Function.Bundles._.SplitSurjection.Eq₂._≉_
d__'8777'__2292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2292 = erased
-- Function.Bundles._.SplitSurjection.Eq₂.Carrier
d_Carrier_2294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> ()
d_Carrier_2294 = erased
-- Function.Bundles._.SplitSurjection.Eq₂.isEquivalence
d_isEquivalence_2296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2296 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isEquivalence_2296 v4 v5 v6
du_isEquivalence_2296 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2296 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
            (coe v4)))
-- Function.Bundles._.SplitSurjection.Eq₂.isPartialEquivalence
d_isPartialEquivalence_2298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2298 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isPartialEquivalence_2298 v4 v5 v6
du_isPartialEquivalence_2298 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2298 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.SplitSurjection.Eq₂.partialSetoid
d_partialSetoid_2300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_2300 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_partialSetoid_2300 v4 v5 v6
du_partialSetoid_2300 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_2300 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4))))
-- Function.Bundles._.SplitSurjection.Eq₂.rawSetoid
d_rawSetoid_2302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_2302 = erased
-- Function.Bundles._.SplitSurjection.Eq₂.refl
d_refl_2304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
d_refl_2304 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_refl_2304 v4 v5 v6
du_refl_2304 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny
du_refl_2304 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
               (coe v4))))
-- Function.Bundles._.SplitSurjection.Eq₂.reflexive
d_reflexive_2306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2306 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_reflexive_2306 v4 v5 v6
du_reflexive_2306 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2306 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v5))
                 v6)))
-- Function.Bundles._.SplitSurjection.Eq₂.setoid
d_setoid_2308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2308 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_setoid_2308 v4 v5 v6
du_setoid_2308 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2308 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (coe
         MAlonzo.Code.Function.Structures.du_setoid_68
         (coe MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3)))
-- Function.Bundles._.SplitSurjection.Eq₂.sym
d_sym_2310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2310 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_2310 v4 v5 v6
du_sym_2310 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2310 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._.SplitSurjection.Eq₂.trans
d_trans_2312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2312 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_trans_2312 v4 v5 v6
du_trans_2312 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  T_LeftInverse_1892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2312 v0 v1 v2
  = let v3 = coe du_isLeftInverse_1916 (coe v0) (coe v1) (coe v2) in
    coe
      (let v4
             = MAlonzo.Code.Function.Structures.d_isCongruent_350 (coe v3) in
       coe
         (let v5
                = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v5)))))
-- Function.Bundles._⟶ₛ_
d__'10230''8347'__2314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 -> ()
d__'10230''8347'__2314 = erased
-- Function.Bundles._⟶_
d__'10230'__2316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'10230'__2316 = erased
-- Function.Bundles._↣_
d__'8611'__2322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8611'__2322 = erased
-- Function.Bundles._↠_
d__'8608'__2328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8608'__2328 = erased
-- Function.Bundles._⤖_
d__'10518'__2334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'10518'__2334 = erased
-- Function.Bundles._⇔_
d__'8660'__2340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8660'__2340 = erased
-- Function.Bundles._↩_
d__'8617'__2346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8617'__2346 = erased
-- Function.Bundles._↪_
d__'8618'__2352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8618'__2352 = erased
-- Function.Bundles._↩↪_
d__'8617''8618'__2358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8617''8618'__2358 = erased
-- Function.Bundles._↔_
d__'8596'__2364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8596'__2364 = erased
-- Function.Bundles._.mk⟶
d_mk'10230'_2382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> AgdaAny) -> T_Func_754
d_mk'10230'_2382 ~v0 ~v1 ~v2 ~v3 v4 = du_mk'10230'_2382 v4
du_mk'10230'_2382 :: (AgdaAny -> AgdaAny) -> T_Func_754
du_mk'10230'_2382 v0
  = coe C_Func'46'constructor_6655 (coe v0) erased
-- Function.Bundles._.mk↣
d_mk'8611'_2388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_Injection_820
d_mk'8611'_2388 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_mk'8611'_2388 v4 v5
du_mk'8611'_2388 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_Injection_820
du_mk'8611'_2388 v0 v1
  = coe C_Injection'46'constructor_9107 (coe v0) erased (coe v1)
-- Function.Bundles._.mk↠
d_mk'8608'_2396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_Surjection_894
d_mk'8608'_2396 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_mk'8608'_2396 v4 v5
du_mk'8608'_2396 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_Surjection_894
du_mk'8608'_2396 v0 v1
  = coe C_Surjection'46'constructor_11713 (coe v0) erased (coe v1)
-- Function.Bundles._.mk⤖
d_mk'10518'_2404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Bijection_978
d_mk'10518'_2404 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_mk'10518'_2404 v4 v5
du_mk'10518'_2404 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Bijection_978
du_mk'10518'_2404 v0 v1
  = coe C_Bijection'46'constructor_15877 (coe v0) erased (coe v1)
-- Function.Bundles._.mk⇔
d_mk'8660'_2414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T_Equivalence_1810
d_mk'8660'_2414 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_mk'8660'_2414 v4 v5
du_mk'8660'_2414 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T_Equivalence_1810
du_mk'8660'_2414 v0 v1
  = coe
      C_Equivalence'46'constructor_26829 (coe v0) (coe v1) erased erased
-- Function.Bundles._.mk↩
d_mk'8617'_2424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_LeftInverse_1892
d_mk'8617'_2424 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_mk'8617'_2424 v4 v5 v6
du_mk'8617'_2424 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_LeftInverse_1892
du_mk'8617'_2424 v0 v1 v2
  = coe
      C_LeftInverse'46'constructor_30891 (coe v0) (coe v1) erased erased
      (coe v2)
-- Function.Bundles._.mk↪
d_mk'8618'_2436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_RightInverse_1984
d_mk'8618'_2436 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_mk'8618'_2436 v4 v5 v6
du_mk'8618'_2436 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_RightInverse_1984
du_mk'8618'_2436 v0 v1 v2
  = coe
      C_RightInverse'46'constructor_35773 (coe v0) (coe v1) erased erased
      (coe v2)
-- Function.Bundles._.mk↩↪
d_mk'8617''8618'_2450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_BiInverse_2192
d_mk'8617''8618'_2450 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_mk'8617''8618'_2450 v4 v5 v6 v7 v8
du_mk'8617''8618'_2450 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_BiInverse_2192
du_mk'8617''8618'_2450 v0 v1 v2 v3 v4
  = coe
      C_BiInverse'46'constructor_48807 (coe v0) (coe v1) (coe v2) erased
      erased erased (coe v3) (coe v4)
-- Function.Bundles._.mk↔
d_mk'8596'_2466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Inverse_2068
d_mk'8596'_2466 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_mk'8596'_2466 v4 v5 v6
du_mk'8596'_2466 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Inverse_2068
du_mk'8596'_2466 v0 v1 v2
  = coe
      C_Inverse'46'constructor_39905 (coe v0) (coe v1) erased erased
      (coe v2)
-- Function.Bundles._.mk↠ₛ
d_mk'8608''8347'_2476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_Surjection_894
d_mk'8608''8347'_2476 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_mk'8608''8347'_2476 v4 v5
du_mk'8608''8347'_2476 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_Surjection_894
du_mk'8608''8347'_2476 v0 v1
  = coe
      du_mk'8608'_2396 (coe v0)
      (coe
         MAlonzo.Code.Function.Consequences.Propositional.du_strictlySurjective'8658'surjective_40
         v0 v1)
-- Function.Bundles._.mk↔ₛ′
d_mk'8596''8347''8242'_2482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_Inverse_2068
d_mk'8596''8347''8242'_2482 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7
  = du_mk'8596''8347''8242'_2482 v4 v5
du_mk'8596''8347''8242'_2482 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T_Inverse_2068
du_mk'8596''8347''8242'_2482 v0 v1
  = coe
      du_mk'8596'_2466 (coe v0) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Function.Bundles._._⟨$⟩_
d__'10216''36''10217'__2508 :: T_Func_754 -> AgdaAny -> AgdaAny
d__'10216''36''10217'__2508 v0 = coe d_to_760 (coe v0)
