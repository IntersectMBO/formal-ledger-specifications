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

module MAlonzo.Code.Function.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles.Raw
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Structures.IsCongruent
d_IsCongruent_22 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsCongruent_22
  = C_IsCongruent'46'constructor_985 (AgdaAny ->
                                      AgdaAny -> AgdaAny -> AgdaAny)
                                     MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
                                     MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
-- Function.Structures.IsCongruent.cong
d_cong_32 ::
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_32 v0
  = case coe v0 of
      C_IsCongruent'46'constructor_985 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsCongruent.isEquivalence₁
d_isEquivalence'8321'_34 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_34 v0
  = case coe v0 of
      C_IsCongruent'46'constructor_985 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsCongruent.isEquivalence₂
d_isEquivalence'8322'_36 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_36 v0
  = case coe v0 of
      C_IsCongruent'46'constructor_985 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsCongruent.Eq₁.setoid
d_setoid_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_40 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_40 v9
du_setoid_40 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_40 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_761
      (d_isEquivalence'8321'_34 (coe v0))
-- Function.Structures.IsCongruent.Eq₁._._≈_
d__'8776'__44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__44 = erased
-- Function.Structures.IsCongruent.Eq₁._._≉_
d__'8777'__46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> ()
d__'8777'__46 = erased
-- Function.Structures.IsCongruent.Eq₁._.Carrier
d_Carrier_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsCongruent_22 -> ()
d_Carrier_48 = erased
-- Function.Structures.IsCongruent.Eq₁._.isEquivalence
d_isEquivalence_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_50 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_50 v9
du_isEquivalence_50 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_50 v0 = coe d_isEquivalence'8321'_34 (coe v0)
-- Function.Structures.IsCongruent.Eq₁._.isPartialEquivalence
d_isPartialEquivalence_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_52 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_52 v9
du_isPartialEquivalence_52 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_52 v0
  = let v1 = coe du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.IsCongruent.Eq₁._.partialSetoid
d_partialSetoid_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_54 v9
du_partialSetoid_54 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_54 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
      (coe du_setoid_40 (coe v0))
-- Function.Structures.IsCongruent.Eq₁._.rawSetoid
d_rawSetoid_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_56 = erased
-- Function.Structures.IsCongruent.Eq₁._.refl
d_refl_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsCongruent_22 -> AgdaAny -> AgdaAny
d_refl_58 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_58 v9
du_refl_58 :: T_IsCongruent_22 -> AgdaAny -> AgdaAny
du_refl_58 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence'8321'_34 (coe v0))
-- Function.Structures.IsCongruent.Eq₁._.reflexive
d_reflexive_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_60 v9
du_reflexive_60 ::
  T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_60 v0
  = let v1 = coe du_setoid_40 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Function.Structures.IsCongruent.Eq₁._.sym
d_sym_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_62 v9
du_sym_62 ::
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_62 v0
  = let v1 = coe du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.IsCongruent.Eq₁._.trans
d_trans_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_trans_64 v9
du_trans_64 ::
  T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_64 v0
  = let v1 = coe du_setoid_40 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.IsCongruent.Eq₂.setoid
d_setoid_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_68 v9
du_setoid_68 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_68 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_761
      (d_isEquivalence'8322'_36 (coe v0))
-- Function.Structures.IsCongruent.Eq₂._._≈_
d__'8776'__72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__72 = erased
-- Function.Structures.IsCongruent.Eq₂._._≉_
d__'8777'__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> ()
d__'8777'__74 = erased
-- Function.Structures.IsCongruent.Eq₂._.Carrier
d_Carrier_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsCongruent_22 -> ()
d_Carrier_76 = erased
-- Function.Structures.IsCongruent.Eq₂._.isEquivalence
d_isEquivalence_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_78 v9
du_isEquivalence_78 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_78 v0 = coe d_isEquivalence'8322'_36 (coe v0)
-- Function.Structures.IsCongruent.Eq₂._.isPartialEquivalence
d_isPartialEquivalence_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_80 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_80 v9
du_isPartialEquivalence_80 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_80 v0
  = let v1 = coe du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.IsCongruent.Eq₂._.partialSetoid
d_partialSetoid_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_82 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_82 v9
du_partialSetoid_82 ::
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_82 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
      (coe du_setoid_68 (coe v0))
-- Function.Structures.IsCongruent.Eq₂._.rawSetoid
d_rawSetoid_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_84 = erased
-- Function.Structures.IsCongruent.Eq₂._.refl
d_refl_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsCongruent_22 -> AgdaAny -> AgdaAny
d_refl_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_86 v9
du_refl_86 :: T_IsCongruent_22 -> AgdaAny -> AgdaAny
du_refl_86 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence'8322'_36 (coe v0))
-- Function.Structures.IsCongruent.Eq₂._.reflexive
d_reflexive_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_88 v9
du_reflexive_88 ::
  T_IsCongruent_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_88 v0
  = let v1 = coe du_setoid_68 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Function.Structures.IsCongruent.Eq₂._.sym
d_sym_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_90 v9
du_sym_90 ::
  T_IsCongruent_22 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_90 v0
  = let v1 = coe du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.IsCongruent.Eq₂._.trans
d_trans_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_trans_92 v9
du_trans_92 ::
  T_IsCongruent_22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_92 v0
  = let v1 = coe du_setoid_68 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Function.Structures.IsInjection
d_IsInjection_96 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsInjection_96
  = C_IsInjection'46'constructor_4117 T_IsCongruent_22
                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Structures.IsInjection.isCongruent
d_isCongruent_104 :: T_IsInjection_96 -> T_IsCongruent_22
d_isCongruent_104 v0
  = case coe v0 of
      C_IsInjection'46'constructor_4117 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsInjection.injective
d_injective_106 ::
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_106 v0
  = case coe v0 of
      C_IsInjection'46'constructor_4117 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsInjection._.cong
d_cong_110 ::
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_110 v0 = coe d_cong_32 (coe d_isCongruent_104 (coe v0))
-- Function.Structures.IsInjection._.isEquivalence₁
d_isEquivalence'8321'_112 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_112 v0
  = coe d_isEquivalence'8321'_34 (coe d_isCongruent_104 (coe v0))
-- Function.Structures.IsInjection._.isEquivalence₂
d_isEquivalence'8322'_114 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_114 v0
  = coe d_isEquivalence'8322'_36 (coe d_isCongruent_104 (coe v0))
-- Function.Structures.IsInjection._.Eq₁._≈_
d__'8776'__118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> ()
d__'8776'__118 = erased
-- Function.Structures.IsInjection._.Eq₁._≉_
d__'8777'__120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> ()
d__'8777'__120 = erased
-- Function.Structures.IsInjection._.Eq₁.Carrier
d_Carrier_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsInjection_96 -> ()
d_Carrier_122 = erased
-- Function.Structures.IsInjection._.Eq₁.isEquivalence
d_isEquivalence_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_124 v9
du_isEquivalence_124 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_124 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe (coe d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.IsInjection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_126 v9
du_isPartialEquivalence_126 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_126 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsInjection._.Eq₁.partialSetoid
d_partialSetoid_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_128 v9
du_partialSetoid_128 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_128 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_40 (coe v1)))
-- Function.Structures.IsInjection._.Eq₁.rawSetoid
d_rawSetoid_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_130 = erased
-- Function.Structures.IsInjection._.Eq₁.refl
d_refl_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsInjection_96 -> AgdaAny -> AgdaAny
d_refl_132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_132 v9
du_refl_132 :: T_IsInjection_96 -> AgdaAny -> AgdaAny
du_refl_132 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8321'_34 (coe v1)))
-- Function.Structures.IsInjection._.Eq₁.reflexive
d_reflexive_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_134 v9
du_reflexive_134 ::
  T_IsInjection_96 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_134 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsInjection._.Eq₁.setoid
d_setoid_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_136 v9
du_setoid_136 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_136 v0
  = coe du_setoid_40 (coe d_isCongruent_104 (coe v0))
