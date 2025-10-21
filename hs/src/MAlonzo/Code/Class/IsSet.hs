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
d_Map_288 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> ()
d_Map_288 = erased
-- Class.IsSet.TotalMap.TotalMap
d_TotalMap_456 a0 a1 a2 = ()
-- Class.IsSet.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_480 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_480 = erased
-- Class.IsSet.TotalMap.TotalMap.rel
d_rel_486 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 -> AgdaAny
d_rel_486 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)
-- Class.IsSet.TotalMap.TotalMap.total-rel
d_total'45'rel_490 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> AgdaAny
d_total'45'rel_490 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_184 (coe v0)
-- Class.IsSet.IsSet
d_IsSet_512 a0 a1 a2 = ()
newtype T_IsSet_512 = C_constructor_534 (AgdaAny -> AgdaAny)
-- Class.IsSet.IsSet.toSet
d_toSet_520 :: T_IsSet_512 -> AgdaAny -> AgdaAny
d_toSet_520 v0
  = case coe v0 of
      C_constructor_534 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.IsSet.IsSet._∈_
d__'8712'__522 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8712'__522 = erased
-- Class.IsSet.IsSet._∉_
d__'8713'__524 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8713'__524 = erased
-- Class.IsSet._._∈_
d__'8712'__538 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8712'__538 = erased
-- Class.IsSet._._∉_
d__'8713'__540 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8713'__540 = erased
-- Class.IsSet._.toSet
d_toSet_542 :: T_IsSet_512 -> AgdaAny -> AgdaAny
d_toSet_542 v0 = coe d_toSet_520 (coe v0)
-- Class.IsSet.All-syntax
d_All'45'syntax_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_IsSet_512 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_550 = erased
-- Class.IsSet.Ex-syntax
d_Ex'45'syntax_562 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_IsSet_512 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_562 = erased
-- Class.IsSet._.dom
d_dom_580 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> () -> T_IsSet_512 -> AgdaAny -> AgdaAny
d_dom_580 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_580 v0 v4 v5
du_dom_580 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  T_IsSet_512 -> AgdaAny -> AgdaAny
du_dom_580 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_346 v0 (coe d_toSet_520 v1 v2)
-- Class.IsSet._.range
d_range_582 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> () -> T_IsSet_512 -> AgdaAny -> AgdaAny
d_range_582 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_582 v0 v4 v5
du_range_582 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  T_IsSet_512 -> AgdaAny -> AgdaAny
du_range_582 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_348 v0 (coe d_toSet_520 v1 v2)
-- Class.IsSet.IsSet-Set
d_IsSet'45'Set_584 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> T_IsSet_512
d_IsSet'45'Set_584 ~v0 ~v1 = du_IsSet'45'Set_584
du_IsSet'45'Set_584 :: T_IsSet_512
du_IsSet'45'Set_584 = coe C_constructor_534 (coe (\ v0 -> v0))
-- Class.IsSet.IsSet-Map
d_IsSet'45'Map_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> T_IsSet_512
d_IsSet'45'Map_588 ~v0 ~v1 ~v2 = du_IsSet'45'Map_588
du_IsSet'45'Map_588 :: T_IsSet_512
du_IsSet'45'Map_588
  = coe
      C_constructor_534 (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_560)
-- Class.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_590 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> T_IsSet_512
d_IsSet'45'TotalMap_590 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_590
du_IsSet'45'TotalMap_590 :: T_IsSet_512
du_IsSet'45'TotalMap_590
  = coe
      C_constructor_534
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)))
