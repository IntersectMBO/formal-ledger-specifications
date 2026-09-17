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

module MAlonzo.Code.Data.List.Relation.Unary.Sorted.TotalOrder.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Fin.Permutation
import qualified MAlonzo.Code.Data.Fin.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Sorted.TotalOrder
import qualified MAlonzo.Code.Data.Maybe.Relation.Binary.Connected
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Properties.Setoid
import qualified MAlonzo.Code.Relation.Binary.Properties.TotalOrder
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.AllPairs⇒Sorted
d_AllPairs'8658'Sorted_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_AllPairs'8658'Sorted_128 ~v0 ~v1 ~v2 ~v3 v4
  = du_AllPairs'8658'Sorted_128 v4
du_AllPairs'8658'Sorted_128 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_AllPairs'8658'Sorted_128 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_AllPairs'8658'Linked_36
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.Sorted⇒AllPairs
d_Sorted'8658'AllPairs_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_Sorted'8658'AllPairs_132 ~v0 ~v1 ~v2 v3 v4
  = du_Sorted'8658'AllPairs_132 v3 v4
du_Sorted'8658'AllPairs_132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_Sorted'8658'AllPairs_132 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_Linked'8658'AllPairs_76
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_90
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                  (coe v0)))))
      (coe v1)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.O₁._≤_
d__'8804'__156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__156 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.map⁺
d_map'8314'_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_map'8314'_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_map'8314'_324 v6 v7 v8
du_map'8314'_324 ::
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_map'8314'_324 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_map'8314'_98
      (coe v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Linked.du_map_108 (coe v1)
         (coe v0) (coe v2))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.map⁻
d_map'8315'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_map'8315'_338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_map'8315'_338 v6 v7 v8
du_map'8315'_338 ::
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_map'8315'_338 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.du_map_108
      (coe (\ v3 v4 -> coe v1 v3 v4)) (coe v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_map'8315'_106
         (coe v0) (coe v2))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.++⁺
d_'43''43''8314'_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_'43''43''8314'_446 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'43''43''8314'_446 v4
du_'43''43''8314'_446 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_'43''43''8314'_446 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_'43''43''8314'_134
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyUpTo⁺₁
d_applyUpTo'8314''8321'_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_applyUpTo'8314''8321'_552 ~v0 ~v1 ~v2 ~v3
  = du_applyUpTo'8314''8321'_552
du_applyUpTo'8314''8321'_552 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_applyUpTo'8314''8321'_552 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyUpTo'8314''8321'_170
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyUpTo⁺₂
d_applyUpTo'8314''8322'_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_applyUpTo'8314''8322'_560 ~v0 ~v1 ~v2 ~v3
  = du_applyUpTo'8314''8322'_560
du_applyUpTo'8314''8322'_560 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_applyUpTo'8314''8322'_560 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyUpTo'8314''8322'_192
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyDownFrom⁺₁
d_applyDownFrom'8314''8321'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_applyDownFrom'8314''8321'_666 ~v0 ~v1 ~v2 ~v3
  = du_applyDownFrom'8314''8321'_666
du_applyDownFrom'8314''8321'_666 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_applyDownFrom'8314''8321'_666 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyDownFrom'8314''8321'_218
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyDownFrom⁺₂
d_applyDownFrom'8314''8322'_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_applyDownFrom'8314''8322'_674 ~v0 ~v1 ~v2 ~v3
  = du_applyDownFrom'8314''8322'_674
du_applyDownFrom'8314''8322'_674 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_applyDownFrom'8314''8322'_674 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyDownFrom'8314''8322'_240
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._._.totalOrder
d_totalOrder_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_totalOrder_694 ~v0 ~v1 ~v2 v3 = du_totalOrder_694 v3
du_totalOrder_694 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
du_totalOrder_694 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1182 (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.merge-con
d_merge'45'con_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
d_merge'45'con_706 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 v7 v8
  = du_merge'45'con_706 v3 v5 v6 v7 v8
du_merge'45'con_706 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
du_merge'45'con_706 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> case coe v2 of
             [] -> coe v3
             (:) v7 v8
               -> let v9
                        = coe
                            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
                               (coe v0))
                            v5 v7 in
                  coe
                    (case coe v9 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                         -> if coe v10
                              then coe seq (coe v11) (coe v3)
                              else coe seq (coe v11) (coe v4)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.merge⁺
d_merge'8314'_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_merge'8314'_768 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_merge'8314'_768 v3 v4 v5 v6 v7
du_merge'8314'_768 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_merge'8314'_768 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> case coe v2 of
             [] -> coe v3
             (:) v7 v8
               -> let v9
                        = coe
                            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
                               (coe v0))
                            v5 v7 in
                  coe
                    (let v10
                           = coe
                               du_merge'8314'_768 (coe v0) (coe v6) (coe v2)
                               (coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Linked.du_tail_70 (coe v3))
                               (coe v4) in
                     coe
                       (let v11
                              = coe
                                  du_merge'8314'_768 (coe v0) (coe v1) (coe v8) (coe v3)
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Unary.Linked.du_tail_70
                                     (coe v4)) in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                               -> if coe v12
                                    then case coe v13 of
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                             -> coe
                                                  MAlonzo.Code.Data.List.Relation.Unary.Linked.du__'8759''8242'__86
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_merge_192
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
                                                           (coe v0)))
                                                     (coe v6) (coe v2))
                                                  (coe
                                                     du_merge'45'con_706 (coe v0) (coe v6) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Relation.Unary.Linked.du_head'8242'_78
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just_50
                                                        v14))
                                                  (coe v10)
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    else coe
                                           seq (coe v13)
                                           (coe
                                              MAlonzo.Code.Data.List.Relation.Unary.Linked.du__'8759''8242'__86
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_merge_192
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
                                                       (coe v0)))
                                                 (coe v1) (coe v8))
                                              (coe
                                                 du_merge'45'con_706 (coe v0) (coe v1) (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just_50
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8816''8658''8805'_228
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1182
                                                          (coe v0))
                                                       (coe v5) (coe v7)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Relation.Unary.Linked.du_head'8242'_78
                                                    (coe v4)))
                                              (coe v11))
                             _ -> MAlonzo.RTE.mazUnreachableError)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.S
