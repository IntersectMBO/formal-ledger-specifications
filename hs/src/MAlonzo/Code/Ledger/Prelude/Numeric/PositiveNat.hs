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

module MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Prelude.Numeric.PositiveNat.PosNat
d_PosNat_8 :: ()
d_PosNat_8 = erased
-- Ledger.Prelude.Numeric.PositiveNat.Show-PosNat
d_Show'45'PosNat_12 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PosNat_12
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v1
                -> coe MAlonzo.Code.Data.Nat.Show.d_show_56 v1
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Prelude.Numeric.PositiveNat.fromPosNat
d_fromPosNat_16 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_fromPosNat_16 v0
  = coe MAlonzo.Code.Data.Refinement.Base.d_value_38 (coe v0)
-- Ledger.Prelude.Numeric.PositiveNat.toPosNat
d_toPosNat_18 ::
  Integer -> Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_toPosNat_18 v0
  = let v1
          = MAlonzo.Code.Data.Nat.Properties.d_nonZero'63'_2760 (coe v0) in
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
-- Ledger.Prelude.Numeric.PositiveNat.mkPosNat
d_mkPosNat_36 ::
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_mkPosNat_36 v0 ~v1 = du_mkPosNat_36 v0
du_mkPosNat_36 ::
  Integer -> MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_mkPosNat_36 v0
  = let v1
          = MAlonzo.Code.Data.Nat.Properties.d_nonZero'63'_2760 (coe v0) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3) (coe MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v0)
                else coe
                       seq (coe v3) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Prelude.Numeric.PositiveNat.PosNat-IsNonZero
d_PosNat'45'IsNonZero_60 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_PosNat'45'IsNonZero_60 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.C_constructor_120
      (coe seq (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Prelude.Numeric.PositiveNat.PosNat-Is>0
d_PosNat'45'Is'62'0_68 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_PosNat'45'Is'62'0_68 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Ledger.Prelude.Numeric.PositiveNat.Number-PosNat
d_Number'45'PosNat_74 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'PosNat_74
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_constructor_32
      (\ v0 v1 -> coe MAlonzo.Code.Data.Refinement.Base.C__'44'__42 v0)
