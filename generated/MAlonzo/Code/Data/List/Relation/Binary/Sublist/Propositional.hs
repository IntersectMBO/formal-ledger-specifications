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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
du__'44'_'8759''45'ub__18 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'44'_'8759''45'ub__496
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
d__'8759''691''8321'__24 ~v0 ~v1 = du__'8759''691''8321'__24
du__'8759''691''8321'__24 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
du__'8759''691''8321'__24 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''691''8321'__268
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
d__'8759''691''8322'__26 ~v0 ~v1 = du__'8759''691''8322'__26
du__'8759''691''8322'__26 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
du__'8759''691''8322'__26 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''691''8322'__286
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
du__'8759''7523''45'ub__32 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''7523''45'ub__470
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
du__'8759''8343''45'ub__38 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du__'8759''8343''45'ub__448
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
d_UpperBound_66 a0 a1 a2 a3 a4 a5 a6 = ()
-- Data.List.Relation.Binary.Sublist.Propositional._.fromAny
d_fromAny_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_fromAny_74 ~v0 ~v1 = du_fromAny_74
du_fromAny_74 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_fromAny_74 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_fromAny_74
      v1 v2
-- Data.List.Relation.Binary.Sublist.Propositional._.map
d_map_76 ::
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
d_map_76 ~v0 ~v1 = du_map_76
du_map_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_map_76 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_map_32
      v2 v3 v4 v5
-- Data.List.Relation.Binary.Sublist.Propositional._.minimum
d_minimum_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_minimum_78 ~v0 ~v1 = du_minimum_78
du_minimum_78 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_minimum_78
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
-- Data.List.Relation.Binary.Sublist.Propositional._.toAny
d_toAny_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_toAny_80 ~v0 ~v1 = du_toAny_80
du_toAny_80 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_toAny_80 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_toAny_60
      v2 v3
-- Data.List.Relation.Binary.Sublist.Propositional._.∷-rpo
d_'8759''45'rpo_82 ::
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
d_'8759''45'rpo_82 ~v0 ~v1 = du_'8759''45'rpo_82
du_'8759''45'rpo_82 ::
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
du_'8759''45'rpo_82 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8759''45'rpo_312
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v0 v1 v2 v8 v9 v10
-- Data.List.Relation.Binary.Sublist.Propositional._.∷ₙ-ub
d_'8759''8345''45'ub_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
d_'8759''8345''45'ub_84 ~v0 ~v1 = du_'8759''8345''45'ub_84
du_'8759''8345''45'ub_84 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
du_'8759''8345''45'ub_84 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8759''8345''45'ub_428
      v6
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-disjoint-union
d_'8838''45'disjoint'45'union_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
d_'8838''45'disjoint'45'union_86 ~v0 ~v1
  = du_'8838''45'disjoint'45'union_86
du_'8838''45'disjoint'45'union_86 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
du_'8838''45'disjoint'45'union_86 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'disjoint'45'union_556
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      v0 v1 v2 v3 v4
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-joinˡ
d_'8838''45'join'737'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'join'737'_88 ~v0 ~v1 = du_'8838''45'join'737'_88
du_'8838''45'join'737'_88 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'join'737'_88
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'join'737'_366
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-pushoutˡ
d_'8838''45'pushout'737'_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
d_'8838''45'pushout'737'_90 ~v0 ~v1 = du_'8838''45'pushout'737'_90
du_'8838''45'pushout'737'_90 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232
du_'8838''45'pushout'737'_90
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'pushout'737'_330
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Data.List.Relation.Binary.Sublist.Propositional._.refl
d_refl_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_refl_92 ~v0 ~v1 = du_refl_92
du_refl_92 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_refl_92
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402 in
    coe
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1114
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.List.Relation.Binary.Sublist.Propositional._.trans
d_trans_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_trans_94 ~v0 ~v1 = du_trans_94
du_trans_94 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_trans_94
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402 in
    coe
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1138
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))))
-- Data.List.Relation.Binary.Sublist.Propositional._.⊆-upper-bound
d_'8838''45'upper'45'bound_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
d_'8838''45'upper'45'bound_96 ~v0 ~v1
  = du_'8838''45'upper'45'bound_96
