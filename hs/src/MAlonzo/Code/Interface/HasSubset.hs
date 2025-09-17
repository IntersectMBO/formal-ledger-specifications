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

module MAlonzo.Code.Interface.HasSubset where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Interface.HasSubset.HasSubset
d_HasSubset_8 a0 a1 = ()
data T_HasSubset_8 = C_constructor_18
-- Interface.HasSubset.HasSubset._⊆_
d__'8838'__16 :: T_HasSubset_8 -> AgdaAny -> AgdaAny -> ()
d__'8838'__16 = erased
-- Interface.HasSubset._._⊆_
d__'8838'__22 :: T_HasSubset_8 -> AgdaAny -> AgdaAny -> ()
d__'8838'__22 = erased
