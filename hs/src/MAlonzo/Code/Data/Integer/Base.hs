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

module MAlonzo.Code.Data.Integer.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core

-- Data.Integer.Base.0ℤ
d_0ℤ_12 :: Integer
d_0ℤ_12 = coe (0 :: Integer)
-- Data.Integer.Base.-1ℤ
d_'45'1ℤ_14 :: Integer
d_'45'1ℤ_14 = coe (-1 :: Integer)
-- Data.Integer.Base.1ℤ
d_1ℤ_16 :: Integer
d_1ℤ_16 = coe (1 :: Integer)
-- Data.Integer.Base.∣_∣
d_'8739'_'8739'_18 :: Integer -> Integer
d_'8739'_'8739'_18 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) -> coe v0
      _ -> coe subInt (coe (0 :: Integer)) (coe v0)
-- Data.Integer.Base.sign
d_sign_24 :: Integer -> MAlonzo.Code.Data.Sign.Base.T_Sign_6
d_sign_24 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe MAlonzo.Code.Data.Sign.Base.C_'43'_10
      _ -> coe MAlonzo.Code.Data.Sign.Base.C_'45'_8
-- Data.Integer.Base._◃_
d__'9667'__26 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 -> Integer -> Integer
d__'9667'__26 v0 v1
  = case coe v1 of
      0 -> coe (0 :: Integer)
      _ -> case coe v0 of
             MAlonzo.Code.Data.Sign.Base.C_'45'_8
               -> coe subInt (coe (0 :: Integer)) (coe v1)
             MAlonzo.Code.Data.Sign.Base.C_'43'_10 -> coe v1
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.SignAbs
d_SignAbs_32 a0 = ()
data T_SignAbs_32
  = C__'9666'__38 MAlonzo.Code.Data.Sign.Base.T_Sign_6 Integer
-- Data.Integer.Base.signAbs
d_signAbs_42 :: Integer -> T_SignAbs_32
d_signAbs_42 v0
  = case coe v0 of
      0 -> coe
             C__'9666'__38 (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10)
             (coe (0 :: Integer))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          coe
            C__'9666'__38 (coe MAlonzo.Code.Data.Sign.Base.C_'43'_10) (coe v0)
      _ -> coe
             C__'9666'__38 (coe MAlonzo.Code.Data.Sign.Base.C_'45'_8)
             (coe subInt (coe (0 :: Integer)) (coe v0))
-- Data.Integer.Base._≤_
d__'8804'__48 a0 a1 = ()
data T__'8804'__48
  = C_'45''8804''45'_56 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_'45''8804''43'_62 |
    C_'43''8804''43'_70 MAlonzo.Code.Data.Nat.Base.T__'8804'__22
-- Data.Integer.Base._<_
d__'60'__72 a0 a1 = ()
data T__'60'__72
  = C_'45''60''45'_80 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_'45''60''43'_86 |
    C_'43''60''43'_94 MAlonzo.Code.Data.Nat.Base.T__'8804'__22
-- Data.Integer.Base._≥_
d__'8805'__96 :: Integer -> Integer -> ()
d__'8805'__96 = erased
-- Data.Integer.Base._>_
d__'62'__102 :: Integer -> Integer -> ()
d__'62'__102 = erased
-- Data.Integer.Base._≰_
d__'8816'__108 :: Integer -> Integer -> ()
d__'8816'__108 = erased
-- Data.Integer.Base._≱_
d__'8817'__114 :: Integer -> Integer -> ()
d__'8817'__114 = erased
-- Data.Integer.Base._≮_
d__'8814'__120 :: Integer -> Integer -> ()
d__'8814'__120 = erased
-- Data.Integer.Base._≯_
d__'8815'__126 :: Integer -> Integer -> ()
d__'8815'__126 = erased
-- Data.Integer.Base._≤ᵇ_
d__'8804''7495'__132 :: Integer -> Integer -> Bool
d__'8804''7495'__132 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1)
            _ -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v3) (coe v2)))
-- Data.Integer.Base._<ᵇ_
d__'60''7495'__150 :: Integer -> Integer -> Bool
d__'60''7495'__150 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe ltInt (coe v0) (coe v1)
            _ -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
             _ -> coe ltInt (coe v0) (coe v1)
