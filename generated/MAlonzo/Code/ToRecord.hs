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

module MAlonzo.Code.ToRecord where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- ToRecord.ToRecord
d_ToRecord_6 a0 a1 = ()
newtype T_ToRecord_6
  = C_ToRecord'46'constructor_9 (AgdaAny -> AgdaAny)
-- ToRecord.ToRecord.⟦_⟧
d_'10214'_'10215'_14 :: T_ToRecord_6 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_14 v0
  = case coe v0 of
      C_ToRecord'46'constructor_9 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- ToRecord._.⟦_⟧
d_'10214'_'10215'_18 :: T_ToRecord_6 -> AgdaAny -> AgdaAny
d_'10214'_'10215'_18 v0 = coe d_'10214'_'10215'_14 (coe v0)