d_S_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_S_830 ~v0 ~v1 ~v2 v3 = du_S_830 v3
du_S_830 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_S_830 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_setoid_190
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_preorder_522
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_poset_1018
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_1182 (coe v0))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._._._⊆_
d__'8838'__834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__834 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷ʳ-DisjointUnion³_
d__'8759''691''45'DisjointUnion'179'__838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''691''45'DisjointUnion'179'__838 ~v0 ~v1 ~v2 ~v3
  = du__'8759''691''45'DisjointUnion'179'__838
du__'8759''691''45'DisjointUnion'179'__838 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''691''45'DisjointUnion'179'__838 v0 v1 v2 v3 v4 v5 v6 v7
                                           v8 v9 v10 v11 v12 v13 v14
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''691''45'DisjointUnion'179'__2260
      v14
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷₁-DisjointUnion³_
d__'8759''8321''45'DisjointUnion'179'__840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''8321''45'DisjointUnion'179'__840 ~v0 ~v1 ~v2 ~v3
  = du__'8759''8321''45'DisjointUnion'179'__840
du__'8759''8321''45'DisjointUnion'179'__840 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''8321''45'DisjointUnion'179'__840 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8321''45'DisjointUnion'179'__2304
      v13 v15 v16
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷₂-DisjointUnion³_
d__'8759''8322''45'DisjointUnion'179'__842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''8322''45'DisjointUnion'179'__842 ~v0 ~v1 ~v2 ~v3
  = du__'8759''8322''45'DisjointUnion'179'__842
du__'8759''8322''45'DisjointUnion'179'__842 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''8322''45'DisjointUnion'179'__842 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8322''45'DisjointUnion'179'__2348
      v13 v15 v16
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷₃-DisjointUnion³_
d__'8759''8323''45'DisjointUnion'179'__844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''8323''45'DisjointUnion'179'__844 ~v0 ~v1 ~v2 ~v3
  = du__'8759''8323''45'DisjointUnion'179'__844
du__'8759''8323''45'DisjointUnion'179'__844 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''8323''45'DisjointUnion'179'__844 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8323''45'DisjointUnion'179'__2392
      v13 v15 v16
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁺
d_'43''43''8314'_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314'_846 ~v0 ~v1 ~v2 ~v3 = du_'43''43''8314'_846
du_'43''43''8314'_846 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314'_846 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8314'_574
      v0 v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁺ʳ
d_'43''43''8314''691'_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314''691'_848 ~v0 ~v1 ~v2 ~v3
  = du_'43''43''8314''691'_848
du_'43''43''8314''691'_848 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314''691'_848
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8314''691'_572
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁺ˡ
d_'43''43''8314''737'_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314''737'_850 ~v0 ~v1 ~v2 ~v3
  = du_'43''43''8314''737'_850
du_'43''43''8314''737'_850 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314''737'_850 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8314''737'_568
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁻
d_'43''43''8315'_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8315'_852 ~v0 ~v1 ~v2 ~v3 = du_'43''43''8315'_852
du_'43''43''8315'_852 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8315'_852 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8315'_576
      v0 v1 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-irrefl
d_Disjoint'45'irrefl_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_Disjoint'45'irrefl_854 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-irrefl′
d_Disjoint'45'irrefl'8242'_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_Disjoint'45'irrefl'8242'_856 ~v0 ~v1 ~v2 ~v3
  = du_Disjoint'45'irrefl'8242'_856
du_Disjoint'45'irrefl'8242'_856 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_Disjoint'45'irrefl'8242'_856 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'45'irrefl'8242'_2016
      v1 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-irrelevant
