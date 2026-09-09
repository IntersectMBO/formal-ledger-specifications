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

module MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Literals
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Prelude.Numeric.UnitInterval.inUnitInterval
d_inUnitInterval_10 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> ()
d_inUnitInterval_10 = erased
-- Ledger.Prelude.Numeric.UnitInterval.isInUnitInterval
d_isInUnitInterval_16 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isInUnitInterval_16 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
         (coe v0))
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622 (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (1 :: Integer))))
-- Ledger.Prelude.Numeric.UnitInterval.inUnitInterval-*-≤y
d_inUnitInterval'45''42''45''8804'y_24 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_inUnitInterval'45''42''45''8804'y_24 v0 v1 v2 ~v3
  = du_inUnitInterval'45''42''45''8804'y_24 v0 v1 v2
du_inUnitInterval'45''42''45''8804'y_24 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_inUnitInterval'45''42''45''8804'y_24 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe
                   MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Data.Rational.Properties.du_'60''8658''8804'_3674 v7))
             (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1)) v1
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3766))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                   (coe
                      MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
                   (coe v1))
                v1
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                   (\ v5 v6 v7 v8 v9 -> v9)
                   (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                      (coe
                         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
                      (coe v1))
                   v1 v1
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                         (coe
                            MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636))
                      (coe v1))
                   erased)
                (coe
                   MAlonzo.Code.Data.Rational.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5184
                   (coe v1) (coe v0)
                   (coe
                      MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Numeric.UnitInterval.inUnitInterval-*-0≤
d_inUnitInterval'45''42''45'0'8804'_40 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_inUnitInterval'45''42''45'0'8804'_40 v0 v1 v2 ~v3
  = du_inUnitInterval'45''42''45'0'8804'_40 v0 v1 v2
du_inUnitInterval'45''42''45'0'8804'_40 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_inUnitInterval'45''42''45'0'8804'_40 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe
                   MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Data.Rational.Properties.du_'60''8658''8804'_3674 v7))
             (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                (coe (0 :: Integer)))
             (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                (\ v5 v6 v7 v8 v9 -> v9)
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
                      v1 v3))
                erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Numeric.UnitInterval.inUnitInterval-*-≤1
d_inUnitInterval'45''42''45''8804'1_54 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_inUnitInterval'45''42''45''8804'1_54 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe
                   MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
                (\ v6 v7 v8 ->
                   coe
                     MAlonzo.Code.Data.Rational.Properties.du_'60''8658''8804'_3674 v8))
             (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
             (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                (coe (1 :: Integer)))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3766))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                   (coe v0)
                   (coe
                      MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                      (coe (1 :: Integer))))
                (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                   (coe (1 :: Integer)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                   (\ v6 v7 v8 v9 v10 -> v10)
                   (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                      (coe v0)
                      (coe
                         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                         (coe (1 :: Integer))))
                   v0
                   (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                      (coe (1 :: Integer)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe
                            MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636)
                         (coe
                            MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3766))
                      v0
                      (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                         (coe (1 :: Integer)))
                      (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                         (coe (1 :: Integer)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe
                               MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3636))
                         (coe
                            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                            (coe (1 :: Integer))))
                      v5)
                   erased)
                (coe
                   MAlonzo.Code.Data.Rational.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5204
                   v0 v1
                   (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                      (coe (1 :: Integer)))
                   v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Numeric.UnitInterval.UnitInterval
d_UnitInterval_66 :: ()
d_UnitInterval_66 = erased
-- Ledger.Prelude.Numeric.UnitInterval.Show-UnitInterval
d_Show'45'UnitInterval_70 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'UnitInterval_70
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            MAlonzo.Code.Data.Rational.Show.d_show_6
              (coe MAlonzo.Code.Data.Refinement.Base.d_value_38 (coe v0))))
