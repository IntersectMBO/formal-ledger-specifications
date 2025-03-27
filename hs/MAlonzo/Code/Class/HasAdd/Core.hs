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

-- Class.HasAdd.Core.HasAdd
d_HasAdd_8 a0 = ()
newtype T_HasAdd_8
  = C_HasAdd'46'constructor_7 (AgdaAny -> AgdaAny -> AgdaAny)
-- Class.HasAdd.Core.HasAdd._+_
d__'43'__14 :: T_HasAdd_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__14 v0
  = case coe v0 of
      C_HasAdd'46'constructor_7 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasAdd.Core._._+_
d__'43'__18 :: T_HasAdd_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__18 v0 = coe d__'43'__14 (coe v0)