-- Data.Integer.Base.NonZero
d_NonZero_168 :: Integer -> ()
d_NonZero_168 = erased
-- Data.Integer.Base.Positive
d_Positive_174 a0 = ()
newtype T_Positive_174 = C_constructor_182 AgdaAny
-- Data.Integer.Base.Positive.pos
d_pos_180 :: T_Positive_174 -> AgdaAny
d_pos_180 v0
  = case coe v0 of
      C_constructor_182 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.NonNegative
d_NonNegative_186 a0 = ()
newtype T_NonNegative_186 = C_constructor_194 AgdaAny
-- Data.Integer.Base.NonNegative.nonNeg
d_nonNeg_192 :: T_NonNegative_186 -> AgdaAny
d_nonNeg_192 v0
  = case coe v0 of
      C_constructor_194 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.NonPositive
d_NonPositive_198 a0 = ()
newtype T_NonPositive_198 = C_constructor_206 AgdaAny
-- Data.Integer.Base.NonPositive.nonPos
d_nonPos_204 :: T_NonPositive_198 -> AgdaAny
d_nonPos_204 v0
  = case coe v0 of
      C_constructor_206 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.Negative
d_Negative_210 a0 = ()
newtype T_Negative_210 = C_constructor_218 AgdaAny
-- Data.Integer.Base.Negative.neg
d_neg_216 :: T_Negative_210 -> AgdaAny
d_neg_216 v0
  = case coe v0 of
      C_constructor_218 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.pos
d_pos_222 :: Integer -> T_Positive_174
d_pos_222 ~v0 = du_pos_222
du_pos_222 :: T_Positive_174
du_pos_222
  = coe C_constructor_182 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Integer.Base.nonNeg
d_nonNeg_226 :: Integer -> T_NonNegative_186
d_nonNeg_226 ~v0 = du_nonNeg_226
du_nonNeg_226 :: T_NonNegative_186
du_nonNeg_226
  = coe C_constructor_194 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Integer.Base.nonPos0
d_nonPos0_228 :: T_NonPositive_198
d_nonPos0_228
  = coe C_constructor_206 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Integer.Base.nonPos
d_nonPos_232 :: Integer -> T_NonPositive_198
d_nonPos_232 ~v0 = du_nonPos_232
du_nonPos_232 :: T_NonPositive_198
du_nonPos_232
  = coe C_constructor_206 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Integer.Base.neg
d_neg_236 :: Integer -> T_Negative_210
d_neg_236 ~v0 = du_neg_236
du_neg_236 :: T_Negative_210
du_neg_236
  = coe C_constructor_218 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Integer.Base.≢-nonZero
d_'8802''45'nonZero_240 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'8802''45'nonZero_240 v0 ~v1 = du_'8802''45'nonZero_240 v0
du_'8802''45'nonZero_240 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_'8802''45'nonZero_240 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_'172''91'x'8802'x'93'_178
             erased
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Nat.Base.C_constructor_120
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.C_constructor_120
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Integer.Base.>-nonZero
d_'62''45'nonZero_250 ::
  Integer -> T__'60'__72 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'62''45'nonZero_250 ~v0 v1 = du_'62''45'nonZero_250 v1
du_'62''45'nonZero_250 ::
  T__'60'__72 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_'62''45'nonZero_250 v0
  = case coe v0 of
      C_'43''60''43'_94 v3
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_constructor_120
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.<-nonZero
d_'60''45'nonZero_256 ::
  Integer -> T__'60'__72 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_'60''45'nonZero_256 ~v0 v1 = du_'60''45'nonZero_256 v1
