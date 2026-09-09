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

module MAlonzo.Code.Class.HasAdd.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.String.Base

-- Class.HasAdd.Instances.addNat
d_addNat_6 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addNat_6
  = coe MAlonzo.Code.Class.HasAdd.Core.C_constructor_18 (coe addInt)
-- Class.HasAdd.Instances.addInt
d_addInt_8 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addInt_8
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_constructor_18
      (coe MAlonzo.Code.Data.Integer.Base.d__'43'__284)
-- Class.HasAdd.Instances.addRat
d_addRat_10 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addRat_10
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_constructor_18
      (coe MAlonzo.Code.Data.Rational.Base.d__'43'__270)
-- Class.HasAdd.Instances.addString
d_addString_12 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addString_12
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_constructor_18
      (coe MAlonzo.Code.Data.String.Base.d__'43''43'__20)