-- Function.Structures.IsInjection._.Eq₁.sym
d_sym_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_138 v9
du_sym_138 ::
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_138 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsInjection._.Eq₁.trans
d_trans_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_140 v9
du_trans_140 ::
  T_IsInjection_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_140 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsInjection._.Eq₂._≈_
d__'8776'__144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> ()
d__'8776'__144 = erased
-- Function.Structures.IsInjection._.Eq₂._≉_
d__'8777'__146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> ()
d__'8777'__146 = erased
-- Function.Structures.IsInjection._.Eq₂.Carrier
d_Carrier_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsInjection_96 -> ()
d_Carrier_148 = erased
-- Function.Structures.IsInjection._.Eq₂.isEquivalence
d_isEquivalence_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_150 v9
du_isEquivalence_150 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_150 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe (coe d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.IsInjection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_152 v9
du_isPartialEquivalence_152 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_152 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsInjection._.Eq₂.partialSetoid
d_partialSetoid_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_154 v9
du_partialSetoid_154 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_154 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_68 (coe v1)))
-- Function.Structures.IsInjection._.Eq₂.rawSetoid
d_rawSetoid_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_156 = erased
-- Function.Structures.IsInjection._.Eq₂.refl
d_refl_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsInjection_96 -> AgdaAny -> AgdaAny
d_refl_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_158 v9
du_refl_158 :: T_IsInjection_96 -> AgdaAny -> AgdaAny
du_refl_158 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8322'_36 (coe v1)))
-- Function.Structures.IsInjection._.Eq₂.reflexive
d_reflexive_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_160 v9
du_reflexive_160 ::
  T_IsInjection_96 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_160 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsInjection._.Eq₂.setoid
d_setoid_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_162 v9
du_setoid_162 ::
  T_IsInjection_96 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_162 v0
  = coe du_setoid_68 (coe d_isCongruent_104 (coe v0))
-- Function.Structures.IsInjection._.Eq₂.sym
d_sym_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_164 v9
du_sym_164 ::
  T_IsInjection_96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_164 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsInjection._.Eq₂.trans
d_trans_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsInjection_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_166 v9
du_trans_166 ::
  T_IsInjection_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_166 v0
  = let v1 = d_isCongruent_104 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSurjection
d_IsSurjection_170 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsSurjection_170
  = C_IsSurjection'46'constructor_6703 T_IsCongruent_22
                                       (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Function.Structures.IsSurjection.isCongruent
d_isCongruent_178 :: T_IsSurjection_170 -> T_IsCongruent_22
d_isCongruent_178 v0
  = case coe v0 of
      C_IsSurjection'46'constructor_6703 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsSurjection.surjective
d_surjective_180 ::
  T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_180 v0
  = case coe v0 of
      C_IsSurjection'46'constructor_6703 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsSurjection._.cong
d_cong_184 ::
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_184 v0 = coe d_cong_32 (coe d_isCongruent_178 (coe v0))
-- Function.Structures.IsSurjection._.isEquivalence₁
d_isEquivalence'8321'_186 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_186 v0
  = coe d_isEquivalence'8321'_34 (coe d_isCongruent_178 (coe v0))
-- Function.Structures.IsSurjection._.isEquivalence₂
d_isEquivalence'8322'_188 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_188 v0
  = coe d_isEquivalence'8322'_36 (coe d_isCongruent_178 (coe v0))
-- Function.Structures.IsSurjection._.Eq₁._≈_
d__'8776'__192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> ()
d__'8776'__192 = erased
-- Function.Structures.IsSurjection._.Eq₁._≉_
d__'8777'__194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> ()
d__'8777'__194 = erased
-- Function.Structures.IsSurjection._.Eq₁.Carrier
d_Carrier_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsSurjection_170 -> ()
d_Carrier_196 = erased
-- Function.Structures.IsSurjection._.Eq₁.isEquivalence
d_isEquivalence_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_198 v9
du_isEquivalence_198 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_198 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe (coe d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.IsSurjection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_200 v9
du_isPartialEquivalence_200 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_200 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSurjection._.Eq₁.partialSetoid
d_partialSetoid_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_202 v9
du_partialSetoid_202 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_202 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_40 (coe v1)))
-- Function.Structures.IsSurjection._.Eq₁.rawSetoid
d_rawSetoid_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_204 = erased
-- Function.Structures.IsSurjection._.Eq₁.refl
d_refl_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsSurjection_170 -> AgdaAny -> AgdaAny
d_refl_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_206 v9
du_refl_206 :: T_IsSurjection_170 -> AgdaAny -> AgdaAny
du_refl_206 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8321'_34 (coe v1)))
-- Function.Structures.IsSurjection._.Eq₁.reflexive
d_reflexive_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_208 v9
du_reflexive_208 ::
  T_IsSurjection_170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_208 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsSurjection._.Eq₁.setoid
d_setoid_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_210 v9
du_setoid_210 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_210 v0
  = coe du_setoid_40 (coe d_isCongruent_178 (coe v0))
-- Function.Structures.IsSurjection._.Eq₁.sym
d_sym_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_212 v9
du_sym_212 ::
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_212 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSurjection._.Eq₁.trans
d_trans_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_214 v9
du_trans_214 ::
  T_IsSurjection_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_214 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSurjection._.Eq₂._≈_
d__'8776'__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> ()
d__'8776'__218 = erased
-- Function.Structures.IsSurjection._.Eq₂._≉_
d__'8777'__220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> ()
d__'8777'__220 = erased
-- Function.Structures.IsSurjection._.Eq₂.Carrier
d_Carrier_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsSurjection_170 -> ()
d_Carrier_222 = erased
-- Function.Structures.IsSurjection._.Eq₂.isEquivalence
d_isEquivalence_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_224 v9
du_isEquivalence_224 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_224 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe (coe d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.IsSurjection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_226 v9
du_isPartialEquivalence_226 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_226 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSurjection._.Eq₂.partialSetoid
d_partialSetoid_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_228 v9
du_partialSetoid_228 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_228 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_68 (coe v1)))
-- Function.Structures.IsSurjection._.Eq₂.rawSetoid
d_rawSetoid_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_230 = erased
-- Function.Structures.IsSurjection._.Eq₂.refl
d_refl_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsSurjection_170 -> AgdaAny -> AgdaAny
d_refl_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_232 v9
du_refl_232 :: T_IsSurjection_170 -> AgdaAny -> AgdaAny
du_refl_232 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8322'_36 (coe v1)))
-- Function.Structures.IsSurjection._.Eq₂.reflexive
d_reflexive_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_234 v9
du_reflexive_234 ::
  T_IsSurjection_170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_234 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsSurjection._.Eq₂.setoid
d_setoid_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_236 v9
du_setoid_236 ::
  T_IsSurjection_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_236 v0
  = coe du_setoid_68 (coe d_isCongruent_178 (coe v0))
-- Function.Structures.IsSurjection._.Eq₂.sym
d_sym_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_238 v9
du_sym_238 ::
  T_IsSurjection_170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_238 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSurjection._.Eq₂.trans
d_trans_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_240 v9
du_trans_240 ::
  T_IsSurjection_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_240 v0
  = let v1 = d_isCongruent_178 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSurjection.strictlySurjective
d_strictlySurjective_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictlySurjective_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_strictlySurjective_242 v9 v10
du_strictlySurjective_242 ::
  T_IsSurjection_170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictlySurjective_242 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_map'8322'_150
      (\ v2 v3 ->
         coe
           v3 v2
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (d_isEquivalence'8321'_34 (coe d_isCongruent_178 (coe v0))) v2))
      (coe d_surjective_180 v0 v1)
