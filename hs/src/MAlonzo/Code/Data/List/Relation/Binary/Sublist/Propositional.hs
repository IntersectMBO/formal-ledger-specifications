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

module MAlonzo.Code.Data.List.Relation.Binary.Sublist.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.List.Relation.Binary.Sublist.Propositional._._,_∷-ub_
d__'44'_'8759''45'ub__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
d__'44'_'8759''45'ub__18 ~v0 ~v1 = du__'44'_'8759''45'ub__18
du__'44'_'8759''45'ub__18 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
du__'44'_'8759''45'ub__18 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'44'_'8759''45'ub__506
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v7 v8 v9 v10
-- Data.List.Relation.Binary.Sublist.Propositional._._∷ʳ₁_
d__'8759''691''8321'__24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
d__'8759''691''8321'__24 ~v0 ~v1 = du__'8759''691''8321'__24
du__'8759''691''8321'__24 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
du__'8759''691''8321'__24 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''691''8321'__276
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v5 v6
-- Data.List.Relation.Binary.Sublist.Propositional._._∷ʳ₂_
d__'8759''691''8322'__26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
d__'8759''691''8322'__26 ~v0 ~v1 = du__'8759''691''8322'__26
du__'8759''691''8322'__26 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
du__'8759''691''8322'__26 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''691''8322'__294
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v5 v6
-- Data.List.Relation.Binary.Sublist.Propositional._._∷ᵣ-ub_
d__'8759''7523''45'ub__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
d__'8759''7523''45'ub__32 ~v0 ~v1 = du__'8759''7523''45'ub__32
du__'8759''7523''45'ub__32 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
du__'8759''7523''45'ub__32 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''7523''45'ub__480
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v6 v7 v8
-- Data.List.Relation.Binary.Sublist.Propositional._._∷ₗ-ub_
d__'8759''8343''45'ub__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
d__'8759''8343''45'ub__38 ~v0 ~v1 = du__'8759''8343''45'ub__38
du__'8759''8343''45'ub__38 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
du__'8759''8343''45'ub__38 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''8343''45'ub__458
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v6 v7 v8
-- Data.List.Relation.Binary.Sublist.Propositional._.Sublist
d_Sublist_39 a0 a1 a2 a3 = ()
-- Data.List.Relation.Binary.Sublist.Propositional._._⊂_
d__'8834'__44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8834'__44 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._._⊃_
d__'8835'__46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8835'__46 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._._⊄_
d__'8836'__48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8836'__48 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._._⊅_
d__'8837'__50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8837'__50 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._._⊆_
d__'8838'__52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__52 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._._⊇_
d__'8839'__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8839'__54 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._._⊈_
d__'8840'__56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8840'__56 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._._⊉_
d__'8841'__58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8841'__58 = erased
-- Data.List.Relation.Binary.Sublist.Propositional._.Disjoint
d_Disjoint_60 a0 a1 a2 a3 a4 a5 a6 = ()
-- Data.List.Relation.Binary.Sublist.Propositional._.DisjointUnion
d_DisjointUnion_62 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Data.List.Relation.Binary.Sublist.Propositional._.RawPushout
d_RawPushout_64 a0 a1 a2 a3 a4 a5 a6 = ()
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound
d_UpperBound_68 a0 a1 a2 a3 a4 a5 a6 = ()
-- Data.List.Relation.Binary.Sublist.Propositional._.fromAny
d_fromAny_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_fromAny_78 ~v0 ~v1 = du_fromAny_78
du_fromAny_78 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_fromAny_78 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_fromAny_74
      v1 v2
-- Data.List.Relation.Binary.Sublist.Propositional._.map
d_map_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_map_80 ~v0 ~v1 = du_map_80
du_map_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_map_80 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_map_32
      v2 v3 v4 v5
-- Data.List.Relation.Binary.Sublist.Propositional._.minimum
d_minimum_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_minimum_82 ~v0 ~v1 = du_minimum_82
du_minimum_82 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_minimum_82
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
-- Data.List.Relation.Binary.Sublist.Propositional._.toAny
d_toAny_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_toAny_84 ~v0 ~v1 = du_toAny_84
du_toAny_84 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_toAny_84 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_toAny_60
      v2 v3
-- Data.List.Relation.Binary.Sublist.Propositional._.∷-rpo
d_'8759''45'rpo_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
d_'8759''45'rpo_86 ~v0 ~v1 = du_'8759''45'rpo_86
du_'8759''45'rpo_86 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
du_'8759''45'rpo_86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8759''45'rpo_320
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v0 v1 v2 v8 v9 v10
-- Data.List.Relation.Binary.Sublist.Propositional._.∷ₙ-ub
d_'8759''8345''45'ub_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
d_'8759''8345''45'ub_88 ~v0 ~v1 = du_'8759''8345''45'ub_88
du_'8759''8345''45'ub_88 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
du_'8759''8345''45'ub_88 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8759''8345''45'ub_438
      v6
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-disjoint-union
d_'8838''45'disjoint'45'union_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
d_'8838''45'disjoint'45'union_90 ~v0 ~v1
  = du_'8838''45'disjoint'45'union_90
