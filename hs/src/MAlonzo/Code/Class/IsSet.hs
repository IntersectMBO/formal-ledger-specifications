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
d_Map_292 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_Map_292 = erased
-- Class.IsSet.TotalMap.TotalMap
d_TotalMap_462 a0 a1 a2 = ()
-- Class.IsSet.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_486 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_170 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_486 = erased
-- Class.IsSet.TotalMap.TotalMap.rel
d_rel_492 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_170 -> AgdaAny
d_rel_492 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_182 (coe v0)
-- Class.IsSet.TotalMap.TotalMap.total-rel
d_total'45'rel_496 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_170 ->
  AgdaAny -> AgdaAny
d_total'45'rel_496 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_186 (coe v0)
-- Class.IsSet.IsSet
d_IsSet_518 a0 a1 a2 = ()
newtype T_IsSet_518 = C_constructor_540 (AgdaAny -> AgdaAny)
-- Class.IsSet.IsSet.toSet
d_toSet_526 :: T_IsSet_518 -> AgdaAny -> AgdaAny
d_toSet_526 v0
  = case coe v0 of
      C_constructor_540 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.IsSet.IsSet._∈_
d__'8712'__528 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_518 -> AgdaAny -> AgdaAny -> ()
d__'8712'__528 = erased
-- Class.IsSet.IsSet._∉_
d__'8713'__530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_518 -> AgdaAny -> AgdaAny -> ()
d__'8713'__530 = erased
-- Class.IsSet._._∈_
d__'8712'__544 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_518 -> AgdaAny -> AgdaAny -> ()
d__'8712'__544 = erased
-- Class.IsSet._._∉_
d__'8713'__546 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_518 -> AgdaAny -> AgdaAny -> ()
d__'8713'__546 = erased
-- Class.IsSet._.toSet
d_toSet_548 :: T_IsSet_518 -> AgdaAny -> AgdaAny
d_toSet_548 v0 = coe d_toSet_526 (coe v0)
-- Class.IsSet.All-syntax
d_All'45'syntax_556 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_518 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_556 = erased
-- Class.IsSet.Ex-syntax
d_Ex'45'syntax_568 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsSet_518 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_568 = erased
-- Class.IsSet._.dom
d_dom_586 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> T_IsSet_518 -> AgdaAny -> AgdaAny
d_dom_586 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_586 v0 v4 v5
du_dom_586 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  T_IsSet_518 -> AgdaAny -> AgdaAny
du_dom_586 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v0 (coe d_toSet_526 v1 v2)
-- Class.IsSet._.range
d_range_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> T_IsSet_518 -> AgdaAny -> AgdaAny
d_range_588 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_588 v0 v4 v5
du_range_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  T_IsSet_518 -> AgdaAny -> AgdaAny
du_range_588 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_356 v0 (coe d_toSet_526 v1 v2)
-- Class.IsSet.IsSet-Set
d_IsSet'45'Set_590 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> T_IsSet_518
d_IsSet'45'Set_590 ~v0 ~v1 = du_IsSet'45'Set_590
du_IsSet'45'Set_590 :: T_IsSet_518
du_IsSet'45'Set_590 = coe C_constructor_540 (coe (\ v0 -> v0))
-- Class.IsSet.IsSet-Map
d_IsSet'45'Map_594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> T_IsSet_518
d_IsSet'45'Map_594 ~v0 ~v1 ~v2 = du_IsSet'45'Map_594
du_IsSet'45'Map_594 :: T_IsSet_518
du_IsSet'45'Map_594
  = coe
      C_constructor_540 (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570)
-- Class.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_596 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> T_IsSet_518
d_IsSet'45'TotalMap_596 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_596
du_IsSet'45'TotalMap_596 :: T_IsSet_518
du_IsSet'45'TotalMap_596
  = coe
      C_constructor_540
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_182 (coe v0)))
