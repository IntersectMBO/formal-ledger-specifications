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

module MAlonzo.Code.Relation.Binary.Morphism.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive

-- Relation.Binary.Morphism.Structures.IsRelHomomorphism
d_IsRelHomomorphism_34 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
newtype T_IsRelHomomorphism_34
  = C_constructor_46 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Morphism.Structures.IsRelHomomorphism.cong
d_cong_44 ::
  T_IsRelHomomorphism_34 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_44 v0
  = case coe v0 of
      C_constructor_46 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsRelMonomorphism
d_IsRelMonomorphism_58 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRelMonomorphism_58
  = C_constructor_78 T_IsRelHomomorphism_34
                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Morphism.Structures.IsRelMonomorphism.isHomomorphism
d_isHomomorphism_70 ::
  T_IsRelMonomorphism_58 -> T_IsRelHomomorphism_34
d_isHomomorphism_70 v0
  = case coe v0 of
      C_constructor_78 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsRelMonomorphism.injective
d_injective_72 ::
  T_IsRelMonomorphism_58 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_72 v0
  = case coe v0 of
      C_constructor_78 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsRelMonomorphism._.cong
d_cong_76 ::
  T_IsRelMonomorphism_58 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_76 v0 = coe d_cong_44 (coe d_isHomomorphism_70 (coe v0))
