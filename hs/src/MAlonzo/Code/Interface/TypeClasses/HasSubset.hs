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

module MAlonzo.Code.Interface.TypeClasses.HasSubset where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Interface.TypeClasses.HasSubset.HasSubset
d_HasSubset_10 a0 a1 = ()
data T_HasSubset_10 = C_constructor_20
-- Interface.TypeClasses.HasSubset.HasSubset._⊆_
d__'8838'__18 :: T_HasSubset_10 -> AgdaAny -> AgdaAny -> ()
d__'8838'__18 = erased
-- Interface.TypeClasses.HasSubset._._⊆_
d__'8838'__24 :: T_HasSubset_10 -> AgdaAny -> AgdaAny -> ()
d__'8838'__24 = erased
