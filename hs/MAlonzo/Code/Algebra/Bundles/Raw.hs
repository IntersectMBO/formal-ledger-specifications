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

module MAlonzo.Code.Algebra.Bundles.Raw where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles.Raw

-- Algebra.Bundles.Raw.RawSuccessorSet
d_RawSuccessorSet_10 a0 a1 = ()
data T_RawSuccessorSet_10
  = C_RawSuccessorSet'46'constructor_89 (AgdaAny -> AgdaAny) AgdaAny
-- Algebra.Bundles.Raw.RawSuccessorSet.Carrier
d_Carrier_24 :: T_RawSuccessorSet_10 -> ()
d_Carrier_24 = erased
-- Algebra.Bundles.Raw.RawSuccessorSet._≈_
d__'8776'__26 :: T_RawSuccessorSet_10 -> AgdaAny -> AgdaAny -> ()
d__'8776'__26 = erased
-- Algebra.Bundles.Raw.RawSuccessorSet.suc#
d_suc'35'_28 :: T_RawSuccessorSet_10 -> AgdaAny -> AgdaAny
d_suc'35'_28 v0
  = case coe v0 of
      C_RawSuccessorSet'46'constructor_89 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawSuccessorSet.zero#
d_zero'35'_30 :: T_RawSuccessorSet_10 -> AgdaAny
d_zero'35'_30 v0
  = case coe v0 of
      C_RawSuccessorSet'46'constructor_89 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawSuccessorSet.rawSetoid
d_rawSetoid_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSuccessorSet_10 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_32 = erased
-- Algebra.Bundles.Raw.RawSuccessorSet._._≉_
d__'8777'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSuccessorSet_10 -> AgdaAny -> AgdaAny -> ()
d__'8777'__36 = erased
-- Algebra.Bundles.Raw.RawMagma
d_RawMagma_42 a0 a1 = ()
newtype T_RawMagma_42
  = C_RawMagma'46'constructor_487 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Bundles.Raw.RawMagma.Carrier
d_Carrier_54 :: T_RawMagma_42 -> ()
d_Carrier_54 = erased
-- Algebra.Bundles.Raw.RawMagma._≈_
d__'8776'__56 :: T_RawMagma_42 -> AgdaAny -> AgdaAny -> ()
d__'8776'__56 = erased
-- Algebra.Bundles.Raw.RawMagma._∙_
d__'8729'__58 :: T_RawMagma_42 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__58 v0
  = case coe v0 of
      C_RawMagma'46'constructor_487 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawMagma.rawSetoid
d_rawSetoid_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawMagma_42 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_60 = erased
-- Algebra.Bundles.Raw.RawMagma._._≉_
d__'8777'__64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawMagma_42 -> AgdaAny -> AgdaAny -> ()
d__'8777'__64 = erased
-- Algebra.Bundles.Raw.RawMonoid
d_RawMonoid_70 a0 a1 = ()
data T_RawMonoid_70
  = C_RawMonoid'46'constructor_857 (AgdaAny -> AgdaAny -> AgdaAny)
                                   AgdaAny
-- Algebra.Bundles.Raw.RawMonoid.Carrier
d_Carrier_84 :: T_RawMonoid_70 -> ()
d_Carrier_84 = erased
-- Algebra.Bundles.Raw.RawMonoid._≈_
d__'8776'__86 :: T_RawMonoid_70 -> AgdaAny -> AgdaAny -> ()
d__'8776'__86 = erased
-- Algebra.Bundles.Raw.RawMonoid._∙_
d__'8729'__88 :: T_RawMonoid_70 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__88 v0
  = case coe v0 of
      C_RawMonoid'46'constructor_857 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawMonoid.ε
d_ε_90 :: T_RawMonoid_70 -> AgdaAny
d_ε_90 v0
  = case coe v0 of
      C_RawMonoid'46'constructor_857 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawMonoid.rawMagma
d_rawMagma_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawMonoid_70 -> T_RawMagma_42
d_rawMagma_92 ~v0 ~v1 v2 = du_rawMagma_92 v2
du_rawMagma_92 :: T_RawMonoid_70 -> T_RawMagma_42
du_rawMagma_92 v0
  = coe C_RawMagma'46'constructor_487 (d__'8729'__88 (coe v0))
-- Algebra.Bundles.Raw.RawMonoid._._≉_
d__'8777'__96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawMonoid_70 -> AgdaAny -> AgdaAny -> ()
d__'8777'__96 = erased
-- Algebra.Bundles.Raw.RawGroup
d_RawGroup_102 a0 a1 = ()
data T_RawGroup_102
  = C_RawGroup'46'constructor_1319 (AgdaAny -> AgdaAny -> AgdaAny)
                                   AgdaAny (AgdaAny -> AgdaAny)
