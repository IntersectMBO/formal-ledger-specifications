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

module MAlonzo.Code.Prelude.Init where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Level

-- Prelude.Init.1ℓ
d_1ℓ_4 :: MAlonzo.Code.Agda.Primitive.T_Level_18
d_1ℓ_4
  = coe
      MAlonzo.Code.Agda.Primitive.d_lsuc_24 MAlonzo.Code.Level.d_0ℓ_22
-- Prelude.Init.2ℓ
d_2ℓ_6 :: MAlonzo.Code.Agda.Primitive.T_Level_18
d_2ℓ_6 = coe MAlonzo.Code.Agda.Primitive.d_lsuc_24 d_1ℓ_4
-- Prelude.Init.3ℓ
d_3ℓ_8 :: MAlonzo.Code.Agda.Primitive.T_Level_18
d_3ℓ_8 = coe MAlonzo.Code.Agda.Primitive.d_lsuc_24 d_2ℓ_6
-- Prelude.Init.4ℓ
d_4ℓ_10 :: MAlonzo.Code.Agda.Primitive.T_Level_18
d_4ℓ_10 = coe MAlonzo.Code.Agda.Primitive.d_lsuc_24 d_3ℓ_8
-- Prelude.Init.∃!
d_'8707''33'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> ()
d_'8707''33'_72 = erased
-- Prelude.Init.∃₂-syntax
d_'8707''8322''45'syntax_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d_'8707''8322''45'syntax_90 = erased
-- Prelude.Init.∃⁇
d_'8707''8263'_100 :: MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_'8707''8263'_100 = erased
-- Prelude.Init._↔_
d__'8596'__104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8596'__104 = erased
-- Prelude.Init.Is
d_Is_114 a0 a1 a2 = ()
data T_Is_114 = C_'10219'__120
-- Prelude.Init.typeOf
d_typeOf_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> ()
d_typeOf_126 = erased
