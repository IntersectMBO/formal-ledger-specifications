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
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_28 ~v0 ~v1 ~v2 ~v3 = du_isRelHomomorphism_28
du_isRelHomomorphism_28 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
du_isRelHomomorphism_28
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
      (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isRelMonomorphism
d_isRelMonomorphism_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_30 ~v0 ~v1 ~v2 ~v3 = du_isRelMonomorphism_30
du_isRelMonomorphism_30 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_30
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1563
      (coe du_isRelHomomorphism_28) (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isRelIsomorphism
d_isRelIsomorphism_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_32 ~v0 ~v1 ~v2 ~v3 ~v4 = du_isRelIsomorphism_32
du_isRelIsomorphism_32 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_32
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelIsomorphism'46'constructor_3019
      (coe du_isRelMonomorphism_30)
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Relation.Binary.Morphism.Construct.Identity._.setoidHomomorphism
d_setoidHomomorphism_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidHomomorphism_36
d_setoidHomomorphism_68 ~v0 ~v1 ~v2 = du_setoidHomomorphism_68
du_setoidHomomorphism_68 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidHomomorphism_36
du_setoidHomomorphism_68
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_SetoidHomomorphism'46'constructor_731
      (coe (\ v0 -> v0)) (coe du_isRelHomomorphism_28)
-- Relation.Binary.Morphism.Construct.Identity._.setoidMonomorphism
d_setoidMonomorphism_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidMonomorphism_50
d_setoidMonomorphism_70 ~v0 ~v1 ~v2 = du_setoidMonomorphism_70
du_setoidMonomorphism_70 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidMonomorphism_50
du_setoidMonomorphism_70
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_SetoidMonomorphism'46'constructor_2049
      (coe (\ v0 -> v0)) (coe du_isRelMonomorphism_30)
-- Relation.Binary.Morphism.Construct.Identity._.setoidIsomorphism
d_setoidIsomorphism_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidIsomorphism_70
d_setoidIsomorphism_72 ~v0 ~v1 ~v2 = du_setoidIsomorphism_72
du_setoidIsomorphism_72 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_SetoidIsomorphism_70
du_setoidIsomorphism_72
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_SetoidIsomorphism'46'constructor_3673
      (coe (\ v0 -> v0)) (coe du_isRelIsomorphism_32)
-- Relation.Binary.Morphism.Construct.Identity._.isOrderHomomorphism
d_isOrderHomomorphism_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_isOrderHomomorphism_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isOrderHomomorphism_88
du_isOrderHomomorphism_88 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_isOrderHomomorphism_88
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5435
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isOrderMonomorphism
d_isOrderMonomorphism_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_isOrderMonomorphism_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isOrderMonomorphism_90
du_isOrderMonomorphism_90 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
du_isOrderMonomorphism_90
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9103
      (coe du_isOrderHomomorphism_88) (coe (\ v0 v1 v2 -> v2))
      (coe (\ v0 v1 v2 -> v2))
-- Relation.Binary.Morphism.Construct.Identity._.isOrderIsomorphism
d_isOrderIsomorphism_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderIsomorphism_238
d_isOrderIsomorphism_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_isOrderIsomorphism_92
du_isOrderIsomorphism_92 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderIsomorphism_238
du_isOrderIsomorphism_92
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderIsomorphism'46'constructor_14201
      (coe du_isOrderMonomorphism_90)
      (coe MAlonzo.Code.Function.Construct.Identity.du_surjective_26)
-- Relation.Binary.Morphism.Construct.Identity._.preorderHomomorphism
d_preorderHomomorphism_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PreorderHomomorphism_116
d_preorderHomomorphism_108 ~v0 ~v1 ~v2 ~v3
  = du_preorderHomomorphism_108
du_preorderHomomorphism_108 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PreorderHomomorphism_116
du_preorderHomomorphism_108
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_PreorderHomomorphism'46'constructor_6393
      (coe (\ v0 -> v0)) (coe du_isOrderHomomorphism_88)
-- Relation.Binary.Morphism.Construct.Identity._.posetHomomorphism
d_posetHomomorphism_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PosetHomomorphism_298
d_posetHomomorphism_122 ~v0 ~v1 ~v2 ~v3 = du_posetHomomorphism_122
du_posetHomomorphism_122 ::
  MAlonzo.Code.Relation.Binary.Morphism.Bundles.T_PosetHomomorphism_298
du_posetHomomorphism_122
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Bundles.C_PosetHomomorphism'46'constructor_8799
      (coe (\ v0 -> v0)) (coe du_isOrderHomomorphism_88)
