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

module MAlonzo.Code.Data.Sum.Algebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Empty.Polymorphic
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Properties.Inverse

-- Data.Sum.Algebra.⊎-cong
d_'8846''45'cong_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'cong_22 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8846''45'cong_22 v8 v9
du_'8846''45'cong_22 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'cong_22 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_2134 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_2134 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_from_2136 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from_2136 (coe v1)))
-- Data.Sum.Algebra.⊎-comm
d_'8846''45'comm_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'comm_200 ~v0 ~v1 ~v2 ~v3 = du_'8846''45'comm_200
du_'8846''45'comm_200 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'comm_200
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe MAlonzo.Code.Data.Sum.Base.du_swap_78)
      (coe MAlonzo.Code.Data.Sum.Base.du_swap_78)
-- Data.Sum.Algebra._.⊎-assoc
d_'8846''45'assoc_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'assoc_208 ~v0 ~v1 ~v2 ~v3 = du_'8846''45'assoc_208
du_'8846''45'assoc_208 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'assoc_208
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe MAlonzo.Code.Data.Sum.Base.du_assoc'691'_96)
      (coe MAlonzo.Code.Data.Sum.Base.du_assoc'737'_98)
-- Data.Sum.Algebra._.⊎-identityˡ
d_'8846''45'identity'737'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'identity'737'_210 ~v0 ~v1
  = du_'8846''45'identity'737'_210
du_'8846''45'identity'737'_210 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'identity'737'_210
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (\ v0 ->
            coe MAlonzo.Code.Data.Empty.Polymorphic.du_'8869''45'elim_20)
         (coe (\ v0 -> v0)))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
-- Data.Sum.Algebra._.⊎-identityʳ
d_'8846''45'identity'691'_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8846''45'identity'691'_214 ~v0 ~v1
  = du_'8846''45'identity'691'_214
du_'8846''45'identity'691'_214 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8846''45'identity'691'_214
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52 (coe (\ v0 -> v0))
         (\ v0 ->
            coe MAlonzo.Code.Data.Empty.Polymorphic.du_'8869''45'elim_20))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
-- Data.Sum.Algebra._.⊎-identity
d_'8846''45'identity_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8846''45'identity_216 ~v0 = du_'8846''45'identity_216
du_'8846''45'identity_216 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8846''45'identity_216
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 -> coe du_'8846''45'identity'737'_210)
      (\ v0 -> coe du_'8846''45'identity'691'_214)
-- Data.Sum.Algebra._.⊎-isMagma
d_'8846''45'isMagma_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8846''45'isMagma_218 ~v0 = du_'8846''45'isMagma_218
du_'8846''45'isMagma_218 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8846''45'isMagma_218
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Function.Properties.Inverse.du_'8596''45'isEquivalence_42)
      (coe (\ v0 v1 v2 v3 v4 v5 -> coe du_'8846''45'cong_22 v4 v5))
-- Data.Sum.Algebra._.⊎-isSemigroup
d_'8846''45'isSemigroup_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8846''45'isSemigroup_220 ~v0 = du_'8846''45'isSemigroup_220
du_'8846''45'isSemigroup_220 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8846''45'isSemigroup_220
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe du_'8846''45'isMagma_218)
      (\ v0 v1 v2 -> coe du_'8846''45'assoc_208)
-- Data.Sum.Algebra._.⊎-isMonoid
d_'8846''45'isMonoid_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8846''45'isMonoid_222 ~v0 = du_'8846''45'isMonoid_222
du_'8846''45'isMonoid_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8846''45'isMonoid_222
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe du_'8846''45'isSemigroup_220)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (\ v0 -> coe du_'8846''45'identity'737'_210)
         (\ v0 -> coe du_'8846''45'identity'691'_214))
-- Data.Sum.Algebra._.⊎-isCommutativeMonoid
d_'8846''45'isCommutativeMonoid_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'8846''45'isCommutativeMonoid_224 ~v0
  = du_'8846''45'isCommutativeMonoid_224
du_'8846''45'isCommutativeMonoid_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'8846''45'isCommutativeMonoid_224
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe du_'8846''45'isMonoid_222)
      (\ v0 v1 -> coe du_'8846''45'comm_200)
-- Data.Sum.Algebra._.⊎-magma
d_'8846''45'magma_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_74
d_'8846''45'magma_226 ~v0 = du_'8846''45'magma_226
du_'8846''45'magma_226 :: MAlonzo.Code.Algebra.Bundles.T_Magma_74
du_'8846''45'magma_226
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_124 erased
      (coe du_'8846''45'isMagma_218)
-- Data.Sum.Algebra._.⊎-semigroup
d_'8846''45'semigroup_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
d_'8846''45'semigroup_228 ~v0 = du_'8846''45'semigroup_228
du_'8846''45'semigroup_228 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_558
du_'8846''45'semigroup_228
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_614 erased
      (coe du_'8846''45'isSemigroup_220)
-- Data.Sum.Algebra._.⊎-monoid
d_'8846''45'monoid_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_'8846''45'monoid_230 ~v0 = du_'8846''45'monoid_230
du_'8846''45'monoid_230 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
du_'8846''45'monoid_230
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_990 erased erased
      (coe du_'8846''45'isMonoid_222)
-- Data.Sum.Algebra._.⊎-commutativeMonoid
d_'8846''45'commutativeMonoid_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_'8846''45'commutativeMonoid_232 ~v0
  = du_'8846''45'commutativeMonoid_232
du_'8846''45'commutativeMonoid_232 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_'8846''45'commutativeMonoid_232
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088 erased erased
      (coe du_'8846''45'isCommutativeMonoid_224)
