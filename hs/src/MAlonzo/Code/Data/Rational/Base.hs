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

module MAlonzo.Code.Data.Rational.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.GCD
import qualified MAlonzo.Code.Data.Rational.Unnormalised.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.Rational.Base.ℚ
d_ℚ_6 = ()
data T_ℚ_6 = C_mkℚ_24 Integer Integer
-- Data.Rational.Base.ℚ.numerator
d_numerator_14 :: T_ℚ_6 -> Integer
d_numerator_14 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.ℚ.denominator-1
d_denominator'45'1_16 :: T_ℚ_6 -> Integer
d_denominator'45'1_16 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.ℚ.denominatorℕ
d_denominatorℕ_20 :: T_ℚ_6 -> Integer
d_denominatorℕ_20 v0
  = coe
      addInt (coe (1 :: Integer)) (coe d_denominator'45'1_16 (coe v0))
-- Data.Rational.Base.ℚ.denominator
d_denominator_22 :: T_ℚ_6 -> Integer
d_denominator_22 v0 = coe d_denominatorℕ_20 (coe v0)
-- Data.Rational.Base.mkℚ+
d_mkℚ'43'_32 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  T_ℚ_6
d_mkℚ'43'_32 v0 v1 ~v2 ~v3 = du_mkℚ'43'_32 v0 v1
du_mkℚ'43'_32 :: Integer -> Integer -> T_ℚ_6
du_mkℚ'43'_32 v0 v1
  = let v2 = subInt (coe v1) (coe (1 :: Integer)) in
    coe (coe C_mkℚ_24 v0 v2)
-- Data.Rational.Base._≃_
d__'8771'__40 a0 a1 = ()
data T__'8771'__40 = C_'42''8801''42'_46
-- Data.Rational.Base._≄_
d__'8772'__48 :: T_ℚ_6 -> T_ℚ_6 -> ()
d__'8772'__48 = erased
-- Data.Rational.Base._≤_
d__'8804'__54 a0 a1 = ()
newtype T__'8804'__54
  = C_'42''8804''42'_60 MAlonzo.Code.Data.Integer.Base.T__'8804'__48
-- Data.Rational.Base._<_
d__'60'__62 a0 a1 = ()
newtype T__'60'__62
  = C_'42''60''42'_68 MAlonzo.Code.Data.Integer.Base.T__'60'__72
-- Data.Rational.Base._≥_
d__'8805'__70 :: T_ℚ_6 -> T_ℚ_6 -> ()
d__'8805'__70 = erased
-- Data.Rational.Base._>_
d__'62'__76 :: T_ℚ_6 -> T_ℚ_6 -> ()
d__'62'__76 = erased
-- Data.Rational.Base._≰_
d__'8816'__82 :: T_ℚ_6 -> T_ℚ_6 -> ()
d__'8816'__82 = erased
-- Data.Rational.Base._≱_
d__'8817'__88 :: T_ℚ_6 -> T_ℚ_6 -> ()
d__'8817'__88 = erased
-- Data.Rational.Base._≮_
d__'8814'__94 :: T_ℚ_6 -> T_ℚ_6 -> ()
d__'8814'__94 = erased
-- Data.Rational.Base._≯_
d__'8815'__100 :: T_ℚ_6 -> T_ℚ_6 -> ()
d__'8815'__100 = erased
-- Data.Rational.Base._≤ᵇ_
d__'8804''7495'__106 :: T_ℚ_6 -> T_ℚ_6 -> Bool
d__'8804''7495'__106 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8804''7495'__132
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v0)) (coe d_denominator_22 (coe v1)))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v1)) (coe d_denominator_22 (coe v0)))
-- Data.Rational.Base._<ᵇ_
d__'60''7495'__112 :: T_ℚ_6 -> T_ℚ_6 -> Bool
d__'60''7495'__112 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'60''7495'__150
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v0)) (coe d_denominator_22 (coe v1)))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__334
         (coe d_numerator_14 (coe v1)) (coe d_denominator_22 (coe v0)))