-- Relation.Binary.Morphism.Structures.IsRelIsomorphism
d_IsRelIsomorphism_90 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRelIsomorphism_90
  = C_constructor_116 T_IsRelMonomorphism_58
                      (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Relation.Binary.Morphism.Structures.IsRelIsomorphism.isMonomorphism
d_isMonomorphism_102 ::
  T_IsRelIsomorphism_90 -> T_IsRelMonomorphism_58
d_isMonomorphism_102 v0
  = case coe v0 of
      C_constructor_116 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsRelIsomorphism.surjective
d_surjective_104 ::
  T_IsRelIsomorphism_90 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_104 v0
  = case coe v0 of
      C_constructor_116 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsRelIsomorphism._.cong
d_cong_108 ::
  T_IsRelIsomorphism_90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_108 v0
  = coe
      d_cong_44
      (coe d_isHomomorphism_70 (coe d_isMonomorphism_102 (coe v0)))
-- Relation.Binary.Morphism.Structures.IsRelIsomorphism._.injective
d_injective_110 ::
  T_IsRelIsomorphism_90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_110 v0
  = coe d_injective_72 (coe d_isMonomorphism_102 (coe v0))
-- Relation.Binary.Morphism.Structures.IsRelIsomorphism._.isHomomorphism
d_isHomomorphism_112 ::
  T_IsRelIsomorphism_90 -> T_IsRelHomomorphism_34
d_isHomomorphism_112 v0
  = coe d_isHomomorphism_70 (coe d_isMonomorphism_102 (coe v0))
-- Relation.Binary.Morphism.Structures.IsRelIsomorphism.bijective
d_bijective_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsRelIsomorphism_90 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bijective_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_bijective_114 v9
du_bijective_114 ::
  T_IsRelIsomorphism_90 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bijective_114 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_injective_72 (coe d_isMonomorphism_102 (coe v0)))
      (coe d_surjective_104 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderHomomorphism
d_IsOrderHomomorphism_136 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
  = ()
data T_IsOrderHomomorphism_136
  = C_constructor_162 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Morphism.Structures.IsOrderHomomorphism.cong
d_cong_152 ::
  T_IsOrderHomomorphism_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_152 v0
  = case coe v0 of
      C_constructor_162 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsOrderHomomorphism.mono
d_mono_154 ::
  T_IsOrderHomomorphism_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_mono_154 v0
  = case coe v0 of
      C_constructor_162 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsOrderHomomorphism.Eq.isRelHomomorphism
d_isRelHomomorphism_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderHomomorphism_136 -> T_IsRelHomomorphism_34
d_isRelHomomorphism_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 v13
  = du_isRelHomomorphism_158 v13
du_isRelHomomorphism_158 ::
  T_IsOrderHomomorphism_136 -> T_IsRelHomomorphism_34
du_isRelHomomorphism_158 v0
  = coe C_constructor_46 (coe d_cong_152 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderHomomorphism.isRelHomomorphism
d_isRelHomomorphism_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderHomomorphism_136 -> T_IsRelHomomorphism_34
d_isRelHomomorphism_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 v13
  = du_isRelHomomorphism_160 v13
du_isRelHomomorphism_160 ::
  T_IsOrderHomomorphism_136 -> T_IsRelHomomorphism_34
du_isRelHomomorphism_160 v0
  = coe C_constructor_46 (coe d_mono_154 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism
d_IsOrderMonomorphism_182 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
  = ()
data T_IsOrderMonomorphism_182
  = C_constructor_220 T_IsOrderHomomorphism_136
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism.isOrderHomomorphism
d_isOrderHomomorphism_200 ::
  T_IsOrderMonomorphism_182 -> T_IsOrderHomomorphism_136
d_isOrderHomomorphism_200 v0
  = case coe v0 of
      C_constructor_220 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism.injective
d_injective_202 ::
  T_IsOrderMonomorphism_182 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_202 v0
  = case coe v0 of
      C_constructor_220 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism.cancel
d_cancel_204 ::
  T_IsOrderMonomorphism_182 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel_204 v0
  = case coe v0 of
      C_constructor_220 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.cong
d_cong_208 ::
  T_IsOrderMonomorphism_182 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_208 v0
  = coe d_cong_152 (coe d_isOrderHomomorphism_200 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderMonomorphism_182 -> T_IsRelHomomorphism_34
d_isRelHomomorphism_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 v13
  = du_isRelHomomorphism_210 v13
du_isRelHomomorphism_210 ::
  T_IsOrderMonomorphism_182 -> T_IsRelHomomorphism_34
du_isRelHomomorphism_210 v0
  = coe
      du_isRelHomomorphism_160 (coe d_isOrderHomomorphism_200 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.mono
d_mono_212 ::
  T_IsOrderMonomorphism_182 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_mono_212 v0
  = coe d_mono_154 (coe d_isOrderHomomorphism_200 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism.Eq.isRelMonomorphism
d_isRelMonomorphism_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderMonomorphism_182 -> T_IsRelMonomorphism_58
d_isRelMonomorphism_216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 v13
  = du_isRelMonomorphism_216 v13
du_isRelMonomorphism_216 ::
  T_IsOrderMonomorphism_182 -> T_IsRelMonomorphism_58
du_isRelMonomorphism_216 v0
  = coe
      C_constructor_78
      (coe
         du_isRelHomomorphism_158 (coe d_isOrderHomomorphism_200 (coe v0)))
      (coe d_injective_202 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderMonomorphism.isRelMonomorphism
d_isRelMonomorphism_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderMonomorphism_182 -> T_IsRelMonomorphism_58
d_isRelMonomorphism_218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 v13
  = du_isRelMonomorphism_218 v13
du_isRelMonomorphism_218 ::
  T_IsOrderMonomorphism_182 -> T_IsRelMonomorphism_58
du_isRelMonomorphism_218 v0
  = coe
      C_constructor_78
      (coe
         du_isRelHomomorphism_160 (coe d_isOrderHomomorphism_200 (coe v0)))
      (coe d_cancel_204 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism
d_IsOrderIsomorphism_240 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
  = ()
data T_IsOrderIsomorphism_240
  = C_constructor_280 T_IsOrderMonomorphism_182
                      (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism.isOrderMonomorphism
d_isOrderMonomorphism_256 ::
  T_IsOrderIsomorphism_240 -> T_IsOrderMonomorphism_182
d_isOrderMonomorphism_256 v0
  = case coe v0 of
      C_constructor_280 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism.surjective
d_surjective_258 ::
  T_IsOrderIsomorphism_240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_258 v0
  = case coe v0 of
      C_constructor_280 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.cancel
d_cancel_262 ::
  T_IsOrderIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel_262 v0
  = coe d_cancel_204 (coe d_isOrderMonomorphism_256 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.cong
d_cong_264 ::
  T_IsOrderIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_264 v0
  = coe
      d_cong_152
      (coe
         d_isOrderHomomorphism_200 (coe d_isOrderMonomorphism_256 (coe v0)))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.injective
d_injective_266 ::
  T_IsOrderIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_266 v0
  = coe d_injective_202 (coe d_isOrderMonomorphism_256 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isOrderHomomorphism
d_isOrderHomomorphism_268 ::
  T_IsOrderIsomorphism_240 -> T_IsOrderHomomorphism_136
d_isOrderHomomorphism_268 v0
  = coe
      d_isOrderHomomorphism_200 (coe d_isOrderMonomorphism_256 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderIsomorphism_240 -> T_IsRelHomomorphism_34
d_isRelHomomorphism_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 v13
  = du_isRelHomomorphism_270 v13
du_isRelHomomorphism_270 ::
  T_IsOrderIsomorphism_240 -> T_IsRelHomomorphism_34
du_isRelHomomorphism_270 v0
  = let v1 = d_isOrderMonomorphism_256 (coe v0) in
    coe
      (coe
         du_isRelHomomorphism_160 (coe d_isOrderHomomorphism_200 (coe v1)))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderIsomorphism_240 -> T_IsRelMonomorphism_58
d_isRelMonomorphism_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 v13
  = du_isRelMonomorphism_272 v13
du_isRelMonomorphism_272 ::
  T_IsOrderIsomorphism_240 -> T_IsRelMonomorphism_58
du_isRelMonomorphism_272 v0
  = coe
      du_isRelMonomorphism_218 (coe d_isOrderMonomorphism_256 (coe v0))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.mono
d_mono_274 ::
  T_IsOrderIsomorphism_240 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_mono_274 v0
  = coe
      d_mono_154
      (coe
         d_isOrderHomomorphism_200 (coe d_isOrderMonomorphism_256 (coe v0)))
-- Relation.Binary.Morphism.Structures.IsOrderIsomorphism.Eq.isRelIsomorphism
d_isRelIsomorphism_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  T_IsOrderIsomorphism_240 -> T_IsRelIsomorphism_90
d_isRelIsomorphism_278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       ~v11 ~v12 v13
  = du_isRelIsomorphism_278 v13
du_isRelIsomorphism_278 ::
  T_IsOrderIsomorphism_240 -> T_IsRelIsomorphism_90
du_isRelIsomorphism_278 v0
  = coe
      C_constructor_116
      (coe
         du_isRelMonomorphism_216 (coe d_isOrderMonomorphism_256 (coe v0)))
      (coe d_surjective_258 (coe v0))