d_Disjoint'45'irrelevant_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Disjoint'45'irrelevant_858 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-sym
d_Disjoint'45'sym_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_Disjoint'45'sym_860 ~v0 ~v1 ~v2 ~v3 = du_Disjoint'45'sym_860
du_Disjoint'45'sym_860 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_Disjoint'45'sym_860
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'45'sym_2076
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-[]ʳ
d_DisjointUnion'45''91''93''691'_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''691'_862 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'45''91''93''691'_862
du_DisjointUnion'45''91''93''691'_862 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''691'_862
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45''91''93''691'_2122
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-[]ˡ
d_DisjointUnion'45''91''93''737'_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''737'_864 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'45''91''93''737'_864
du_DisjointUnion'45''91''93''737'_864 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''737'_864
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45''91''93''737'_2098
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-fromAny∘toAny-∷ˡ⁻
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_866 ~v0
                                                               ~v1 ~v2 ~v3
  = du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_866
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_866 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_866 v0
                                                                v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_2146
      v1 v2 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-sym
d_DisjointUnion'45'sym_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'sym_868 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'45'sym_868
du_DisjointUnion'45'sym_868 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'sym_868
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45'sym_2052
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³
d_DisjointUnion'179'_870 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
                         a13 a14 a15 a16
  = ()
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion→Disjoint
d_DisjointUnion'8594'Disjoint_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_DisjointUnion'8594'Disjoint_874 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'8594'Disjoint_874
du_DisjointUnion'8594'Disjoint_874 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_DisjointUnion'8594'Disjoint_874
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'8594'Disjoint_1876
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint→DisjointUnion
d_Disjoint'8594'DisjointUnion_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Disjoint'8594'DisjointUnion_876 ~v0 ~v1 ~v2 ~v3
  = du_Disjoint'8594'DisjointUnion_876
du_Disjoint'8594'DisjointUnion_876 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_Disjoint'8594'DisjointUnion_876
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'8594'DisjointUnion_1904
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.[]⊆-irrelevant
d_'91''93''8838''45'irrelevant_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91''93''8838''45'irrelevant_878 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.[]⊆-universal
d_'91''93''8838''45'universal_880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'91''93''8838''45'universal_880 ~v0 ~v1 ~v2 ~v3
  = du_'91''93''8838''45'universal_880
du_'91''93''8838''45'universal_880 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'91''93''8838''45'universal_880
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'91''93''8838''45'universal_836
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.[x]⊆xs⤖x∈xs
d_'91'x'93''8838'xs'10518'x'8712'xs_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_1004
d_'91'x'93''8838'xs'10518'x'8712'xs_882 ~v0 ~v1 ~v2 ~v3
  = du_'91'x'93''8838'xs'10518'x'8712'xs_882
du_'91'x'93''8838'xs'10518'x'8712'xs_882 ::
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_1004
du_'91'x'93''8838'xs'10518'x'8712'xs_882 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'91'x'93''8838'xs'10518'x'8712'xs_866
      v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.all⊆concat