-- Function.Structures.IsBijection
d_IsBijection_250 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsBijection_250
  = C_IsBijection'46'constructor_10473 T_IsInjection_96
                                       (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Function.Structures.IsBijection.isInjection
d_isInjection_258 :: T_IsBijection_250 -> T_IsInjection_96
d_isInjection_258 v0
  = case coe v0 of
      C_IsBijection'46'constructor_10473 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBijection.surjective
d_surjective_260 ::
  T_IsBijection_250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_260 v0
  = case coe v0 of
      C_IsBijection'46'constructor_10473 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBijection._.cong
d_cong_264 ::
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_264 v0
  = coe
      d_cong_32 (coe d_isCongruent_104 (coe d_isInjection_258 (coe v0)))
-- Function.Structures.IsBijection._.injective
d_injective_266 ::
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_266 v0
  = coe d_injective_106 (coe d_isInjection_258 (coe v0))
-- Function.Structures.IsBijection._.isCongruent
d_isCongruent_268 :: T_IsBijection_250 -> T_IsCongruent_22
d_isCongruent_268 v0
  = coe d_isCongruent_104 (coe d_isInjection_258 (coe v0))
-- Function.Structures.IsBijection._.isEquivalence₁
d_isEquivalence'8321'_270 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_270 v0
  = coe
      d_isEquivalence'8321'_34
      (coe d_isCongruent_104 (coe d_isInjection_258 (coe v0)))
-- Function.Structures.IsBijection._.isEquivalence₂
d_isEquivalence'8322'_272 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_272 v0
  = coe
      d_isEquivalence'8322'_36
      (coe d_isCongruent_104 (coe d_isInjection_258 (coe v0)))
-- Function.Structures.IsBijection._.Eq₁._≈_
d__'8776'__276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> ()
d__'8776'__276 = erased
-- Function.Structures.IsBijection._.Eq₁._≉_
d__'8777'__278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> ()
d__'8777'__278 = erased
-- Function.Structures.IsBijection._.Eq₁.Carrier
d_Carrier_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsBijection_250 -> ()
d_Carrier_280 = erased
-- Function.Structures.IsBijection._.Eq₁.isEquivalence
d_isEquivalence_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_282 v9
du_isEquivalence_282 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_282 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe (coe d_isEquivalence'8321'_34 (coe v2)))
-- Function.Structures.IsBijection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_284 v9
du_isPartialEquivalence_284 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_284 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsBijection._.Eq₁.partialSetoid
d_partialSetoid_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_286 v9
du_partialSetoid_286 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_286 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe du_setoid_40 (coe v2))))
-- Function.Structures.IsBijection._.Eq₁.rawSetoid
d_rawSetoid_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_288 = erased
-- Function.Structures.IsBijection._.Eq₁.refl
d_refl_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsBijection_250 -> AgdaAny -> AgdaAny
d_refl_290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_290 v9
du_refl_290 :: T_IsBijection_250 -> AgdaAny -> AgdaAny
du_refl_290 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe d_isEquivalence'8321'_34 (coe v2))))
-- Function.Structures.IsBijection._.Eq₁.reflexive
d_reflexive_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_292 v9
du_reflexive_292 ::
  T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_292 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Structures.IsBijection._.Eq₁.setoid
d_setoid_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_294 v9
du_setoid_294 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_294 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe (coe du_setoid_40 (coe d_isCongruent_104 (coe v1)))
-- Function.Structures.IsBijection._.Eq₁.sym
d_sym_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_296 v9
du_sym_296 ::
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_296 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsBijection._.Eq₁.trans
d_trans_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_298 v9
du_trans_298 ::
  T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_298 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsBijection._.Eq₂._≈_
d__'8776'__302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> ()
d__'8776'__302 = erased
-- Function.Structures.IsBijection._.Eq₂._≉_
d__'8777'__304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> ()
d__'8777'__304 = erased
-- Function.Structures.IsBijection._.Eq₂.Carrier
d_Carrier_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsBijection_250 -> ()
d_Carrier_306 = erased
-- Function.Structures.IsBijection._.Eq₂.isEquivalence
d_isEquivalence_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_308 v9
du_isEquivalence_308 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_308 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe (coe d_isEquivalence'8322'_36 (coe v2)))
-- Function.Structures.IsBijection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_310 v9
du_isPartialEquivalence_310 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_310 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsBijection._.Eq₂.partialSetoid
d_partialSetoid_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_312 v9
du_partialSetoid_312 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_312 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe du_setoid_68 (coe v2))))
-- Function.Structures.IsBijection._.Eq₂.rawSetoid
d_rawSetoid_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_314 = erased
-- Function.Structures.IsBijection._.Eq₂.refl
d_refl_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsBijection_250 -> AgdaAny -> AgdaAny
d_refl_316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_316 v9
du_refl_316 :: T_IsBijection_250 -> AgdaAny -> AgdaAny
du_refl_316 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe d_isEquivalence'8322'_36 (coe v2))))
-- Function.Structures.IsBijection._.Eq₂.reflexive
d_reflexive_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_318 v9
du_reflexive_318 ::
  T_IsBijection_250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_318 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Structures.IsBijection._.Eq₂.setoid
d_setoid_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_320 v9
du_setoid_320 ::
  T_IsBijection_250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_320 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe (coe du_setoid_68 (coe d_isCongruent_104 (coe v1)))
-- Function.Structures.IsBijection._.Eq₂.sym
d_sym_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_322 v9
du_sym_322 ::
  T_IsBijection_250 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_322 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsBijection._.Eq₂.trans
d_trans_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_324 v9
du_trans_324 ::
  T_IsBijection_250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_324 v0
  = let v1 = d_isInjection_258 (coe v0) in
    coe
      (let v2 = d_isCongruent_104 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsBijection.bijective
d_bijective_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bijective_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_bijective_326 v9
du_bijective_326 ::
  T_IsBijection_250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bijective_326 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_injective_106 (coe d_isInjection_258 (coe v0)))
      (coe d_surjective_260 (coe v0))
-- Function.Structures.IsBijection.isSurjection
d_isSurjection_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsBijection_250 -> T_IsSurjection_170
d_isSurjection_328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSurjection_328 v9
du_isSurjection_328 :: T_IsBijection_250 -> T_IsSurjection_170
du_isSurjection_328 v0
  = coe
      C_IsSurjection'46'constructor_6703
      (coe d_isCongruent_104 (coe d_isInjection_258 (coe v0)))
      (coe d_surjective_260 (coe v0))
-- Function.Structures.IsBijection._.strictlySurjective
d_strictlySurjective_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsBijection_250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictlySurjective_332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_strictlySurjective_332 v9
du_strictlySurjective_332 ::
  T_IsBijection_250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictlySurjective_332 v0
  = coe du_strictlySurjective_242 (coe du_isSurjection_328 (coe v0))
-- Function.Structures.IsLeftInverse
d_IsLeftInverse_338 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_IsLeftInverse_338
  = C_IsLeftInverse'46'constructor_14843 T_IsCongruent_22
                                         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Structures.IsLeftInverse.isCongruent
d_isCongruent_350 :: T_IsLeftInverse_338 -> T_IsCongruent_22
d_isCongruent_350 v0
  = case coe v0 of
      C_IsLeftInverse'46'constructor_14843 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsLeftInverse.from-cong
d_from'45'cong_352 ::
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_352 v0
  = case coe v0 of
      C_IsLeftInverse'46'constructor_14843 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsLeftInverse.inverseˡ
d_inverse'737'_354 ::
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_354 v0
  = case coe v0 of
      C_IsLeftInverse'46'constructor_14843 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsLeftInverse._.isEquivalence₁
d_isEquivalence'8321'_358 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_358 v0
  = coe d_isEquivalence'8321'_34 (coe d_isCongruent_350 (coe v0))
-- Function.Structures.IsLeftInverse._.isEquivalence₂
d_isEquivalence'8322'_360 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_360 v0
  = coe d_isEquivalence'8322'_36 (coe d_isCongruent_350 (coe v0))
