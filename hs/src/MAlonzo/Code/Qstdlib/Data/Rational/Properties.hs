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

module MAlonzo.Code.Qstdlib.Data.Rational.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.DivMod
import qualified MAlonzo.Code.Data.Integer.Literals
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Literals
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax

-- stdlib.Data.Rational.Properties.Number-ℤ
d_Number'45'ℤ_8 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'ℤ_8 = coe MAlonzo.Code.Data.Integer.Literals.d_number_6
-- stdlib.Data.Rational.Properties.Number-ℚ
d_Number'45'ℚ_10 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'ℚ_10
  = coe MAlonzo.Code.Data.Rational.Literals.d_number_10
-- stdlib.Data.Rational.Properties._.fromNat
d_fromNat_14 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_fromNat_14 v0 ~v1 = du_fromNat_14 v0
du_fromNat_14 :: Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_fromNat_14 v0
  = coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)
-- stdlib.Data.Rational.Properties.floor-def
d_floor'45'def_18 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_floor'45'def_18 = erased
-- stdlib.Data.Rational.Properties.0≤⇒0≤numerator
d_0'8804''8658'0'8804'numerator_24 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8804''8658'0'8804'numerator_24 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe
            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2954 v4))
      (0 :: Integer)
      (MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v2 v3 v4 v5 v6 -> v6) (0 :: Integer)
         (MAlonzo.Code.Data.Integer.Base.d__'42'__316
            (coe (0 :: Integer))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
         (MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe
                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
               (\ v2 v3 v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3066
                    v5 v6))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__316
               (coe (0 :: Integer))
               (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__316
               (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
               (coe (1 :: Integer)))
            (MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
               (\ v2 v3 v4 v5 v6 -> v6)
               (MAlonzo.Code.Data.Integer.Base.d__'42'__316
                  (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                  (coe (1 :: Integer)))
               (MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
               (MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe
                        MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908))
                  (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0)))
               erased)
            (coe
               MAlonzo.Code.Data.Rational.Properties.du_drop'45''42''8804''42'_3534
               (coe v1)))
         erased)
-- stdlib.Data.Rational.Properties.0≤⇒0≤floor
d_0'8804''8658'0'8804'floor_36 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8804''8658'0'8804'floor_36 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe
            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2954 v4))
      (0 :: Integer)
      (MAlonzo.Code.Data.Rational.Base.d_floor_346 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe
               MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
            (\ v2 v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3066
                 v5 v6))
         (0 :: Integer)
         (coe
            MAlonzo.Code.Data.Integer.Base.du__'47'ℕ__372
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominatorℕ_20 (coe v0)))
         (MAlonzo.Code.Data.Rational.Base.d_floor_346 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v2 v3 v4 v5 v6 -> v6)
            (coe
               MAlonzo.Code.Data.Integer.Base.du__'47'ℕ__372
               (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
               (coe MAlonzo.Code.Data.Rational.Base.d_denominatorℕ_20 (coe v0)))
            (coe
               MAlonzo.Code.Data.Integer.Base.du__'47'__402
               (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
               (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
            (MAlonzo.Code.Data.Rational.Base.d_floor_346 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
               (\ v2 v3 v4 v5 v6 -> v6)
               (coe
                  MAlonzo.Code.Data.Integer.Base.du__'47'__402
                  (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
               (MAlonzo.Code.Data.Rational.Base.d_floor_346 (coe v0))
               (MAlonzo.Code.Data.Rational.Base.d_floor_346 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe
                        MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908))
                  (coe MAlonzo.Code.Data.Rational.Base.d_floor_346 (coe v0)))
               erased)
            erased)
         (coe
            MAlonzo.Code.Data.Integer.DivMod.du_0'8804'n'8658'0'8804'n'47'ℕd_168
            (coe d_0'8804''8658'0'8804'numerator_24 (coe v0) (coe v1))))
-- stdlib.Data.Rational.Properties.fromℤ-0≤
d_fromℤ'45'0'8804'_48 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_fromℤ'45'0'8804'_48 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe
               MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2954 v4))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__316
            (coe
               MAlonzo.Code.Data.Rational.Base.d_numerator_14
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                  (coe (0 :: Integer))))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_denominator_22
               (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0))))
         (MAlonzo.Code.Data.Integer.Base.d__'42'__316
            (coe
               MAlonzo.Code.Data.Rational.Base.d_numerator_14
               (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_denominator_22
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                  (coe (0 :: Integer)))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
            (\ v2 v3 v4 v5 v6 -> v6)
            (MAlonzo.Code.Data.Integer.Base.d__'42'__316
               (coe (0 :: Integer)) (coe v0))
            (0 :: Integer)
            (MAlonzo.Code.Data.Integer.Base.d__'42'__316
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                  (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                  (coe
                     MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                     (coe (0 :: Integer)))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe
                     MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908)
                  (\ v2 v3 v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_3066
                       v5 v6))
               (0 :: Integer) v0
               (MAlonzo.Code.Data.Integer.Base.d__'42'__316
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_numerator_14
                     (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                     (coe
                        MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                        (coe (0 :: Integer)))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                  (\ v2 v3 v4 v5 v6 -> v6) v0
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__316
                     (coe v0) (coe (1 :: Integer)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__316
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_numerator_14
                        (coe MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                        (coe
                           MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                           (coe (0 :: Integer)))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe
                           MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2908))
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__316 (coe v0)
                        (coe (1 :: Integer))))
                  erased)
               v1)
            erased))
