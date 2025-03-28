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

module MAlonzo.Code.Prelude where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Maybe.Relation.Binary.Connected
import qualified MAlonzo.Code.Data.Nat.Literals
import qualified MAlonzo.Code.Data.Rational.Literals
import qualified MAlonzo.Code.Data.Unit.Polymorphic.Base
import qualified MAlonzo.Code.Level

-- Prelude.Poly-tt
d_Poly'45'tt_2 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Level.T_Lift_8
d_Poly'45'tt_2 v0
  = coe MAlonzo.Code.Data.Unit.Polymorphic.Base.du_tt_16
-- Prelude.DecEq-×′
d_DecEq'45''215''8242'_4 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45''215''8242'_4 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182 v4 v5
-- Prelude.∃⁇
d_'8707''8263'_8 :: MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_'8707''8263'_8 = erased
-- Prelude.∃₂-syntax
d_'8707''8322''45'syntax_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d_'8707''8322''45'syntax_24 = erased
-- Prelude.Number-ℕ
d_Number'45'ℕ_32 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'ℕ_32 = coe MAlonzo.Code.Data.Nat.Literals.d_number_6
-- Prelude.Number-ℚ
d_Number'45'ℚ_34 :: MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'ℚ_34
  = coe MAlonzo.Code.Data.Rational.Literals.d_number_10
-- Prelude._~_
d__'126'__38 :: () -> Maybe AgdaAny -> Maybe AgdaAny -> ()
d__'126'__38 = erased
-- Prelude.~?
d_'126''63'_46 ::
  () ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'126''63'_46 ~v0 v1 v2 v3 = du_'126''63'_46 v1 v2 v3
du_'126''63'_46 ::
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'126''63'_46 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.du_connected'63'_86
         (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v2)) (coe v0)
         (coe v1))