-- Function.Structures.IsLeftInverse._.cong
d_cong_362 ::
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_362 v0 = coe d_cong_32 (coe d_isCongruent_350 (coe v0))
-- Function.Structures.IsLeftInverse._.Eq₁._≈_
d__'8776'__366 ::
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
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> ()
d__'8776'__366 = erased
-- Function.Structures.IsLeftInverse._.Eq₁._≉_
d__'8777'__368 ::
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
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> ()
d__'8777'__368 = erased
-- Function.Structures.IsLeftInverse._.Eq₁.Carrier
d_Carrier_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> ()
d_Carrier_370 = erased
-- Function.Structures.IsLeftInverse._.Eq₁.isEquivalence
d_isEquivalence_372 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_372 v10
du_isEquivalence_372 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_372 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe (coe d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.IsLeftInverse._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_374 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_374 v10
du_isPartialEquivalence_374 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_374 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsLeftInverse._.Eq₁.partialSetoid
d_partialSetoid_376 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_376 v10
du_partialSetoid_376 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_376 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_40 (coe v1)))
-- Function.Structures.IsLeftInverse._.Eq₁.rawSetoid
d_rawSetoid_378 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_378 = erased
-- Function.Structures.IsLeftInverse._.Eq₁.refl
d_refl_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> AgdaAny -> AgdaAny
d_refl_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_380 v10
du_refl_380 :: T_IsLeftInverse_338 -> AgdaAny -> AgdaAny
du_refl_380 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8321'_34 (coe v1)))
-- Function.Structures.IsLeftInverse._.Eq₁.reflexive
d_reflexive_382 ::
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
  T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_382 v10
du_reflexive_382 ::
  T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_382 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsLeftInverse._.Eq₁.setoid
d_setoid_384 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_384 v10
du_setoid_384 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_384 v0
  = coe du_setoid_40 (coe d_isCongruent_350 (coe v0))
-- Function.Structures.IsLeftInverse._.Eq₁.sym
d_sym_386 ::
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
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_386 v10
du_sym_386 ::
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_386 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsLeftInverse._.Eq₁.trans
d_trans_388 ::
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
  T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_388 v10
du_trans_388 ::
  T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_388 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsLeftInverse._.Eq₂._≈_
d__'8776'__392 ::
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
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> ()
d__'8776'__392 = erased
-- Function.Structures.IsLeftInverse._.Eq₂._≉_
d__'8777'__394 ::
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
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> ()
d__'8777'__394 = erased
-- Function.Structures.IsLeftInverse._.Eq₂.Carrier
d_Carrier_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> ()
d_Carrier_396 = erased
-- Function.Structures.IsLeftInverse._.Eq₂.isEquivalence
d_isEquivalence_398 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_398 v10
du_isEquivalence_398 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_398 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe (coe d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.IsLeftInverse._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_400 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_400 v10
du_isPartialEquivalence_400 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_400 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsLeftInverse._.Eq₂.partialSetoid
d_partialSetoid_402 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_402 v10
du_partialSetoid_402 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_402 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_68 (coe v1)))
-- Function.Structures.IsLeftInverse._.Eq₂.rawSetoid
d_rawSetoid_404 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_404 = erased
-- Function.Structures.IsLeftInverse._.Eq₂.refl
d_refl_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> AgdaAny -> AgdaAny
d_refl_406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_406 v10
du_refl_406 :: T_IsLeftInverse_338 -> AgdaAny -> AgdaAny
du_refl_406 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8322'_36 (coe v1)))
-- Function.Structures.IsLeftInverse._.Eq₂.reflexive
d_reflexive_408 ::
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
  T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_408 v10
du_reflexive_408 ::
  T_IsLeftInverse_338 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_408 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsLeftInverse._.Eq₂.setoid
d_setoid_410 ::
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
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_410 v10
du_setoid_410 ::
  T_IsLeftInverse_338 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_410 v0
  = coe du_setoid_68 (coe d_isCongruent_350 (coe v0))
-- Function.Structures.IsLeftInverse._.Eq₂.sym
d_sym_412 ::
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
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_412 v10
du_sym_412 ::
  T_IsLeftInverse_338 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_412 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsLeftInverse._.Eq₂.trans
d_trans_414 ::
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
  T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_414 v10
du_trans_414 ::
  T_IsLeftInverse_338 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_414 v0
  = let v1 = d_isCongruent_350 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsLeftInverse.strictlyInverseˡ
d_strictlyInverse'737'_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> AgdaAny -> AgdaAny
d_strictlyInverse'737'_416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                           v10 v11
  = du_strictlyInverse'737'_416 v9 v10 v11
du_strictlyInverse'737'_416 ::
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> AgdaAny -> AgdaAny
du_strictlyInverse'737'_416 v0 v1 v2
  = coe
      d_inverse'737'_354 v1 v2 (coe v0 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence'8321'_34 (coe d_isCongruent_350 (coe v1)))
         (coe v0 v2))
-- Function.Structures.IsLeftInverse.isSurjection
d_isSurjection_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> T_IsSurjection_170
d_isSurjection_420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_isSurjection_420 v9 v10
du_isSurjection_420 ::
  (AgdaAny -> AgdaAny) -> T_IsLeftInverse_338 -> T_IsSurjection_170
du_isSurjection_420 v0 v1
  = coe
      C_IsSurjection'46'constructor_6703 (coe d_isCongruent_350 (coe v1))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v2)
              (coe d_inverse'737'_354 v1 v2)))
-- Function.Structures.IsRightInverse
d_IsRightInverse_428 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_IsRightInverse_428
  = C_IsRightInverse'46'constructor_19449 T_IsCongruent_22
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Structures.IsRightInverse.isCongruent
d_isCongruent_440 :: T_IsRightInverse_428 -> T_IsCongruent_22
d_isCongruent_440 v0
  = case coe v0 of
      C_IsRightInverse'46'constructor_19449 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsRightInverse.from-cong
d_from'45'cong_442 ::
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_442 v0
  = case coe v0 of
      C_IsRightInverse'46'constructor_19449 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsRightInverse.inverseʳ
d_inverse'691'_444 ::
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_444 v0
  = case coe v0 of
      C_IsRightInverse'46'constructor_19449 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsRightInverse._.isEquivalence₁
d_isEquivalence'8321'_448 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_448 v0
  = coe d_isEquivalence'8321'_34 (coe d_isCongruent_440 (coe v0))
-- Function.Structures.IsRightInverse._.isEquivalence₂
d_isEquivalence'8322'_450 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_450 v0
  = coe d_isEquivalence'8322'_36 (coe d_isCongruent_440 (coe v0))
-- Function.Structures.IsRightInverse._.cong
d_cong_452 ::
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_452 v0 = coe d_cong_32 (coe d_isCongruent_440 (coe v0))
-- Function.Structures.IsRightInverse._.Eq₁._≈_
d__'8776'__456 ::
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
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> ()
d__'8776'__456 = erased
-- Function.Structures.IsRightInverse._.Eq₁._≉_
d__'8777'__458 ::
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
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> ()
d__'8777'__458 = erased
-- Function.Structures.IsRightInverse._.Eq₁.Carrier
d_Carrier_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsRightInverse_428 -> ()
d_Carrier_460 = erased
-- Function.Structures.IsRightInverse._.Eq₁.isEquivalence
d_isEquivalence_462 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_462 v10
du_isEquivalence_462 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_462 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe (coe d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.IsRightInverse._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_464 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_464 v10
du_isPartialEquivalence_464 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_464 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsRightInverse._.Eq₁.partialSetoid
d_partialSetoid_466 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_466 v10
du_partialSetoid_466 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_466 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_40 (coe v1)))
-- Function.Structures.IsRightInverse._.Eq₁.rawSetoid
d_rawSetoid_468 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_468 = erased
-- Function.Structures.IsRightInverse._.Eq₁.refl
d_refl_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsRightInverse_428 -> AgdaAny -> AgdaAny
d_refl_470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_470 v10
du_refl_470 :: T_IsRightInverse_428 -> AgdaAny -> AgdaAny
du_refl_470 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8321'_34 (coe v1)))
-- Function.Structures.IsRightInverse._.Eq₁.reflexive
d_reflexive_472 ::
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
  T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_472 v10
