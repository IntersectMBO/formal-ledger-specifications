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

module MAlonzo.Code.Interface.IsSet where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.TotalMap

-- Interface.IsSet.Map.Map
d_Map_124 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_124 = erased
-- Interface.IsSet.TotalMap.TotalMap
d_TotalMap_252 a0 a1 a2 = ()
-- Interface.IsSet.IsSet
d_IsSet_430 a0 a1 a2 = ()
newtype T_IsSet_430
  = C_IsSet'46'constructor_1761 (AgdaAny -> AgdaAny)
-- Interface.IsSet.IsSet.toSet
d_toSet_438 :: T_IsSet_430 -> AgdaAny -> AgdaAny
d_toSet_438 v0
  = case coe v0 of
      C_IsSet'46'constructor_1761 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsSet.IsSet._∈_
d__'8712'__440 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_430 -> AgdaAny -> AgdaAny -> ()
d__'8712'__440 = erased
-- Interface.IsSet.IsSet._∉_
d__'8713'__442 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_430 -> AgdaAny -> AgdaAny -> ()
d__'8713'__442 = erased
-- Interface.IsSet._._∈_
d__'8712'__454 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_430 -> AgdaAny -> AgdaAny -> ()
d__'8712'__454 = erased
-- Interface.IsSet._._∉_
d__'8713'__456 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_430 -> AgdaAny -> AgdaAny -> ()
d__'8713'__456 = erased
-- Interface.IsSet._.toSet
d_toSet_458 :: T_IsSet_430 -> AgdaAny -> AgdaAny
d_toSet_458 v0 = coe d_toSet_438 (coe v0)
-- Interface.IsSet.All-syntax
d_All'45'syntax_466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_430 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_466 = erased
-- Interface.IsSet._.dom
d_dom_484 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_430 -> AgdaAny -> AgdaAny
d_dom_484 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_484 v0 v4 v5
du_dom_484 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_430 -> AgdaAny -> AgdaAny
du_dom_484 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v0 (coe d_toSet_438 v1 v2)
-- Interface.IsSet._.range
d_range_486 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_430 -> AgdaAny -> AgdaAny
d_range_486 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_486 v0 v4 v5
du_range_486 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_430 -> AgdaAny -> AgdaAny
du_range_486 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_302 v0 (coe d_toSet_438 v1 v2)
-- Interface.IsSet.IsSet-Set
d_IsSet'45'Set_488 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_IsSet_430
d_IsSet'45'Set_488 ~v0 ~v1 = du_IsSet'45'Set_488
du_IsSet'45'Set_488 :: T_IsSet_430
du_IsSet'45'Set_488
  = coe C_IsSet'46'constructor_1761 (coe (\ v0 -> v0))
-- Interface.IsSet.IsSet-Map
d_IsSet'45'Map_492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_430
d_IsSet'45'Map_492 ~v0 ~v1 ~v2 = du_IsSet'45'Map_492
du_IsSet'45'Map_492 :: T_IsSet_430
du_IsSet'45'Map_492
  = coe
      C_IsSet'46'constructor_1761
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_468)
-- Interface.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_430
d_IsSet'45'TotalMap_494 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_494
du_IsSet'45'TotalMap_494 :: T_IsSet_430
du_IsSet'45'TotalMap_494
  = coe
      C_IsSet'46'constructor_1761
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)))
