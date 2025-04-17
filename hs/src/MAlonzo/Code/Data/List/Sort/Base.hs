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
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Relation.Binary.Bundles

-- Data.List.Sort.Base._.Sorted
d_Sorted_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  [AgdaAny] -> ()
d_Sorted_104 = erased
-- Data.List.Sort.Base.SortingAlgorithm
d_SortingAlgorithm_116 a0 a1 a2 a3 = ()
data T_SortingAlgorithm_116
  = C_SortingAlgorithm'46'constructor_1039 ([AgdaAny] -> [AgdaAny])
                                           ([AgdaAny] ->
                                            MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34)
                                           ([AgdaAny] ->
                                            MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26)
-- Data.List.Sort.Base.SortingAlgorithm.sort
d_sort_128 :: T_SortingAlgorithm_116 -> [AgdaAny] -> [AgdaAny]
d_sort_128 v0
  = case coe v0 of
      C_SortingAlgorithm'46'constructor_1039 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.Base.SortingAlgorithm.sort-↭
d_sort'45''8621'_132 ::
  T_SortingAlgorithm_116 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34
d_sort'45''8621'_132 v0
  = case coe v0 of
      C_SortingAlgorithm'46'constructor_1039 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.Base.SortingAlgorithm.sort-↗
d_sort'45''8599'_136 ::
  T_SortingAlgorithm_116 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_136 v0
  = case coe v0 of
      C_SortingAlgorithm'46'constructor_1039 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