du_reflexive_472 ::
  T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_472 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsRightInverse._.Eq₁.setoid
d_setoid_474 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_474 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_474 v10
du_setoid_474 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_474 v0
  = coe du_setoid_40 (coe d_isCongruent_440 (coe v0))
-- Function.Structures.IsRightInverse._.Eq₁.sym
d_sym_476 ::
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
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_476 v10
du_sym_476 ::
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_476 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsRightInverse._.Eq₁.trans
d_trans_478 ::
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
  T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_478 v10
du_trans_478 ::
  T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_478 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsRightInverse._.Eq₂._≈_
d__'8776'__482 ::
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
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> ()
d__'8776'__482 = erased
-- Function.Structures.IsRightInverse._.Eq₂._≉_
d__'8777'__484 ::
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
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> ()
d__'8777'__484 = erased
-- Function.Structures.IsRightInverse._.Eq₂.Carrier
d_Carrier_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsRightInverse_428 -> ()
d_Carrier_486 = erased
-- Function.Structures.IsRightInverse._.Eq₂.isEquivalence
d_isEquivalence_488 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_488 v10
du_isEquivalence_488 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_488 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe (coe d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.IsRightInverse._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_490 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_490 v10
du_isPartialEquivalence_490 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_490 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsRightInverse._.Eq₂.partialSetoid
d_partialSetoid_492 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_492 v10
du_partialSetoid_492 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_492 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_68 (coe v1)))
-- Function.Structures.IsRightInverse._.Eq₂.rawSetoid
d_rawSetoid_494 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_494 = erased
-- Function.Structures.IsRightInverse._.Eq₂.refl
d_refl_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsRightInverse_428 -> AgdaAny -> AgdaAny
d_refl_496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_496 v10
du_refl_496 :: T_IsRightInverse_428 -> AgdaAny -> AgdaAny
du_refl_496 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8322'_36 (coe v1)))
-- Function.Structures.IsRightInverse._.Eq₂.reflexive
d_reflexive_498 ::
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
  T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_498 v10
du_reflexive_498 ::
  T_IsRightInverse_428 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_498 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsRightInverse._.Eq₂.setoid
d_setoid_500 ::
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
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_500 v10
du_setoid_500 ::
  T_IsRightInverse_428 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_500 v0
  = coe du_setoid_68 (coe d_isCongruent_440 (coe v0))
-- Function.Structures.IsRightInverse._.Eq₂.sym
d_sym_502 ::
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
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_502 v10
du_sym_502 ::
  T_IsRightInverse_428 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_502 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsRightInverse._.Eq₂.trans
d_trans_504 ::
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
  T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_504 v10
du_trans_504 ::
  T_IsRightInverse_428 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_504 v0
  = let v1 = d_isCongruent_440 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsRightInverse.strictlyInverseʳ
d_strictlyInverse'691'_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsRightInverse_428 -> AgdaAny -> AgdaAny
d_strictlyInverse'691'_506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9
                           v10 v11
  = du_strictlyInverse'691'_506 v8 v10 v11
du_strictlyInverse'691'_506 ::
  (AgdaAny -> AgdaAny) -> T_IsRightInverse_428 -> AgdaAny -> AgdaAny
du_strictlyInverse'691'_506 v0 v1 v2
  = coe
      d_inverse'691'_444 v1 v2 (coe v0 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence'8322'_36 (coe d_isCongruent_440 (coe v1)))
         (coe v0 v2))
-- Function.Structures.IsInverse
d_IsInverse_514 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_IsInverse_514
  = C_IsInverse'46'constructor_23193 T_IsLeftInverse_338
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Structures.IsInverse.isLeftInverse
d_isLeftInverse_524 :: T_IsInverse_514 -> T_IsLeftInverse_338
d_isLeftInverse_524 v0
  = case coe v0 of
      C_IsInverse'46'constructor_23193 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsInverse.inverseʳ
d_inverse'691'_526 ::
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_526 v0
  = case coe v0 of
      C_IsInverse'46'constructor_23193 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsInverse._.from-cong
d_from'45'cong_530 ::
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_530 v0
  = coe d_from'45'cong_352 (coe d_isLeftInverse_524 (coe v0))
-- Function.Structures.IsInverse._.inverseˡ
d_inverse'737'_532 ::
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_532 v0
  = coe d_inverse'737'_354 (coe d_isLeftInverse_524 (coe v0))
-- Function.Structures.IsInverse._.isCongruent
d_isCongruent_534 :: T_IsInverse_514 -> T_IsCongruent_22
d_isCongruent_534 v0
  = coe d_isCongruent_350 (coe d_isLeftInverse_524 (coe v0))
-- Function.Structures.IsInverse._.isEquivalence₁
d_isEquivalence'8321'_536 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_536 v0
  = coe
      d_isEquivalence'8321'_34
      (coe d_isCongruent_350 (coe d_isLeftInverse_524 (coe v0)))
-- Function.Structures.IsInverse._.isEquivalence₂
d_isEquivalence'8322'_538 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_538 v0
  = coe
      d_isEquivalence'8322'_36
      (coe d_isCongruent_350 (coe d_isLeftInverse_524 (coe v0)))
-- Function.Structures.IsInverse._.isSurjection
d_isSurjection_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> T_IsSurjection_170
d_isSurjection_540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_isSurjection_540 v9 v10
du_isSurjection_540 ::
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> T_IsSurjection_170
du_isSurjection_540 v0 v1
  = coe
      du_isSurjection_420 (coe v0) (coe d_isLeftInverse_524 (coe v1))
-- Function.Structures.IsInverse._.strictlyInverseˡ
d_strictlyInverse'737'_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny
d_strictlyInverse'737'_542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                           v10
  = du_strictlyInverse'737'_542 v9 v10
du_strictlyInverse'737'_542 ::
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny
du_strictlyInverse'737'_542 v0 v1
  = coe
      du_strictlyInverse'737'_416 (coe v0)
      (coe d_isLeftInverse_524 (coe v1))
-- Function.Structures.IsInverse._.cong
d_cong_544 ::
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_544 v0
  = coe
      d_cong_32
      (coe d_isCongruent_350 (coe d_isLeftInverse_524 (coe v0)))
-- Function.Structures.IsInverse._.Eq₁._≈_
d__'8776'__548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny -> ()
d__'8776'__548 = erased
-- Function.Structures.IsInverse._.Eq₁._≉_
d__'8777'__550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny -> ()
d__'8777'__550 = erased
-- Function.Structures.IsInverse._.Eq₁.Carrier
d_Carrier_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> ()
d_Carrier_552 = erased
-- Function.Structures.IsInverse._.Eq₁.isEquivalence
d_isEquivalence_554 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_554 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_554 v10
du_isEquivalence_554 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_554 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe (coe d_isEquivalence'8321'_34 (coe v2)))
-- Function.Structures.IsInverse._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_556 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_556 v10
du_isPartialEquivalence_556 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_556 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsInverse._.Eq₁.partialSetoid
d_partialSetoid_558 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_558 v10
du_partialSetoid_558 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_558 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe du_setoid_40 (coe v2))))
-- Function.Structures.IsInverse._.Eq₁.rawSetoid
d_rawSetoid_560 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_560 = erased
-- Function.Structures.IsInverse._.Eq₁.refl
d_refl_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny
d_refl_562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_562 v10
du_refl_562 :: T_IsInverse_514 -> AgdaAny -> AgdaAny
du_refl_562 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe d_isEquivalence'8321'_34 (coe v2))))
-- Function.Structures.IsInverse._.Eq₁.reflexive
d_reflexive_564 ::
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
  T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_564 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_564 v10
du_reflexive_564 ::
  T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_564 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Structures.IsInverse._.Eq₁.setoid
d_setoid_566 ::
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
  T_IsInverse_514 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_566 v10
du_setoid_566 ::
  T_IsInverse_514 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_566 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe (coe du_setoid_40 (coe d_isCongruent_350 (coe v1)))
