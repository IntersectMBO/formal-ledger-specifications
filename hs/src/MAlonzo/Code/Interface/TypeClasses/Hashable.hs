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

module MAlonzo.Code.Interface.TypeClasses.Hashable where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- Interface.TypeClasses.Hashable.Hashable
d_Hashable_10 a0 a1 = ()
newtype T_Hashable_10 = C_constructor_20 (AgdaAny -> AgdaAny)
-- Interface.TypeClasses.Hashable.Hashable.hash
d_hash_18 :: T_Hashable_10 -> AgdaAny -> AgdaAny
d_hash_18 v0
  = case coe v0 of
      C_constructor_20 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.TypeClasses.Hashable._.hash
d_hash_24 :: T_Hashable_10 -> AgdaAny -> AgdaAny
d_hash_24 v0 = coe d_hash_18 (coe v0)
-- Interface.TypeClasses.Hashable.Hashable₁
d_Hashable'8321'_26 :: (() -> ()) -> () -> ()
d_Hashable'8321'_26 = erased
-- Interface.TypeClasses.Hashable.Hashable₂
d_Hashable'8322'_34 :: (() -> () -> ()) -> () -> ()
d_Hashable'8322'_34 = erased
