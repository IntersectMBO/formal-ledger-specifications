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

module MAlonzo.Code.Data.List.Sort.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.List.Sort.Base._.Sorted
d_Sorted_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] -> ()
d_Sorted_104 = erased
-- Data.List.Sort.Base.S._↭_
d__'8621'__118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8621'__118 = erased
-- Data.List.Sort.Base.SortingAlgorithm
d_SortingAlgorithm_236 a0 a1 a2 a3 = ()
data T_SortingAlgorithm_236
  = C_constructor_264 ([AgdaAny] -> [AgdaAny])
                      ([AgdaAny] ->
                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34)
                      ([AgdaAny] ->
                       MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28)
-- Data.List.Sort.Base.SortingAlgorithm.sort
d_sort_248 :: T_SortingAlgorithm_236 -> [AgdaAny] -> [AgdaAny]
d_sort_248 v0
  = case coe v0 of
      C_constructor_264 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.Base.SortingAlgorithm.sort-↭
d_sort'45''8621'_252 ::
  T_SortingAlgorithm_236 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
d_sort'45''8621'_252 v0
  = case coe v0 of
      C_constructor_264 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.Base.SortingAlgorithm.sort-↗
d_sort'45''8599'_256 ::
  T_SortingAlgorithm_236 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_sort'45''8599'_256 v0
  = case coe v0 of
      C_constructor_264 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.Base.SortingAlgorithm.sort-↭ₛ
d_sort'45''8621''8347'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  T_SortingAlgorithm_236 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32
d_sort'45''8621''8347'_260 ~v0 ~v1 ~v2 v3 v4 v5
  = du_sort'45''8621''8347'_260 v3 v4 v5
du_sort'45''8621''8347'_260 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  T_SortingAlgorithm_236 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32
du_sort'45''8621''8347'_260 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_map_122
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                       (coe v0)))))
           v3)
      (coe d_sort_248 v1 v2) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''8658''8621''8347'_364
         (coe d_sort_248 v1 v2) v2 (coe d_sort'45''8621'_252 v1 v2))
