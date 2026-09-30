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

module MAlonzo.Code.Class.HasEmptySet where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map

-- Class.HasEmptySet._.Map
d_Map_156 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_Map_156 = erased
-- Class.HasEmptySet.HasEmptySet
d_HasEmptySet_326 a0 a1 = ()
newtype T_HasEmptySet_326 = C_constructor_334 AgdaAny
-- Class.HasEmptySet.HasEmptySet.∅
d_'8709'_332 :: T_HasEmptySet_326 -> AgdaAny
d_'8709'_332 v0
  = case coe v0 of
      C_constructor_334 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasEmptySet._.∅
d_'8709'_338 :: T_HasEmptySet_326 -> AgdaAny
d_'8709'_338 v0 = coe d_'8709'_332 (coe v0)
-- Class.HasEmptySet.HasEmptySet-Set
d_HasEmptySet'45'Set_342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> T_HasEmptySet_326
d_HasEmptySet'45'Set_342 v0 ~v1 = du_HasEmptySet'45'Set_342 v0
du_HasEmptySet'45'Set_342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> T_HasEmptySet_326
du_HasEmptySet'45'Set_342 v0
  = coe
      C_constructor_334
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v0))
-- Class.HasEmptySet.HasEmptySet-Map
d_HasEmptySet'45'Map_348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_HasEmptySet_326
d_HasEmptySet'45'Map_348 v0 ~v1 ~v2 = du_HasEmptySet'45'Map_348 v0
du_HasEmptySet'45'Map_348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> T_HasEmptySet_326
du_HasEmptySet'45'Map_348 v0
  = coe
      C_constructor_334
      (coe MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598 (coe v0))
