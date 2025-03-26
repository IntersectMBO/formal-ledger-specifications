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

module MAlonzo.Code.Data.List.Sort.MergeSort where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.All.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Data.List.Relation.Unary.Sorted.TotalOrder.Properties
import qualified MAlonzo.Code.Data.List.Sort.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.List.Sort.MergeSort._.SortingAlgorithm
d_SortingAlgorithm_114 a0 a1 a2 a3 = ()
-- Data.List.Sort.MergeSort._.SortingAlgorithm.sort
d_sort_118 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108 ->
  [AgdaAny] -> [AgdaAny]
d_sort_118 v0
  = coe MAlonzo.Code.Data.List.Sort.Base.d_sort_120 (coe v0)
-- Data.List.Sort.MergeSort._.SortingAlgorithm.sort-↗
d_sort'45''8599'_120 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_120 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8599'_128 (coe v0)
-- Data.List.Sort.MergeSort._.SortingAlgorithm.sort-↭
d_sort'45''8621'_122 ::
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_sort'45''8621'_122 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.d_sort'45''8621'_124 (coe v0)
-- Data.List.Sort.MergeSort._.Sorted
d_Sorted_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> ()
d_Sorted_126 = erased
-- Data.List.Sort.MergeSort.mergePairs
d_mergePairs_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] -> [[AgdaAny]]
d_mergePairs_142 ~v0 ~v1 ~v2 v3 v4 = du_mergePairs_142 v3 v4
du_mergePairs_142 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] -> [[AgdaAny]]
du_mergePairs_142 v0 v1
  = case coe v1 of
      (:) v2 v3
        -> case coe v3 of
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Data.List.Base.du_merge_192
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                             (coe v0)))
                       (coe v2) (coe v4))
                    (coe du_mergePairs_142 (coe v0) (coe v5))
             _ -> coe v1
      _ -> coe v1
-- Data.List.Sort.MergeSort.length-mergePairs
d_length'45'mergePairs_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [[AgdaAny]] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'mergePairs_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_length'45'mergePairs_160 v6
du_length'45'mergePairs_160 ::
  [[AgdaAny]] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'mergePairs_160 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      (:) v1 v2
        -> case coe v2 of
             []
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_m'60'n'8658'm'60'1'43'n_3062
                       (coe du_length'45'mergePairs_160 (coe v4)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.MergeSort.mergeAll
d_mergeAll_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 -> [AgdaAny]
d_mergeAll_172 ~v0 ~v1 ~v2 v3 v4 ~v5 = du_mergeAll_172 v3 v4
du_mergeAll_172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] -> [AgdaAny]
du_mergeAll_172 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v3 of
             [] -> coe v2
             (:) v4 v5
               -> coe
                    du_mergeAll_172 (coe v0) (coe du_mergePairs_142 (coe v0) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.MergeSort.sort
d_sort_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> [AgdaAny]
d_sort_186 ~v0 ~v1 ~v2 v3 v4 = du_sort_186 v3 v4
du_sort_186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> [AgdaAny]
du_sort_186 v0 v1
  = coe
      du_mergeAll_172 (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286) (coe v1))
-- Data.List.Sort.MergeSort.mergePairs-↭
d_mergePairs'45''8621'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_mergePairs'45''8621'_192 ~v0 ~v1 ~v2 v3 v4
  = du_mergePairs'45''8621'_192 v3 v4
du_mergePairs'45''8621'_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_mergePairs'45''8621'_192 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50
      (:) v2 v3
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v6 v7 v8 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Data.List.Base.du_merge_192
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                                (coe v0)))
                          (coe v2) (coe v4))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concat_244
                          (coe du_mergePairs_142 (coe v0) (coe v5))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                          (coe MAlonzo.Code.Data.List.Base.du_concat_244 v5)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (\ v6 v7 v8 v9 v10 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                               v6 v7 v9 v10))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du_merge_192
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                                   (coe v0)))
                             (coe v2) (coe v4))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_concat_244
                             (coe du_mergePairs_142 (coe v0) (coe v5))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v4))
                          (coe MAlonzo.Code.Data.List.Base.du_concat_244 v5))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                             (coe MAlonzo.Code.Data.List.Base.du_concat_244 v5)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                          (\ v6 v7 v8 v9 v10 -> v10)
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32
                             (coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v4))
                             (coe MAlonzo.Code.Data.List.Base.du_concat_244 v5))
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                             (coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                (coe MAlonzo.Code.Data.List.Base.du_concat_244 v5)))
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                             (coe
                                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                (coe MAlonzo.Code.Data.List.Base.du_concat_244 v5)))
                          (let v6
                                 = \ v6 ->
                                     coe
                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2)
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                      (coe MAlonzo.Code.Data.List.Base.du_concat_244 v5)))))
                          erased)
                       (coe
                          MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'43''43''8314'_384
                          (coe
                             MAlonzo.Code.Data.List.Base.du_merge_192
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                                   (coe v0)))
                             (coe v2) (coe v4))
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v2) (coe v4))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_concat_244
                             (coe du_mergePairs_142 (coe v0) (coe v5)))
                          (coe
                             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_merge'45''8621'_868
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                                   (coe v0)))
                             (coe v2) (coe v4))
                          (coe du_mergePairs'45''8621'_192 (coe v0) (coe v5))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.MergeSort.mergeAll-↭