du_'8838''45'disjoint'45'union_90 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
du_'8838''45'disjoint'45'union_90 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'disjoint'45'union_566
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v0 v1 v2 v3 v4
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-joinˡ
d_'8838''45'join'737'_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'join'737'_92 ~v0 ~v1 = du_'8838''45'join'737'_92
du_'8838''45'join'737'_92 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'join'737'_92
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'join'737'_374
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-pushoutˡ
d_'8838''45'pushout'737'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
d_'8838''45'pushout'737'_94 ~v0 ~v1 = du_'8838''45'pushout'737'_94
du_'8838''45'pushout'737'_94 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238
du_'8838''45'pushout'737'_94
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'pushout'737'_338
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Data.List.Relation.Binary.Sublist.Propositional._.refl
d_refl_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_refl_96 ~v0 ~v1 = du_refl_96
du_refl_96 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_refl_96
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402 in
    coe
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
-- Data.List.Relation.Binary.Sublist.Propositional._.trans
d_trans_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_trans_98 ~v0 ~v1 = du_trans_98
du_trans_98 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_trans_98
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402 in
    coe
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1140
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-upper-bound
d_'8838''45'upper'45'bound_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
d_'8838''45'upper'45'bound_100 ~v0 ~v1
  = du_'8838''45'upper'45'bound_100
du_'8838''45'upper'45'bound_100 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396
du_'8838''45'upper'45'bound_100
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'upper'45'bound_524
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Data.List.Relation.Binary.Sublist.Propositional._.RawPushout.leg₁
d_leg'8321'_124 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_leg'8321'_124 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_leg'8321'_258
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.RawPushout.leg₂
d_leg'8322'_126 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_leg'8322'_126 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_leg'8322'_260
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.RawPushout.upperBound
d_upperBound_128 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_238 ->
  [AgdaAny]
d_upperBound_128 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_upperBound_256
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.inj₁
d_inj'8321'_132 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_inj'8321'_132 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_inj'8321'_420
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.inj₂
d_inj'8322'_134 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_inj'8322'_134 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_inj'8322'_422
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.sub
d_sub_136 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_sub_136 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_sub_418
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.theUpperBound
d_theUpperBound_138 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_396 ->
  [AgdaAny]
d_theUpperBound_138 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_theUpperBound_416
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.lookup
d_lookup_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup_152 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_lookup_152 v4 v5
du_lookup_152 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_lookup_152 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_lookup_98
      (coe (\ v2 v3 v4 v5 -> v5)) (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-reflexive
d_'8838''45'reflexive_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'reflexive_154 ~v0 ~v1 v2 ~v3 ~v4
  = du_'8838''45'reflexive_154 v2
du_'8838''45'reflexive_154 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'reflexive_154 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
      erased (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-antisym
d_'8838''45'antisym_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'antisym_156 = erased
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-isPreorder
d_'8838''45'isPreorder_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8838''45'isPreorder_162 ~v0 ~v1 = du_'8838''45'isPreorder_162
du_'8838''45'isPreorder_162 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'8838''45'isPreorder_162
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8838''45'reflexive_154 v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1140
         erased)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-isPartialOrder
d_'8838''45'isPartialOrder_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8838''45'isPartialOrder_164 ~v0 ~v1
  = du_'8838''45'isPartialOrder_164
du_'8838''45'isPartialOrder_164 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'8838''45'isPartialOrder_164
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe du_'8838''45'isPreorder_162) erased
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-preorder
d_'8838''45'preorder_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8838''45'preorder_166 ~v0 ~v1 = du_'8838''45'preorder_166
du_'8838''45'preorder_166 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8838''45'preorder_166
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe du_'8838''45'isPreorder_162)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-poset
d_'8838''45'poset_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'8838''45'poset_168 ~v0 ~v1 = du_'8838''45'poset_168
du_'8838''45'poset_168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
du_'8838''45'poset_168
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      (coe du_'8838''45'isPartialOrder_164)
-- Data.List.Relation.Binary.Sublist.Propositional.Separation
d_Separation_180 a0 a1 a2 a3 a4 a5 a6 = ()
data T_Separation_180
  = C_constructor_216 [AgdaAny]
                      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
                      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
                      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.inflation
d_inflation_204 :: T_Separation_180 -> [AgdaAny]
d_inflation_204 v0
  = case coe v0 of
      C_constructor_216 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separator₁
d_separator'8321'_206 ::
  T_Separation_180 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separator'8321'_206 v0
  = case coe v0 of
      C_constructor_216 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separator₂
d_separator'8322'_208 ::
  T_Separation_180 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separator'8322'_208 v0
  = case coe v0 of
      C_constructor_216 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separated₁
d_separated'8321'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_180 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separated'8321'_210 ~v0 ~v1 v2 ~v3 v4 v5 ~v6 v7
  = du_separated'8321'_210 v2 v4 v5 v7
