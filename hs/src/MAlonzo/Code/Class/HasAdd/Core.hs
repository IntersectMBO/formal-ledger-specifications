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

module MAlonzo.Code.Class.HasAdd.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Class.HasAdd.Core.HasAdd
d_HasAdd_10 a0 a1 = ()
newtype T_HasAdd_10
  = C_constructor_18 (AgdaAny -> AgdaAny -> AgdaAny)
-- Class.HasAdd.Core.HasAdd._+_
d__'43'__16 :: T_HasAdd_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__16 v0
  = case coe v0 of
      C_constructor_18 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasAdd.Core._._+_
d__'43'__22 :: T_HasAdd_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__22 v0 = coe d__'43'__16 (coe v0)
