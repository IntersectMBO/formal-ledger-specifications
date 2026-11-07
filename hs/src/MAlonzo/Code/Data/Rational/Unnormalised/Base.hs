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

module MAlonzo.Code.Data.Rational.Unnormalised.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.Rational.Unnormalised.Base.ℚᵘ
d_ℚ'7512'_8 = ()
data T_ℚ'7512'_8 = C_mkℚ'7512'_22 Integer Integer
-- Data.Rational.Unnormalised.Base.ℚᵘ.numerator
d_numerator_14 :: T_ℚ'7512'_8 -> Integer
d_numerator_14 v0
  = case coe v0 of
      C_mkℚ'7512'_22 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.ℚᵘ.denominator-1
d_denominator'45'1_16 :: T_ℚ'7512'_8 -> Integer
d_denominator'45'1_16 v0
  = case coe v0 of
      C_mkℚ'7512'_22 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.ℚᵘ.denominatorℕ
d_denominatorℕ_18 :: T_ℚ'7512'_8 -> Integer
d_denominatorℕ_18 v0
  = coe
      addInt (coe (1 :: Integer)) (coe d_denominator'45'1_16 (coe v0))
-- Data.Rational.Unnormalised.Base.ℚᵘ.denominator
d_denominator_20 :: T_ℚ'7512'_8 -> Integer
d_denominator_20 v0 = coe d_denominatorℕ_18 (coe v0)
-- Data.Rational.Unnormalised.Base._≃_
d__'8771'__24 a0 a1 = ()
data T__'8771'__24 = C_'42''8801''42'_30
-- Data.Rational.Unnormalised.Base._≄_
d__'8772'__32 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'8772'__32 = erased
-- Data.Rational.Unnormalised.Base._≤_
d__'8804'__38 a0 a1 = ()
newtype T__'8804'__38
  = C_'42''8804''42'_44 MAlonzo.Code.Data.Integer.Base.T__'8804'__48
-- Data.Rational.Unnormalised.Base._<_
d__'60'__46 a0 a1 = ()
newtype T__'60'__46
  = C_'42''60''42'_52 MAlonzo.Code.Data.Integer.Base.T__'60'__72
-- Data.Rational.Unnormalised.Base._≥_
d__'8805'__54 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'8805'__54 = erased
-- Data.Rational.Unnormalised.Base._>_
d__'62'__60 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'62'__60 = erased
-- Data.Rational.Unnormalised.Base._≰_
d__'8816'__66 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'8816'__66 = erased
-- Data.Rational.Unnormalised.Base._≱_
d__'8817'__72 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'8817'__72 = erased
-- Data.Rational.Unnormalised.Base._≮_
d__'8814'__78 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'8814'__78 = erased
-- Data.Rational.Unnormalised.Base._≯_
d__'8815'__84 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'8815'__84 = erased
-- Data.Rational.Unnormalised.Base._≤ᵇ_
d__'8804''7495'__90 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> Bool
d__'8804''7495'__90 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8804''7495'__132
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v0)) (coe d_denominator_20 (coe v1)))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v1)) (coe d_denominator_20 (coe v0)))
-- Data.Rational.Unnormalised.Base._<ᵇ_
d__'60''7495'__96 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> Bool
d__'60''7495'__96 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'60''7495'__150
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v0)) (coe d_denominator_20 (coe v1)))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v1)) (coe d_denominator_20 (coe v0)))
-- Data.Rational.Unnormalised.Base._/_
d__'47'__108 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_ℚ'7512'_8
d__'47'__108 v0 v1 ~v2 = du__'47'__108 v0 v1
du__'47'__108 :: Integer -> Integer -> T_ℚ'7512'_8
du__'47'__108 v0 v1
  = let v2 = subInt (coe v1) (coe (1 :: Integer)) in
    coe (coe C_mkℚ'7512'_22 (coe v0) (coe v2))