-- Data.Rational.Base.-_
d_'45'__118 :: T_ℚ_6 -> T_ℚ_6
d_'45'__118 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe C_mkℚ_24 (subInt (coe (0 :: Integer)) (coe v1)) v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.normalize
d_normalize_142 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_ℚ_6
d_normalize_142 v0 v1 ~v2 = du_normalize_142 v0 v1
du_normalize_142 :: Integer -> Integer -> T_ℚ_6
du_normalize_142 v0 v1
  = coe
      du_mkℚ'43'_32
      (coe
         MAlonzo.Code.Data.Nat.Base.du__'47'__318 (coe v0)
         (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_154 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Nat.Base.du__'47'__318 (coe v1)
         (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_154 (coe v0) (coe v1)))
-- Data.Rational.Base._.g≢0
d_g'8802'0_152 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_g'8802'0_152 v0 v1 ~v2 = du_g'8802'0_152 v0 v1
du_g'8802'0_152 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_g'8802'0_152 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_128
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_154 (coe v0) (coe v1))
-- Data.Rational.Base._/_
d__'47'__162 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_ℚ_6
d__'47'__162 v0 v1 ~v2 = du__'47'__162 v0 v1
du__'47'__162 :: Integer -> Integer -> T_ℚ_6
du__'47'__162 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe du_normalize_142 (coe v0) (coe v1)
      _ -> coe
             d_'45'__118
             (coe
                du_normalize_142 (coe subInt (coe (0 :: Integer)) (coe v0))
                (coe v1))
-- Data.Rational.Base.toℚᵘ
d_toℚ'7512'_172 ::
  T_ℚ_6 -> MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8
