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

module MAlonzo.Code.Algebra.Definitions.RawMonoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMagma
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Vec.Functional

-- Algebra.Definitions.RawMonoid._._∣_
d__'8739'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8739'__32 = erased
-- Algebra.Definitions.RawMonoid._._∣ʳ_
d__'8739''691'__34 a0 a1 a2 a3 a4 = ()
-- Algebra.Definitions.RawMonoid._._∣ˡ_
d__'8739''737'__38 a0 a1 a2 a3 a4 = ()
-- Algebra.Definitions.RawMonoid._._∣∣_
d__'8739''8739'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8739''8739'__42 = erased
-- Algebra.Definitions.RawMonoid._._∤_
d__'8740'__44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8740'__44 = erased
-- Algebra.Definitions.RawMonoid._._∤ʳ_
d__'8740''691'__46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8740''691'__46 = erased
-- Algebra.Definitions.RawMonoid._._∤ˡ_
d__'8740''737'__48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8740''737'__48 = erased
-- Algebra.Definitions.RawMonoid._._∤∤_
d__'8740''8740'__50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8740''8740'__50 = erased
-- Algebra.Definitions.RawMonoid._._∥_
d__'8741'__52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8741'__52 = erased
-- Algebra.Definitions.RawMonoid._._∦_
d__'8742'__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  AgdaAny -> AgdaAny -> ()
d__'8742'__54 = erased
-- Algebra.Definitions.RawMonoid._._∣ʳ_.equality
d_equality_58 ::
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''691'__54 ->
  AgdaAny
d_equality_58 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.d_equality_66 (coe v0)
-- Algebra.Definitions.RawMonoid._._∣ʳ_.quotient
d_quotient_60 ::
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''691'__54 ->
  AgdaAny
d_quotient_60 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_64 (coe v0)
-- Algebra.Definitions.RawMonoid._._∣ˡ_.equality
d_equality_64 ::
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  AgdaAny
d_equality_64 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.d_equality_40 (coe v0)
-- Algebra.Definitions.RawMonoid._._∣ˡ_.quotient
d_quotient_66 ::
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__28 ->
  AgdaAny
d_quotient_66 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_38 (coe v0)
-- Algebra.Definitions.RawMonoid._×_
d__'215'__68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  Integer -> AgdaAny -> AgdaAny
d__'215'__68 ~v0 ~v1 v2 v3 v4 = du__'215'__68 v2 v3 v4
du__'215'__68 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  Integer -> AgdaAny -> AgdaAny
du__'215'__68 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v0)
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v0 v2
                (coe du__'215'__68 (coe v0) (coe v3) (coe v2)))
-- Algebra.Definitions.RawMonoid._×′_
d__'215''8242'__76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  Integer -> AgdaAny -> AgdaAny
d__'215''8242'__76 ~v0 ~v1 v2 v3 v4 = du__'215''8242'__76 v2 v3 v4
du__'215''8242'__76 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  Integer -> AgdaAny -> AgdaAny
du__'215''8242'__76 v0 v1 v2
  = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v0
                 (coe du__'215''8242'__76 (coe v0) (coe v3) (coe v2)) v2 in
       coe
         (case coe v1 of
            0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v0)
            1 -> coe v2
            _ -> coe v4))
-- Algebra.Definitions.RawMonoid.sum
d_sum_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
d_sum_88 ~v0 ~v1 v2 v3 = du_sum_88 v2 v3
du_sum_88 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
du_sum_88 v0 v1
  = coe
      MAlonzo.Code.Data.Vec.Functional.du_foldr_176
      (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v0)) (coe v1)
