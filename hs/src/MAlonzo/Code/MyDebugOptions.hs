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

module MAlonzo.Code.MyDebugOptions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Reflection.Debug

-- MyDebugOptions.defaultDebugOptionsI
d_defaultDebugOptionsI_2 ::
  MAlonzo.Code.Reflection.Debug.T_DebugOptions_234
d_defaultDebugOptionsI_2
  = coe
      MAlonzo.Code.Reflection.Debug.C_constructor_256
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe MAlonzo.Code.Reflection.Debug.C_All_62)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732
         (coe MAlonzo.Code.Reflection.Debug.d_Filter'45'Alg_70))
      (coe (100 :: Integer)) (coe '|')
