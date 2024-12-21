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

module MAlonzo.Code.Interface.HasSubtract.Instance where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Interface.HasSubtract

-- Interface.HasSubtract.Instance.subtractNat
d_subtractNat_6 ::
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
d_subtractNat_6
  = coe
      MAlonzo.Code.Interface.HasSubtract.C_HasSubtract'46'constructor_13
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
-- Interface.HasSubtract.Instance.subtractInt
d_subtractInt_8 ::
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
d_subtractInt_8
  = coe
      MAlonzo.Code.Interface.HasSubtract.C_HasSubtract'46'constructor_13
      (coe MAlonzo.Code.Data.Integer.Base.d__'45'__294)
-- Interface.HasSubtract.Instance.subtractNatInt
d_subtractNatInt_10 ::
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
d_subtractNatInt_10
  = coe
      MAlonzo.Code.Interface.HasSubtract.C_HasSubtract'46'constructor_13
      (coe MAlonzo.Code.Data.Integer.Base.d__'8854'__258)
