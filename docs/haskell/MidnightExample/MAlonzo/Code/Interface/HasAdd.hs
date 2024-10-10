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

module MAlonzo.Code.Interface.HasAdd where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- Interface.HasAdd.HasAdd
d_HasAdd_6 a0 = ()
newtype T_HasAdd_6
  = C_HasAdd'46'constructor_7 (AgdaAny -> AgdaAny -> AgdaAny)
-- Interface.HasAdd.HasAdd._+_
d__'43'__12 :: T_HasAdd_6 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__12 v0
  = case coe v0 of
      C_HasAdd'46'constructor_7 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasAdd._._+_
d__'43'__16 :: T_HasAdd_6 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__16 v0 = coe d__'43'__12 (coe v0)
