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

module MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- stdlib-classes.Class.HasCast.Instances.HasCast-A⇀B-RelAB
d_HasCast'45'A'8640'B'45'RelAB_12 ::
  () ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'A'8640'B'45'RelAB_12 ~v0 ~v1
  = du_HasCast'45'A'8640'B'45'RelAB_12
du_HasCast'45'A'8640'B'45'RelAB_12 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'A'8640'B'45'RelAB_12
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
