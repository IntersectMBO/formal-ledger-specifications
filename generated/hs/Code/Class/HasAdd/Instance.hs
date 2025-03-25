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

module MAlonzo.Code.Class.HasAdd.Instance where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.String.Base

-- Class.HasAdd.Instance.addInt
d_addInt_6 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addInt_6
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_7
      (coe MAlonzo.Code.Data.Integer.Base.d__'43'__276)
-- Class.HasAdd.Instance.addNat
d_addNat_8 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addNat_8
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_7
      (coe addInt)
-- Class.HasAdd.Instance.addRat
d_addRat_10 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addRat_10
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_7
      (coe MAlonzo.Code.Data.Rational.Base.d__'43'__270)
-- Class.HasAdd.Instance.addString
d_addString_12 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addString_12
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_7
      (coe MAlonzo.Code.Data.String.Base.d__'43''43'__20)
