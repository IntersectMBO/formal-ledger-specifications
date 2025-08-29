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

-- Interface.Hashable.Hashable
d_Hashable_8 a0 a1 = ()
newtype T_Hashable_8 = C_constructor_18 (AgdaAny -> AgdaAny)
-- Interface.Hashable.Hashable.hash
d_hash_16 :: T_Hashable_8 -> AgdaAny -> AgdaAny
d_hash_16 v0
  = case coe v0 of
      C_constructor_18 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Hashable._.hash
d_hash_22 :: T_Hashable_8 -> AgdaAny -> AgdaAny
d_hash_22 v0 = coe d_hash_16 (coe v0)
-- Interface.Hashable.Hashable₁
d_Hashable'8321'_24 :: (() -> ()) -> () -> ()
d_Hashable'8321'_24 = erased
-- Interface.Hashable.Hashable₂
d_Hashable'8322'_32 :: (() -> () -> ()) -> () -> ()
d_Hashable'8322'_32 = erased