d_all'8838'concat_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [[AgdaAny]] -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_all'8838'concat_884 ~v0 ~v1 ~v2 v3 = du_all'8838'concat_884 v3
du_all'8838'concat_884 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [[AgdaAny]] -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_all'8838'concat_884 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_all'8838'concat_610
      (coe du_S_830 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.concat⁺
d_concat'8314'_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_concat'8314'_886 ~v0 ~v1 ~v2 ~v3 = du_concat'8314'_886
du_concat'8314'_886 ::
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_concat'8314'_886
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_concat'8314'_582
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.disjointUnion³
d_disjointUnion'179'_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d_disjointUnion'179'_888 ~v0 ~v1 ~v2 ~v3
  = du_disjointUnion'179'_888
du_disjointUnion'179'_888 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du_disjointUnion'179'_888
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_disjointUnion'179'_2430
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.disjoint⇒disjoint-to-union
d_disjoint'8658'disjoint'45'to'45'union_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_disjoint'8658'disjoint'45'to'45'union_890 ~v0 ~v1 ~v2 ~v3
  = du_disjoint'8658'disjoint'45'to'45'union_890
du_disjoint'8658'disjoint'45'to'45'union_890 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_disjoint'8658'disjoint'45'to'45'union_890
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_disjoint'8658'disjoint'45'to'45'union_2496
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop-⊆
d_drop'45''8838'_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'45''8838'_892 ~v0 ~v1 ~v2 v3 = du_drop'45''8838'_892 v3
du_drop'45''8838'_892 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'45''8838'_892 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'45''8838'_466
      (coe du_S_830 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.dropWhile-⊆
d_dropWhile'45''8838'_894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_dropWhile'45''8838'_894 ~v0 ~v1 ~v2 v3
  = du_dropWhile'45''8838'_894 v3
du_dropWhile'45''8838'_894 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_dropWhile'45''8838'_894 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_dropWhile'45''8838'_488
      (coe du_S_830 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.dropWhile⁺
d_dropWhile'8314'_896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_dropWhile'8314'_896 ~v0 ~v1 ~v2 v3 = du_dropWhile'8314'_896 v3
du_dropWhile'8314'_896 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_dropWhile'8314'_896 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_dropWhile'8314'_676
      (coe du_S_830 (coe v0)) v5 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop⁺
d_drop'8314'_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314'_898 ~v0 ~v1 ~v2 ~v3 = du_drop'8314'_898
du_drop'8314'_898 ::
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314'_898 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'8314'_624
      v0 v2 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop⁺-≥
d_drop'8314''45''8805'_900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8805'_900 ~v0 ~v1 ~v2 v3
  = du_drop'8314''45''8805'_900 v3
du_drop'8314''45''8805'_900 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8805'_900 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'8314''45''8805'_630
      (coe du_S_830 (coe v0)) v1 v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop⁺-⊆
d_drop'8314''45''8838'_902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8838'_902 ~v0 ~v1 ~v2 ~v3
  = du_drop'8314''45''8838'_902
du_drop'8314''45''8838'_902 ::
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8838'_902
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'8314''45''8838'_640
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.filter-⊆
d_filter'45''8838'_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'45''8838'_904 ~v0 ~v1 ~v2 v3 = du_filter'45''8838'_904 v3
du_filter'45''8838'_904 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'45''8838'_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_filter'45''8838'_494
      (coe du_S_830 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.filter⁺
d_filter'8314'_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'8314'_906 ~v0 ~v1 ~v2 ~v3 = du_filter'8314'_906
du_filter'8314'_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'8314'_906 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_filter'8314'_698
      v4 v5 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.filter⊆dropWhile
d_filter'8838'dropWhile_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'8838'dropWhile_908 ~v0 ~v1 ~v2 v3
  = du_filter'8838'dropWhile_908 v3
du_filter'8838'dropWhile_908 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'8838'dropWhile_908 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_filter'8838'dropWhile_514
      (coe du_S_830 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.from∈-injective
d_from'8712''45'injective_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from'8712''45'injective_910 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.length-mono-≤
d_length'45'mono'45''8804'_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'mono'45''8804'_912 ~v0 ~v1 ~v2 ~v3
  = du_length'45'mono'45''8804'_912
du_length'45'mono'45''8804'_912 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'mono'45''8804'_912
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_length'45'mono'45''8804'_830
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.map⁺
d_map'8314'_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_map'8314'_914 ~v0 ~v1 ~v2 ~v3 = du_map'8314'_914
du_map'8314'_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_map'8314'_914 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_map'8314'_554
      v3 v4 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.reverseAcc⁺
d_reverseAcc'8314'_916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverseAcc'8314'_916 ~v0 ~v1 ~v2 ~v3 = du_reverseAcc'8314'_916
du_reverseAcc'8314'_916 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverseAcc'8314'_916 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_reverseAcc'8314'_704
      v0 v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.reverse⁺
d_reverse'8314'_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8314'_918 ~v0 ~v1 ~v2 ~v3 = du_reverse'8314'_918
du_reverse'8314'_918 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8314'_918
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_reverse'8314'_708
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.reverse⁻
d_reverse'8315'_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8315'_920 ~v0 ~v1 ~v2 ~v3 = du_reverse'8315'_920
du_reverse'8315'_920 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8315'_920
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_reverse'8315'_710
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.shrinkDisjoint
d_shrinkDisjoint_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint_922 ~v0 ~v1 ~v2 ~v3 = du_shrinkDisjoint_922
du_shrinkDisjoint_922 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint_922
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_shrinkDisjoint_2640
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.shrinkDisjointʳ
d_shrinkDisjoint'691'_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint'691'_924 ~v0 ~v1 ~v2 ~v3
  = du_shrinkDisjoint'691'_924
du_shrinkDisjoint'691'_924 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint'691'_924
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_shrinkDisjoint'691'_986
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.shrinkDisjointˡ
d_shrinkDisjoint'737'_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint'737'_926 ~v0 ~v1 ~v2 ~v3
  = du_shrinkDisjoint'737'_926
du_shrinkDisjoint'737'_926 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint'737'_926
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_shrinkDisjoint'737'_942
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.tail-⊆
d_tail'45''8838'_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] -> MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_tail'45''8838'_928 ~v0 ~v1 ~v2 v3 = du_tail'45''8838'_928 v3
du_tail'45''8838'_928 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] -> MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_tail'45''8838'_928 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_tail'45''8838'_448
      (coe du_S_830 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.take-⊆
d_take'45''8838'_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'45''8838'_930 ~v0 ~v1 ~v2 v3 = du_take'45''8838'_930 v3
du_take'45''8838'_930 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'45''8838'_930 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_take'45''8838'_456
      (coe du_S_830 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.takeWhile-⊆
d_takeWhile'45''8838'_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'45''8838'_932 ~v0 ~v1 ~v2 v3
  = du_takeWhile'45''8838'_932 v3
du_takeWhile'45''8838'_932 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'45''8838'_932 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_takeWhile'45''8838'_482
      (coe du_S_830 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.takeWhile⁺
d_takeWhile'8314'_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'8314'_934 ~v0 ~v1 ~v2 v3 = du_takeWhile'8314'_934 v3
du_takeWhile'8314'_934 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'8314'_934 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_takeWhile'8314'_664
      (coe du_S_830 (coe v0)) v5 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.takeWhile⊆filter
d_takeWhile'8838'filter_936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'8838'filter_936 ~v0 ~v1 ~v2 v3
  = du_takeWhile'8838'filter_936 v3
du_takeWhile'8838'filter_936 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'8838'filter_936 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_takeWhile'8838'filter_508
      (coe du_S_830 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.take⁺
d_take'8314'_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'8314'_938 ~v0 ~v1 ~v2 v3 = du_take'8314'_938 v3
du_take'8314'_938 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'8314'_938 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_take'8314'_616
      (coe du_S_830 (coe v0)) v2 v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.to-≋
d_to'45''8779'_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_to'45''8779'_940 ~v0 ~v1 ~v2 ~v3 = du_to'45''8779'_940
du_to'45''8779'_940 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_to'45''8779'_940
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_to'45''8779'_832
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.to∈-injective
d_to'8712''45'injective_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8712''45'injective_942 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.to∈∘from∈≗id
d_to'8712''8728'from'8712''8791'id_944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8712''8728'from'8712''8791'id_944 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.weakenDisjoint
d_weakenDisjoint_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_weakenDisjoint_946 ~v0 ~v1 ~v2 ~v3 = du_weakenDisjoint_946
du_weakenDisjoint_946 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_weakenDisjoint_946
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_weakenDisjoint_2592
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.weakenDisjointUnion
d_weakenDisjointUnion_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_weakenDisjointUnion_948 ~v0 ~v1 ~v2 ~v3
  = du_weakenDisjointUnion_948
du_weakenDisjointUnion_948 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_weakenDisjointUnion_948
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_weakenDisjointUnion_2548
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.xs∈xss⇒xs⊆concat[xss]
d_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_950 ~v0 ~v1 ~v2 v3
  = du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_950 v3
du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_950 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_950 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_594
      (coe du_S_830 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.ʳ++⁺
d_'691''43''43''8314'_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'691''43''43''8314'_952 ~v0 ~v1 ~v2 ~v3
  = du_'691''43''43''8314'_952
du_'691''43''43''8314'_952 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'691''43''43''8314'_952 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'691''43''43''8314'_706
      v0 v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷-injectiveʳ
d_'8759''45'injective'691'_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'691'_954 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷-injectiveˡ
d_'8759''45'injective'737'_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'737'_956 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ʳ-injective
d_'8759''691''45'injective_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''691''45'injective_958 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ʳ⁻
d_'8759''691''8315'_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''691''8315'_960 ~v0 ~v1 ~v2 ~v3 = du_'8759''691''8315'_960
du_'8759''691''8315'_960 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''691''8315'_960 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''691''8315'_524
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ʳ⁻¹
d_'8759''691''8315''185'_962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8759''691''8315''185'_962 ~v0 ~v1 ~v2 ~v3
  = du_'8759''691''8315''185'_962
du_'8759''691''8315''185'_962 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8759''691''8315''185'_962 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''691''8315''185'_824
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ˡ⁻
d_'8759''737''8315'_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''737''8315'_964 ~v0 ~v1 ~v2 ~v3 = du_'8759''737''8315'_964
du_'8759''737''8315'_964 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''737''8315'_964 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''737''8315'_522
      v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷⁻
d_'8759''8315'_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''8315'_966 ~v0 ~v1 ~v2 ~v3 = du_'8759''8315'_966
du_'8759''8315'_966 ::
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''8315'_966 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''8315'_526
      v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷⁻¹
d_'8759''8315''185'_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8759''8315''185'_968 ~v0 ~v1 ~v2 ~v3 = du_'8759''8315''185'_968
du_'8759''8315''185'_968 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8759''8315''185'_968 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''8315''185'_822
      v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-disjoint?
d_'8838''45'disjoint'63'_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8838''45'disjoint'63'_970 ~v0 ~v1 ~v2 ~v3
  = du_'8838''45'disjoint'63'_970
du_'8838''45'disjoint'63'_970 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8838''45'disjoint'63'_970
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8838''45'disjoint'63'_1928
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-mergeʳ
d_'8838''45'merge'691'_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'691'_972 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'691'_972 v3
du_'8838''45'merge'691'_972 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'691'_972 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'691'_774
      (coe du_S_830 (coe v0)) v3 v4 v5
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-mergeˡ
d_'8838''45'merge'737'_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'737'_974 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'737'_974 v3
du_'8838''45'merge'737'_974 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'737'_974 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'737'_726
      (coe du_S_830 (coe v0)) v3 v4 v5
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-trans-assoc
d_'8838''45'trans'45'assoc_976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'assoc_976 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-trans-idʳ
d_'8838''45'trans'45'id'691'_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'id'691'_978 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-trans-idˡ
d_'8838''45'trans'45'id'737'_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'id'737'_980 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.join₁
d_join'8321'_984 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8321'_984 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8321'_2224
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.join₂
d_join'8322'_986 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8322'_986 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8322'_2226
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.join₃
d_join'8323'_988 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8323'_988 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8323'_2228
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.sub³
d_sub'179'_990 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_sub'179'_990 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_sub'179'_2222
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.union³
d_union'179'_992 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  [AgdaAny]
d_union'179'_992 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_union'179'_2220
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning._IsRelatedTo_
d__IsRelatedTo__996 a0 a1 a2 a3 a4 a5 = ()
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning._∎
d__'8718'_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_998 ~v0 ~v1 ~v2 v3 = du__'8718'_998 v3
du__'8718'_998 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_998 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                     (coe v4))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.IsEquality
d_IsEquality_1000 a0 a1 a2 a3 a4 a5 a6 = ()
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.IsEquality?
d_IsEquality'63'_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_1002 ~v0 ~v1 ~v2 ~v3 = du_IsEquality'63'_1002
du_IsEquality'63'_1002 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_1002 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.begin_
d_begin__1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_begin__1004 ~v0 ~v1 ~v2 v3 = du_begin__1004 v3
du_begin__1004 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_begin__1004 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                     (coe v4))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.begin_
d_begin__1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_begin__1006 ~v0 ~v1 ~v2 ~v3 = du_begin__1006
du_begin__1006 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_begin__1006
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.equalitySubRelation
d_equalitySubRelation_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_1008 ~v0 ~v1 ~v2 ~v3
  = du_equalitySubRelation_1008
du_equalitySubRelation_1008 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_1008
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.extractEquality
d_extractEquality_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_extractEquality_1012 ~v0 ~v1 ~v2 ~v3 = du_extractEquality_1012
du_extractEquality_1012 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_extractEquality_1012 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_extractEquality_148
      v2 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.start
d_start_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_start_1018 ~v0 ~v1 ~v2 v3 = du_start_1018 v3
du_start_1018 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_start_1018 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3)))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-∼
d_step'45''8764'_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8764'_1020 ~v0 ~v1 ~v2 v3 = du_step'45''8764'_1020 v3
du_step'45''8764'_1020 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8764'_1020 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                     (coe v4))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≈
d_step'45''8776'_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776'_1022 ~v0 ~v1 ~v2 v3 = du_step'45''8776'_1022 v3
du_step'45''8776'_1022 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776'_1022 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_374
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                     (coe v4))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≈-⟨
d_step'45''8776''45''10216'_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776''45''10216'_1024 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10216'_1024 v3
du_step'45''8776''45''10216'_1024 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776''45''10216'_1024 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                     (coe v4))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                        (coe v4)))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≈-⟩
d_step'45''8776''45''10217'_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776''45''10217'_1026 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10217'_1026 v3
du_step'45''8776''45''10217'_1026 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776''45''10217'_1026 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                     (coe v4))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≈˘
d_step'45''8776''728'_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776''728'_1028 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''728'_1028 v3
du_step'45''8776''728'_1028 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776''728'_1028 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                     (coe v4))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                        (coe v4)))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≋
d_step'45''8779'_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779'_1030 ~v0 ~v1 ~v2 v3 = du_step'45''8779'_1030 v3
du_step'45''8779'_1030 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779'_1030 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779'_384
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≋-⟨
d_step'45''8779''45''10216'_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10216'_1032 ~v0 ~v1 ~v2 v3
  = du_step'45''8779''45''10216'_1032 v3
du_step'45''8779''45''10216'_1032 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10216'_1032 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10216'_382
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_symmetric_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164
                        (coe v2)))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≋-⟩
