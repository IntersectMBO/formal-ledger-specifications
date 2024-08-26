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
d_IsSet_474 a0 a1 a2 = ()
newtype T_IsSet_474
  = C_IsSet'46'constructor_1993 (AgdaAny -> AgdaAny)
-- Interface.IsSet.IsSet.toSet
d_toSet_482 :: T_IsSet_474 -> AgdaAny -> AgdaAny
d_toSet_482 v0
  = case coe v0 of
      C_IsSet'46'constructor_1993 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsSet.IsSet._∈_
d__'8712'__484 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_474 -> AgdaAny -> AgdaAny -> ()
d__'8712'__484 = erased
-- Interface.IsSet.IsSet._∉_
d__'8713'__486 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_474 -> AgdaAny -> AgdaAny -> ()
d__'8713'__486 = erased
-- Interface.IsSet._._∈_
d__'8712'__498 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_474 -> AgdaAny -> AgdaAny -> ()
d__'8712'__498 = erased
-- Interface.IsSet._._∉_
d__'8713'__500 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_474 -> AgdaAny -> AgdaAny -> ()
d__'8713'__500 = erased
-- Interface.IsSet._.toSet
d_toSet_502 :: T_IsSet_474 -> AgdaAny -> AgdaAny
d_toSet_502 v0 = coe d_toSet_482 (coe v0)
-- Interface.IsSet.All-syntax
d_All'45'syntax_510 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_474 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_510 = erased
-- Interface.IsSet.Ex-syntax
d_Ex'45'syntax_522 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_474 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_522 = erased
-- Interface.IsSet._.dom
d_dom_540 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_474 -> AgdaAny -> AgdaAny
d_dom_540 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_540 v0 v4 v5
du_dom_540 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_474 -> AgdaAny -> AgdaAny
du_dom_540 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 (coe d_toSet_482 v1 v2)
-- Interface.IsSet._.range
d_range_542 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_474 -> AgdaAny -> AgdaAny
d_range_542 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_542 v0 v4 v5
du_range_542 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_474 -> AgdaAny -> AgdaAny
du_range_542 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_340 v0 (coe d_toSet_482 v1 v2)
-- Interface.IsSet.IsSet-Set
d_IsSet'45'Set_544 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_IsSet_474
d_IsSet'45'Set_544 ~v0 ~v1 = du_IsSet'45'Set_544
du_IsSet'45'Set_544 :: T_IsSet_474
du_IsSet'45'Set_544
  = coe C_IsSet'46'constructor_1993 (coe (\ v0 -> v0))
-- Interface.IsSet.IsSet-Map
d_IsSet'45'Map_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_474
d_IsSet'45'Map_548 ~v0 ~v1 ~v2 = du_IsSet'45'Map_548
du_IsSet'45'Map_548 :: T_IsSet_474
du_IsSet'45'Map_548
  = coe
      C_IsSet'46'constructor_1993
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534)
-- Interface.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_474
d_IsSet'45'TotalMap_550 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_550
du_IsSet'45'TotalMap_550 :: T_IsSet_474
du_IsSet'45'TotalMap_550
  = coe
      C_IsSet'46'constructor_1993
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)))
