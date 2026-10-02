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

module MAlonzo.Code.Interface.TypeClasses.HasSubtract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- Interface.TypeClasses.HasSubtract.HasSubtract
d_HasSubtract_10 a0 a1 = ()
newtype T_HasSubtract_10
  = C_constructor_20 (AgdaAny -> AgdaAny -> AgdaAny)
-- Interface.TypeClasses.HasSubtract.HasSubtract._-_
d__'45'__18 :: T_HasSubtract_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__18 v0
  = case coe v0 of
      C_constructor_20 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.TypeClasses.HasSubtract._._-_
d__'45'__24 :: T_HasSubtract_10 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__24 v0 = coe d__'45'__18 (coe v0)