d_step'45''8779''45''10217'_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10217'_1034 ~v0 ~v1 ~v2 v3
  = du_step'45''8779''45''10217'_1034 v3
du_step'45''8779''45''10217'_1034 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10217'_1034 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10217'_380
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≋˘
d_step'45''8779''728'_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''728'_1036 ~v0 ~v1 ~v2 v3
  = du_step'45''8779''728'_1036 v3
du_step'45''8779''728'_1036 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''728'_1036 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''728'_386
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_symmetric_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164
                        (coe v2)))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≡
d_step'45''8801'_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_1038 ~v0 ~v1 ~v2 ~v3 = du_step'45''8801'_1038
du_step'45''8801'_1038 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_1038
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_1040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_step'45''8801''45''8739'_1040 v6
du_step'45''8801''45''8739'_1040 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_1040 v0 = coe v0
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_1042 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10216'_1042
du_step'45''8801''45''10216'_1042 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_1042
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_1044 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10217'_1044
du_step'45''8801''45''10217'_1044 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_1044
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≡˘
d_step'45''8801''728'_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_1046 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''728'_1046
du_step'45''8801''728'_1046 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_1046
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-≲
d_step'45''8818'_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8818'_1048 ~v0 ~v1 ~v2 v3 = du_step'45''8818'_1048 v3
du_step'45''8818'_1048 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8818'_1048 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8818'_306
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                     (coe v4))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.step-⊆
d_step'45''8838'_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8838'_1050 ~v0 ~v1 ~v2 v3 = du_step'45''8838'_1050 v3
du_step'45''8838'_1050 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_1050 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.stop
d_stop_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_1052 ~v0 ~v1 ~v2 v3 = du_stop_1052 v3
du_stop_1052 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_1052 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3)))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.≈-go
d_'8776''45'go_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_1054 ~v0 ~v1 ~v2 v3 = du_'8776''45'go_1054 v3
du_'8776''45'go_1054 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_1054 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3)))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.≡-go
d_'8801''45'go_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_1056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8801''45'go_1056 v8
du_'8801''45'go_1056 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_1056 v0 = coe v0
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-Reasoning.≲-go
d_'8818''45'go_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_1058 ~v0 ~v1 ~v2 v3 = du_'8818''45'go_1058 v3
du_'8818''45'go_1058 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_1058 v0
  = let v1 = coe du_S_830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v3)))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.⊆-mergeˡ
