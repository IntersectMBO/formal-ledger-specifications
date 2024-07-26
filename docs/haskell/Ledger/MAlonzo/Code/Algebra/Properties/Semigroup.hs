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

module MAlonzo.Code.Algebra.Properties.Semigroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Semigroup._.Alternative
d_Alternative_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Alternative_74 = erased
-- Algebra.Properties.Semigroup._.Flexible
d_Flexible_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Flexible_88 = erased
-- Algebra.Properties.Semigroup._.LeftAlternative
d_LeftAlternative_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftAlternative_106 = erased
-- Algebra.Properties.Semigroup._.RightAlternative
d_RightAlternative_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightAlternative_136 = erased
-- Algebra.Properties.Semigroup.x∙yz≈xy∙z
d_x'8729'yz'8776'xy'8729'z_188 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'xy'8729'z_188 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0)) v1 v2 v3)
-- Algebra.Properties.Semigroup.alternativeˡ
d_alternative'737'_196 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_alternative'737'_196 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0)) v1 v1 v2
-- Algebra.Properties.Semigroup.alternativeʳ
d_alternative'691'_202 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_alternative'691'_202 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v1 v2) v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v2 v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0)) v1 v2 v2)
-- Algebra.Properties.Semigroup.alternative
d_alternative_208 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alternative_208 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Structures.d_assoc_450
              (MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0)) v1 v1
              v2))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_sym_36
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isMagma_448
                    (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v1 v2) v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v1
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__494 v0 v2 v2))
              (coe
                 MAlonzo.Code.Algebra.Structures.d_assoc_450
                 (MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0)) v1 v2
                 v2)))
-- Algebra.Properties.Semigroup.flexible
d_flexible_210 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_flexible_210 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (MAlonzo.Code.Algebra.Bundles.d_isSemigroup_496 (coe v0)) v1 v2 v1
