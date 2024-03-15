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

module MAlonzo.Code.Interface.Hashable where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality

-- Interface.Hashable.Hashable
d_Hashable_8 a0 a1 = ()
newtype T_Hashable_8
  = C_Hashable'46'constructor_213 (AgdaAny -> AgdaAny)
-- Interface.Hashable.Hashable.hash
d_hash_18 :: T_Hashable_8 -> AgdaAny -> AgdaAny
d_hash_18 v0
  = case coe v0 of
      C_Hashable'46'constructor_213 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Hashable.Hashable.hashInj
d_hashInj_20 ::
  T_Hashable_8 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_hashInj_20 = erased
-- Interface.Hashable._.hash
d_hash_24 :: T_Hashable_8 -> AgdaAny -> AgdaAny
d_hash_24 v0 = coe d_hash_18 (coe v0)
-- Interface.Hashable._.hashInj
d_hashInj_26 ::
  T_Hashable_8 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_hashInj_26 = erased
-- Interface.Hashable.Hashable₁
d_Hashable'8321'_28 :: (() -> ()) -> () -> ()
d_Hashable'8321'_28 = erased
-- Interface.Hashable.Hashable₂
d_Hashable'8322'_36 :: (() -> () -> ()) -> () -> ()
d_Hashable'8322'_36 = erased