d_'8838''45'merge'737'_1074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'737'_1074 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'737'_1074 v3
du_'8838''45'merge'737'_1074 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'737'_1074 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'737'_726
      (coe du_S_830 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
            (coe v0)))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.⊆-mergeʳ
d_'8838''45'merge'691'_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'691'_1080 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'691'_1080 v3
du_'8838''45'merge'691'_1080 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'691'_1080 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'691'_774
      (coe du_S_830 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
            (coe v0)))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.filter⁺
d_filter'8314'_1188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
d_filter'8314'_1188 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_filter'8314'_1188 v4 v6 v7
du_filter'8314'_1188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28
du_filter'8314'_1188 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_filter'8314'_336
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_90
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                  (coe v0)))))
      (coe v2)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.lookup-mono-≤
d_lookup'45'mono'45''8804'_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_lookup'45'mono'45''8804'_1294 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_lookup'45'mono'45''8804'_1294 v3 v4 v5 v6 v7 v8
du_lookup'45'mono'45''8804'_1294 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_lookup'45'mono'45''8804'_1294 v0 v1 v2 v3 v4 v5
  = case coe v1 of
      (:) v6 v7
        -> case coe v3 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> case coe v4 of
                    MAlonzo.Code.Data.Fin.Base.C_zero_12
                      -> coe
                           seq (coe v5)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_refl_104
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1)
                                 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)))
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v10
                      -> coe
                           seq (coe v5)
                           (coe
                              MAlonzo.Code.Data.List.Relation.Unary.Linked.du_lookup_186 (coe v6)
                              (coe v1)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                          (coe v0)))))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just_50
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.du_refl_104
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                             (coe v0))))
                                    (coe v6)))
                              (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v9
               -> case coe v4 of
                    MAlonzo.Code.Data.Fin.Base.C_suc_16 v11
                      -> case coe v5 of
                           MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v14
                             -> coe
                                  du_lookup'45'mono'45''8804'_1294 (coe v0) (coe v7)
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Unary.Sorted.TotalOrder.du_tail_122
                                     v2)
                                  (coe v9) (coe v11) (coe v14)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._._._≋_
