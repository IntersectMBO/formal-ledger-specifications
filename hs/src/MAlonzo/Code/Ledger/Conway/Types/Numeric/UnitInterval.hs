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

module MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval where

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

-- Ledger.Conway.Types.Numeric.UnitInterval.inUnitInterval
d_inUnitInterval_12 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> ()
d_inUnitInterval_12 = erased
-- Ledger.Conway.Types.Numeric.UnitInterval.isInUnitInterval
d_isInUnitInterval_18 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isInUnitInterval_18 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
         (coe v0))
      (coe
         MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552 (coe v0)
         (coe
            MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (1 :: Integer))))
-- Ledger.Conway.Types.Numeric.UnitInterval.inUnitInterval-*-≤y
d_inUnitInterval'45''42''45''8804'y_26 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_inUnitInterval'45''42''45''8804'y_26 v0 v1 v2 ~v3
  = du_inUnitInterval'45''42''45''8804'y_26 v0 v1 v2
du_inUnitInterval'45''42''45''8804'y_26 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_inUnitInterval'45''42''45''8804'y_26 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe
                   MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Data.Rational.Properties.du_'60''8658''8804'_3604 v7))
             (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1)) v1
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3696))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                   (coe
                      MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
                   (coe v1))
                v1
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v5 v6 v7 v8 v9 -> v9)
                   (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                      (coe
                         MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
                      (coe v1))
                   v1 v1
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                         (coe
                            MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566))
                      (coe v1))
                   erased)
                (coe
                   MAlonzo.Code.Data.Rational.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5054
                   (coe v1) (coe v0)
                   (coe
                      MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (1 :: Integer)))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.Numeric.UnitInterval.inUnitInterval-*-0≤
d_inUnitInterval'45''42''45'0'8804'_42 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_inUnitInterval'45''42''45'0'8804'_42 v0 v1 v2 v3
  = coe
      seq (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe
               MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Rational.Properties.du_'60''8658''8804'_3604 v6))
         (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
            (coe (0 :: Integer)))
         (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v4 v5 v6 v7 v8 -> v8)
            (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
               (coe (0 :: Integer)))
            (MAlonzo.Code.Data.Rational.Base.d__'42'__276
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                  (coe (0 :: Integer))))
            (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe
                     MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
                  (coe
                     MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3696))
               (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                     (coe (0 :: Integer))))
               (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
               (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe
                        MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5074
                  v0
                  (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                     (coe (0 :: Integer)))
                  v1 v3))
            erased))
-- Ledger.Conway.Types.Numeric.UnitInterval.inUnitInterval-*-≤1
d_inUnitInterval'45''42''45''8804'1_58 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_inUnitInterval'45''42''45''8804'1_58 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe
                   MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
                (\ v6 v7 v8 ->
                   coe
                     MAlonzo.Code.Data.Rational.Properties.du_'60''8658''8804'_3604 v8))
             (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
             (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                (coe (1 :: Integer)))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
                   (coe
                      MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3696))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
                (MAlonzo.Code.Data.Rational.Base.d__'42'__276
                   (coe v0)
                   (coe
                      MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                      (coe (1 :: Integer))))
                (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                   (coe (1 :: Integer)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
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
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe
                            MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
                         (coe
                            MAlonzo.Code.Data.Rational.Properties.d_'8804''45''60''45'trans_3696))
                      v0
                      (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                         (coe (1 :: Integer)))
                      (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                         (coe (1 :: Integer)))
                      (let v6
                             = MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566 in
                       coe
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe v6))
                            (coe
                               MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                               (coe (1 :: Integer)))))
                      v5)
                   erased)
                (coe
                   MAlonzo.Code.Data.Rational.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5074
                   v0 v1
                   (MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                      (coe (1 :: Integer)))
                   v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.Numeric.UnitInterval.inUnitInterval-*
d_inUnitInterval'45''42'_74 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inUnitInterval'45''42'_74 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                d_inUnitInterval'45''42''45'0'8804'_42 (coe v0) (coe v1) (coe v2)
                (coe v4))
             (coe
                d_inUnitInterval'45''42''45''8804'1_58 (coe v0) (coe v1) (coe v2)
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.Numeric.UnitInterval.UnitInterval
d_UnitInterval_86 :: ()
d_UnitInterval_86 = erased
-- Ledger.Conway.Types.Numeric.UnitInterval.Show-UnitInterval
d_Show'45'UnitInterval_90 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'UnitInterval_90
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            MAlonzo.Code.Data.Rational.Show.d_show_6
              (coe MAlonzo.Code.Data.Refinement.Base.d_value_38 (coe v0))))
-- Ledger.Conway.Types.Numeric.UnitInterval.fromUnitInterval
d_fromUnitInterval_92 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_fromUnitInterval_92 v0
  = coe MAlonzo.Code.Data.Refinement.Base.d_value_38 (coe v0)
-- Ledger.Conway.Types.Numeric.UnitInterval.toUnitInterval
d_toUnitInterval_94 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_toUnitInterval_94 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552
                 (coe
                    MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
                 (coe v0))
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552 (coe v0)
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
-- Ledger.Conway.Types.Numeric.UnitInterval.mkUnitInterval
d_mkUnitInterval_112 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_mkUnitInterval_112 v0 ~v1 = du_mkUnitInterval_112 v0
du_mkUnitInterval_112 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_mkUnitInterval_112 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552
                 (coe
                    MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6 (coe (0 :: Integer)))
                 (coe v0))
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552 (coe v0)
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
                       seq (coe v3) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Types.Numeric.UnitInterval.clamp
d_clamp_138 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_clamp_138 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
              (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
              (coe
                 MAlonzo.Code.Data.Rational.Properties.du_drop'45''42''8804''42'_3448)
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2794
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d_numerator_14
                       (coe
                          MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                          (coe (0 :: Integer))))
                    (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
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
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                  (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
                                  (coe
                                     MAlonzo.Code.Data.Rational.Properties.du_drop'45''42''8804''42'_3448)
                                  (coe
                                     MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2794
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                           (coe
                                              MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                                              (coe (1 :: Integer)))))
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
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
                                              du_mkUnitInterval_112
                                              (coe
                                                 MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                                                 (coe (1 :: Integer))))
                             _ -> MAlonzo.RTE.mazUnreachableError))
                else coe
                       seq (coe v3)
                       (coe
                          du_mkUnitInterval_112
                          (coe
                             MAlonzo.Code.Data.Rational.Literals.d_fromℤ_6
                             (coe (0 :: Integer))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Types.Numeric.UnitInterval.prop-toUnitInterval-fromUnitInterval
d_prop'45'toUnitInterval'45'fromUnitInterval_168 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_prop'45'toUnitInterval'45'fromUnitInterval_168 = erased