du_separated'8321'_210 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_180 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_separated'8321'_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1140
      erased (coe v0) (coe v1) (coe d_inflation_204 (coe v3)) (coe v2)
      (coe d_separator'8321'_206 (coe v3))
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separated₂
d_separated'8322'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_180 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separated'8322'_212 ~v0 ~v1 ~v2 v3 v4 ~v5 v6 v7
  = du_separated'8322'_212 v3 v4 v6 v7
du_separated'8322'_212 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_180 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_separated'8322'_212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1140
      erased (coe v0) (coe v1) (coe d_inflation_204 (coe v3)) (coe v2)
      (coe d_separator'8322'_208 (coe v3))
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.disjoint
d_disjoint_214 ::
  T_Separation_180 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_disjoint_214 v0
  = case coe v0 of
      C_constructor_216 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.[]-Sep
d_'91''93''45'Sep_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Separation_180
d_'91''93''45'Sep_218 ~v0 ~v1 = du_'91''93''45'Sep_218
du_'91''93''45'Sep_218 :: T_Separation_180
du_'91''93''45'Sep_218
  = coe
      C_constructor_216
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132)
-- Data.List.Relation.Binary.Sublist.Propositional._∷ₙ-Sep_
d__'8759''8345''45'Sep__232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny -> T_Separation_180 -> T_Separation_180
d__'8759''8345''45'Sep__232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du__'8759''8345''45'Sep__232 v7 v8
du__'8759''8345''45'Sep__232 ::
  AgdaAny -> T_Separation_180 -> T_Separation_180
du__'8759''8345''45'Sep__232 v0 v1
  = case coe v1 of
      C_constructor_216 v2 v3 v4 v5
        -> coe
             C_constructor_216
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased v3)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional._∷ₗ-Sep_
d__'8759''8343''45'Sep__258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_Separation_180 -> T_Separation_180
d__'8759''8343''45'Sep__258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
                            v10
  = du__'8759''8343''45'Sep__258 v7 v10
du__'8759''8343''45'Sep__258 ::
  AgdaAny -> T_Separation_180 -> T_Separation_180
du__'8759''8343''45'Sep__258 v0 v1
  = case coe v1 of
      C_constructor_216 v2 v3 v4 v5
        -> coe
             C_constructor_216
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased v3)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional._∷ᵣ-Sep_
d__'8759''7523''45'Sep__282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_Separation_180 -> T_Separation_180
d__'8759''7523''45'Sep__282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
                            v10
  = du__'8759''7523''45'Sep__282 v7 v10
du__'8759''7523''45'Sep__282 ::
  AgdaAny -> T_Separation_180 -> T_Separation_180
du__'8759''7523''45'Sep__282 v0 v1
  = case coe v1 of
      C_constructor_216 v2 v3 v4 v5
        -> coe
             C_constructor_216
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased v3)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased v4)
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.∷-Sepˡ
d_'8759''45'Sep'737'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_Separation_180 -> T_Separation_180
d_'8759''45'Sep'737'_310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
                         ~v10 ~v11 v12
  = du_'8759''45'Sep'737'_310 v7 v12
du_'8759''45'Sep'737'_310 ::
  AgdaAny -> T_Separation_180 -> T_Separation_180
du_'8759''45'Sep'737'_310 v0 v1
  = case coe v1 of
      C_constructor_216 v2 v3 v4 v5
        -> coe
             C_constructor_216
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2)))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                   erased v3))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                erased
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                   v4))
             (coe
                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                (coe
                   MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                   v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.separateˡ
d_separate'737'_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_180
d_separate'737'_328 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_separate'737'_328 v2 v3 v4 v5 v6
du_separate'737'_328 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_180
du_separate'737'_328 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe seq (coe v4) (coe du_'91''93''45'Sep_218)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v14
                      -> coe
                           du__'8759''8345''45'Sep__232 (coe v9)
                           (coe
                              du_separate'737'_328 (coe v0) (coe v1) (coe v10) (coe v8)
                              (coe v14))
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v15 v16
                      -> case coe v1 of
                           (:) v17 v18
                             -> coe
                                  du__'8759''7523''45'Sep__282 (coe v17)
                                  (coe
                                     du_separate'737'_328 (coe v0) (coe v18) (coe v10) (coe v8)
                                     (coe v16))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v9 v10
        -> case coe v0 of
             (:) v11 v12
               -> case coe v2 of
                    (:) v13 v14
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v18
                             -> coe
                                  du__'8759''8343''45'Sep__258 (coe v11)
                                  (coe
                                     du_separate'737'_328 (coe v12) (coe v1) (coe v14) (coe v10)
                                     (coe v18))
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v19 v20
                             -> case coe v1 of
                                  (:) v21 v22
                                    -> coe
                                         du_'8759''45'Sep'737'_310 (coe v11)
                                         (coe
                                            du_separate'737'_328 (coe v12) (coe v22) (coe v14)
                                            (coe v10) (coe v20))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
