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
d_SortingAlgorithm_112 a0 a1 a2 a3 = ()
-- Data.List.Sort._.SortingAlgorithm.sort
d_sort_116 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108 ->
  [AgdaAny] -> [AgdaAny]
d_sort_116 v0
  = coe MAlonzo.Code.Data.List.Sort.Base.d_sort_120 (coe v0)
-- Data.List.Sort._.SortingAlgorithm.sort-↗
d_sort'45''8599'_118 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_118 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8599'_128 (coe v0)
-- Data.List.Sort._.SortingAlgorithm.sort-↭
d_sort'45''8621'_120 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_sort'45''8621'_120 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8621'_124 (coe v0)
-- Data.List.Sort.sortingAlgorithm
d_sortingAlgorithm_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108
d_sortingAlgorithm_126 ~v0 ~v1 ~v2 v3 = du_sortingAlgorithm_126 v3
du_sortingAlgorithm_126 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108
du_sortingAlgorithm_126 v0
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_mergeSort_264 (coe v0)
-- Data.List.Sort._.sort
d_sort_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> [AgdaAny]
d_sort_130 ~v0 ~v1 ~v2 v3 = du_sort_130 v3
du_sort_130 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> [AgdaAny]
du_sort_130 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort_120
      (coe du_sortingAlgorithm_126 (coe v0))
-- Data.List.Sort._.sort-↗
d_sort'45''8599'_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_132 ~v0 ~v1 ~v2 v3 = du_sort'45''8599'_132 v3
du_sort'45''8599'_132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_sort'45''8599'_132 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8599'_128
      (coe du_sortingAlgorithm_126 (coe v0))
-- Data.List.Sort._.sort-↭
d_sort'45''8621'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_sort'45''8621'_134 ~v0 ~v1 ~v2 v3 = du_sort'45''8621'_134 v3
du_sort'45''8621'_134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_sort'45''8621'_134 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8621'_124
      (coe du_sortingAlgorithm_126 (coe v0))