d__'8779'__1422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__1422 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._._._↭_
d__'8621'__1482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8621'__1482 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.↗↭↗⇒≋
d_'8599''8621''8599''8658''8779'_1846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'8599''8621''8599''8658''8779'_1846 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8599''8621''8599''8658''8779'_1846 v3 v4 v5 v6 v7 v8
du_'8599''8621''8599''8658''8779'_1846 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'8599''8621''8599''8658''8779'_1846 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_lookup'8315'_580
      (coe v1) (coe v2)
      (coe
         (\ v6 v7 v8 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
              (MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008 (coe v0)))
              (coe MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1) (coe v6))
              (coe MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2) (coe v7))
              (coe
                 du_'8599''8621''8599''8658''8804'_1872 (coe v0) (coe v2) (coe v1)
                 (coe
                    MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.du_'8621''45'sym_96
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_setoid_190
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.du_preorder_522
                          (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_1018 (coe v0))))
                    v1 v2 v5)
                 (coe v4) (coe v3) (coe v7) (coe v6))
              (coe
                 du_'8599''8621''8599''8658''8804'_1872 (coe v0) (coe v1) (coe v2)
                 (coe v5) (coe v3) (coe v4) (coe v6) (coe v7))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._._.↗↭↗⇒≤
d_'8599''8621''8599''8658''8804'_1872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8599''8621''8599''8658''8804'_1872 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 v9 v10 v11 v12 v13 v14 v15 ~v16
  = du_'8599''8621''8599''8658''8804'_1872
      v3 v9 v10 v11 v12 v13 v14 v15