d_mergeAll'45''8621'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_mergeAll'45''8621'_206 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_mergeAll'45''8621'_206 v3 v4
du_mergeAll'45''8621'_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_mergeAll'45''8621'_206 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'refl_50
      (:) v2 v3
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'sym_56
                    (coe MAlonzo.Code.Data.List.Base.du_concat_244 v1)
                    (coe du_mergeAll_172 (coe v0) (coe v1))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.Properties.du_'43''43''45'identity'691'_734)
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v6 v7 v8 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
                    (coe
                       du_mergeAll_172 (coe v0) (coe du_mergePairs_142 (coe v0) (coe v1)))
                    (coe MAlonzo.Code.Data.List.Base.du_concat_244 v1)
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (\ v6 v7 v8 v9 v10 ->
                             coe
                               MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                               v6 v7 v9 v10))
                       (coe
                          du_mergeAll_172 (coe v0) (coe du_mergePairs_142 (coe v0) (coe v1)))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_concat_244
                          (coe du_mergePairs_142 (coe v0) (coe v1)))
                       (coe MAlonzo.Code.Data.List.Base.du_concat_244 v1)
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                             (\ v6 v7 v8 v9 v10 ->
                                coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                                  v6 v7 v9 v10))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_concat_244
                             (coe du_mergePairs_142 (coe v0) (coe v1)))
                          (coe MAlonzo.Code.Data.List.Base.du_concat_244 v1)
                          (coe MAlonzo.Code.Data.List.Base.du_concat_244 v1)
                          (let v6
                                 = \ v6 ->
                                     coe
                                       MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                   (coe v6))
                                (coe MAlonzo.Code.Data.List.Base.du_concat_244 v1)))
                          (coe du_mergePairs'45''8621'_192 (coe v0) (coe v1)))
                       (coe
                          du_mergeAll'45''8621'_206 (coe v0)
                          (coe du_mergePairs_142 (coe v0) (coe v1))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.MergeSort.sort-↭
d_sort'45''8621'_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_sort'45''8621'_220 ~v0 ~v1 ~v2 v3 v4
  = du_sort'45''8621'_220 v3 v4
du_sort'45''8621'_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
du_sort'45''8621'_220 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         du_mergeAll_172 (coe v0)
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286) (coe v1)))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8621''45''10217'_416
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (\ v2 v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.du_'8621''45'trans_72
                 v2 v3 v5 v6))
         (coe
            du_mergeAll_172 (coe v0)
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22
               (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286) (coe v1)))
         (coe
            MAlonzo.Code.Data.List.Base.du_concat_244
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22
               (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286) (coe v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6)
            (coe
               MAlonzo.Code.Data.List.Base.du_concat_244
               (coe
                  MAlonzo.Code.Data.List.Base.du_map_22
                  (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286) (coe v1)))
            v1 v1
            (let v2
                   = \ v2 ->
                       coe
                         MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.C_refl_20 in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            erased)
         (coe
            du_mergeAll'45''8621'_206 (coe v0)
            (coe
               MAlonzo.Code.Data.List.Base.du_map_22
               (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286) (coe v1))))
-- Data.List.Sort.MergeSort.mergePairs-↗
d_mergePairs'45''8599'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_mergePairs'45''8599'_226 ~v0 ~v1 ~v2 v3 v4 v5
  = du_mergePairs'45''8599'_226 v3 v4 v5
du_mergePairs'45''8599'_226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_mergePairs'45''8599'_226 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50 -> coe v2
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v5 v6
        -> case coe v1 of
             (:) v7 v8
               -> case coe v6 of
                    MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v5 v6
                    MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v11 v12
                      -> case coe v8 of
                           (:) v13 v14
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Unary.Sorted.TotalOrder.Properties.du_merge'8314'_720
                                     (coe v0) (coe v7) (coe v13) (coe v5) (coe v11))
                                  (coe du_mergePairs'45''8599'_226 (coe v0) (coe v14) (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.MergeSort.mergeAll-↗
d_mergeAll'45''8599'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_mergeAll'45''8599'_240 ~v0 ~v1 ~v2 v3 v4 ~v5 v6
  = du_mergeAll'45''8599'_240 v3 v4 v6
du_mergeAll'45''8599'_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_mergeAll'45''8599'_240 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50
        -> coe MAlonzo.Code.Data.List.Relation.Unary.Linked.C_'91''93'_30
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50 -> coe v5
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v9 v10
               -> coe
                    du_mergeAll'45''8599'_240 (coe v0)
                    (coe du_mergePairs_142 (coe v0) (coe v1))
                    (coe
                       du_mergePairs'45''8599'_226 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v5
                          (coe
                             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v9 v10)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Sort.MergeSort.sort-↗
d_sort'45''8599'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_258 ~v0 ~v1 ~v2 v3 v4
  = du_sort'45''8599'_258 v3 v4
du_sort'45''8599'_258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_sort'45''8599'_258 v0 v1
  = coe
      du_mergeAll'45''8599'_240 (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe v1))
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du_map'8314'_676
         (coe v1)
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.All.du_universal_516
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.List.Relation.Unary.Linked.C_'91''45''93'_34))
            (coe v1)))
-- Data.List.Sort.MergeSort.mergeSort
d_mergeSort_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108
d_mergeSort_264 ~v0 ~v1 ~v2 v3 = du_mergeSort_264 v3
du_mergeSort_264 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Data.List.Sort.Base.T_SortingAlgorithm_108
du_mergeSort_264 v0
  = coe
      MAlonzo.Code.Data.List.Sort.Base.C_SortingAlgorithm'46'constructor_1003
      (coe du_sort_186 (coe v0)) (coe du_sort'45''8621'_220 (coe v0))
      (coe du_sort'45''8599'_258 (coe v0))