-- Function.Structures.IsInverse._.Eq₁.sym
d_sym_568 ::
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
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_568 v10
du_sym_568 ::
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_568 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsInverse._.Eq₁.trans
d_trans_570 ::
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
  T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_570 v10
du_trans_570 ::
  T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_570 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsInverse._.Eq₂._≈_
d__'8776'__574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny -> ()
d__'8776'__574 = erased
-- Function.Structures.IsInverse._.Eq₂._≉_
d__'8777'__576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny -> ()
d__'8777'__576 = erased
-- Function.Structures.IsInverse._.Eq₂.Carrier
d_Carrier_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> ()
d_Carrier_578 = erased
-- Function.Structures.IsInverse._.Eq₂.isEquivalence
d_isEquivalence_580 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isEquivalence_580 v10
du_isEquivalence_580 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_580 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe (coe d_isEquivalence'8322'_36 (coe v2)))
-- Function.Structures.IsInverse._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_582 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10
  = du_isPartialEquivalence_582 v10
du_isPartialEquivalence_582 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_582 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsInverse._.Eq₂.partialSetoid
d_partialSetoid_584 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_584 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_partialSetoid_584 v10
du_partialSetoid_584 ::
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_584 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe du_setoid_68 (coe v2))))
-- Function.Structures.IsInverse._.Eq₂.rawSetoid
d_rawSetoid_586 ::
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
  T_IsInverse_514 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_586 = erased
-- Function.Structures.IsInverse._.Eq₂.refl
d_refl_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny
d_refl_588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_588 v10
du_refl_588 :: T_IsInverse_514 -> AgdaAny -> AgdaAny
du_refl_588 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe d_isEquivalence'8322'_36 (coe v2))))
-- Function.Structures.IsInverse._.Eq₂.reflexive
d_reflexive_590 ::
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
  T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_590 v10
du_reflexive_590 ::
  T_IsInverse_514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_590 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Structures.IsInverse._.Eq₂.setoid
d_setoid_592 ::
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
  T_IsInverse_514 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_setoid_592 v10
du_setoid_592 ::
  T_IsInverse_514 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_592 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe (coe du_setoid_68 (coe d_isCongruent_350 (coe v1)))
-- Function.Structures.IsInverse._.Eq₂.sym
d_sym_594 ::
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
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_594 v10
du_sym_594 ::
  T_IsInverse_514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_594 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsInverse._.Eq₂.trans
d_trans_596 ::
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
  T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_trans_596 v10
du_trans_596 ::
  T_IsInverse_514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_596 v0
  = let v1 = d_isLeftInverse_524 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsInverse.isRightInverse
d_isRightInverse_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> T_IsRightInverse_428
d_isRightInverse_598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_isRightInverse_598 v10
du_isRightInverse_598 :: T_IsInverse_514 -> T_IsRightInverse_428
du_isRightInverse_598 v0
  = coe
      C_IsRightInverse'46'constructor_19449
      (coe d_isCongruent_350 (coe d_isLeftInverse_524 (coe v0)))
      (coe d_from'45'cong_352 (coe d_isLeftInverse_524 (coe v0)))
      (coe d_inverse'691'_526 (coe v0))
-- Function.Structures.IsInverse._.strictlyInverseʳ
d_strictlyInverse'691'_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny
d_strictlyInverse'691'_602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9
                           v10
  = du_strictlyInverse'691'_602 v8 v10
du_strictlyInverse'691'_602 ::
  (AgdaAny -> AgdaAny) -> T_IsInverse_514 -> AgdaAny -> AgdaAny
du_strictlyInverse'691'_602 v0 v1
  = coe
      du_strictlyInverse'691'_506 (coe v0)
      (coe du_isRightInverse_598 (coe v1))
-- Function.Structures.IsInverse.inverse
d_inverse_604 ::
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
  T_IsInverse_514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_inverse_604 v10
du_inverse_604 ::
  T_IsInverse_514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_604 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_inverse'737'_354 (coe d_isLeftInverse_524 (coe v0)))
      (coe d_inverse'691'_526 (coe v0))
-- Function.Structures.IsBiEquivalence
d_IsBiEquivalence_612 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T_IsBiEquivalence_612
  = C_IsBiEquivalence'46'constructor_28885 T_IsCongruent_22
                                           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Structures.IsBiEquivalence.to-isCongruent
d_to'45'isCongruent_626 ::
  T_IsBiEquivalence_612 -> T_IsCongruent_22
d_to'45'isCongruent_626 v0
  = case coe v0 of
      C_IsBiEquivalence'46'constructor_28885 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiEquivalence.from₁-cong
d_from'8321''45'cong_628 ::
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8321''45'cong_628 v0
  = case coe v0 of
      C_IsBiEquivalence'46'constructor_28885 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiEquivalence.from₂-cong
d_from'8322''45'cong_630 ::
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8322''45'cong_630 v0
  = case coe v0 of
      C_IsBiEquivalence'46'constructor_28885 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiEquivalence._.isEquivalence₁
d_isEquivalence'8321'_634 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_634 v0
  = coe
      d_isEquivalence'8321'_34 (coe d_to'45'isCongruent_626 (coe v0))
-- Function.Structures.IsBiEquivalence._.isEquivalence₂
d_isEquivalence'8322'_636 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_636 v0
  = coe
      d_isEquivalence'8322'_36 (coe d_to'45'isCongruent_626 (coe v0))
-- Function.Structures.IsBiEquivalence._.cong
d_cong_638 ::
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_638 v0
  = coe d_cong_32 (coe d_to'45'isCongruent_626 (coe v0))
-- Function.Structures.IsBiEquivalence._.Eq₁._≈_
d__'8776'__642 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> ()
d__'8776'__642 = erased
-- Function.Structures.IsBiEquivalence._.Eq₁._≉_
d__'8777'__644 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> ()
d__'8777'__644 = erased
-- Function.Structures.IsBiEquivalence._.Eq₁.Carrier
d_Carrier_646 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiEquivalence_612 -> ()
d_Carrier_646 = erased
-- Function.Structures.IsBiEquivalence._.Eq₁.isEquivalence
d_isEquivalence_648 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isEquivalence_648 v11
du_isEquivalence_648 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_648 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe (coe d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.IsBiEquivalence._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_650 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_650 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_650 v11
du_isPartialEquivalence_650 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_650 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiEquivalence._.Eq₁.partialSetoid
d_partialSetoid_652 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_partialSetoid_652 v11
du_partialSetoid_652 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_652 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_40 (coe v1)))
-- Function.Structures.IsBiEquivalence._.Eq₁.rawSetoid
d_rawSetoid_654 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_654 = erased
-- Function.Structures.IsBiEquivalence._.Eq₁.refl
d_refl_656 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny
d_refl_656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_656 v11
du_refl_656 :: T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny
du_refl_656 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8321'_34 (coe v1)))
-- Function.Structures.IsBiEquivalence._.Eq₁.reflexive
d_reflexive_658 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_658 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_658 v11
du_reflexive_658 ::
  T_IsBiEquivalence_612 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_658 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsBiEquivalence._.Eq₁.setoid
d_setoid_660 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_660 v11
du_setoid_660 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_660 v0
  = coe du_setoid_40 (coe d_to'45'isCongruent_626 (coe v0))
-- Function.Structures.IsBiEquivalence._.Eq₁.sym
d_sym_662 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_sym_662 v11
du_sym_662 ::
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_662 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiEquivalence._.Eq₁.trans
d_trans_664 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_trans_664 v11
du_trans_664 ::
  T_IsBiEquivalence_612 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_664 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiEquivalence._.Eq₂._≈_
