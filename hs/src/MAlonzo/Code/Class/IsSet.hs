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
d_Map_294 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_Map_294 = erased
-- Class.IsSet.TotalMap.TotalMap
d_TotalMap_464 a0 a1 a2 = ()
-- Class.IsSet.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_488 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_170 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_488 = erased
-- Class.IsSet.TotalMap.TotalMap.rel
d_rel_494 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_170 -> AgdaAny
d_rel_494 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_182 (coe v0)
-- Class.IsSet.TotalMap.TotalMap.total-rel
d_total'45'rel_498 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_170 ->
  AgdaAny -> AgdaAny
d_total'45'rel_498 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_186 (coe v0)
-- Class.IsSet.IsSet
d_IsSet_520 a0 a1 a2 = ()
newtype T_IsSet_520 = C_constructor_542 (AgdaAny -> AgdaAny)
-- Class.IsSet.IsSet.toSet
d_toSet_528 :: T_IsSet_520 -> AgdaAny -> AgdaAny
d_toSet_528 v0
  = case coe v0 of
      C_constructor_542 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.IsSet.IsSet._∈_
d__'8712'__530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_520 -> AgdaAny -> AgdaAny -> ()
d__'8712'__530 = erased
-- Class.IsSet.IsSet._∉_
d__'8713'__532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_520 -> AgdaAny -> AgdaAny -> ()
d__'8713'__532 = erased
-- Class.IsSet._._∈_
d__'8712'__546 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_520 -> AgdaAny -> AgdaAny -> ()
d__'8712'__546 = erased
-- Class.IsSet._._∉_
d__'8713'__548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_520 -> AgdaAny -> AgdaAny -> ()
d__'8713'__548 = erased
-- Class.IsSet._.toSet
d_toSet_550 :: T_IsSet_520 -> AgdaAny -> AgdaAny
d_toSet_550 v0 = coe d_toSet_528 (coe v0)
-- Class.IsSet.All-syntax
d_All'45'syntax_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_520 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_558 = erased
-- Class.IsSet.Ex-syntax
d_Ex'45'syntax_570 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_520 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_570 = erased
-- Class.IsSet._.dom
d_dom_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> T_IsSet_520 -> AgdaAny -> AgdaAny
d_dom_588 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_588 v0 v4 v5
du_dom_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  T_IsSet_520 -> AgdaAny -> AgdaAny
du_dom_588 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 (coe d_toSet_528 v1 v2)
-- Class.IsSet._.range
d_range_590 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> T_IsSet_520 -> AgdaAny -> AgdaAny
d_range_590 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_590 v0 v4 v5
du_range_590 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  T_IsSet_520 -> AgdaAny -> AgdaAny
du_range_590 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_360 v0 (coe d_toSet_528 v1 v2)
-- Class.IsSet.IsSet-Set
d_IsSet'45'Set_592 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> T_IsSet_520
d_IsSet'45'Set_592 ~v0 ~v1 = du_IsSet'45'Set_592
du_IsSet'45'Set_592 :: T_IsSet_520
du_IsSet'45'Set_592 = coe C_constructor_542 (coe (\ v0 -> v0))
-- Class.IsSet.IsSet-Map
d_IsSet'45'Map_596 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> T_IsSet_520
d_IsSet'45'Map_596 ~v0 ~v1 ~v2 = du_IsSet'45'Map_596
du_IsSet'45'Map_596 :: T_IsSet_520
du_IsSet'45'Map_596
  = coe
      C_constructor_542 (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580)
-- Class.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_598 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> T_IsSet_520
d_IsSet'45'TotalMap_598 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_598
du_IsSet'45'TotalMap_598 :: T_IsSet_520
du_IsSet'45'TotalMap_598
  = coe
      C_constructor_542
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_182 (coe v0)))
