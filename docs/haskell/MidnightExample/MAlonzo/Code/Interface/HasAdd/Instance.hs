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

module MAlonzo.Code.Interface.HasAdd.Instance where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Interface.HasAdd

-- Interface.HasAdd.Instance.addInt
d_addInt_6 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addInt_6
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe MAlonzo.Code.Data.Integer.Base.d__'43'__276)
-- Interface.HasAdd.Instance.addNat
d_addNat_8 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addNat_8
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe addInt)
