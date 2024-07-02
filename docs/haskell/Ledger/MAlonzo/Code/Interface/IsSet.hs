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
d_Map_152 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_152 = erased
-- Interface.IsSet.TotalMap.TotalMap
d_TotalMap_292 a0 a1 a2 = ()
-- Interface.IsSet.IsSet
d_IsSet_472 a0 a1 a2 = ()
newtype T_IsSet_472
  = C_IsSet'46'constructor_1989 (AgdaAny -> AgdaAny)
-- Interface.IsSet.IsSet.toSet
d_toSet_480 :: T_IsSet_472 -> AgdaAny -> AgdaAny
d_toSet_480 v0
  = case coe v0 of
      C_IsSet'46'constructor_1989 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsSet.IsSet._∈_
d__'8712'__482 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_472 -> AgdaAny -> AgdaAny -> ()
d__'8712'__482 = erased
-- Interface.IsSet.IsSet._∉_
d__'8713'__484 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_472 -> AgdaAny -> AgdaAny -> ()
d__'8713'__484 = erased
-- Interface.IsSet._._∈_
d__'8712'__496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_472 -> AgdaAny -> AgdaAny -> ()
d__'8712'__496 = erased
-- Interface.IsSet._._∉_
d__'8713'__498 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_472 -> AgdaAny -> AgdaAny -> ()
d__'8713'__498 = erased
-- Interface.IsSet._.toSet
d_toSet_500 :: T_IsSet_472 -> AgdaAny -> AgdaAny
d_toSet_500 v0 = coe d_toSet_480 (coe v0)
-- Interface.IsSet.All-syntax
d_All'45'syntax_508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_472 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_508 = erased
-- Interface.IsSet._.dom
d_dom_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_472 -> AgdaAny -> AgdaAny
d_dom_526 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_526 v0 v4 v5
du_dom_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_472 -> AgdaAny -> AgdaAny
du_dom_526 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v0 (coe d_toSet_480 v1 v2)
-- Interface.IsSet._.range
d_range_528 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_472 -> AgdaAny -> AgdaAny
d_range_528 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_528 v0 v4 v5
du_range_528 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_472 -> AgdaAny -> AgdaAny
du_range_528 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_338 v0 (coe d_toSet_480 v1 v2)
-- Interface.IsSet.IsSet-Set
d_IsSet'45'Set_530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_IsSet_472
d_IsSet'45'Set_530 ~v0 ~v1 = du_IsSet'45'Set_530
du_IsSet'45'Set_530 :: T_IsSet_472
du_IsSet'45'Set_530
  = coe C_IsSet'46'constructor_1989 (coe (\ v0 -> v0))
-- Interface.IsSet.IsSet-Map
d_IsSet'45'Map_534 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_472
d_IsSet'45'Map_534 ~v0 ~v1 ~v2 = du_IsSet'45'Map_534
du_IsSet'45'Map_534 :: T_IsSet_472
du_IsSet'45'Map_534
  = coe
      C_IsSet'46'constructor_1989
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532)
-- Interface.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_536 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_472
d_IsSet'45'TotalMap_536 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_536
du_IsSet'45'TotalMap_536 :: T_IsSet_472
du_IsSet'45'TotalMap_536
  = coe
      C_IsSet'46'constructor_1989
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)))