du_'8838''45'upper'45'bound_96 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388
du_'8838''45'upper'45'bound_96
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'upper'45'bound_514
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Data.List.Relation.Binary.Sublist.Propositional._.RawPushout.leg₁
d_leg'8321'_120 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_leg'8321'_120 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_leg'8321'_252
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.RawPushout.leg₂
d_leg'8322'_122 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_leg'8322'_122 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_leg'8322'_254
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.RawPushout.upperBound
d_upperBound_124 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_RawPushout_232 ->
  [AgdaAny]
d_upperBound_124 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_upperBound_250
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.inj₁
d_inj'8321'_128 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_inj'8321'_128 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_inj'8321'_412
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.inj₂
d_inj'8322'_130 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_inj'8322'_130 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_inj'8322'_414
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.sub
d_sub_132 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_sub_132 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_sub_410
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.UpperBound.theUpperBound
d_theUpperBound_134 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.T_UpperBound_388 ->
  [AgdaAny]
d_theUpperBound_134 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.d_theUpperBound_408
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional._.lookup
d_lookup_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup_148 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_lookup_148 v4 v5
du_lookup_148 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_lookup_148 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_lookup_98
      (coe (\ v2 v3 v4 v5 -> v5)) (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-reflexive
d_'8838''45'reflexive_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'reflexive_150 ~v0 ~v1 v2 ~v3 ~v4
  = du_'8838''45'reflexive_150 v2
du_'8838''45'reflexive_150 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'reflexive_150 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1114
      erased (coe v0)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-antisym
d_'8838''45'antisym_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'antisym_152 = erased
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-isPreorder
d_'8838''45'isPreorder_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_158 ~v0 ~v1 = du_'8838''45'isPreorder_158
du_'8838''45'isPreorder_158 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_'8838''45'isPreorder_158
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8838''45'reflexive_150 v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1138
         erased)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-isPartialOrder
d_'8838''45'isPartialOrder_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'isPartialOrder_160 ~v0 ~v1
  = du_'8838''45'isPartialOrder_160
du_'8838''45'isPartialOrder_160 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8838''45'isPartialOrder_160
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9853
      (coe du_'8838''45'isPreorder_158) erased
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-preorder
d_'8838''45'preorder_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'preorder_162 ~v0 ~v1 = du_'8838''45'preorder_162
du_'8838''45'preorder_162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8838''45'preorder_162
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2267
      (coe du_'8838''45'isPreorder_158)
-- Data.List.Relation.Binary.Sublist.Propositional.⊆-poset
d_'8838''45'poset_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_'8838''45'poset_164 ~v0 ~v1 = du_'8838''45'poset_164
du_'8838''45'poset_164 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
du_'8838''45'poset_164
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6389
      (coe du_'8838''45'isPartialOrder_160)
-- Data.List.Relation.Binary.Sublist.Propositional.Separation
d_Separation_176 a0 a1 a2 a3 a4 a5 a6 = ()
data T_Separation_176
  = C_Separation'46'constructor_4969 [AgdaAny]
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
                                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.inflation
d_inflation_200 :: T_Separation_176 -> [AgdaAny]
d_inflation_200 v0
  = case coe v0 of
      C_Separation'46'constructor_4969 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separator₁
d_separator'8321'_202 ::
  T_Separation_176 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separator'8321'_202 v0
  = case coe v0 of
      C_Separation'46'constructor_4969 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separator₂
d_separator'8322'_204 ::
  T_Separation_176 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separator'8322'_204 v0
  = case coe v0 of
      C_Separation'46'constructor_4969 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separated₁
d_separated'8321'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_176 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separated'8321'_206 ~v0 ~v1 v2 ~v3 v4 v5 ~v6 v7
  = du_separated'8321'_206 v2 v4 v5 v7
du_separated'8321'_206 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_176 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_separated'8321'_206 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402 in
    coe
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1138
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4)))
         (coe v0) (coe v1) (coe d_inflation_200 (coe v3)) (coe v2)
         (coe d_separator'8321'_202 (coe v3)))
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.separated₂
d_separated'8322'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_176 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_separated'8322'_208 ~v0 ~v1 ~v2 v3 v4 ~v5 v6 v7
  = du_separated'8322'_208 v3 v4 v6 v7
du_separated'8322'_208 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_176 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_separated'8322'_208 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402 in
    coe
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1138
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v4)))
         (coe v0) (coe v1) (coe d_inflation_200 (coe v3)) (coe v2)
         (coe d_separator'8322'_204 (coe v3)))