d__'8776'__668 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> ()
d__'8776'__668 = erased
-- Function.Structures.IsBiEquivalence._.Eq₂._≉_
d__'8777'__670 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> ()
d__'8777'__670 = erased
-- Function.Structures.IsBiEquivalence._.Eq₂.Carrier
d_Carrier_672 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiEquivalence_612 -> ()
d_Carrier_672 = erased
-- Function.Structures.IsBiEquivalence._.Eq₂.isEquivalence
d_isEquivalence_674 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isEquivalence_674 v11
du_isEquivalence_674 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_674 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe (coe d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.IsBiEquivalence._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_676 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_676 v11
du_isPartialEquivalence_676 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_676 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiEquivalence._.Eq₂.partialSetoid
d_partialSetoid_678 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_partialSetoid_678 v11
du_partialSetoid_678 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_678 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_68 (coe v1)))
-- Function.Structures.IsBiEquivalence._.Eq₂.rawSetoid
d_rawSetoid_680 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_680 = erased
-- Function.Structures.IsBiEquivalence._.Eq₂.refl
d_refl_682 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny
d_refl_682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_682 v11
du_refl_682 :: T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny
du_refl_682 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8322'_36 (coe v1)))
-- Function.Structures.IsBiEquivalence._.Eq₂.reflexive
d_reflexive_684 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_684 v11
du_reflexive_684 ::
  T_IsBiEquivalence_612 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_684 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsBiEquivalence._.Eq₂.setoid
d_setoid_686 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_686 v11
du_setoid_686 ::
  T_IsBiEquivalence_612 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_686 v0
  = coe du_setoid_68 (coe d_to'45'isCongruent_626 (coe v0))
-- Function.Structures.IsBiEquivalence._.Eq₂.sym
d_sym_688 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_sym_688 v11
du_sym_688 ::
  T_IsBiEquivalence_612 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_688 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiEquivalence._.Eq₂.trans
d_trans_690 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiEquivalence_612 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_trans_690 v11
du_trans_690 ::
  T_IsBiEquivalence_612 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_690 v0
  = let v1 = d_to'45'isCongruent_626 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiInverse
d_IsBiInverse_698 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T_IsBiInverse_698
  = C_IsBiInverse'46'constructor_33751 T_IsCongruent_22
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Function.Structures.IsBiInverse.to-isCongruent
d_to'45'isCongruent_716 :: T_IsBiInverse_698 -> T_IsCongruent_22
d_to'45'isCongruent_716 v0
  = case coe v0 of
      C_IsBiInverse'46'constructor_33751 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiInverse.from₁-cong
d_from'8321''45'cong_718 ::
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8321''45'cong_718 v0
  = case coe v0 of
      C_IsBiInverse'46'constructor_33751 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiInverse.from₂-cong
d_from'8322''45'cong_720 ::
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'8322''45'cong_720 v0
  = case coe v0 of
      C_IsBiInverse'46'constructor_33751 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiInverse.inverseˡ
d_inverse'737'_722 ::
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_722 v0
  = case coe v0 of
      C_IsBiInverse'46'constructor_33751 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiInverse.inverseʳ
d_inverse'691'_724 ::
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691'_724 v0
  = case coe v0 of
      C_IsBiInverse'46'constructor_33751 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsBiInverse._.isEquivalence₁
d_isEquivalence'8321'_728 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_728 v0
  = coe
      d_isEquivalence'8321'_34 (coe d_to'45'isCongruent_716 (coe v0))
-- Function.Structures.IsBiInverse._.isEquivalence₂
d_isEquivalence'8322'_730 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_730 v0
  = coe
      d_isEquivalence'8322'_36 (coe d_to'45'isCongruent_716 (coe v0))
-- Function.Structures.IsBiInverse._.cong
d_cong_732 ::
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_732 v0
  = coe d_cong_32 (coe d_to'45'isCongruent_716 (coe v0))
-- Function.Structures.IsBiInverse._.Eq₁._≈_
d__'8776'__736 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> ()
d__'8776'__736 = erased
-- Function.Structures.IsBiInverse._.Eq₁._≉_
d__'8777'__738 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> ()
d__'8777'__738 = erased
-- Function.Structures.IsBiInverse._.Eq₁.Carrier
d_Carrier_740 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiInverse_698 -> ()
d_Carrier_740 = erased
-- Function.Structures.IsBiInverse._.Eq₁.isEquivalence
d_isEquivalence_742 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isEquivalence_742 v11
du_isEquivalence_742 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_742 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe (coe d_isEquivalence'8321'_34 (coe v1))
-- Function.Structures.IsBiInverse._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_744 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_744 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_744 v11
du_isPartialEquivalence_744 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_744 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiInverse._.Eq₁.partialSetoid
d_partialSetoid_746 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_746 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_partialSetoid_746 v11
du_partialSetoid_746 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_746 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_40 (coe v1)))
-- Function.Structures.IsBiInverse._.Eq₁.rawSetoid
d_rawSetoid_748 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_748 = erased
-- Function.Structures.IsBiInverse._.Eq₁.refl
d_refl_750 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiInverse_698 -> AgdaAny -> AgdaAny
d_refl_750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_750 v11
du_refl_750 :: T_IsBiInverse_698 -> AgdaAny -> AgdaAny
du_refl_750 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8321'_34 (coe v1)))
-- Function.Structures.IsBiInverse._.Eq₁.reflexive
d_reflexive_752 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_752 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_752 v11
du_reflexive_752 ::
  T_IsBiInverse_698 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_752 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsBiInverse._.Eq₁.setoid
d_setoid_754 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_754 v11
du_setoid_754 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_754 v0
  = coe du_setoid_40 (coe d_to'45'isCongruent_716 (coe v0))
-- Function.Structures.IsBiInverse._.Eq₁.sym
d_sym_756 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_sym_756 v11
du_sym_756 ::
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_756 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiInverse._.Eq₁.trans
d_trans_758 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_trans_758 v11
du_trans_758 ::
  T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_758 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_40 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiInverse._.Eq₂._≈_
d__'8776'__762 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> ()
d__'8776'__762 = erased
-- Function.Structures.IsBiInverse._.Eq₂._≉_
d__'8777'__764 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> ()
d__'8777'__764 = erased
-- Function.Structures.IsBiInverse._.Eq₂.Carrier
d_Carrier_766 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiInverse_698 -> ()
d_Carrier_766 = erased
-- Function.Structures.IsBiInverse._.Eq₂.isEquivalence
d_isEquivalence_768 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isEquivalence_768 v11
du_isEquivalence_768 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_768 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe (coe d_isEquivalence'8322'_36 (coe v1))
-- Function.Structures.IsBiInverse._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_770 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_770 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_770 v11
du_isPartialEquivalence_770 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_770 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiInverse._.Eq₂.partialSetoid
d_partialSetoid_772 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_772 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_partialSetoid_772 v11
du_partialSetoid_772 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_772 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (coe du_setoid_68 (coe v1)))
-- Function.Structures.IsBiInverse._.Eq₂.rawSetoid
d_rawSetoid_774 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_774 = erased
-- Function.Structures.IsBiInverse._.Eq₂.refl
d_refl_776 ::
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
  (AgdaAny -> AgdaAny) -> T_IsBiInverse_698 -> AgdaAny -> AgdaAny
d_refl_776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_776 v11
du_refl_776 :: T_IsBiInverse_698 -> AgdaAny -> AgdaAny
du_refl_776 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe d_isEquivalence'8322'_36 (coe v1)))
-- Function.Structures.IsBiInverse._.Eq₂.reflexive
d_reflexive_778 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_778 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_778 v11
du_reflexive_778 ::
  T_IsBiInverse_698 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_778 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Function.Structures.IsBiInverse._.Eq₂.setoid
d_setoid_780 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_780 v11
du_setoid_780 ::
  T_IsBiInverse_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_780 v0
  = coe du_setoid_68 (coe d_to'45'isCongruent_716 (coe v0))
-- Function.Structures.IsBiInverse._.Eq₂.sym
d_sym_782 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_sym_782 v11
du_sym_782 ::
  T_IsBiInverse_698 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_782 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsBiInverse._.Eq₂.trans
d_trans_784 ::
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
  (AgdaAny -> AgdaAny) ->
  T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_trans_784 v11
