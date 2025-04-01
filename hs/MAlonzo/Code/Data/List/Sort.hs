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

module MAlonzo.Code.Data.List.Sort where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Data.List.Sort.Base
import qualified MAlonzo.Code.Data.List.Sort.MergeSort
import qualified MAlonzo.Code.Relation.Binary.Bundles

-- Data.List.Sort._.SortingAlgorithm
d_SortingAlgorithm_120 a0 a1 a2 a3 = ()
-- Data.List.Sort._.SortingAlgorithm.sort
d_sort_124 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_116 ->
  [AgdaAny] -> [AgdaAny]
d_sort_124 v0
  = coe MAlonzo.Code.Data.List.Sort.Base.d_sort_128 (coe v0)
-- Data.List.Sort._.SortingAlgorithm.sort-↗
d_sort'45''8599'_126 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_116 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_126 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8599'_136 (coe v0)
-- Data.List.Sort._.SortingAlgorithm.sort-↭
d_sort'45''8621'_128 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_116 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
d_sort'45''8621'_128 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8621'_132 (coe v0)
-- Data.List.Sort.sortingAlgorithm
d_sortingAlgorithm_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_116
d_sortingAlgorithm_134 ~v0 ~v1 ~v2 v3 = du_sortingAlgorithm_134 v3
du_sortingAlgorithm_134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_116
du_sortingAlgorithm_134 v0
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_mergeSort_272 (coe v0)
-- Data.List.Sort._.sort
d_sort_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  [AgdaAny] -> [AgdaAny]
d_sort_138 ~v0 ~v1 ~v2 v3 = du_sort_138 v3
du_sort_138 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  [AgdaAny] -> [AgdaAny]
du_sort_138 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort_128
      (coe du_sortingAlgorithm_134 (coe v0))
-- Data.List.Sort._.sort-↗
d_sort'45''8599'_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_140 ~v0 ~v1 ~v2 v3 = du_sort'45''8599'_140 v3
du_sort'45''8599'_140 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_sort'45''8599'_140 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8599'_136
      (coe du_sortingAlgorithm_134 (coe v0))
-- Data.List.Sort._.sort-↭
d_sort'45''8621'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
d_sort'45''8621'_142 ~v0 ~v1 ~v2 v3 = du_sort'45''8621'_142 v3
du_sort'45''8621'_142 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1076 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
du_sort'45''8621'_142 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8621'_132
      (coe du_sortingAlgorithm_134 (coe v0))