du_'8599''8621''8599''8658''8804'_1872 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.T_Permutation_32 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_28 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_'8599''8621''8599''8658''8804'_1872 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Data.Fin.Properties.du_any'63'_1966
              (coe
                 MAlonzo.Code.Data.List.Base.du_foldr_216
                 (let v8 = \ v8 -> addInt (coe (1 :: Integer)) (coe v8) in
                  coe (coe (\ v9 -> v8)))
                 (coe (0 :: Integer)) (coe v1))
              (coe
                 (\ v8 ->
                    coe
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                      (coe
                         MAlonzo.Code.Data.Fin.Properties.du__'8804''63'__396 (coe v8)
                         (coe v6))
                      (coe
                         MAlonzo.Code.Data.Fin.Properties.du__'8804''63'__396 (coe v6)
                         (coe
                            MAlonzo.Code.Function.Bundles.d_to_2134
                            (coe
                               MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_onIndices_166
                               (coe v1) (coe v2) (coe v3))
                            v8)))) in
    coe
      (case coe v8 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
           -> if coe v9
                then case coe v10 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                         -> case coe v11 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                -> case coe v13 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                       -> coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                        (coe v0))))
                                               (\ v16 v17 v18 ->
                                                  coe
                                                    MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''8658''8804'_32
                                                    v18))
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2)
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1)
                                               (coe v6))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0)))))))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2)
                                                  (coe v7))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Data.Fin.Permutation.du__'10216''36''10217''691'__28
                                                     (coe
                                                        MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_onIndices_166
                                                        (coe v1) (coe v2) (coe v3))
                                                     v12))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1)
                                                  (coe v6))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                    (coe v0)))))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_118
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                    (coe v0)))))))
                                                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0))))))
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_lookup_390
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Data.Fin.Permutation.du__'10216''36''10217''691'__28
                                                        (coe
                                                           MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_onIndices_166
                                                           (coe v1) (coe v2) (coe v3))
                                                        v12))
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_lookup_390
                                                     (coe v1) (coe v12))
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_lookup_390
                                                     (coe v1) (coe v6))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                       (coe v0)))))
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                       (coe v0)))))))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_lookup_390
                                                        (coe v1) (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_lookup_390
                                                        (coe v1) (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_lookup_390
                                                        (coe v1) (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                    (coe v0)))))
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_lookup_390
                                                           (coe v1) (coe v6)))
                                                     (coe
                                                        du_lookup'45'mono'45''8804'_1294 (coe v0)
                                                        (coe v1) (coe v4) (coe v12) (coe v6)
                                                        (coe v14)))
                                                  (coe
                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_onIndices'45'lookup_1786
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.du_setoid_190
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.du_preorder_522
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.du_poset_1018
                                                              (coe v0))))
                                                     (coe v1) (coe v2) (coe v3) (coe v12)))
                                               (coe
                                                  du_lookup'45'mono'45''8804'_1294 (coe v0) (coe v2)
                                                  (coe v5) (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Function.Bundles.d_to_2134
                                                     (coe
                                                        MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_onIndices_166
                                                        (coe v1) (coe v2) (coe v3))
                                                     v12)
                                                  (coe v15)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                else (let v11
                            = seq
                                (coe v10)
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                   erased) in
                      coe
                        (case coe v11 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                             -> case coe v13 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                    -> coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                     (coe v0))))
                                            (\ v16 v17 v18 ->
                                               coe
                                                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''8658''8804'_32
                                                 v18))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2)
                                            (coe v7))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1)
                                            (coe v6))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                              (coe v0)))))))
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2)
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2)
                                               (coe
                                                  MAlonzo.Code.Data.Fin.Permutation.du__'10216''36''10217''691'__28
                                                  (coe
                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_onIndices_166
                                                     (coe v1) (coe v2) (coe v3))
                                                  v12))
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1)
                                               (coe v6))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_118
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0)))))))
                                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                              (coe v0))))))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Data.Fin.Permutation.du__'10216''36''10217''691'__28
                                                     (coe
                                                        MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_onIndices_166
                                                        (coe v1) (coe v2) (coe v3))
                                                     v12))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1)
                                                  (coe v12))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v1)
                                                  (coe v6))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_310
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                    (coe v0)))))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_antisym_258
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_106
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                    (coe v0)))))))
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_lookup_390
                                                     (coe v1) (coe v12))
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_lookup_390
                                                     (coe v1) (coe v6))
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_lookup_390
                                                     (coe v1) (coe v6))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                                                              (coe
                                                                 MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_lookup_390
                                                        (coe v1) (coe v6)))
                                                  (coe
                                                     du_lookup'45'mono'45''8804'_1294 (coe v0)
                                                     (coe v1) (coe v4) (coe v12) (coe v6)
                                                     (coe v14)))
                                               (coe
                                                  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Setoid.Properties.du_onIndices'45'lookup_1786
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.du_setoid_190
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Bundles.du_preorder_522
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.du_poset_1018
                                                           (coe v0))))
                                                  (coe v1) (coe v2) (coe v3) (coe v12)))
                                            (coe
                                               du_lookup'45'mono'45''8804'_1294 (coe v0) (coe v2)
                                               (coe v5) (coe v7)
                                               (coe
                                                  MAlonzo.Code.Function.Bundles.d_to_2134
                                                  (coe
                                                     MAlonzo.Code.Data.List.Relation.Binary.Permutation.Homogeneous.du_onIndices_166
                                                     (coe v1) (coe v2) (coe v3))
                                                  v12)
                                               (coe v15)))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-a
d_'46'generalizedField'45'a_38437 ::
  T_GeneralizeTel_38445 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_38437 v0
  = case coe v0 of
      C_mkGeneralizeTel_38447 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-ℓ₁
d_'46'generalizedField'45'ℓ'8321'_38439 ::
  T_GeneralizeTel_38445 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8321'_38439 v0
  = case coe v0 of
      C_mkGeneralizeTel_38447 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-ℓ₂
d_'46'generalizedField'45'ℓ'8322'_38441 ::
  T_GeneralizeTel_38445 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8322'_38441 v0
  = case coe v0 of
      C_mkGeneralizeTel_38447 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-p
d_'46'generalizedField'45'p_38443 ::
  T_GeneralizeTel_38445 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'p_38443 v0
  = case coe v0 of
      C_mkGeneralizeTel_38447 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties.GeneralizeTel
d_GeneralizeTel_38445 = ()
data T_GeneralizeTel_38445
  = C_mkGeneralizeTel_38447 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