du_trans_784 ::
  T_IsBiInverse_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_784 v0
  = let v1 = d_to'45'isCongruent_716 (coe v0) in
    coe
      (let v2 = coe du_setoid_68 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Function.Structures.IsSplitSurjection
d_IsSplitSurjection_788 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsSplitSurjection_788
  = C_IsSplitSurjection'46'constructor_36665 (AgdaAny -> AgdaAny)
                                             T_IsLeftInverse_338
-- Function.Structures.IsSplitSurjection.from
d_from_796 :: T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny
d_from_796 v0
  = case coe v0 of
      C_IsSplitSurjection'46'constructor_36665 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsSplitSurjection.isLeftInverse
d_isLeftInverse_798 ::
  T_IsSplitSurjection_788 -> T_IsLeftInverse_338
d_isLeftInverse_798 v0
  = case coe v0 of
      C_IsSplitSurjection'46'constructor_36665 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Structures.IsSplitSurjection._.from-cong
d_from'45'cong_802 ::
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_from'45'cong_802 v0
  = coe d_from'45'cong_352 (coe d_isLeftInverse_798 (coe v0))
-- Function.Structures.IsSplitSurjection._.inverseˡ
d_inverse'737'_804 ::
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737'_804 v0
  = coe d_inverse'737'_354 (coe d_isLeftInverse_798 (coe v0))
-- Function.Structures.IsSplitSurjection._.isCongruent
d_isCongruent_806 :: T_IsSplitSurjection_788 -> T_IsCongruent_22
d_isCongruent_806 v0
  = coe d_isCongruent_350 (coe d_isLeftInverse_798 (coe v0))
-- Function.Structures.IsSplitSurjection._.isEquivalence₁
d_isEquivalence'8321'_808 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8321'_808 v0
  = coe
      d_isEquivalence'8321'_34
      (coe d_isCongruent_350 (coe d_isLeftInverse_798 (coe v0)))
-- Function.Structures.IsSplitSurjection._.isEquivalence₂
d_isEquivalence'8322'_810 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence'8322'_810 v0
  = coe
      d_isEquivalence'8322'_36
      (coe d_isCongruent_350 (coe d_isLeftInverse_798 (coe v0)))
-- Function.Structures.IsSplitSurjection._.isSurjection
d_isSurjection_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> T_IsSurjection_170
d_isSurjection_812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSurjection_812 v9
du_isSurjection_812 ::
  T_IsSplitSurjection_788 -> T_IsSurjection_170
du_isSurjection_812 v0
  = coe
      du_isSurjection_420 (coe d_from_796 (coe v0))
      (coe d_isLeftInverse_798 (coe v0))
-- Function.Structures.IsSplitSurjection._.strictlyInverseˡ
d_strictlyInverse'737'_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny
d_strictlyInverse'737'_814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_strictlyInverse'737'_814 v9
du_strictlyInverse'737'_814 ::
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny
du_strictlyInverse'737'_814 v0
  = coe
      du_strictlyInverse'737'_416 (coe d_from_796 (coe v0))
      (coe d_isLeftInverse_798 (coe v0))
-- Function.Structures.IsSplitSurjection._.cong
d_cong_816 ::
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_816 v0
  = coe
      d_cong_32
      (coe d_isCongruent_350 (coe d_isLeftInverse_798 (coe v0)))
-- Function.Structures.IsSplitSurjection._.Eq₁._≈_
d__'8776'__820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> ()
d__'8776'__820 = erased
-- Function.Structures.IsSplitSurjection._.Eq₁._≉_
d__'8777'__822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> ()
d__'8777'__822 = erased
-- Function.Structures.IsSplitSurjection._.Eq₁.Carrier
d_Carrier_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsSplitSurjection_788 -> ()
d_Carrier_824 = erased
-- Function.Structures.IsSplitSurjection._.Eq₁.isEquivalence
d_isEquivalence_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_826 v9
du_isEquivalence_826 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_826 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe (coe d_isEquivalence'8321'_34 (coe v2)))
-- Function.Structures.IsSplitSurjection._.Eq₁.isPartialEquivalence
d_isPartialEquivalence_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_828 v9
du_isPartialEquivalence_828 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_828 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsSplitSurjection._.Eq₁.partialSetoid
d_partialSetoid_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_830 v9
du_partialSetoid_830 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_830 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe du_setoid_40 (coe v2))))
-- Function.Structures.IsSplitSurjection._.Eq₁.rawSetoid
d_rawSetoid_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_832 = erased
-- Function.Structures.IsSplitSurjection._.Eq₁.refl
d_refl_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny
d_refl_834 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_834 v9
du_refl_834 :: T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny
du_refl_834 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe d_isEquivalence'8321'_34 (coe v2))))
-- Function.Structures.IsSplitSurjection._.Eq₁.reflexive
d_reflexive_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_836 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_836 v9
du_reflexive_836 ::
  T_IsSplitSurjection_788 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_836 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Structures.IsSplitSurjection._.Eq₁.setoid
d_setoid_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_838 v9
du_setoid_838 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_838 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe (coe du_setoid_40 (coe d_isCongruent_350 (coe v1)))
-- Function.Structures.IsSplitSurjection._.Eq₁.sym
d_sym_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_840 v9
du_sym_840 ::
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_840 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsSplitSurjection._.Eq₁.trans
d_trans_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_842 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_842 v9
du_trans_842 ::
  T_IsSplitSurjection_788 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_842 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_40 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsSplitSurjection._.Eq₂._≈_
d__'8776'__846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> ()
d__'8776'__846 = erased
-- Function.Structures.IsSplitSurjection._.Eq₂._≉_
d__'8777'__848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> ()
d__'8777'__848 = erased
-- Function.Structures.IsSplitSurjection._.Eq₂.Carrier
d_Carrier_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T_IsSplitSurjection_788 -> ()
d_Carrier_850 = erased
-- Function.Structures.IsSplitSurjection._.Eq₂.isEquivalence
d_isEquivalence_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_852 v9
du_isEquivalence_852 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_852 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe (coe d_isEquivalence'8322'_36 (coe v2)))
-- Function.Structures.IsSplitSurjection._.Eq₂.isPartialEquivalence
d_isPartialEquivalence_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_854 v9
du_isPartialEquivalence_854 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_854 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsSplitSurjection._.Eq₂.partialSetoid
d_partialSetoid_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_partialSetoid_856 v9
du_partialSetoid_856 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_856 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
            (coe du_setoid_68 (coe v2))))
-- Function.Structures.IsSplitSurjection._.Eq₂.rawSetoid
d_rawSetoid_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_858 = erased
-- Function.Structures.IsSplitSurjection._.Eq₂.refl
d_refl_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny
d_refl_860 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_refl_860 v9
du_refl_860 :: T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny
du_refl_860 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe d_isEquivalence'8322'_36 (coe v2))))
-- Function.Structures.IsSplitSurjection._.Eq₂.reflexive
d_reflexive_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_862 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_862 v9
du_reflexive_862 ::
  T_IsSplitSurjection_788 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_862 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v3))
                 v4)))
-- Function.Structures.IsSplitSurjection._.Eq₂.setoid
d_setoid_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_864 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_864 v9
du_setoid_864 ::
  T_IsSplitSurjection_788 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_864 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe (coe du_setoid_68 (coe d_isCongruent_350 (coe v1)))
-- Function.Structures.IsSplitSurjection._.Eq₂.sym
d_sym_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_866 v9
du_sym_866 ::
  T_IsSplitSurjection_788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_866 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
-- Function.Structures.IsSplitSurjection._.Eq₂.trans
d_trans_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsSplitSurjection_788 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_868 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_868 v9
du_trans_868 ::
  T_IsSplitSurjection_788 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_868 v0
  = let v1 = d_isLeftInverse_798 (coe v0) in
    coe
      (let v2 = d_isCongruent_350 (coe v1) in
       coe
         (let v3 = coe du_setoid_68 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (coe v3)))))
