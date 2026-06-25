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

module MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised

-- Algebra.Properties.Semiring.Exp.TCOptimised._._^′_
d__'94''8242'__228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> AgdaAny
d__'94''8242'__228 ~v0 ~v1 v2 = du__'94''8242'__228 v2
du__'94''8242'__228 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> AgdaAny
du__'94''8242'__228 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
              (coe
                 MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                 (coe v0)) in
    coe
      (coe
         (\ v2 v3 ->
            let v4
                  = coe
                      MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                      (coe v1) in
            coe
              (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
               coe
                 (let v6
                        = coe
                            MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                               (coe v4) (coe v5) (coe v2))
                            v2 in
                  coe
                    (case coe v3 of
                       0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                       1 -> coe v2
                       _ -> coe v6)))))
-- Algebra.Properties.Semiring.Exp.TCOptimised.^-congˡ
d_'94''45'cong'737'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'94''45'cong'737'_234 ~v0 ~v1 v2 = du_'94''45'cong'737'_234 v2
du_'94''45'cong'737'_234 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'94''45'cong'737'_234 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'cong'691'_182
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.TCOptimised.^-cong
d_'94''45'cong_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'94''45'cong_236 ~v0 ~v1 v2 v3 v4 v5 ~v6 v7 ~v8
  = du_'94''45'cong_236 v2 v3 v4 v5 v7
du_'94''45'cong_236 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny -> AgdaAny
du_'94''45'cong_236 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'cong_192
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
      (coe v3) (coe v1) (coe v2) (coe v4)
-- Algebra.Properties.Semiring.Exp.TCOptimised.^-homo-*
d_'94''45'homo'45''42'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'homo'45''42'_248 ~v0 ~v1 v2
  = du_'94''45'homo'45''42'_248 v2
du_'94''45'homo'45''42'_248 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'homo'45''42'_248 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'homo'45''43'_170
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
-- Algebra.Properties.Semiring.Exp.TCOptimised.^-assocʳ
d_'94''45'assoc'691'_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'assoc'691'_256 ~v0 ~v1 v2 v3 v4 v5
  = du_'94''45'assoc'691'_256 v2 v3 v4 v5
du_'94''45'assoc'691'_256 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'assoc'691'_256 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'assoc'737'_204
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_2338
         (coe
            MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
            (coe v0)))
      (coe v1) (coe v3) (coe v2)