-- Algebra.Bundles.Raw.RawGroup.Carrier
d_Carrier_118 :: T_RawGroup_102 -> ()
d_Carrier_118 = erased
-- Algebra.Bundles.Raw.RawGroup._≈_
d__'8776'__120 :: T_RawGroup_102 -> AgdaAny -> AgdaAny -> ()
d__'8776'__120 = erased
-- Algebra.Bundles.Raw.RawGroup._∙_
d__'8729'__122 :: T_RawGroup_102 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__122 v0
  = case coe v0 of
      C_RawGroup'46'constructor_1319 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawGroup.ε
d_ε_124 :: T_RawGroup_102 -> AgdaAny
d_ε_124 v0
  = case coe v0 of
      C_RawGroup'46'constructor_1319 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawGroup._⁻¹
d__'8315''185'_126 :: T_RawGroup_102 -> AgdaAny -> AgdaAny
d__'8315''185'_126 v0
  = case coe v0 of
      C_RawGroup'46'constructor_1319 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawGroup.rawMonoid
d_rawMonoid_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawGroup_102 -> T_RawMonoid_70
d_rawMonoid_128 ~v0 ~v1 v2 = du_rawMonoid_128 v2
du_rawMonoid_128 :: T_RawGroup_102 -> T_RawMonoid_70
du_rawMonoid_128 v0
  = coe
      C_RawMonoid'46'constructor_857 (d__'8729'__122 (coe v0))
      (d_ε_124 (coe v0))
-- Algebra.Bundles.Raw.RawGroup._._≉_
d__'8777'__132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawGroup_102 -> AgdaAny -> AgdaAny -> ()
d__'8777'__132 = erased
-- Algebra.Bundles.Raw.RawGroup._.rawMagma
d_rawMagma_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawGroup_102 -> T_RawMagma_42
d_rawMagma_134 ~v0 ~v1 v2 = du_rawMagma_134 v2
du_rawMagma_134 :: T_RawGroup_102 -> T_RawMagma_42
du_rawMagma_134 v0
  = coe du_rawMagma_92 (coe du_rawMonoid_128 (coe v0))
