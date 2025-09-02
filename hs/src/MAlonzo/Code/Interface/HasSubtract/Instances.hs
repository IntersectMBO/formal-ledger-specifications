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

module MAlonzo.Code.Interface.HasSubtract.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Interface.HasSubtract

-- Interface.HasSubtract.Instances.HasSubtract-ℕ
d_HasSubtract'45'ℕ_6 ::
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
d_HasSubtract'45'ℕ_6
  = coe
      MAlonzo.Code.Interface.HasSubtract.C_constructor_18
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
-- Interface.HasSubtract.Instances.HasSubtract-ℤ
d_HasSubtract'45'ℤ_8 ::
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
d_HasSubtract'45'ℤ_8
  = coe
      MAlonzo.Code.Interface.HasSubtract.C_constructor_18
      (coe MAlonzo.Code.Data.Integer.Base.d__'45'__302)
-- Interface.HasSubtract.Instances.HasSubtract-ℕ-ℤ
d_HasSubtract'45'ℕ'45'ℤ_10 ::
  MAlonzo.Code.Interface.HasSubtract.T_HasSubtract_8
d_HasSubtract'45'ℕ'45'ℤ_10
  = coe
      MAlonzo.Code.Interface.HasSubtract.C_constructor_18
      (coe MAlonzo.Code.Data.Integer.Base.d__'8854'__266)
