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

module MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- stdlib-classes.Class.HasCast.Base.HasCast
d_HasCast_16 a0 a1 a2 a3 = ()
newtype T_HasCast_16 = C_constructor_30 (AgdaAny -> AgdaAny)
-- stdlib-classes.Class.HasCast.Base.HasCast.cast
d_cast_28 :: T_HasCast_16 -> AgdaAny -> AgdaAny
d_cast_28 v0
  = case coe v0 of
      C_constructor_30 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-classes.Class.HasCast.Base._.cast
d_cast_34 :: T_HasCast_16 -> AgdaAny -> AgdaAny
d_cast_34 v0 = coe d_cast_28 (coe v0)
