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

module MAlonzo.Code.Data.List.Relation.Unary.Sorted.TotalOrder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.List.Relation.Unary.Sorted.TotalOrder.Sorted
d_Sorted_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  [AgdaAny] -> ()
d_Sorted_98 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder._.head
d_head_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 -> AgdaAny
d_head_112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_head_112
du_head_112 ::
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 -> AgdaAny
du_head_112
  = coe MAlonzo.Code.Data.List.Relation.Unary.Linked.du_head_58
-- Data.List.Relation.Unary.Sorted.TotalOrder._.tail
d_tail_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_tail_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_tail_114
du_tail_114 ::
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_tail_114
  = coe MAlonzo.Code.Data.List.Relation.Unary.Linked.du_tail_68
-- Data.List.Relation.Unary.Sorted.TotalOrder.sorted?
d_sorted'63'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sorted'63'_116 ~v0 ~v1 ~v2 ~v3 = du_sorted'63'_116
du_sorted'63'_116 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_sorted'63'_116
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.du_linked'63'_186
-- Data.List.Relation.Unary.Sorted.TotalOrder.irrelevant
d_irrelevant_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_irrelevant_118 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.satisfiable
d_satisfiable_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfiable_120 ~v0 ~v1 ~v2 ~v3 = du_satisfiable_120
du_satisfiable_120 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfiable_120
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.du_satisfiable_218
