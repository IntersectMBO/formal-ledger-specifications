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

module MAlonzo.Code.Data.Rational.Show where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Show
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.String
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Vec.Base

-- Data.Rational.Show.show
d_show_6 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_show_6 v0
  = coe
      MAlonzo.Code.Data.String.Base.d__'43''43'__20
      (MAlonzo.Code.Data.Integer.Show.d_show_6
         (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0)))
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20
         ("/" :: Data.Text.Text)
         (MAlonzo.Code.Data.Integer.Show.d_show_6
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Show.atPrecision
d_atPrecision_12 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_atPrecision_12 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Data.Rational.Base.d_truncate_360 (coe v1))
      (coe
         du_decimalPart_24 (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__282
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__162 (coe (10 :: Integer))
               (coe (1 :: Integer)))
            (coe MAlonzo.Code.Data.Rational.Base.d_fracPart_368 (coe v1))))
-- Data.Rational.Show._.decimalPart
d_decimalPart_24 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
d_decimalPart_24 ~v0 ~v1 v2 v3 = du_decimalPart_24 v2 v3
du_decimalPart_24 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28
du_decimalPart_24 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Vec.Base.C__'8759'__38
                (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                   (coe MAlonzo.Code.Data.Rational.Base.d_truncate_360 (coe v1)))
                (coe
                   du_decimalPart_24 (coe v2)
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d__'42'__282
                      (coe
                         MAlonzo.Code.Data.Rational.Base.du__'47'__162 (coe (10 :: Integer))
                         (coe (1 :: Integer)))
                      (coe MAlonzo.Code.Data.Rational.Base.d_fracPart_368 (coe v1)))))
-- Data.Rational.Show.showAtPrecision
d_showAtPrecision_32 ::
  Integer ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showAtPrecision_32 v0 v1
  = let v2
          = MAlonzo.Code.Data.Rational.Base.d_truncate_360 (coe v1) in
    coe
      (let v3
             = coe
                 du_decimalPart_24 (coe v0)
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d__'42'__282
                    (coe
                       MAlonzo.Code.Data.Rational.Base.du__'47'__162 (coe (10 :: Integer))
                       (coe (1 :: Integer)))
                    (coe MAlonzo.Code.Data.Rational.Base.d_fracPart_368 (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Data.String.Base.d__'43''43'__20
            (MAlonzo.Code.Data.Integer.Show.d_show_6 (coe v2))
            (coe
               MAlonzo.Code.Data.String.Base.d__'43''43'__20
               ("." :: Data.Text.Text)
               (coe
                  MAlonzo.Code.Data.String.du_fromVec_128
                  (coe
                     MAlonzo.Code.Data.Vec.Base.du_map_178
                     (coe MAlonzo.Code.Data.Nat.Show.d_toDigitChar_50) (coe v3))))))