du_'60''45'nonZero_256 ::
  T__'60'__72 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_'60''45'nonZero_256 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_constructor_120
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Integer.Base.positive
d_positive_260 :: Integer -> T__'60'__72 -> T_Positive_174
d_positive_260 ~v0 v1 = du_positive_260 v1
du_positive_260 :: T__'60'__72 -> T_Positive_174
du_positive_260 v0
  = case coe v0 of
      C_'43''60''43'_94 v3
        -> coe
             seq (coe v3)
             (coe C_constructor_182 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.negative
d_negative_266 :: Integer -> T__'60'__72 -> T_Negative_210
d_negative_266 ~v0 v1 = du_negative_266 v1
du_negative_266 :: T__'60'__72 -> T_Negative_210
du_negative_266 v0
  = coe
      seq (coe v0)
      (coe C_constructor_218 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Integer.Base.nonPositive
d_nonPositive_270 :: Integer -> T__'8804'__48 -> T_NonPositive_198
d_nonPositive_270 ~v0 v1 = du_nonPositive_270 v1
du_nonPositive_270 :: T__'8804'__48 -> T_NonPositive_198
du_nonPositive_270 v0
  = case coe v0 of
      C_'45''8804''43'_62
        -> coe
             C_constructor_206 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      C_'43''8804''43'_70 v3
        -> coe
             seq (coe v3)
             (coe C_constructor_206 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Base.nonNegative
d_nonNegative_274 :: Integer -> T__'8804'__48 -> T_NonNegative_186
d_nonNegative_274 v0 ~v1 = du_nonNegative_274 v0
du_nonNegative_274 :: Integer -> T_NonNegative_186
du_nonNegative_274 v0
  = coe
      seq (coe v0)
      (coe C_constructor_194 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Integer.Base.-_
d_'45'__278 :: Integer -> Integer
d_'45'__278 v0 = coe subInt (coe (0 :: Integer)) (coe v0)
-- Data.Integer.Base._⊖_
d__'8854'__284 :: Integer -> Integer -> Integer
d__'8854'__284 v0 v1
  = let v2 = ltInt (coe v0) (coe v1) in
    coe
      (if coe v2
         then coe d_'45'__278 (coe subInt (coe v1) (coe v0))
         else coe subInt (coe v0) (coe v1))
-- Data.Integer.Base._+_
d__'43'__302 :: Integer -> Integer -> Integer
d__'43'__302 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe addInt (coe v0) (coe v1)
            _ -> coe
                   d__'8854'__284 (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   d__'8854'__284 (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0))
             _ -> coe addInt (coe v0) (coe v1)
-- Data.Integer.Base._-_
d__'45'__320 :: Integer -> Integer -> Integer
d__'45'__320 v0 v1
  = coe d__'43'__302 (coe v0) (coe d_'45'__278 (coe v1))
-- Data.Integer.Base.suc
d_suc_326 :: Integer -> Integer
d_suc_326 v0 = coe d__'43'__302 (coe d_1ℤ_16) (coe v0)
-- Data.Integer.Base.pred
d_pred_330 :: Integer -> Integer
d_pred_330 v0 = coe d__'43'__302 (coe d_'45'1ℤ_14) (coe v0)
-- Data.Integer.Base._*_
d__'42'__334 :: Integer -> Integer -> Integer
d__'42'__334 v0 v1
  = coe
      d__'9667'__26
      (coe
         MAlonzo.Code.Data.Sign.Base.d__'42'__14 (coe d_sign_24 (coe v0))
         (coe d_sign_24 (coe v1)))
      (coe
         mulInt (coe d_'8739'_'8739'_18 (coe v0))
         (coe d_'8739'_'8739'_18 (coe v1)))
-- Data.Integer.Base._^_
d__'94'__340 :: Integer -> Integer -> Integer
d__'94'__340 v0 v1
  = case coe v1 of
      0 -> coe d_1ℤ_16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe d__'42'__334 (coe v0) (coe d__'94'__340 (coe v0) (coe v2)))
-- Data.Integer.Base._⊔_
d__'8852'__348 :: Integer -> Integer -> Integer
d__'8852'__348 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v0) (coe v1)
            _ -> coe v0
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) -> coe v1
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          subInt (coe (-1 :: Integer))
                          (coe MAlonzo.Code.Data.Nat.Base.d__'8851'__236 (coe v2) (coe v3))))
-- Data.Integer.Base._⊓_
d__'8851'__366 :: Integer -> Integer -> Integer
d__'8851'__366 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe MAlonzo.Code.Data.Nat.Base.d__'8851'__236 (coe v0) (coe v1)
            _ -> coe v1
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) -> coe v0
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          subInt (coe (-1 :: Integer))
                          (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__208 (coe v2) (coe v3))))
