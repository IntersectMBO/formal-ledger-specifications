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
d_Map_154 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_154 = erased
-- Interface.IsSet.TotalMap.TotalMap
d_TotalMap_302 a0 a1 a2 = ()
-- Interface.IsSet.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_324 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_324 = erased
-- Interface.IsSet.TotalMap.TotalMap.rel
d_rel_330 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 -> AgdaAny
d_rel_330 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)
-- Interface.IsSet.TotalMap.TotalMap.total-rel
d_total'45'rel_334 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 -> AgdaAny -> AgdaAny
d_total'45'rel_334 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_70 (coe v0)
-- Interface.IsSet.IsSet
d_IsSet_484 a0 a1 a2 = ()
newtype T_IsSet_484
  = C_IsSet'46'constructor_2073 (AgdaAny -> AgdaAny)
-- Interface.IsSet.IsSet.toSet
d_toSet_492 :: T_IsSet_484 -> AgdaAny -> AgdaAny
d_toSet_492 v0
  = case coe v0 of
      C_IsSet'46'constructor_2073 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsSet.IsSet._∈_
d__'8712'__494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_484 -> AgdaAny -> AgdaAny -> ()
d__'8712'__494 = erased
-- Interface.IsSet.IsSet._∉_
d__'8713'__496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_484 -> AgdaAny -> AgdaAny -> ()
d__'8713'__496 = erased
-- Interface.IsSet._._∈_
d__'8712'__508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_484 -> AgdaAny -> AgdaAny -> ()
d__'8712'__508 = erased
-- Interface.IsSet._._∉_
d__'8713'__510 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_484 -> AgdaAny -> AgdaAny -> ()
d__'8713'__510 = erased
-- Interface.IsSet._.toSet
d_toSet_512 :: T_IsSet_484 -> AgdaAny -> AgdaAny
d_toSet_512 v0 = coe d_toSet_492 (coe v0)
-- Interface.IsSet.All-syntax
d_All'45'syntax_520 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_484 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_520 = erased
-- Interface.IsSet.Ex-syntax
d_Ex'45'syntax_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_484 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_532 = erased
-- Interface.IsSet._.dom
d_dom_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_484 -> AgdaAny -> AgdaAny
d_dom_550 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_550 v0 v4 v5
du_dom_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_484 -> AgdaAny -> AgdaAny
du_dom_550 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_340 v0 (coe d_toSet_492 v1 v2)
-- Interface.IsSet._.range
d_range_552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_484 -> AgdaAny -> AgdaAny
d_range_552 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_552 v0 v4 v5
du_range_552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_484 -> AgdaAny -> AgdaAny
du_range_552 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_342 v0 (coe d_toSet_492 v1 v2)
-- Interface.IsSet.IsSet-Set
d_IsSet'45'Set_554 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_IsSet_484
d_IsSet'45'Set_554 ~v0 ~v1 = du_IsSet'45'Set_554
du_IsSet'45'Set_554 :: T_IsSet_484
du_IsSet'45'Set_554
  = coe C_IsSet'46'constructor_2073 (coe (\ v0 -> v0))
-- Interface.IsSet.IsSet-Map
d_IsSet'45'Map_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_484
d_IsSet'45'Map_558 ~v0 ~v1 ~v2 = du_IsSet'45'Map_558
du_IsSet'45'Map_558 :: T_IsSet_484
du_IsSet'45'Map_558
  = coe
      C_IsSet'46'constructor_2073
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_538)
-- Interface.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_560 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_484
d_IsSet'45'TotalMap_560 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_560
du_IsSet'45'TotalMap_560 :: T_IsSet_484
du_IsSet'45'TotalMap_560
  = coe
      C_IsSet'46'constructor_2073
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)))
