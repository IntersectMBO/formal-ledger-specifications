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

module MAlonzo.Code.Class.IsSet where

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

-- Class.IsSet.Map.Map
d_Map_280 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Map_280 = erased
-- Class.IsSet.TotalMap.TotalMap
d_TotalMap_428 a0 a1 a2 = ()
-- Class.IsSet.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_450 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_450 = erased
-- Class.IsSet.TotalMap.TotalMap.rel
d_rel_456 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 -> AgdaAny
d_rel_456 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)
-- Class.IsSet.TotalMap.TotalMap.total-rel
d_total'45'rel_460 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> AgdaAny
d_total'45'rel_460 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_184 (coe v0)
-- Class.IsSet.IsSet
d_IsSet_482 a0 a1 a2 = ()
newtype T_IsSet_482
  = C_IsSet'46'constructor_2063 (AgdaAny -> AgdaAny)
-- Class.IsSet.IsSet.toSet
d_toSet_490 :: T_IsSet_482 -> AgdaAny -> AgdaAny
d_toSet_490 v0
  = case coe v0 of
      C_IsSet'46'constructor_2063 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.IsSet.IsSet._∈_
d__'8712'__492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8712'__492 = erased
-- Class.IsSet.IsSet._∉_
d__'8713'__494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8713'__494 = erased
-- Class.IsSet._._∈_
d__'8712'__506 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8712'__506 = erased
-- Class.IsSet._._∉_
d__'8713'__508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny -> ()
d__'8713'__508 = erased
-- Class.IsSet._.toSet
d_toSet_510 :: T_IsSet_482 -> AgdaAny -> AgdaAny
d_toSet_510 v0 = coe d_toSet_490 (coe v0)
-- Class.IsSet.All-syntax
d_All'45'syntax_518 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_518 = erased
-- Class.IsSet.Ex-syntax
d_Ex'45'syntax_530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsSet_482 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_530 = erased
-- Class.IsSet._.dom
d_dom_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny
d_dom_548 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_548 v0 v4 v5
du_dom_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  T_IsSet_482 -> AgdaAny -> AgdaAny
du_dom_548 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 (coe d_toSet_490 v1 v2)
-- Class.IsSet._.range
d_range_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> T_IsSet_482 -> AgdaAny -> AgdaAny
d_range_550 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_550 v0 v4 v5
du_range_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  T_IsSet_482 -> AgdaAny -> AgdaAny
du_range_550 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_346 v0 (coe d_toSet_490 v1 v2)
-- Class.IsSet.IsSet-Set
d_IsSet'45'Set_552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> T_IsSet_482
d_IsSet'45'Set_552 ~v0 ~v1 = du_IsSet'45'Set_552
du_IsSet'45'Set_552 :: T_IsSet_482
du_IsSet'45'Set_552
  = coe C_IsSet'46'constructor_2063 (coe (\ v0 -> v0))
-- Class.IsSet.IsSet-Map
d_IsSet'45'Map_556 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> T_IsSet_482
d_IsSet'45'Map_556 ~v0 ~v1 ~v2 = du_IsSet'45'Map_556
du_IsSet'45'Map_556 :: T_IsSet_482
du_IsSet'45'Map_556
  = coe
      C_IsSet'46'constructor_2063
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550)
-- Class.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> T_IsSet_482
d_IsSet'45'TotalMap_558 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_558
du_IsSet'45'TotalMap_558 :: T_IsSet_482
du_IsSet'45'TotalMap_558
  = coe
      C_IsSet'46'constructor_2063
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)))