-- Data.List.Relation.Binary.Sublist.Propositional.Separation.disjoint
d_disjoint_210 ::
  T_Separation_176 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_disjoint_210 v0
  = case coe v0 of
      C_Separation'46'constructor_4969 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Propositional.[]-Sep
d_'91''93''45'Sep_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Separation_176
d_'91''93''45'Sep_212 ~v0 ~v1 = du_'91''93''45'Sep_212
du_'91''93''45'Sep_212 :: T_Separation_176
du_'91''93''45'Sep_212
  = coe
      C_Separation'46'constructor_4969
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132)
-- Data.List.Relation.Binary.Sublist.Propositional._∷ₙ-Sep_
d__'8759''8345''45'Sep__226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny -> T_Separation_176 -> T_Separation_176
d__'8759''8345''45'Sep__226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du__'8759''8345''45'Sep__226 v7 v8
du__'8759''8345''45'Sep__226 ::
  AgdaAny -> T_Separation_176 -> T_Separation_176
du__'8759''8345''45'Sep__226 v0 v1
  = case coe v1 of
      C_Separation'46'constructor_4969 v2 v3 v4 v5
        -> coe
             C_Separation'46'constructor_4969
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
d__'8759''8343''45'Sep__252 ::
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
  T_Separation_176 -> T_Separation_176
d__'8759''8343''45'Sep__252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
                            v10
  = du__'8759''8343''45'Sep__252 v7 v10
du__'8759''8343''45'Sep__252 ::
  AgdaAny -> T_Separation_176 -> T_Separation_176
du__'8759''8343''45'Sep__252 v0 v1
  = case coe v1 of
      C_Separation'46'constructor_4969 v2 v3 v4 v5
        -> coe
             C_Separation'46'constructor_4969
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
d__'8759''7523''45'Sep__276 ::
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
  T_Separation_176 -> T_Separation_176
d__'8759''7523''45'Sep__276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
                            v10
  = du__'8759''7523''45'Sep__276 v7 v10
du__'8759''7523''45'Sep__276 ::
  AgdaAny -> T_Separation_176 -> T_Separation_176
du__'8759''7523''45'Sep__276 v0 v1
  = case coe v1 of
      C_Separation'46'constructor_4969 v2 v3 v4 v5
        -> coe
             C_Separation'46'constructor_4969
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
d_'8759''45'Sep'737'_304 ::
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
  T_Separation_176 -> T_Separation_176
d_'8759''45'Sep'737'_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8 ~v9
                         ~v10 ~v11 v12
  = du_'8759''45'Sep'737'_304 v7 v12
du_'8759''45'Sep'737'_304 ::
  AgdaAny -> T_Separation_176 -> T_Separation_176
du_'8759''45'Sep'737'_304 v0 v1
  = case coe v1 of
      C_Separation'46'constructor_4969 v2 v3 v4 v5
        -> coe
             C_Separation'46'constructor_4969
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
d_separate'737'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_176
d_separate'737'_322 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_separate'737'_322 v2 v3 v4 v5 v6
du_separate'737'_322 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  T_Separation_176
du_separate'737'_322 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C_'91''93'_28
        -> coe seq (coe v4) (coe du_'91''93''45'Sep_212)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v14
                      -> coe
                           du__'8759''8345''45'Sep__226 (coe v9)
                           (coe
                              du_separate'737'_322 (coe v0) (coe v1) (coe v10) (coe v8)
                              (coe v14))
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v15 v16
                      -> case coe v1 of
                           (:) v17 v18
                             -> coe
                                  du__'8759''7523''45'Sep__276 (coe v17)
                                  (coe
                                     du_separate'737'_322 (coe v0) (coe v18) (coe v10) (coe v8)
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
                                  du__'8759''8343''45'Sep__252 (coe v11)
                                  (coe
                                     du_separate'737'_322 (coe v12) (coe v1) (coe v14) (coe v10)
                                     (coe v18))
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v19 v20
                             -> case coe v1 of
                                  (:) v21 v22
                                    -> coe
                                         du_'8759''45'Sep'737'_304 (coe v11)
                                         (coe
                                            du_separate'737'_322 (coe v12) (coe v22) (coe v14)
                                            (coe v10) (coe v20))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
