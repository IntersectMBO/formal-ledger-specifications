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

module MAlonzo.Code.Ledger.Prelude.Numeric.PositiveRational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Prelude.Numeric.PositiveRational.PosRational
d_PosRational_8 :: ()
d_PosRational_8 = erased
-- Ledger.Prelude.Numeric.PositiveRational.Show-PosRational
d_Show'45'PosRational_12 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PosRational_12
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v1
                -> coe MAlonzo.Code.Data.Rational.Show.d_show_6 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Prelude.Numeric.PositiveRational.fromPosRational
d_fromPosRational_16 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_fromPosRational_16 v0
  = coe MAlonzo.Code.Data.Refinement.Base.d_value_38 (coe v0)
-- Ledger.Prelude.Numeric.PositiveRational.toPosRational
d_toPosRational_18 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_toPosRational_18 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              (coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68)
              (coe
                 MAlonzo.Code.Data.Rational.Properties.du_drop'45''42''60''42'_3650)
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'60''63'__3190
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__316
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d_numerator_14
                       (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178))
                    (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'42'__316
                    (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d_denominator_22
                       (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))) in
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
