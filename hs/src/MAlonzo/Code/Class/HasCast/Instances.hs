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

module MAlonzo.Code.Class.HasCast.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.HasCast.Base

-- Class.HasCast.Instances.HasCast-A⇀B-RelAB
d_HasCast'45'A'8640'B'45'RelAB_10 ::
  () -> () -> MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'A'8640'B'45'RelAB_10 ~v0 ~v1
  = du_HasCast'45'A'8640'B'45'RelAB_10
du_HasCast'45'A'8640'B'45'RelAB_10 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'A'8640'B'45'RelAB_10
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