-- Data.Rational.Unnormalised.Base.0ℚᵘ
d_0ℚ'7512'_114 :: T_ℚ'7512'_8
d_0ℚ'7512'_114
  = coe du__'47'__108 (coe (0 :: Integer)) (coe (1 :: Integer))
-- Data.Rational.Unnormalised.Base.1ℚᵘ
d_1ℚ'7512'_116 :: T_ℚ'7512'_8
d_1ℚ'7512'_116
  = coe du__'47'__108 (coe (1 :: Integer)) (coe (1 :: Integer))
-- Data.Rational.Unnormalised.Base.½
d_'189'_118 :: T_ℚ'7512'_8
d_'189'_118
  = coe du__'47'__108 (coe (1 :: Integer)) (coe (2 :: Integer))
-- Data.Rational.Unnormalised.Base.-½
d_'45''189'_120 :: T_ℚ'7512'_8
d_'45''189'_120
  = coe
      du__'47'__108
      (coe
         MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe (1 :: Integer)))
      (coe (2 :: Integer))
-- Data.Rational.Unnormalised.Base.NonZero
d_NonZero_122 :: T_ℚ'7512'_8 -> ()
d_NonZero_122 = erased
-- Data.Rational.Unnormalised.Base.Positive
d_Positive_126 :: T_ℚ'7512'_8 -> ()
d_Positive_126 = erased
-- Data.Rational.Unnormalised.Base.Negative
d_Negative_130 :: T_ℚ'7512'_8 -> ()
d_Negative_130 = erased
-- Data.Rational.Unnormalised.Base.NonPositive
d_NonPositive_134 :: T_ℚ'7512'_8 -> ()
d_NonPositive_134 = erased
-- Data.Rational.Unnormalised.Base.NonNegative
d_NonNegative_138 :: T_ℚ'7512'_8 -> ()
d_NonNegative_138 = erased
-- Data.Rational.Unnormalised.Base.≢-nonZero
d_'8802''45'nonZero_144 ::
  T_ℚ'7512'_8 ->
  (T__'8771'__24 -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'8802''45'nonZero_144 v0 ~v1 = du_'8802''45'nonZero_144 v0
du_'8802''45'nonZero_144 ::
  T_ℚ'7512'_8 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_'8802''45'nonZero_144 v0
  = case coe v0 of
      C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             0 -> coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68)
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 coe
                   MAlonzo.Code.Data.Nat.Base.C_constructor_120
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             _ -> coe
                    MAlonzo.Code.Data.Nat.Base.C_constructor_120
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.>-nonZero
d_'62''45'nonZero_154 ::
  T_ℚ'7512'_8 ->
  T__'60'__46 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'62''45'nonZero_154 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Nat.Base.C_constructor_120
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Rational.Unnormalised.Base.<-nonZero
d_'60''45'nonZero_160 ::
  T_ℚ'7512'_8 ->
  T__'60'__46 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'60''45'nonZero_160 v0 v1
  = case coe v0 of
      C_mkℚ'7512'_22 v2 v3
        -> coe
             seq (coe v2)
             (coe
                seq (coe v1)
                (coe
                   MAlonzo.Code.Data.Nat.Base.C_constructor_120
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.positive
d_positive_168 ::
  T_ℚ'7512'_8 ->
  T__'60'__46 -> MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_positive_168 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Integer.Base.C_constructor_182
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Rational.Unnormalised.Base.negative
d_negative_176 ::
  T_ℚ'7512'_8 ->
  T__'60'__46 -> MAlonzo.Code.Data.Integer.Base.T_Negative_210
d_negative_176 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Integer.Base.C_constructor_218
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Rational.Unnormalised.Base.nonPositive
d_nonPositive_184 ::
  T_ℚ'7512'_8 ->
  T__'8804'__38 -> MAlonzo.Code.Data.Integer.Base.T_NonPositive_198
d_nonPositive_184 v0 v1
  = case coe v0 of
      C_mkℚ'7512'_22 v2 v3
        -> coe
             seq (coe v2)
             (coe
                seq (coe v1)
                (coe
                   MAlonzo.Code.Data.Integer.Base.C_constructor_206
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.nonNegative
d_nonNegative_192 ::
  T_ℚ'7512'_8 ->
  T__'8804'__38 -> MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_nonNegative_192 v0 v1
  = case coe v0 of
      C_mkℚ'7512'_22 v2 v3
        -> coe
             seq (coe v1)
             (coe
                seq (coe v2)
                (coe
                   MAlonzo.Code.Data.Integer.Base.C_constructor_194
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.-_
d_'45'__196 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8
d_'45'__196 v0
  = case coe v0 of
      C_mkℚ'7512'_22 v1 v2
        -> coe
             C_mkℚ'7512'_22
             (coe MAlonzo.Code.Data.Integer.Base.d_'45'__278 (coe v1)) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base._+_
d__'43'__202 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> T_ℚ'7512'_8
d__'43'__202 v0 v1
  = case coe v0 of
      C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             C_mkℚ'7512'_22 v4 v5
               -> coe
                    du__'47'__108
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'43'__302
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2)
                          (coe d_denominator_20 (coe v1)))
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v4)
                          (coe d_denominator_20 (coe v0))))
                    (coe
                       mulInt (coe d_denominatorℕ_18 (coe v0))
                       (coe d_denominatorℕ_18 (coe v1)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base._*_
d__'42'__208 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> T_ℚ'7512'_8
d__'42'__208 v0 v1
  = case coe v0 of
      C_mkℚ'7512'_22 v2 v3
        -> case coe v1 of
             C_mkℚ'7512'_22 v4 v5
               -> coe
                    du__'47'__108
                    (coe MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2) (coe v4))
                    (coe
                       mulInt (coe d_denominatorℕ_18 (coe v0))
                       (coe d_denominatorℕ_18 (coe v1)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base._-_
d__'45'__214 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> T_ℚ'7512'_8
d__'45'__214 v0 v1
  = coe d__'43'__202 (coe v0) (coe d_'45'__196 (coe v1))
-- Data.Rational.Unnormalised.Base.1/_
d_1'47'__224 ::
  T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_ℚ'7512'_8
d_1'47'__224 v0 ~v1 = du_1'47'__224 v0
du_1'47'__224 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8
du_1'47'__224 v0
  = case coe v0 of
      C_mkℚ'7512'_22 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                 coe
                   (coe
                      C_mkℚ'7512'_22 (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v3))
             _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (coe
                       C_mkℚ'7512'_22 (coe subInt (coe (-1 :: Integer)) (coe v2))
                       (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base._÷_
d__'247'__240 ::
  T_ℚ'7512'_8 ->
  T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_ℚ'7512'_8
d__'247'__240 v0 v1 ~v2 = du__'247'__240 v0 v1
du__'247'__240 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> T_ℚ'7512'_8
du__'247'__240 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe d__'42'__208 (coe v0) (coe du_1'47'__224 (coe v1))))
-- Data.Rational.Unnormalised.Base._⊔_
d__'8852'__250 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> T_ℚ'7512'_8
d__'8852'__250 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
            (coe d__'8804''7495'__90 (coe v0) (coe v1)) (coe v1) (coe v0)))
-- Data.Rational.Unnormalised.Base._⊓_
d__'8851'__260 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> T_ℚ'7512'_8
d__'8851'__260 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe
            MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
            (coe d__'8804''7495'__90 (coe v0) (coe v1)) (coe v0) (coe v1)))
