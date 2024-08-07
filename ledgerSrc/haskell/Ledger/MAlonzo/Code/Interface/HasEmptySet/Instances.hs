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

module MAlonzo.Code.Interface.HasEmptySet.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Interface.HasEmptySet

-- Interface.HasEmptySet.Instances._.Map
d_Map_154 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_154 = erased
-- Interface.HasEmptySet.Instances.HasEmptySet-Set
d_HasEmptySet'45'Set_294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_6
d_HasEmptySet'45'Set_294 v0 ~v1 = du_HasEmptySet'45'Set_294 v0
du_HasEmptySet'45'Set_294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_6
du_HasEmptySet'45'Set_294 v0
  = coe
      MAlonzo.Code.Interface.HasEmptySet.C_HasEmptySet'46'constructor_3
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0))
-- Interface.HasEmptySet.Instances.HasEmptySet-Map
d_HasEmptySet'45'Map_300 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_6
d_HasEmptySet'45'Map_300 v0 ~v1 ~v2 = du_HasEmptySet'45'Map_300 v0
du_HasEmptySet'45'Map_300 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_6
du_HasEmptySet'45'Map_300 v0
  = coe
      MAlonzo.Code.Interface.HasEmptySet.C_HasEmptySet'46'constructor_3
      (coe MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562 (coe v0))