-- Algebra.Bundles.Raw.RawNearSemiring
d_RawNearSemiring_140 a0 a1 = ()
data T_RawNearSemiring_140
  = C_RawNearSemiring'46'constructor_1841 (AgdaAny ->
                                           AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
-- Algebra.Bundles.Raw.RawNearSemiring.Carrier
d_Carrier_156 :: T_RawNearSemiring_140 -> ()
d_Carrier_156 = erased
-- Algebra.Bundles.Raw.RawNearSemiring._≈_
d__'8776'__158 :: T_RawNearSemiring_140 -> AgdaAny -> AgdaAny -> ()
d__'8776'__158 = erased
-- Algebra.Bundles.Raw.RawNearSemiring._+_
d__'43'__160 ::
  T_RawNearSemiring_140 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__160 v0
  = case coe v0 of
      C_RawNearSemiring'46'constructor_1841 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawNearSemiring._*_
d__'42'__162 ::
  T_RawNearSemiring_140 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__162 v0
  = case coe v0 of
      C_RawNearSemiring'46'constructor_1841 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawNearSemiring.0#
d_0'35'_164 :: T_RawNearSemiring_140 -> AgdaAny
d_0'35'_164 v0
  = case coe v0 of
      C_RawNearSemiring'46'constructor_1841 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawNearSemiring.+-rawMonoid
d_'43''45'rawMonoid_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawNearSemiring_140 -> T_RawMonoid_70
d_'43''45'rawMonoid_166 ~v0 ~v1 v2 = du_'43''45'rawMonoid_166 v2
du_'43''45'rawMonoid_166 :: T_RawNearSemiring_140 -> T_RawMonoid_70
du_'43''45'rawMonoid_166 v0
  = coe
      C_RawMonoid'46'constructor_857 (d__'43'__160 (coe v0))
      (d_0'35'_164 (coe v0))
-- Algebra.Bundles.Raw.RawNearSemiring._._≉_
d__'8777'__170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawNearSemiring_140 -> AgdaAny -> AgdaAny -> ()
d__'8777'__170 = erased
-- Algebra.Bundles.Raw.RawNearSemiring._.rawMagma
d_rawMagma_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawNearSemiring_140 -> T_RawMagma_42
d_rawMagma_172 ~v0 ~v1 v2 = du_rawMagma_172 v2
du_rawMagma_172 :: T_RawNearSemiring_140 -> T_RawMagma_42
du_rawMagma_172 v0
  = coe du_rawMagma_92 (coe du_'43''45'rawMonoid_166 (coe v0))
-- Algebra.Bundles.Raw.RawNearSemiring.*-rawMagma
d_'42''45'rawMagma_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawNearSemiring_140 -> T_RawMagma_42
d_'42''45'rawMagma_174 ~v0 ~v1 v2 = du_'42''45'rawMagma_174 v2
du_'42''45'rawMagma_174 :: T_RawNearSemiring_140 -> T_RawMagma_42
du_'42''45'rawMagma_174 v0
  = coe C_RawMagma'46'constructor_487 (d__'42'__162 (coe v0))
-- Algebra.Bundles.Raw.RawSemiring
d_RawSemiring_180 a0 a1 = ()
data T_RawSemiring_180
  = C_RawSemiring'46'constructor_2465 (AgdaAny -> AgdaAny -> AgdaAny)
                                      (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
-- Algebra.Bundles.Raw.RawSemiring.Carrier
d_Carrier_198 :: T_RawSemiring_180 -> ()
d_Carrier_198 = erased
-- Algebra.Bundles.Raw.RawSemiring._≈_
d__'8776'__200 :: T_RawSemiring_180 -> AgdaAny -> AgdaAny -> ()
d__'8776'__200 = erased
-- Algebra.Bundles.Raw.RawSemiring._+_
d__'43'__202 :: T_RawSemiring_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__202 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_2465 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawSemiring._*_
d__'42'__204 :: T_RawSemiring_180 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__204 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_2465 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawSemiring.0#
d_0'35'_206 :: T_RawSemiring_180 -> AgdaAny
d_0'35'_206 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_2465 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawSemiring.1#
d_1'35'_208 :: T_RawSemiring_180 -> AgdaAny
d_1'35'_208 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_2465 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawSemiring.rawNearSemiring
d_rawNearSemiring_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSemiring_180 -> T_RawNearSemiring_140
d_rawNearSemiring_210 ~v0 ~v1 v2 = du_rawNearSemiring_210 v2
du_rawNearSemiring_210 ::
  T_RawSemiring_180 -> T_RawNearSemiring_140
du_rawNearSemiring_210 v0
  = coe
      C_RawNearSemiring'46'constructor_1841 (d__'43'__202 (coe v0))
      (d__'42'__204 (coe v0)) (d_0'35'_206 (coe v0))
-- Algebra.Bundles.Raw.RawSemiring._._≉_
d__'8777'__214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSemiring_180 -> AgdaAny -> AgdaAny -> ()
d__'8777'__214 = erased
-- Algebra.Bundles.Raw.RawSemiring._.*-rawMagma
d_'42''45'rawMagma_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSemiring_180 -> T_RawMagma_42
d_'42''45'rawMagma_216 ~v0 ~v1 v2 = du_'42''45'rawMagma_216 v2
du_'42''45'rawMagma_216 :: T_RawSemiring_180 -> T_RawMagma_42
du_'42''45'rawMagma_216 v0
  = coe du_'42''45'rawMagma_174 (coe du_rawNearSemiring_210 (coe v0))
-- Algebra.Bundles.Raw.RawSemiring._.rawMagma
d_rawMagma_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSemiring_180 -> T_RawMagma_42
d_rawMagma_218 ~v0 ~v1 v2 = du_rawMagma_218 v2
du_rawMagma_218 :: T_RawSemiring_180 -> T_RawMagma_42
du_rawMagma_218 v0
  = let v1 = coe du_rawNearSemiring_210 (coe v0) in
    coe (coe du_rawMagma_92 (coe du_'43''45'rawMonoid_166 (coe v1)))
-- Algebra.Bundles.Raw.RawSemiring._.+-rawMonoid
d_'43''45'rawMonoid_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSemiring_180 -> T_RawMonoid_70
d_'43''45'rawMonoid_220 ~v0 ~v1 v2 = du_'43''45'rawMonoid_220 v2
du_'43''45'rawMonoid_220 :: T_RawSemiring_180 -> T_RawMonoid_70
du_'43''45'rawMonoid_220 v0
  = coe
      du_'43''45'rawMonoid_166 (coe du_rawNearSemiring_210 (coe v0))
-- Algebra.Bundles.Raw.RawSemiring.*-rawMonoid
d_'42''45'rawMonoid_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawSemiring_180 -> T_RawMonoid_70
d_'42''45'rawMonoid_222 ~v0 ~v1 v2 = du_'42''45'rawMonoid_222 v2
du_'42''45'rawMonoid_222 :: T_RawSemiring_180 -> T_RawMonoid_70
du_'42''45'rawMonoid_222 v0
  = coe
      C_RawMonoid'46'constructor_857 (d__'42'__204 (coe v0))
      (d_1'35'_208 (coe v0))
-- Algebra.Bundles.Raw.RawRingWithoutOne
d_RawRingWithoutOne_228 a0 a1 = ()
data T_RawRingWithoutOne_228
  = C_RawRingWithoutOne'46'constructor_3217 (AgdaAny ->
                                             AgdaAny -> AgdaAny)
                                            (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                            AgdaAny
-- Algebra.Bundles.Raw.RawRingWithoutOne.Carrier
d_Carrier_246 :: T_RawRingWithoutOne_228 -> ()
d_Carrier_246 = erased
-- Algebra.Bundles.Raw.RawRingWithoutOne._≈_
d__'8776'__248 ::
  T_RawRingWithoutOne_228 -> AgdaAny -> AgdaAny -> ()
d__'8776'__248 = erased
-- Algebra.Bundles.Raw.RawRingWithoutOne._+_
d__'43'__250 ::
  T_RawRingWithoutOne_228 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__250 v0
  = case coe v0 of
      C_RawRingWithoutOne'46'constructor_3217 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRingWithoutOne._*_
d__'42'__252 ::
  T_RawRingWithoutOne_228 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__252 v0
  = case coe v0 of
      C_RawRingWithoutOne'46'constructor_3217 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRingWithoutOne.-_
d_'45'__254 :: T_RawRingWithoutOne_228 -> AgdaAny -> AgdaAny
d_'45'__254 v0
  = case coe v0 of
      C_RawRingWithoutOne'46'constructor_3217 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRingWithoutOne.0#
d_0'35'_256 :: T_RawRingWithoutOne_228 -> AgdaAny
d_0'35'_256 v0
  = case coe v0 of
      C_RawRingWithoutOne'46'constructor_3217 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRingWithoutOne.rawNearSemiring
d_rawNearSemiring_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRingWithoutOne_228 -> T_RawNearSemiring_140
d_rawNearSemiring_258 ~v0 ~v1 v2 = du_rawNearSemiring_258 v2
du_rawNearSemiring_258 ::
  T_RawRingWithoutOne_228 -> T_RawNearSemiring_140
du_rawNearSemiring_258 v0
  = coe
      C_RawNearSemiring'46'constructor_1841 (d__'43'__250 (coe v0))
      (d__'42'__252 (coe v0)) (d_0'35'_256 (coe v0))
-- Algebra.Bundles.Raw.RawRingWithoutOne._._≉_
d__'8777'__262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRingWithoutOne_228 -> AgdaAny -> AgdaAny -> ()
d__'8777'__262 = erased
-- Algebra.Bundles.Raw.RawRingWithoutOne._.*-rawMagma
d_'42''45'rawMagma_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRingWithoutOne_228 -> T_RawMagma_42
d_'42''45'rawMagma_264 ~v0 ~v1 v2 = du_'42''45'rawMagma_264 v2
du_'42''45'rawMagma_264 :: T_RawRingWithoutOne_228 -> T_RawMagma_42
du_'42''45'rawMagma_264 v0
  = coe du_'42''45'rawMagma_174 (coe du_rawNearSemiring_258 (coe v0))
-- Algebra.Bundles.Raw.RawRingWithoutOne._.rawMagma
d_rawMagma_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRingWithoutOne_228 -> T_RawMagma_42
d_rawMagma_266 ~v0 ~v1 v2 = du_rawMagma_266 v2
du_rawMagma_266 :: T_RawRingWithoutOne_228 -> T_RawMagma_42
du_rawMagma_266 v0
  = let v1 = coe du_rawNearSemiring_258 (coe v0) in
    coe (coe du_rawMagma_92 (coe du_'43''45'rawMonoid_166 (coe v1)))
-- Algebra.Bundles.Raw.RawRingWithoutOne._.+-rawMonoid
d_'43''45'rawMonoid_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRingWithoutOne_228 -> T_RawMonoid_70
d_'43''45'rawMonoid_268 ~v0 ~v1 v2 = du_'43''45'rawMonoid_268 v2
du_'43''45'rawMonoid_268 ::
  T_RawRingWithoutOne_228 -> T_RawMonoid_70
du_'43''45'rawMonoid_268 v0
  = coe
      du_'43''45'rawMonoid_166 (coe du_rawNearSemiring_258 (coe v0))
-- Algebra.Bundles.Raw.RawRingWithoutOne.+-rawGroup
d_'43''45'rawGroup_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRingWithoutOne_228 -> T_RawGroup_102
d_'43''45'rawGroup_270 ~v0 ~v1 v2 = du_'43''45'rawGroup_270 v2
du_'43''45'rawGroup_270 ::
  T_RawRingWithoutOne_228 -> T_RawGroup_102
du_'43''45'rawGroup_270 v0
  = coe
      C_RawGroup'46'constructor_1319 (d__'43'__250 (coe v0))
      (d_0'35'_256 (coe v0)) (d_'45'__254 (coe v0))
-- Algebra.Bundles.Raw.RawRing
d_RawRing_276 a0 a1 = ()
data T_RawRing_276
  = C_RawRing'46'constructor_3989 (AgdaAny -> AgdaAny -> AgdaAny)
                                  (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                  AgdaAny
-- Algebra.Bundles.Raw.RawRing.Carrier
d_Carrier_296 :: T_RawRing_276 -> ()
d_Carrier_296 = erased
-- Algebra.Bundles.Raw.RawRing._≈_
d__'8776'__298 :: T_RawRing_276 -> AgdaAny -> AgdaAny -> ()
d__'8776'__298 = erased
-- Algebra.Bundles.Raw.RawRing._+_
d__'43'__300 :: T_RawRing_276 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__300 v0
  = case coe v0 of
      C_RawRing'46'constructor_3989 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRing._*_
d__'42'__302 :: T_RawRing_276 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__302 v0
  = case coe v0 of
      C_RawRing'46'constructor_3989 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRing.-_
d_'45'__304 :: T_RawRing_276 -> AgdaAny -> AgdaAny
d_'45'__304 v0
  = case coe v0 of
      C_RawRing'46'constructor_3989 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRing.0#
d_0'35'_306 :: T_RawRing_276 -> AgdaAny
d_0'35'_306 v0
  = case coe v0 of
      C_RawRing'46'constructor_3989 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRing.1#
d_1'35'_308 :: T_RawRing_276 -> AgdaAny
d_1'35'_308 v0
  = case coe v0 of
      C_RawRing'46'constructor_3989 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawRing.rawSemiring
d_rawSemiring_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> T_RawSemiring_180
d_rawSemiring_310 ~v0 ~v1 v2 = du_rawSemiring_310 v2
du_rawSemiring_310 :: T_RawRing_276 -> T_RawSemiring_180
du_rawSemiring_310 v0
  = coe
      C_RawSemiring'46'constructor_2465 (d__'43'__300 (coe v0))
      (d__'42'__302 (coe v0)) (d_0'35'_306 (coe v0))
      (d_1'35'_308 (coe v0))
-- Algebra.Bundles.Raw.RawRing._._≉_
d__'8777'__314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> AgdaAny -> AgdaAny -> ()
d__'8777'__314 = erased
-- Algebra.Bundles.Raw.RawRing._.*-rawMagma
d_'42''45'rawMagma_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> T_RawMagma_42
d_'42''45'rawMagma_316 ~v0 ~v1 v2 = du_'42''45'rawMagma_316 v2
du_'42''45'rawMagma_316 :: T_RawRing_276 -> T_RawMagma_42
du_'42''45'rawMagma_316 v0
  = let v1 = coe du_rawSemiring_310 (coe v0) in
    coe
      (coe du_'42''45'rawMagma_174 (coe du_rawNearSemiring_210 (coe v1)))
-- Algebra.Bundles.Raw.RawRing._.*-rawMonoid
d_'42''45'rawMonoid_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> T_RawMonoid_70
d_'42''45'rawMonoid_318 ~v0 ~v1 v2 = du_'42''45'rawMonoid_318 v2
du_'42''45'rawMonoid_318 :: T_RawRing_276 -> T_RawMonoid_70
du_'42''45'rawMonoid_318 v0
  = coe du_'42''45'rawMonoid_222 (coe du_rawSemiring_310 (coe v0))
-- Algebra.Bundles.Raw.RawRing._.rawMagma
d_rawMagma_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> T_RawMagma_42
d_rawMagma_320 ~v0 ~v1 v2 = du_rawMagma_320 v2
du_rawMagma_320 :: T_RawRing_276 -> T_RawMagma_42
du_rawMagma_320 v0
  = let v1 = coe du_rawSemiring_310 (coe v0) in
    coe
      (let v2 = coe du_rawNearSemiring_210 (coe v1) in
       coe (coe du_rawMagma_92 (coe du_'43''45'rawMonoid_166 (coe v2))))
-- Algebra.Bundles.Raw.RawRing._.+-rawMonoid
d_'43''45'rawMonoid_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> T_RawMonoid_70
d_'43''45'rawMonoid_322 ~v0 ~v1 v2 = du_'43''45'rawMonoid_322 v2
du_'43''45'rawMonoid_322 :: T_RawRing_276 -> T_RawMonoid_70
du_'43''45'rawMonoid_322 v0
  = let v1 = coe du_rawSemiring_310 (coe v0) in
    coe
      (coe
         du_'43''45'rawMonoid_166 (coe du_rawNearSemiring_210 (coe v1)))
-- Algebra.Bundles.Raw.RawRing.rawRingWithoutOne
d_rawRingWithoutOne_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> T_RawRingWithoutOne_228
d_rawRingWithoutOne_324 ~v0 ~v1 v2 = du_rawRingWithoutOne_324 v2
du_rawRingWithoutOne_324 ::
  T_RawRing_276 -> T_RawRingWithoutOne_228
du_rawRingWithoutOne_324 v0
  = coe
      C_RawRingWithoutOne'46'constructor_3217 (d__'43'__300 (coe v0))
      (d__'42'__302 (coe v0)) (d_'45'__304 (coe v0))
      (d_0'35'_306 (coe v0))
-- Algebra.Bundles.Raw.RawRing._.+-rawGroup
d_'43''45'rawGroup_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawRing_276 -> T_RawGroup_102
d_'43''45'rawGroup_328 ~v0 ~v1 v2 = du_'43''45'rawGroup_328 v2
du_'43''45'rawGroup_328 :: T_RawRing_276 -> T_RawGroup_102
du_'43''45'rawGroup_328 v0
  = coe
      du_'43''45'rawGroup_270 (coe du_rawRingWithoutOne_324 (coe v0))
-- Algebra.Bundles.Raw.RawQuasigroup
d_RawQuasigroup_334 a0 a1 = ()
data T_RawQuasigroup_334
  = C_RawQuasigroup'46'constructor_4863 (AgdaAny ->
                                         AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Bundles.Raw.RawQuasigroup.Carrier
d_Carrier_350 :: T_RawQuasigroup_334 -> ()
d_Carrier_350 = erased
-- Algebra.Bundles.Raw.RawQuasigroup._≈_
d__'8776'__352 :: T_RawQuasigroup_334 -> AgdaAny -> AgdaAny -> ()
d__'8776'__352 = erased
-- Algebra.Bundles.Raw.RawQuasigroup._∙_
d__'8729'__354 ::
  T_RawQuasigroup_334 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__354 v0
  = case coe v0 of
      C_RawQuasigroup'46'constructor_4863 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawQuasigroup._\\_
d__'92''92'__356 ::
  T_RawQuasigroup_334 -> AgdaAny -> AgdaAny -> AgdaAny
d__'92''92'__356 v0
  = case coe v0 of
      C_RawQuasigroup'46'constructor_4863 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawQuasigroup._//_
d__'47''47'__358 ::
  T_RawQuasigroup_334 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__358 v0
  = case coe v0 of
      C_RawQuasigroup'46'constructor_4863 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawQuasigroup.∙-rawMagma
d_'8729''45'rawMagma_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawQuasigroup_334 -> T_RawMagma_42
d_'8729''45'rawMagma_360 ~v0 ~v1 v2 = du_'8729''45'rawMagma_360 v2
du_'8729''45'rawMagma_360 :: T_RawQuasigroup_334 -> T_RawMagma_42
du_'8729''45'rawMagma_360 v0
  = coe C_RawMagma'46'constructor_487 (d__'8729'__354 (coe v0))
-- Algebra.Bundles.Raw.RawQuasigroup.\\-rawMagma
d_'92''92''45'rawMagma_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawQuasigroup_334 -> T_RawMagma_42
d_'92''92''45'rawMagma_362 ~v0 ~v1 v2
  = du_'92''92''45'rawMagma_362 v2
du_'92''92''45'rawMagma_362 :: T_RawQuasigroup_334 -> T_RawMagma_42
du_'92''92''45'rawMagma_362 v0
  = coe C_RawMagma'46'constructor_487 (d__'92''92'__356 (coe v0))
-- Algebra.Bundles.Raw.RawQuasigroup.//-rawMagma
d_'47''47''45'rawMagma_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawQuasigroup_334 -> T_RawMagma_42
d_'47''47''45'rawMagma_364 ~v0 ~v1 v2
  = du_'47''47''45'rawMagma_364 v2
du_'47''47''45'rawMagma_364 :: T_RawQuasigroup_334 -> T_RawMagma_42
du_'47''47''45'rawMagma_364 v0
  = coe C_RawMagma'46'constructor_487 (d__'47''47'__358 (coe v0))
-- Algebra.Bundles.Raw.RawQuasigroup._._≉_
d__'8777'__368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawQuasigroup_334 -> AgdaAny -> AgdaAny -> ()
d__'8777'__368 = erased
-- Algebra.Bundles.Raw.RawLoop
d_RawLoop_374 a0 a1 = ()
data T_RawLoop_374
  = C_RawLoop'46'constructor_5597 (AgdaAny -> AgdaAny -> AgdaAny)
                                  (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
                                  AgdaAny
-- Algebra.Bundles.Raw.RawLoop.Carrier
d_Carrier_392 :: T_RawLoop_374 -> ()
d_Carrier_392 = erased
-- Algebra.Bundles.Raw.RawLoop._≈_
d__'8776'__394 :: T_RawLoop_374 -> AgdaAny -> AgdaAny -> ()
d__'8776'__394 = erased
-- Algebra.Bundles.Raw.RawLoop._∙_
d__'8729'__396 :: T_RawLoop_374 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__396 v0
  = case coe v0 of
      C_RawLoop'46'constructor_5597 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawLoop._\\_
d__'92''92'__398 :: T_RawLoop_374 -> AgdaAny -> AgdaAny -> AgdaAny
d__'92''92'__398 v0
  = case coe v0 of
      C_RawLoop'46'constructor_5597 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawLoop._//_
d__'47''47'__400 :: T_RawLoop_374 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__400 v0
  = case coe v0 of
      C_RawLoop'46'constructor_5597 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawLoop.ε
d_ε_402 :: T_RawLoop_374 -> AgdaAny
d_ε_402 v0
  = case coe v0 of
      C_RawLoop'46'constructor_5597 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawLoop.rawQuasigroup
d_rawQuasigroup_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawLoop_374 -> T_RawQuasigroup_334
d_rawQuasigroup_404 ~v0 ~v1 v2 = du_rawQuasigroup_404 v2
du_rawQuasigroup_404 :: T_RawLoop_374 -> T_RawQuasigroup_334
du_rawQuasigroup_404 v0
  = coe
      C_RawQuasigroup'46'constructor_4863 (d__'8729'__396 (coe v0))
      (d__'92''92'__398 (coe v0)) (d__'47''47'__400 (coe v0))
-- Algebra.Bundles.Raw.RawLoop._._≉_
d__'8777'__408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawLoop_374 -> AgdaAny -> AgdaAny -> ()
d__'8777'__408 = erased
-- Algebra.Bundles.Raw.RawLoop._.//-rawMagma
d_'47''47''45'rawMagma_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawLoop_374 -> T_RawMagma_42
d_'47''47''45'rawMagma_410 ~v0 ~v1 v2
  = du_'47''47''45'rawMagma_410 v2
du_'47''47''45'rawMagma_410 :: T_RawLoop_374 -> T_RawMagma_42
du_'47''47''45'rawMagma_410 v0
  = coe
      du_'47''47''45'rawMagma_364 (coe du_rawQuasigroup_404 (coe v0))
-- Algebra.Bundles.Raw.RawLoop._.\\-rawMagma
d_'92''92''45'rawMagma_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawLoop_374 -> T_RawMagma_42
d_'92''92''45'rawMagma_412 ~v0 ~v1 v2
  = du_'92''92''45'rawMagma_412 v2
du_'92''92''45'rawMagma_412 :: T_RawLoop_374 -> T_RawMagma_42
du_'92''92''45'rawMagma_412 v0
  = coe
      du_'92''92''45'rawMagma_362 (coe du_rawQuasigroup_404 (coe v0))
-- Algebra.Bundles.Raw.RawLoop._.∙-rawMagma
d_'8729''45'rawMagma_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawLoop_374 -> T_RawMagma_42
d_'8729''45'rawMagma_414 ~v0 ~v1 v2 = du_'8729''45'rawMagma_414 v2
du_'8729''45'rawMagma_414 :: T_RawLoop_374 -> T_RawMagma_42
du_'8729''45'rawMagma_414 v0
  = coe du_'8729''45'rawMagma_360 (coe du_rawQuasigroup_404 (coe v0))
-- Algebra.Bundles.Raw.RawKleeneAlgebra
d_RawKleeneAlgebra_420 a0 a1 = ()
data T_RawKleeneAlgebra_420
  = C_RawKleeneAlgebra'46'constructor_6285 (AgdaAny ->
                                            AgdaAny -> AgdaAny)
                                           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                           AgdaAny AgdaAny
-- Algebra.Bundles.Raw.RawKleeneAlgebra.Carrier
d_Carrier_440 :: T_RawKleeneAlgebra_420 -> ()
d_Carrier_440 = erased
-- Algebra.Bundles.Raw.RawKleeneAlgebra._≈_
d__'8776'__442 ::
  T_RawKleeneAlgebra_420 -> AgdaAny -> AgdaAny -> ()
d__'8776'__442 = erased
-- Algebra.Bundles.Raw.RawKleeneAlgebra._+_
d__'43'__444 ::
  T_RawKleeneAlgebra_420 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__444 v0
  = case coe v0 of
      C_RawKleeneAlgebra'46'constructor_6285 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawKleeneAlgebra._*_
d__'42'__446 ::
  T_RawKleeneAlgebra_420 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__446 v0
  = case coe v0 of
      C_RawKleeneAlgebra'46'constructor_6285 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawKleeneAlgebra._⋆
d__'8902'_448 :: T_RawKleeneAlgebra_420 -> AgdaAny -> AgdaAny
d__'8902'_448 v0
  = case coe v0 of
      C_RawKleeneAlgebra'46'constructor_6285 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawKleeneAlgebra.0#
d_0'35'_450 :: T_RawKleeneAlgebra_420 -> AgdaAny
d_0'35'_450 v0
  = case coe v0 of
      C_RawKleeneAlgebra'46'constructor_6285 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawKleeneAlgebra.1#
d_1'35'_452 :: T_RawKleeneAlgebra_420 -> AgdaAny
d_1'35'_452 v0
  = case coe v0 of
      C_RawKleeneAlgebra'46'constructor_6285 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Raw.RawKleeneAlgebra.rawSemiring
d_rawSemiring_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawKleeneAlgebra_420 -> T_RawSemiring_180
d_rawSemiring_454 ~v0 ~v1 v2 = du_rawSemiring_454 v2
du_rawSemiring_454 :: T_RawKleeneAlgebra_420 -> T_RawSemiring_180
du_rawSemiring_454 v0
  = coe
      C_RawSemiring'46'constructor_2465 (d__'43'__444 (coe v0))
      (d__'42'__446 (coe v0)) (d_0'35'_450 (coe v0))
      (d_1'35'_452 (coe v0))
-- Algebra.Bundles.Raw.RawKleeneAlgebra._._≉_
d__'8777'__458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawKleeneAlgebra_420 -> AgdaAny -> AgdaAny -> ()
d__'8777'__458 = erased
-- Algebra.Bundles.Raw.RawKleeneAlgebra._.*-rawMagma
d_'42''45'rawMagma_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawKleeneAlgebra_420 -> T_RawMagma_42
d_'42''45'rawMagma_460 ~v0 ~v1 v2 = du_'42''45'rawMagma_460 v2
du_'42''45'rawMagma_460 :: T_RawKleeneAlgebra_420 -> T_RawMagma_42
du_'42''45'rawMagma_460 v0
  = let v1 = coe du_rawSemiring_454 (coe v0) in
    coe
      (coe du_'42''45'rawMagma_174 (coe du_rawNearSemiring_210 (coe v1)))
-- Algebra.Bundles.Raw.RawKleeneAlgebra._.*-rawMonoid
d_'42''45'rawMonoid_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawKleeneAlgebra_420 -> T_RawMonoid_70
d_'42''45'rawMonoid_462 ~v0 ~v1 v2 = du_'42''45'rawMonoid_462 v2
du_'42''45'rawMonoid_462 ::
  T_RawKleeneAlgebra_420 -> T_RawMonoid_70
du_'42''45'rawMonoid_462 v0
  = coe du_'42''45'rawMonoid_222 (coe du_rawSemiring_454 (coe v0))
-- Algebra.Bundles.Raw.RawKleeneAlgebra._.rawMagma
d_rawMagma_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawKleeneAlgebra_420 -> T_RawMagma_42
d_rawMagma_464 ~v0 ~v1 v2 = du_rawMagma_464 v2
du_rawMagma_464 :: T_RawKleeneAlgebra_420 -> T_RawMagma_42
du_rawMagma_464 v0
  = let v1 = coe du_rawSemiring_454 (coe v0) in
    coe
      (let v2 = coe du_rawNearSemiring_210 (coe v1) in
       coe (coe du_rawMagma_92 (coe du_'43''45'rawMonoid_166 (coe v2))))
-- Algebra.Bundles.Raw.RawKleeneAlgebra._.+-rawMonoid
d_'43''45'rawMonoid_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_RawKleeneAlgebra_420 -> T_RawMonoid_70
d_'43''45'rawMonoid_466 ~v0 ~v1 v2 = du_'43''45'rawMonoid_466 v2
du_'43''45'rawMonoid_466 ::
  T_RawKleeneAlgebra_420 -> T_RawMonoid_70
du_'43''45'rawMonoid_466 v0
  = let v1 = coe du_rawSemiring_454 (coe v0) in
    coe
      (coe
         du_'43''45'rawMonoid_166 (coe du_rawNearSemiring_210 (coe v1)))
