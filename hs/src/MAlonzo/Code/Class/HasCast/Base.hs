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

module MAlonzo.Code.Class.HasCast.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Class.HasCast.Base.HasCast
d_HasCast_14 a0 a1 a2 a3 = ()
newtype T_HasCast_14
  = C_HasCast'46'constructor_29 (AgdaAny -> AgdaAny)
-- Class.HasCast.Base.HasCast.cast
d_cast_26 :: T_HasCast_14 -> AgdaAny -> AgdaAny
d_cast_26 v0
  = case coe v0 of
      C_HasCast'46'constructor_29 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasCast.Base._.cast
d_cast_30 :: T_HasCast_14 -> AgdaAny -> AgdaAny
d_cast_30 v0 = coe d_cast_26 (coe v0)