d_toℚ'7512'_172 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> coe
             MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22
             (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.fromℚᵘ
d_fromℚ'7512'_178 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 -> T_ℚ_6
d_fromℚ'7512'_178 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v1 v2
        -> coe
             du__'47'__162 (coe v1) (coe addInt (coe (1 :: Integer)) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.0ℚ
d_0ℚ_184 :: T_ℚ_6
d_0ℚ_184
  = coe du__'47'__162 (coe (0 :: Integer)) (coe (1 :: Integer))
-- Data.Rational.Base.1ℚ
d_1ℚ_186 :: T_ℚ_6
d_1ℚ_186
  = coe du__'47'__162 (coe (1 :: Integer)) (coe (1 :: Integer))
-- Data.Rational.Base.½
d_'189'_188 :: T_ℚ_6
d_'189'_188
  = coe du__'47'__162 (coe (1 :: Integer)) (coe (2 :: Integer))
-- Data.Rational.Base.-½
d_'45''189'_190 :: T_ℚ_6
d_'45''189'_190 = coe d_'45'__118 (coe d_'189'_188)
-- Data.Rational.Base.NonZero
d_NonZero_192 :: T_ℚ_6 -> ()
d_NonZero_192 = erased
-- Data.Rational.Base.Positive
d_Positive_196 :: T_ℚ_6 -> ()
d_Positive_196 = erased
-- Data.Rational.Base.Negative
d_Negative_200 :: T_ℚ_6 -> ()
d_Negative_200 = erased
-- Data.Rational.Base.NonPositive
d_NonPositive_204 :: T_ℚ_6 -> ()
d_NonPositive_204 = erased
-- Data.Rational.Base.NonNegative
d_NonNegative_208 :: T_ℚ_6 -> ()
d_NonNegative_208 = erased
-- Data.Rational.Base.≢-nonZero
d_'8802''45'nonZero_214 ::
  T_ℚ_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'8802''45'nonZero_214 v0 ~v1 = du_'8802''45'nonZero_214 v0
du_'8802''45'nonZero_214 ::
  T_ℚ_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_'8802''45'nonZero_214 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> case coe v1 of
             0 -> case coe v2 of
                    0 -> coe
                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
                           erased
                    _ -> coe
                           MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_68
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 coe
                   MAlonzo.Code.Data.Nat.Base.C_constructor_120
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             _ -> coe
                    MAlonzo.Code.Data.Nat.Base.C_constructor_120
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.>-nonZero
d_'62''45'nonZero_230 ::
  T_ℚ_6 -> T__'60'__62 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'62''45'nonZero_230 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_'42''60''42'_68 v7
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'62''45'nonZero_154
                    (coe d_toℚ'7512'_172 (coe C_mkℚ_24 v2 v3))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.<-nonZero
d_'60''45'nonZero_238 ::
  T_ℚ_6 -> T__'60'__62 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'60''45'nonZero_238 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_'42''60''42'_68 v7
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'60''45'nonZero_160
                    (coe d_toℚ'7512'_172 (coe C_mkℚ_24 v2 v3))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.positive
d_positive_246 ::
  T_ℚ_6 ->
  T__'60'__62 -> MAlonzo.Code.Data.Integer.Base.T_Positive_174
d_positive_246 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_'42''60''42'_68 v7
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_positive_168
                    (coe d_toℚ'7512'_172 (coe C_mkℚ_24 v2 v3))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.negative
d_negative_254 ::
  T_ℚ_6 ->
  T__'60'__62 -> MAlonzo.Code.Data.Integer.Base.T_Negative_210
d_negative_254 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_'42''60''42'_68 v7
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_negative_176
                    (coe d_toℚ'7512'_172 (coe C_mkℚ_24 v2 v3))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.nonPositive
d_nonPositive_262 ::
  T_ℚ_6 ->
  T__'8804'__54 -> MAlonzo.Code.Data.Integer.Base.T_NonPositive_198
d_nonPositive_262 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_'42''8804''42'_60 v7
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonPositive_184
                    (coe d_toℚ'7512'_172 (coe C_mkℚ_24 v2 v3))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                       v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.nonNegative
d_nonNegative_270 ::
  T_ℚ_6 ->
  T__'8804'__54 -> MAlonzo.Code.Data.Integer.Base.T_NonNegative_186
d_nonNegative_270 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_'42''8804''42'_60 v7
               -> coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_nonNegative_192
                    (coe d_toℚ'7512'_172 (coe C_mkℚ_24 v2 v3))
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44
                       v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base._+_
d__'43'__276 :: T_ℚ_6 -> T_ℚ_6 -> T_ℚ_6
d__'43'__276 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_mkℚ_24 v5 v6
               -> coe
                    du__'47'__162
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'43'__302
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2)
                          (coe d_denominator_22 (coe C_mkℚ_24 v5 v6)))
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v5)
                          (coe d_denominator_22 (coe C_mkℚ_24 v2 v3))))
                    (coe
                       mulInt (coe d_denominatorℕ_20 (coe C_mkℚ_24 v2 v3))
                       (coe d_denominatorℕ_20 (coe C_mkℚ_24 v5 v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base._*_
d__'42'__282 :: T_ℚ_6 -> T_ℚ_6 -> T_ℚ_6
d__'42'__282 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_mkℚ_24 v5 v6
               -> coe
                    du__'47'__162
                    (coe MAlonzo.Code.Data.Integer.Base.d__'42'__334 (coe v2) (coe v5))
                    (coe
                       mulInt (coe d_denominatorℕ_20 (coe C_mkℚ_24 v2 v3))
                       (coe d_denominatorℕ_20 (coe C_mkℚ_24 v5 v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base._-_
d__'45'__288 :: T_ℚ_6 -> T_ℚ_6 -> T_ℚ_6
d__'45'__288 v0 v1
  = coe d__'43'__276 (coe v0) (coe d_'45'__118 (coe v1))
-- Data.Rational.Base.1/_
d_1'47'__298 ::
  T_ℚ_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_ℚ_6
d_1'47'__298 v0 ~v1 = du_1'47'__298 v0
du_1'47'__298 :: T_ℚ_6 -> T_ℚ_6
du_1'47'__298 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                 coe (coe C_mkℚ_24 (addInt (coe (1 :: Integer)) (coe v2)) v4)
             _ -> let v4 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe (coe C_mkℚ_24 (subInt (coe (-1 :: Integer)) (coe v2)) v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base._÷_
d__'247'__318 ::
  T_ℚ_6 -> T_ℚ_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_ℚ_6
d__'247'__318 v0 v1 ~v2 = du__'247'__318 v0 v1
du__'247'__318 :: T_ℚ_6 -> T_ℚ_6 -> T_ℚ_6
du__'247'__318 v0 v1
  = coe d__'42'__282 (coe v0) (coe du_1'47'__298 (coe v1))
-- Data.Rational.Base._⊔_
d__'8852'__328 :: T_ℚ_6 -> T_ℚ_6 -> T_ℚ_6
d__'8852'__328 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                    (coe
                       d__'8804''7495'__106 (coe C_mkℚ_24 v2 v3) (coe C_mkℚ_24 v5 v6))
                    (coe C_mkℚ_24 v5 v6) (coe C_mkℚ_24 v2 v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base._⊓_
d__'8851'__338 :: T_ℚ_6 -> T_ℚ_6 -> T_ℚ_6
d__'8851'__338 v0 v1
  = case coe v0 of
      C_mkℚ_24 v2 v3
        -> case coe v1 of
             C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                    (coe
                       d__'8804''7495'__106 (coe C_mkℚ_24 v2 v3) (coe C_mkℚ_24 v5 v6))
                    (coe C_mkℚ_24 v2 v3) (coe C_mkℚ_24 v5 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.∣_∣
d_'8739'_'8739'_344 :: T_ℚ_6 -> T_ℚ_6
d_'8739'_'8739'_344 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> coe
             C_mkℚ_24
             (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)) v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.floor
d_floor_352 :: T_ℚ_6 -> Integer
d_floor_352 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> coe
             MAlonzo.Code.Data.Integer.Base.du__'47'__420 (coe v1)
             (coe d_denominator_22 (coe C_mkℚ_24 v1 v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.ceiling
d_ceiling_356 :: T_ℚ_6 -> Integer
d_ceiling_356 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> coe
             MAlonzo.Code.Data.Integer.Base.d_'45'__278
             (coe d_floor_352 (coe d_'45'__118 (coe C_mkℚ_24 v1 v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.truncate
d_truncate_360 :: T_ℚ_6 -> Integer
d_truncate_360 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe d__'8804''7495'__106 (coe v0) (coe d_0ℚ_184))
      (coe d_ceiling_356 (coe v0)) (coe d_floor_352 (coe v0))
-- Data.Rational.Base.round
d_round_364 :: T_ℚ_6 -> Integer
d_round_364 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe d__'8804''7495'__106 (coe v0) (coe d_0ℚ_184))
      (coe d_ceiling_356 (coe d__'45'__288 (coe v0) (coe d_'189'_188)))
      (coe d_floor_352 (coe d__'43'__276 (coe v0) (coe d_'189'_188)))
-- Data.Rational.Base.fracPart
d_fracPart_368 :: T_ℚ_6 -> T_ℚ_6
d_fracPart_368 v0
  = case coe v0 of
      C_mkℚ_24 v1 v2
        -> coe
             d_'8739'_'8739'_344
             (coe
                d__'45'__288 (coe C_mkℚ_24 v1 v2)
                (coe
                   du__'47'__162 (coe d_truncate_360 (coe C_mkℚ_24 v1 v2))
                   (coe (1 :: Integer))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Base.+-rawMagma
d_'43''45'rawMagma_372 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'43''45'rawMagma_372
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68 d__'43'__276
-- Data.Rational.Base.+-0-rawMonoid
d_'43''45'0'45'rawMonoid_374 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'0'45'rawMonoid_374
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_102 d__'43'__276
      d_0ℚ_184
-- Data.Rational.Base.+-0-rawGroup
d_'43''45'0'45'rawGroup_376 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'0'45'rawGroup_376
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_142 d__'43'__276
      d_0ℚ_184 d_'45'__118
-- Data.Rational.Base.+-*-rawNearSemiring
d_'43''45''42''45'rawNearSemiring_378 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_'43''45''42''45'rawNearSemiring_378
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_184 d__'43'__276
      d__'42'__282 d_0ℚ_184
-- Data.Rational.Base.+-*-rawSemiring
d_'43''45''42''45'rawSemiring_380 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_'43''45''42''45'rawSemiring_380
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_234 d__'43'__276
      d__'42'__282 d_0ℚ_184 d_1ℚ_186
-- Data.Rational.Base.+-*-rawRing
d_'43''45''42''45'rawRing_382 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_'43''45''42''45'rawRing_382
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_344 d__'43'__276
      d__'42'__282 d_'45'__118 d_0ℚ_184 d_1ℚ_186
-- Data.Rational.Base.*-rawMagma
d_'42''45'rawMagma_384 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_384
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68 d__'42'__282
-- Data.Rational.Base.*-1-rawMonoid
d_'42''45'1'45'rawMonoid_386 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'1'45'rawMonoid_386
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_102 d__'42'__282
      d_1ℚ_186
-- Data.Rational.Base.+-rawMonoid
d_'43''45'rawMonoid_388 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'rawMonoid_388 = coe d_'43''45'0'45'rawMonoid_374
-- Data.Rational.Base.*-rawMonoid
d_'42''45'rawMonoid_390 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'rawMonoid_390 = coe d_'42''45'1'45'rawMonoid_386
