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

module MAlonzo.Code.Algebra.Properties.CommutativeSemiring.Exp.TCOptimised where

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
import qualified MAlonzo.Code.Algebra.Properties.CommutativeMonoid.Mult.TCOptimised
import qualified MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised

-- Algebra.Properties.CommutativeSemiring.Exp.TCOptimised._._^′_
d__'94''8242'__234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> Integer -> AgdaAny
d__'94''8242'__234 ~v0 ~v1 v2 = du__'94''8242'__234 v2
du__'94''8242'__234 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> Integer -> AgdaAny
du__'94''8242'__234 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_rawSemiring_2310
                 (coe
                    MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2474
                    (coe v1)) in
       coe
         (coe
            (\ v3 v4 ->
               let v5
                     = coe
                         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_232
                         (coe v2) in
               coe
                 (let v6 = subInt (coe v4) (coe (1 :: Integer)) in
                  coe
                    (let v7
                           = coe
                               MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v5
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                  (coe v5) (coe v6) (coe v3))
                               v3 in
                     coe
                       (case coe v4 of
                          0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v5)
                          1 -> coe v3
                          _ -> coe v7))))))
-- Algebra.Properties.CommutativeSemiring.Exp.TCOptimised._.^-assocʳ
d_'94''45'assoc'691'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'assoc'691'_236 ~v0 ~v1 v2 = du_'94''45'assoc'691'_236 v2
du_'94''45'assoc'691'_236 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'assoc'691'_236 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised.du_'94''45'assoc'691'_256
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
-- Algebra.Properties.CommutativeSemiring.Exp.TCOptimised._.^-cong
d_'94''45'cong_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'94''45'cong_238 ~v0 ~v1 v2 = du_'94''45'cong_238 v2
du_'94''45'cong_238 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_'94''45'cong_238 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised.du_'94''45'cong_236
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0)) v1 v2
      v3 v5
-- Algebra.Properties.CommutativeSemiring.Exp.TCOptimised._.^-congˡ
d_'94''45'cong'737'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'94''45'cong'737'_240 ~v0 ~v1 v2 = du_'94''45'cong'737'_240 v2
du_'94''45'cong'737'_240 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'94''45'cong'737'_240 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised.du_'94''45'cong'737'_234
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
-- Algebra.Properties.CommutativeSemiring.Exp.TCOptimised._.^-homo-*
d_'94''45'homo'45''42'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'94''45'homo'45''42'_242 ~v0 ~v1 v2
  = du_'94''45'homo'45''42'_242 v2
du_'94''45'homo'45''42'_242 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'94''45'homo'45''42'_242 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semiring.Exp.TCOptimised.du_'94''45'homo'45''42'_248
      (coe MAlonzo.Code.Algebra.Bundles.du_semiring_2654 (coe v0))
-- Algebra.Properties.CommutativeSemiring.Exp.TCOptimised.^-distrib-*
d_'94''45'distrib'45''42'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
d_'94''45'distrib'45''42'_250 ~v0 ~v1 v2
  = du_'94''45'distrib'45''42'_250 v2
du_'94''45'distrib'45''42'_250 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
du_'94''45'distrib'45''42'_250 v0
  = coe
      MAlonzo.Code.Algebra.Properties.CommutativeMonoid.Mult.TCOptimised.du_'215''45'distrib'45''43'_172
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'42''45'commutativeMonoid_2696
         (coe v0))
