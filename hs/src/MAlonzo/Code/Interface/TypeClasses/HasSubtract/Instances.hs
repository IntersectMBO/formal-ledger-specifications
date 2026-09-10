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

module MAlonzo.Code.Interface.TypeClasses.HasSubtract.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Interface.TypeClasses.HasSubtract

-- Interface.TypeClasses.HasSubtract.Instances.HasSubtract-ℕ
d_HasSubtract'45'ℕ_8 ::
  MAlonzo.Code.Interface.TypeClasses.HasSubtract.T_HasSubtract_10
d_HasSubtract'45'ℕ_8
  = coe
      MAlonzo.Code.Interface.TypeClasses.HasSubtract.C_constructor_20
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
-- Interface.TypeClasses.HasSubtract.Instances.HasSubtract-ℤ
d_HasSubtract'45'ℤ_10 ::
  MAlonzo.Code.Interface.TypeClasses.HasSubtract.T_HasSubtract_10
d_HasSubtract'45'ℤ_10
  = coe
      MAlonzo.Code.Interface.TypeClasses.HasSubtract.C_constructor_20
      (coe MAlonzo.Code.Data.Integer.Base.d__'45'__302)
-- Interface.TypeClasses.HasSubtract.Instances.HasSubtract-ℕ-ℤ
d_HasSubtract'45'ℕ'45'ℤ_12 ::
  MAlonzo.Code.Interface.TypeClasses.HasSubtract.T_HasSubtract_10
d_HasSubtract'45'ℕ'45'ℤ_12
  = coe
      MAlonzo.Code.Interface.TypeClasses.HasSubtract.C_constructor_20
      (coe MAlonzo.Code.Data.Integer.Base.d__'8854'__266)