-- Ledger.Prelude.Numeric.UnitInterval.fromUnitInterval
d_fromUnitInterval_72 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_fromUnitInterval_72 v0
  = coe MAlonzo.Code.Data.Refinement.Base.d_value_38 (coe v0)
-- Ledger.Prelude.Numeric.UnitInterval.toUnitInterval
d_toUnitInterval_74 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_toUnitInterval_74 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                 (coe
                    MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
                 (coe v0))
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622 (coe v0)
                 (coe
                    MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                    (coe (1 :: Integer)))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                          (coe MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v0))
                else coe
                       seq (coe v3) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Prelude.Numeric.UnitInterval.mkUnitInterval
d_mkUnitInterval_92 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_mkUnitInterval_92 v0 ~v1 = du_mkUnitInterval_92 v0
du_mkUnitInterval_92 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_mkUnitInterval_92 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                 (coe
                    MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
                 (coe v0))
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622 (coe v0)
                 (coe
                    MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                    (coe (1 :: Integer)))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3) (coe MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v0)
                else coe
                       seq (coe v3) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Prelude.Numeric.UnitInterval.clamp
d_clamp_118 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_clamp_118 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
              (coe
                 MAlonzo.Code.Data.Rational.Properties.du_drop'45''42''8804''42'_3534)
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2880
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__316
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d_numerator_14
                       (coe
                          MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                          (coe (0 :: Integer))))
                    (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__316
                    (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d_denominator_22
                       (coe
                          MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                          (coe (0 :: Integer)))))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (let v4
                              = coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                  (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
                                  (coe
                                     MAlonzo.Code.Data.Rational.Properties.du_drop'45''42''8804''42'_3534)
                                  (coe
                                     MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2880
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__316
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                           (coe
                                              MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                                              (coe (1 :: Integer)))))
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__316
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                           (coe
                                              MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                                              (coe (1 :: Integer))))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                           (coe v0)))) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                               -> if coe v5
                                    then coe
                                           seq (coe v6)
                                           (coe MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v0)
                                    else coe
                                           seq (coe v6)
                                           (coe
                                              du_mkUnitInterval_92
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                                                 (coe (1 :: Integer))))
                             _ -> MAlonzo.RTE.mazUnreachableError))
                else coe
                       seq (coe v3)
                       (coe
                          du_mkUnitInterval_92
                          (coe
                             MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                             (coe (0 :: Integer))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Prelude.Numeric.UnitInterval.fromUnitInterval-inUnitInterval
d_fromUnitInterval'45'inUnitInterval_148 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromUnitInterval'45'inUnitInterval_148 v0
  = case coe v0 of
      MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v1
        -> let v3
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                     (coe
                        MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622
                        (coe
                           MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
                        (coe v1))
                     (coe
                        MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3622 (coe v1)
                        (coe
                           MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                           (coe (1 :: Integer)))) in
           coe
             (case coe v3 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                  -> if coe v4
                       then case coe v5 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6 -> coe v6
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v5)
                              (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim'45'irr_18)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Numeric.UnitInterval.UnitInterval-*-0≤
d_UnitInterval'45''42''45'0'8804'_174 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_UnitInterval'45''42''45'0'8804'_174 v0 v1 ~v2
  = du_UnitInterval'45''42''45'0'8804'_174 v0 v1
du_UnitInterval'45''42''45'0'8804'_174 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_UnitInterval'45''42''45'0'8804'_174 v0 v1
  = coe
      du_inUnitInterval'45''42''45'0'8804'_40 (coe v0)
      (coe MAlonzo.Code.Data.Refinement.Base.d_value_38 (coe v1))
      (coe d_fromUnitInterval'45'inUnitInterval_148 (coe v1))
-- Ledger.Prelude.Numeric.UnitInterval.prop-toUnitInterval-fromUnitInterval
d_prop'45'toUnitInterval'45'fromUnitInterval_184 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_prop'45'toUnitInterval'45'fromUnitInterval_184 = erased
