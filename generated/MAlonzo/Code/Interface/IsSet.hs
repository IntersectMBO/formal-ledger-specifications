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
d_Map_152 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Map_152 = erased
-- Interface.IsSet.TotalMap.TotalMap
d_TotalMap_300 a0 a1 a2 = ()
-- Interface.IsSet.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_322 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_322 = erased
-- Interface.IsSet.TotalMap.TotalMap.rel
d_rel_328 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 -> AgdaAny
d_rel_328 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)
-- Interface.IsSet.TotalMap.TotalMap.total-rel
d_total'45'rel_332 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> AgdaAny
d_total'45'rel_332 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_184 (coe v0)
-- Interface.IsSet.IsSet
d_IsSet_482 a0 a1 a2 = ()
newtype T_IsSet_482
  = C_IsSet'46'constructor_2063 (AgdaAny -> AgdaAny)
-- Interface.IsSet.IsSet.toSet
d_toSet_490 :: T_IsSet_482 -> AgdaAny -> AgdaAny
d_toSet_490 v0
  = case coe v0 of
      C_IsSet'46'constructor_2063 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsSet.IsSet._∈_
d__'8712'__492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8712'__492 = erased
-- Interface.IsSet.IsSet._∉_
d__'8713'__494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8713'__494 = erased
-- Interface.IsSet._._∈_
d__'8712'__506 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8712'__506 = erased
-- Interface.IsSet._._∉_
d__'8713'__508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8713'__508 = erased
-- Interface.IsSet._.toSet
d_toSet_510 :: T_IsSet_482 -> AgdaAny -> AgdaAny
d_toSet_510 v0 = coe d_toSet_490 (coe v0)
-- Interface.IsSet.All-syntax
d_All'45'syntax_518 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_518 = erased
-- Interface.IsSet.Ex-syntax
d_Ex'45'syntax_530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_530 = erased
-- Interface.IsSet._.dom
d_dom_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny
d_dom_548 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_548 v0 v4 v5
du_dom_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  T_IsSet_482 -> AgdaAny -> AgdaAny
du_dom_548 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 (coe d_toSet_490 v1 v2)
-- Interface.IsSet._.range
d_range_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny
d_range_550 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_550 v0 v4 v5
du_range_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  T_IsSet_482 -> AgdaAny -> AgdaAny
du_range_550 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_340 v0 (coe d_toSet_490 v1 v2)
-- Interface.IsSet.IsSet-Set
d_IsSet'45'Set_552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> T_IsSet_482
d_IsSet'45'Set_552 ~v0 ~v1 = du_IsSet'45'Set_552
du_IsSet'45'Set_552 :: T_IsSet_482
du_IsSet'45'Set_552
  = coe C_IsSet'46'constructor_2063 (coe (\ v0 -> v0))
-- Interface.IsSet.IsSet-Map
d_IsSet'45'Map_556 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> T_IsSet_482
d_IsSet'45'Map_556 ~v0 ~v1 ~v2 = du_IsSet'45'Map_556
du_IsSet'45'Map_556 :: T_IsSet_482
du_IsSet'45'Map_556
  = coe
      C_IsSet'46'constructor_2063
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_544)
-- Interface.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> T_IsSet_482
d_IsSet'45'TotalMap_558 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_558
du_IsSet'45'TotalMap_558 :: T_IsSet_482
du_IsSet'45'TotalMap_558
  = coe
      C_IsSet'46'constructor_2063
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)))