-- Data.Rational.Unnormalised.Base.∣_∣
d_'8739'_'8739'_266 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8
d_'8739'_'8739'_266 v0
  = case coe v0 of
      C_mkℚ'7512'_22 v1 v2
        -> coe
             C_mkℚ'7512'_22
             (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
             (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.floor
d_floor_272 :: T_ℚ'7512'_8 -> Integer
d_floor_272 v0
  = case coe v0 of
      C_mkℚ'7512'_22 v1 v2
        -> coe
             MAlonzo.Code.Data.Integer.Base.du__'47'__420 (coe v1)
             (coe d_denominator_20 (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Unnormalised.Base.ceiling
d_ceiling_276 :: T_ℚ'7512'_8 -> Integer
d_ceiling_276 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.d_'45'__278
         (coe d_floor_272 (coe d_'45'__196 (coe v0))))
-- Data.Rational.Unnormalised.Base.truncate
d_truncate_280 :: T_ℚ'7512'_8 -> Integer
d_truncate_280 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe d__'8804''7495'__90 (coe v0) (coe d_0ℚ'7512'_114))
      (coe d_ceiling_276 (coe v0)) (coe d_floor_272 (coe v0))
-- Data.Rational.Unnormalised.Base.round
d_round_284 :: T_ℚ'7512'_8 -> Integer
d_round_284 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe d__'8804''7495'__90 (coe v0) (coe d_0ℚ'7512'_114))
      (coe d_ceiling_276 (coe d__'45'__214 (coe v0) (coe d_'189'_118)))
      (coe d_floor_272 (coe d__'43'__202 (coe v0) (coe d_'189'_118)))
-- Data.Rational.Unnormalised.Base.fracPart
d_fracPart_288 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8
d_fracPart_288 v0
  = coe
      seq (coe v0)
      (coe
         d_'8739'_'8739'_266
         (coe
            d__'45'__214 (coe v0)
            (coe
               du__'47'__108 (coe d_truncate_280 (coe v0)) (coe (1 :: Integer)))))
-- Data.Rational.Unnormalised.Base.+-rawMagma
d_'43''45'rawMagma_292 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'43''45'rawMagma_292
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68 d__'43'__202
-- Data.Rational.Unnormalised.Base.+-0-rawMonoid
d_'43''45'0'45'rawMonoid_294 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'0'45'rawMonoid_294
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_102 d__'43'__202
      d_0ℚ'7512'_114
-- Data.Rational.Unnormalised.Base.+-0-rawGroup
d_'43''45'0'45'rawGroup_296 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'0'45'rawGroup_296
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_142 d__'43'__202
      d_0ℚ'7512'_114 d_'45'__196
-- Data.Rational.Unnormalised.Base.+-*-rawNearSemiring
d_'43''45''42''45'rawNearSemiring_298 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_'43''45''42''45'rawNearSemiring_298
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_184 d__'43'__202
      d__'42'__208 d_0ℚ'7512'_114
-- Data.Rational.Unnormalised.Base.+-*-rawSemiring
d_'43''45''42''45'rawSemiring_300 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_'43''45''42''45'rawSemiring_300
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_234 d__'43'__202
      d__'42'__208 d_0ℚ'7512'_114 d_1ℚ'7512'_116
-- Data.Rational.Unnormalised.Base.+-*-rawRing
d_'43''45''42''45'rawRing_302 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_'43''45''42''45'rawRing_302
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_344 d__'43'__202
      d__'42'__208 d_'45'__196 d_0ℚ'7512'_114 d_1ℚ'7512'_116
-- Data.Rational.Unnormalised.Base.*-rawMagma
d_'42''45'rawMagma_304 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_304
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68 d__'42'__208
-- Data.Rational.Unnormalised.Base.*-1-rawMonoid
d_'42''45'1'45'rawMonoid_306 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'1'45'rawMonoid_306
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_102 d__'42'__208
      d_1ℚ'7512'_116
-- Data.Rational.Unnormalised.Base.+-rawMonoid
d_'43''45'rawMonoid_308 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'rawMonoid_308 = coe d_'43''45'0'45'rawMonoid_294
-- Data.Rational.Unnormalised.Base.*-rawMonoid
d_'42''45'rawMonoid_310 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'rawMonoid_310 = coe d_'42''45'1'45'rawMonoid_306
-- Data.Rational.Unnormalised.Base._≠_
d__'8800'__312 :: T_ℚ'7512'_8 -> T_ℚ'7512'_8 -> ()
d__'8800'__312 = erased