-- Data.Integer.Base._/ℕ_
d__'47'ℕ__390 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d__'47'ℕ__390 v0 v1 ~v2 = du__'47'ℕ__390 v0 v1
du__'47'ℕ__390 :: Integer -> Integer -> Integer
du__'47'ℕ__390 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe MAlonzo.Code.Data.Nat.Base.du__'47'__318 (coe v0) (coe v1)
      _ -> let v2
                 = coe
                     MAlonzo.Code.Data.Nat.Base.du__'37'__330
                     (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) in
           coe
             (case coe v2 of
                0 -> coe
                       d_'45'__278
                       (coe
                          MAlonzo.Code.Data.Nat.Base.du__'47'__318
                          (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1))
                _ -> coe
                       subInt (coe (-1 :: Integer))
                       (coe
                          MAlonzo.Code.Data.Nat.Base.du__'47'__318
                          (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1)))
-- Data.Integer.Base._/_
d__'47'__420 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d__'47'__420 v0 v1 ~v2 = du__'47'__420 v0 v1
du__'47'__420 :: Integer -> Integer -> Integer
du__'47'__420 v0 v1
  = coe
      d__'42'__334
      (coe d__'9667'__26 (coe d_sign_24 (coe v1)) (coe (1 :: Integer)))
      (coe du__'47'ℕ__390 (coe v0) (coe d_'8739'_'8739'_18 (coe v1)))
-- Data.Integer.Base._%ℕ_
d__'37'ℕ__432 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d__'37'ℕ__432 v0 v1 ~v2 = du__'37'ℕ__432 v0 v1
du__'37'ℕ__432 :: Integer -> Integer -> Integer
du__'37'ℕ__432 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe MAlonzo.Code.Data.Nat.Base.du__'37'__330 (coe v0) (coe v1)
      _ -> let v2
                 = coe
                     MAlonzo.Code.Data.Nat.Base.du__'37'__330
                     (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) in
           coe
             (case coe v2 of
                0 -> coe (0 :: Integer)
                _ -> coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v2)
-- Data.Integer.Base._%_
d__'37'__462 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d__'37'__462 v0 v1 ~v2 = du__'37'__462 v0 v1
du__'37'__462 :: Integer -> Integer -> Integer
du__'37'__462 v0 v1
  = coe du__'37'ℕ__432 (coe v0) (coe d_'8739'_'8739'_18 (coe v1))
-- Data.Integer.Base.+-rawMagma
d_'43''45'rawMagma_468 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'43''45'rawMagma_468
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68 d__'43'__302
-- Data.Integer.Base.+-0-rawMonoid
d_'43''45'0'45'rawMonoid_470 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'43''45'0'45'rawMonoid_470
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_102 d__'43'__302
      d_0ℤ_12
-- Data.Integer.Base.+-0-rawGroup
d_'43''45'0'45'rawGroup_472 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawGroup_108
d_'43''45'0'45'rawGroup_472
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_142 d__'43'__302
      d_0ℤ_12 d_'45'__278
-- Data.Integer.Base.*-rawMagma
d_'42''45'rawMagma_474 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_44
d_'42''45'rawMagma_474
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_68 d__'42'__334
-- Data.Integer.Base.*-1-rawMonoid
d_'42''45'1'45'rawMonoid_476 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_'42''45'1'45'rawMonoid_476
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_102 d__'42'__334
      d_1ℤ_16
-- Data.Integer.Base.+-*-rawNearSemiring
d_'43''45''42''45'rawNearSemiring_478 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_148
d_'43''45''42''45'rawNearSemiring_478
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_184 d__'43'__302
      d__'42'__334 d_0ℤ_12
-- Data.Integer.Base.+-*-rawSemiring
d_'43''45''42''45'rawSemiring_480 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_190
d_'43''45''42''45'rawSemiring_480
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_234 d__'43'__302
      d__'42'__334 d_0ℤ_12 d_1ℤ_16
-- Data.Integer.Base.+-*-rawRing
d_'43''45''42''45'rawRing_482 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawRing_290
d_'43''45''42''45'rawRing_482
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_constructor_344 d__'43'__302
      d__'42'__334 d_'45'__278 d_0ℤ_12 d_1ℤ_16
