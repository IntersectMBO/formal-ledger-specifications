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

module MAlonzo.Code.Relation.Binary.Morphism.Construct.Identity where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Morphism.Bundles
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Relation.Binary.Morphism.Construct.Identity._.isRelHomomorphism
d_isRelHomomorphism_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_34
d_isRelHomomorphism_28 ~v0 ~v1 ~v2 ~v3 = du_isRelHomomorphism_28
du_isRelHomomorphism_28 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_34
du_isRelHomomorphism_28
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_46
      (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isRelMonomorphism
d_isRelMonomorphism_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_58
d_isRelMonomorphism_30 ~v0 ~v1 ~v2 ~v3 = du_isRelMonomorphism_30
du_isRelMonomorphism_30 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_58
du_isRelMonomorphism_30
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_78
      (coe du_isRelHomomorphism_28) (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isRelIsomorphism
d_isRelIsomorphism_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_90
d_isRelIsomorphism_32 ~v0 ~v1 ~v2 ~v3 ~v4 = du_isRelIsomorphism_32
du_isRelIsomorphism_32 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_90
du_isRelIsomorphism_32
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_116
      (coe du_isRelMonomorphism_30)
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Relation.Binary.Morphism.Construct.Identity._.setoidHomomorphism
d_setoidHomomorphism_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidHomomorphism_36
d_setoidHomomorphism_70 ~v0 ~v1 ~v2 = du_setoidHomomorphism_70
du_setoidHomomorphism_70 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidHomomorphism_36
du_setoidHomomorphism_70
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_constructor_50
      (coe (\ v0 -> v0)) (coe du_isRelHomomorphism_28)
-- Relation.Binary.Morphism.Construct.Identity._.setoidMonomorphism
d_setoidMonomorphism_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidMonomorphism_52
d_setoidMonomorphism_72 ~v0 ~v1 ~v2 = du_setoidMonomorphism_72
du_setoidMonomorphism_72 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidMonomorphism_52
du_setoidMonomorphism_72
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_constructor_72
      (coe (\ v0 -> v0)) (coe du_isRelMonomorphism_30)
-- Relation.Binary.Morphism.Construct.Identity._.setoidIsomorphism
d_setoidIsomorphism_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidIsomorphism_74
d_setoidIsomorphism_74 ~v0 ~v1 ~v2 = du_setoidIsomorphism_74
du_setoidIsomorphism_74 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidIsomorphism_74
du_setoidIsomorphism_74
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_constructor_104
      (coe (\ v0 -> v0)) (coe du_isRelIsomorphism_32)
-- Relation.Binary.Morphism.Construct.Identity._.isOrderHomomorphism
d_isOrderHomomorphism_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_136
d_isOrderHomomorphism_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isOrderHomomorphism_90
du_isOrderHomomorphism_90 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_136
du_isOrderHomomorphism_90
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_162
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isOrderMonomorphism
d_isOrderMonomorphism_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_isOrderMonomorphism_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isOrderMonomorphism_92
du_isOrderMonomorphism_92 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
du_isOrderMonomorphism_92
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_220
      (coe du_isOrderHomomorphism_90) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isOrderIsomorphism
d_isOrderIsomorphism_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderIsomorphism_240
d_isOrderIsomorphism_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_isOrderIsomorphism_94
du_isOrderIsomorphism_94 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderIsomorphism_240
du_isOrderIsomorphism_94
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_280
      (coe du_isOrderMonomorphism_92)
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Relation.Binary.Morphism.Construct.Identity._.preorderHomomorphism
d_preorderHomomorphism_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PreorderHomomorphism_122
d_preorderHomomorphism_110 ~v0 ~v1 ~v2 ~v3
  = du_preorderHomomorphism_110
du_preorderHomomorphism_110 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PreorderHomomorphism_122
du_preorderHomomorphism_110
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_constructor_148
      (coe (\ v0 -> v0)) (coe du_isOrderHomomorphism_90)
-- Relation.Binary.Morphism.Construct.Identity._.posetHomomorphism
d_posetHomomorphism_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PosetHomomorphism_322
d_posetHomomorphism_124 ~v0 ~v1 ~v2 ~v3 = du_posetHomomorphism_124
du_posetHomomorphism_124 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PosetHomomorphism_322
du_posetHomomorphism_124
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_constructor_344
      (coe (\ v0 -> v0)) (coe du_isOrderHomomorphism_90)