-- stdlib.Data.Rational.Properties.fromℕ-0≤
d_fromℕ'45'0'8804'_60 ::
  Integer -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_fromℕ'45'0'8804'_60 v0
  = coe
      d_fromℤ'45'0'8804'_48 (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- stdlib.Data.Rational.Properties.*-0≤⇒0≤
d_'42''45'0'8804''8658'0'8804'_68 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'0'8804''8658'0'8804'_68 v0 v1 ~v2 v3
  = du_'42''45'0'8804''8658'0'8804'_68 v0 v1 v3
du_'42''45'0'8804''8658'0'8804'_68 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'0'8804''8658'0'8804'_68 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe
            MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Data.Rational.Properties.du_'60''8658''8804'_3674 v5))
      (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
         (coe (0 :: Integer)))
      (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
         (\ v3 v4 v5 v6 v7 -> v7)
         (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (0 :: Integer)))
         (MAlonzo.Code.Data.Rational.Base.d__'42'__276
            (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
               (coe (0 :: Integer))))
         (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe
                  MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
               (coe
                  MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3766))
            (MAlonzo.Code.Data.Rational.Base.d__'42'__276
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                  (coe (0 :: Integer))))
            (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
            (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe
                     MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1)))
            (coe
               MAlonzo.Code.Data.Rational.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5204
               v0
               (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                  (coe (0 :: Integer)))
               v1 v2))
         erased)
-- stdlib.Data.Rational.Properties.*-0≤-3⇒0≤
d_'42''45'0'8804''45'3'8658'0'8804'_88 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'0'8804''45'3'8658'0'8804'_88 v0 v1 v2 ~v3 ~v4 v5
  = du_'42''45'0'8804''45'3'8658'0'8804'_88 v0 v1 v2 v5
du_'42''45'0'8804''45'3'8658'0'8804'_88 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'0'8804''45'3'8658'0'8804'_88 v0 v1 v2 v3
  = coe
      du_'42''45'0'8804''8658'0'8804'_68
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
      (coe v2) (coe v3)
-- stdlib.Data.Rational.Properties.÷-0≤⇒0≤
d_'247''45'0'8804''8658'0'8804'_108 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'247''45'0'8804''8658'0'8804'_108 v0 v1 ~v2 ~v3 ~v4
  = du_'247''45'0'8804''8658'0'8804'_108 v0 v1
du_'247''45'0'8804''8658'0'8804'_108 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'247''45'0'8804''8658'0'8804'_108 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_nonNegative'8315''185'_3992
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'247'__312 (coe v0) (coe v1))
