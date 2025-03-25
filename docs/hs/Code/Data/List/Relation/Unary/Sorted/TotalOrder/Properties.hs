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
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties
import qualified MAlonzo.Code.Data.Maybe.Relation.Binary.Connected
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Properties.TotalOrder
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.AllPairs⇒Sorted
d_AllPairs'8658'Sorted_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_AllPairs'8658'Sorted_120 ~v0 ~v1 ~v2 ~v3 v4
  = du_AllPairs'8658'Sorted_120 v4
du_AllPairs'8658'Sorted_120 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_AllPairs'8658'Sorted_120 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_AllPairs'8658'Linked_36
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.Sorted⇒AllPairs
d_Sorted'8658'AllPairs_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_Sorted'8658'AllPairs_124 ~v0 ~v1 ~v2 v3 v4
  = du_Sorted'8658'AllPairs_124 v3 v4
du_Sorted'8658'AllPairs_124 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_Sorted'8658'AllPairs_124 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_Linked'8658'AllPairs_76
      (let v2
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_796 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                  (coe v2)))))
      (coe v1)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.O₁._≤_
d__'8804'__146 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__146 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.map⁺
d_map'8314'_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_map'8314'_300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_map'8314'_300 v6 v7 v8
du_map'8314'_300 ::
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_map'8314'_300 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_map'8314'_98
      (coe v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Linked.du_map_106 (coe v1)
         (coe v0) (coe v2))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.map⁻
d_map'8315'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_map'8315'_314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_map'8315'_314 v6 v7 v8
du_map'8315'_314 ::
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_map'8315'_314 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.du_map_106
      (coe (\ v3 v4 -> coe v1 v3 v4)) (coe v0)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_map'8315'_106
         (coe v0) (coe v2))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.++⁺
d_'43''43''8314'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_'43''43''8314'_414 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'43''43''8314'_414 v4
du_'43''43''8314'_414 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_'43''43''8314'_414 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_'43''43''8314'_134
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyUpTo⁺₁
d_applyUpTo'8314''8321'_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_applyUpTo'8314''8321'_512 ~v0 ~v1 ~v2 ~v3
  = du_applyUpTo'8314''8321'_512
du_applyUpTo'8314''8321'_512 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_applyUpTo'8314''8321'_512 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyUpTo'8314''8321'_170
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyUpTo⁺₂
d_applyUpTo'8314''8322'_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_applyUpTo'8314''8322'_520 ~v0 ~v1 ~v2 ~v3
  = du_applyUpTo'8314''8322'_520
du_applyUpTo'8314''8322'_520 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_applyUpTo'8314''8322'_520 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyUpTo'8314''8322'_192
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyDownFrom⁺₁
d_applyDownFrom'8314''8321'_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_applyDownFrom'8314''8321'_618 ~v0 ~v1 ~v2 ~v3
  = du_applyDownFrom'8314''8321'_618
du_applyDownFrom'8314''8321'_618 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_applyDownFrom'8314''8321'_618 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyDownFrom'8314''8321'_218
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.applyDownFrom⁺₂
d_applyDownFrom'8314''8322'_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_applyDownFrom'8314''8322'_626 ~v0 ~v1 ~v2 ~v3
  = du_applyDownFrom'8314''8322'_626
du_applyDownFrom'8314''8322'_626 ::
  (Integer -> AgdaAny) ->
  Integer ->
  (Integer -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_applyDownFrom'8314''8322'_626 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_applyDownFrom'8314''8322'_240
      v1 v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._._.totalOrder
d_totalOrder_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
d_totalOrder_646 ~v0 ~v1 ~v2 v3 = du_totalOrder_646 v3
du_totalOrder_646 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
du_totalOrder_646 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_948 (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.merge-con
d_merge'45'con_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
d_merge'45'con_658 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 v7 v8
  = du_merge'45'con_658 v3 v5 v6 v7 v8
du_merge'45'con_658 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42 ->
  MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.T_Connected_42
du_merge'45'con_658 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> case coe v2 of
             [] -> coe v3
             (:) v7 v8
               -> let v9
                        = coe
                            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
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
d_merge'8314'_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_merge'8314'_720 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_merge'8314'_720 v3 v4 v5 v6 v7
du_merge'8314'_720 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_merge'8314'_720 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> case coe v2 of
             [] -> coe v3
             (:) v7 v8
               -> let v9
                        = coe
                            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                            (MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                               (coe v0))
                            v5 v7 in
                  coe
                    (let v10
                           = coe
                               du_merge'8314'_720 (coe v0) (coe v6) (coe v2)
                               (coe
                                  MAlonzo.Code.Data.List.Relation.Unary.Linked.du_tail_68 (coe v3))
                               (coe v4) in
                     coe
                       (let v11
                              = coe
                                  du_merge'8314'_720 (coe v0) (coe v1) (coe v8) (coe v3)
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Unary.Linked.du_tail_68
                                     (coe v4)) in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                               -> if coe v12
                                    then case coe v13 of
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                             -> coe
                                                  MAlonzo.Code.Data.List.Relation.Unary.Linked.du__'8759''8242'__84
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_merge_192
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                                                           (coe v0)))
                                                     (coe v6) (coe v2))
                                                  (coe
                                                     du_merge'45'con_658 (coe v0) (coe v6) (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Data.List.Relation.Unary.Linked.du_head'8242'_76
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just_50
                                                        v14))
                                                  (coe v10)
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    else coe
                                           seq (coe v13)
                                           (coe
                                              MAlonzo.Code.Data.List.Relation.Unary.Linked.du__'8759''8242'__84
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_merge_192
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
                                                       (coe v0)))
                                                 (coe v1) (coe v8))
                                              (coe
                                                 du_merge'45'con_658 (coe v0) (coe v1) (coe v8)
                                                 (coe
                                                    MAlonzo.Code.Data.Maybe.Relation.Binary.Connected.C_just_50
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8816''8658''8805'_220
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_948
                                                          (coe v0))
                                                       (coe v5) (coe v7)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Relation.Unary.Linked.du_head'8242'_76
                                                    (coe v4)))
                                              (coe v11))
                             _ -> MAlonzo.RTE.mazUnreachableError)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.S
d_S_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_S_782 ~v0 ~v1 ~v2 v3 = du_S_782 v3
du_S_782 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_S_782 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_poset_796
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_948 (coe v0))))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._._._⊆_
d__'8838'__786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__786 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷ʳ-DisjointUnion³_
d__'8759''691''45'DisjointUnion'179'__790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
d__'8759''691''45'DisjointUnion'179'__790 ~v0 ~v1 ~v2 ~v3
  = du__'8759''691''45'DisjointUnion'179'__790
du__'8759''691''45'DisjointUnion'179'__790 ::
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
du__'8759''691''45'DisjointUnion'179'__790 v0 v1 v2 v3 v4 v5 v6 v7
                                           v8 v9 v10 v11 v12 v13 v14
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''691''45'DisjointUnion'179'__2108
      v14
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷₁-DisjointUnion³_
d__'8759''8321''45'DisjointUnion'179'__792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
d__'8759''8321''45'DisjointUnion'179'__792 ~v0 ~v1 ~v2 ~v3
  = du__'8759''8321''45'DisjointUnion'179'__792
du__'8759''8321''45'DisjointUnion'179'__792 ::
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
du__'8759''8321''45'DisjointUnion'179'__792 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8321''45'DisjointUnion'179'__2152
      v13 v15 v16
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷₂-DisjointUnion³_
d__'8759''8322''45'DisjointUnion'179'__794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
d__'8759''8322''45'DisjointUnion'179'__794 ~v0 ~v1 ~v2 ~v3
  = du__'8759''8322''45'DisjointUnion'179'__794
du__'8759''8322''45'DisjointUnion'179'__794 ::
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
du__'8759''8322''45'DisjointUnion'179'__794 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8322''45'DisjointUnion'179'__2196
      v13 v15 v16
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP._∷₃-DisjointUnion³_
d__'8759''8323''45'DisjointUnion'179'__796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
d__'8759''8323''45'DisjointUnion'179'__796 ~v0 ~v1 ~v2 ~v3
  = du__'8759''8323''45'DisjointUnion'179'__796
du__'8759''8323''45'DisjointUnion'179'__796 ::
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
du__'8759''8323''45'DisjointUnion'179'__796 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8323''45'DisjointUnion'179'__2240
      v13 v15 v16
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁺
d_'43''43''8314'_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314'_798 ~v0 ~v1 ~v2 ~v3 = du_'43''43''8314'_798
du_'43''43''8314'_798 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314'_798 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8314'_486
      v0 v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁺ʳ
d_'43''43''8314''691'_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314''691'_800 ~v0 ~v1 ~v2 ~v3
  = du_'43''43''8314''691'_800
du_'43''43''8314''691'_800 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314''691'_800
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8314''691'_484
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁺ˡ
d_'43''43''8314''737'_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314''737'_802 ~v0 ~v1 ~v2 ~v3
  = du_'43''43''8314''737'_802
du_'43''43''8314''737'_802 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314''737'_802 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8314''737'_480
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.++⁻
d_'43''43''8315'_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8315'_804 ~v0 ~v1 ~v2 ~v3 = du_'43''43''8315'_804
du_'43''43''8315'_804 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8315'_804 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'43''43''8315'_488
      v0 v1 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-irrefl
d_Disjoint'45'irrefl_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_Disjoint'45'irrefl_806 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-irrefl′
d_Disjoint'45'irrefl'8242'_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_Disjoint'45'irrefl'8242'_808 ~v0 ~v1 ~v2 ~v3
  = du_Disjoint'45'irrefl'8242'_808
du_Disjoint'45'irrefl'8242'_808 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_Disjoint'45'irrefl'8242'_808 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'45'irrefl'8242'_1866
      v1 v2 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-irrelevant
d_Disjoint'45'irrelevant_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Disjoint'45'irrelevant_810 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint-sym
d_Disjoint'45'sym_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_Disjoint'45'sym_812 ~v0 ~v1 ~v2 ~v3 = du_Disjoint'45'sym_812
du_Disjoint'45'sym_812 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_Disjoint'45'sym_812
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'45'sym_1926
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-[]ʳ
d_DisjointUnion'45''91''93''691'_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''691'_814 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'45''91''93''691'_814
du_DisjointUnion'45''91''93''691'_814 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''691'_814
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45''91''93''691'_1972
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-[]ˡ
d_DisjointUnion'45''91''93''737'_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''737'_816 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'45''91''93''737'_816
du_DisjointUnion'45''91''93''737'_816 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''737'_816
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45''91''93''737'_1948
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-fromAny∘toAny-∷ˡ⁻
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_818 ~v0
                                                               ~v1 ~v2 ~v3
  = du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_818
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_818 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_818 v0
                                                                v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_1996
      v1 v2 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion-sym
d_DisjointUnion'45'sym_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'sym_820 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'45'sym_820
du_DisjointUnion'45'sym_820 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'sym_820
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45'sym_1902
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³
d_DisjointUnion'179'_822 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
                         a13 a14 a15 a16
  = ()
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion→Disjoint
d_DisjointUnion'8594'Disjoint_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_DisjointUnion'8594'Disjoint_824 ~v0 ~v1 ~v2 ~v3
  = du_DisjointUnion'8594'Disjoint_824
du_DisjointUnion'8594'Disjoint_824 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_DisjointUnion'8594'Disjoint_824
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'8594'Disjoint_1726
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.Disjoint→DisjointUnion
d_Disjoint'8594'DisjointUnion_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Disjoint'8594'DisjointUnion_826 ~v0 ~v1 ~v2 ~v3
  = du_Disjoint'8594'DisjointUnion_826
du_Disjoint'8594'DisjointUnion_826 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_Disjoint'8594'DisjointUnion_826
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'8594'DisjointUnion_1754
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.[]⊆-irrelevant
d_'91''93''8838''45'irrelevant_828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91''93''8838''45'irrelevant_828 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.[x]⊆xs⤖x∈xs
d_'91'x'93''8838'xs'10518'x'8712'xs_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_926
d_'91'x'93''8838'xs'10518'x'8712'xs_830 ~v0 ~v1 ~v2 ~v3
  = du_'91'x'93''8838'xs'10518'x'8712'xs_830
du_'91'x'93''8838'xs'10518'x'8712'xs_830 ::
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_926
du_'91'x'93''8838'xs'10518'x'8712'xs_830 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'91'x'93''8838'xs'10518'x'8712'xs_736
      v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.disjointUnion³
d_disjointUnion'179'_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
d_disjointUnion'179'_832 ~v0 ~v1 ~v2 ~v3
  = du_disjointUnion'179'_832
du_disjointUnion'179'_832 ::
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
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032
du_disjointUnion'179'_832
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_disjointUnion'179'_2278
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.disjoint⇒disjoint-to-union
d_disjoint'8658'disjoint'45'to'45'union_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_disjoint'8658'disjoint'45'to'45'union_834 ~v0 ~v1 ~v2 ~v3
  = du_disjoint'8658'disjoint'45'to'45'union_834
du_disjoint'8658'disjoint'45'to'45'union_834 ::
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
du_disjoint'8658'disjoint'45'to'45'union_834
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_disjoint'8658'disjoint'45'to'45'union_2344
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop-⊆
d_drop'45''8838'_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'45''8838'_836 ~v0 ~v1 ~v2 v3 = du_drop'45''8838'_836 v3
du_drop'45''8838'_836 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'45''8838'_836 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'45''8838'_378
      (coe du_S_782 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.dropWhile-⊆
d_dropWhile'45''8838'_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_dropWhile'45''8838'_838 ~v0 ~v1 ~v2 v3
  = du_dropWhile'45''8838'_838 v3
du_dropWhile'45''8838'_838 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_dropWhile'45''8838'_838 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_dropWhile'45''8838'_400
      (coe du_S_782 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.dropWhile⁺
d_dropWhile'8314'_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_dropWhile'8314'_840 ~v0 ~v1 ~v2 v3 = du_dropWhile'8314'_840 v3
du_dropWhile'8314'_840 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
du_dropWhile'8314'_840 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_dropWhile'8314'_554
      (coe du_S_782 (coe v0)) v5 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop⁺
d_drop'8314'_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314'_842 ~v0 ~v1 ~v2 ~v3 = du_drop'8314'_842
du_drop'8314'_842 ::
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314'_842 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'8314'_502
      v0 v2 v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop⁺-≥
d_drop'8314''45''8805'_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8805'_844 ~v0 ~v1 ~v2 v3
  = du_drop'8314''45''8805'_844 v3
du_drop'8314''45''8805'_844 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8805'_844 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'8314''45''8805'_508
      (coe du_S_782 (coe v0)) v1 v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.drop⁺-⊆
d_drop'8314''45''8838'_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8838'_846 ~v0 ~v1 ~v2 ~v3
  = du_drop'8314''45''8838'_846
du_drop'8314''45''8838'_846 ::
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8838'_846
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_drop'8314''45''8838'_518
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.filter-⊆
d_filter'45''8838'_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'45''8838'_848 ~v0 ~v1 ~v2 v3 = du_filter'45''8838'_848 v3
du_filter'45''8838'_848 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'45''8838'_848 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_filter'45''8838'_406
      (coe du_S_782 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.filter⁺
d_filter'8314'_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_filter'8314'_850 ~v0 ~v1 ~v2 ~v3 = du_filter'8314'_850
du_filter'8314'_850 ::
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
du_filter'8314'_850 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_filter'8314'_576
      v4 v5 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.filter⊆dropWhile
d_filter'8838'dropWhile_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'8838'dropWhile_852 ~v0 ~v1 ~v2 v3
  = du_filter'8838'dropWhile_852 v3
du_filter'8838'dropWhile_852 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'8838'dropWhile_852 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_filter'8838'dropWhile_426
      (coe du_S_782 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.from∈-injective
d_from'8712''45'injective_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from'8712''45'injective_854 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.length-mono-≤
d_length'45'mono'45''8804'_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'mono'45''8804'_856 ~v0 ~v1 ~v2 ~v3
  = du_length'45'mono'45''8804'_856
du_length'45'mono'45''8804'_856 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'mono'45''8804'_856
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_length'45'mono'45''8804'_708
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.map⁺
d_map'8314'_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_map'8314'_858 ~v0 ~v1 ~v2 ~v3 = du_map'8314'_858
du_map'8314'_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_map'8314'_858 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_map'8314'_466
      v3 v4 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.reverseAcc⁺
d_reverseAcc'8314'_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverseAcc'8314'_860 ~v0 ~v1 ~v2 ~v3 = du_reverseAcc'8314'_860
du_reverseAcc'8314'_860 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverseAcc'8314'_860 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_reverseAcc'8314'_582
      v0 v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.reverse⁺
d_reverse'8314'_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8314'_862 ~v0 ~v1 ~v2 ~v3 = du_reverse'8314'_862
du_reverse'8314'_862 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8314'_862
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_reverse'8314'_586
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.reverse⁻
d_reverse'8315'_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8315'_864 ~v0 ~v1 ~v2 ~v3 = du_reverse'8315'_864
du_reverse'8315'_864 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8315'_864
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_reverse'8315'_588
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.shrinkDisjoint
d_shrinkDisjoint_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_shrinkDisjoint_866 ~v0 ~v1 ~v2 ~v3 = du_shrinkDisjoint_866
du_shrinkDisjoint_866 ::
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
du_shrinkDisjoint_866
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_shrinkDisjoint_2488
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.shrinkDisjointʳ
d_shrinkDisjoint'691'_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint'691'_868 ~v0 ~v1 ~v2 ~v3
  = du_shrinkDisjoint'691'_868
du_shrinkDisjoint'691'_868 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint'691'_868
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_shrinkDisjoint'691'_854
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.shrinkDisjointˡ
d_shrinkDisjoint'737'_870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint'737'_870 ~v0 ~v1 ~v2 ~v3
  = du_shrinkDisjoint'737'_870
du_shrinkDisjoint'737'_870 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint'737'_870
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_shrinkDisjoint'737'_810
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.tail-⊆
d_tail'45''8838'_872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_tail'45''8838'_872 ~v0 ~v1 ~v2 v3 = du_tail'45''8838'_872 v3
du_tail'45''8838'_872 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] -> MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_tail'45''8838'_872 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_tail'45''8838'_360
      (coe du_S_782 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.take-⊆
d_take'45''8838'_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'45''8838'_874 ~v0 ~v1 ~v2 v3 = du_take'45''8838'_874 v3
du_take'45''8838'_874 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'45''8838'_874 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_take'45''8838'_368
      (coe du_S_782 (coe v0))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.takeWhile-⊆
d_takeWhile'45''8838'_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'45''8838'_876 ~v0 ~v1 ~v2 v3
  = du_takeWhile'45''8838'_876 v3
du_takeWhile'45''8838'_876 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'45''8838'_876 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_takeWhile'45''8838'_394
      (coe du_S_782 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.takeWhile⁺
d_takeWhile'8314'_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_takeWhile'8314'_878 ~v0 ~v1 ~v2 v3 = du_takeWhile'8314'_878 v3
du_takeWhile'8314'_878 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
du_takeWhile'8314'_878 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_takeWhile'8314'_542
      (coe du_S_782 (coe v0)) v5 v6 v7
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.takeWhile⊆filter
d_takeWhile'8838'filter_880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'8838'filter_880 ~v0 ~v1 ~v2 v3
  = du_takeWhile'8838'filter_880 v3
du_takeWhile'8838'filter_880 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'8838'filter_880 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_takeWhile'8838'filter_420
      (coe du_S_782 (coe v0)) v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.take⁺
d_take'8314'_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'8314'_882 ~v0 ~v1 ~v2 v3 = du_take'8314'_882 v3
du_take'8314'_882 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'8314'_882 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_take'8314'_494
      (coe du_S_782 (coe v0)) v2 v3 v4
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.to-≋
d_to'45''8779'_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_to'45''8779'_884 ~v0 ~v1 ~v2 ~v3 = du_to'45''8779'_884
du_to'45''8779'_884 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_to'45''8779'_884
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_to'45''8779'_710
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.to∈-injective
d_to'8712''45'injective_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8712''45'injective_886 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.to∈∘from∈≗id
d_to'8712''8728'from'8712''8791'id_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8712''8728'from'8712''8791'id_888 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.weakenDisjoint
d_weakenDisjoint_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_weakenDisjoint_890 ~v0 ~v1 ~v2 ~v3 = du_weakenDisjoint_890
du_weakenDisjoint_890 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_weakenDisjoint_890
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_weakenDisjoint_2440
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.weakenDisjointUnion
d_weakenDisjointUnion_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_weakenDisjointUnion_892 ~v0 ~v1 ~v2 ~v3
  = du_weakenDisjointUnion_892
du_weakenDisjointUnion_892 ::
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
du_weakenDisjointUnion_892
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_weakenDisjointUnion_2396
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.ʳ++⁺
d_'691''43''43''8314'_894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'691''43''43''8314'_894 ~v0 ~v1 ~v2 ~v3
  = du_'691''43''43''8314'_894
du_'691''43''43''8314'_894 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'691''43''43''8314'_894 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'691''43''43''8314'_584
      v0 v1
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷-injectiveʳ
d_'8759''45'injective'691'_896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_'8759''45'injective'691'_896 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷-injectiveˡ
d_'8759''45'injective'737'_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_'8759''45'injective'737'_898 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ʳ-injective
d_'8759''691''45'injective_900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''691''45'injective_900 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ʳ⁻
d_'8759''691''8315'_902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''691''8315'_902 ~v0 ~v1 ~v2 ~v3 = du_'8759''691''8315'_902
du_'8759''691''8315'_902 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''691''8315'_902 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''691''8315'_436
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ʳ⁻¹
d_'8759''691''8315''185'_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8759''691''8315''185'_904 ~v0 ~v1 ~v2 ~v3
  = du_'8759''691''8315''185'_904
du_'8759''691''8315''185'_904 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8759''691''8315''185'_904 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''691''8315''185'_702
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷ˡ⁻
d_'8759''737''8315'_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''737''8315'_906 ~v0 ~v1 ~v2 ~v3 = du_'8759''737''8315'_906
du_'8759''737''8315'_906 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''737''8315'_906 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''737''8315'_434
      v2
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷⁻
d_'8759''8315'_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''8315'_908 ~v0 ~v1 ~v2 ~v3 = du_'8759''8315'_908
du_'8759''8315'_908 ::
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''8315'_908 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''8315'_438
      v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.∷⁻¹
d_'8759''8315''185'_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8759''8315''185'_910 ~v0 ~v1 ~v2 ~v3 = du_'8759''8315''185'_910
du_'8759''8315''185'_910 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8759''8315''185'_910 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8759''8315''185'_700
      v3
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-disjoint?
d_'8838''45'disjoint'63'_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8838''45'disjoint'63'_912 ~v0 ~v1 ~v2 ~v3
  = du_'8838''45'disjoint'63'_912
du_'8838''45'disjoint'63'_912 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8838''45'disjoint'63'_912
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8838''45'disjoint'63'_1778
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-mergeʳ
d_'8838''45'merge'691'_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'691'_914 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'691'_914 v3
du_'8838''45'merge'691'_914 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'691'_914 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'691'_652
      (coe du_S_782 (coe v0)) v3 v4 v5
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-mergeˡ
d_'8838''45'merge'737'_916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'737'_916 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'737'_916 v3
du_'8838''45'merge'737'_916 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'737'_916 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'737'_604
      (coe du_S_782 (coe v0)) v3 v4 v5
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-trans-assoc
d_'8838''45'trans'45'assoc_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
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
d_'8838''45'trans'45'assoc_918 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-trans-idʳ
d_'8838''45'trans'45'id'691'_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'id'691'_920 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.⊆-trans-idˡ
d_'8838''45'trans'45'id'737'_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'id'737'_922 = erased
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.join₁
d_join'8321'_926 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8321'_926 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8321'_2074
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.join₂
d_join'8322'_928 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8322'_928 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8322'_2076
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.join₃
d_join'8323'_930 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8323'_930 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8323'_2078
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.sub³
d_sub'179'_932 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_sub'179'_932 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_sub'179'_2072
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.SP.DisjointUnion³.union³
d_union'179'_934 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2032 ->
  [AgdaAny]
d_union'179'_934 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_union'179'_2070
      (coe v0)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.⊆-mergeˡ
d_'8838''45'merge'737'_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'737'_940 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'737'_940 v3
du_'8838''45'merge'737'_940 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'737'_940 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'737'_604
      (coe du_S_782 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
            (coe v0)))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.⊆-mergeʳ
d_'8838''45'merge'691'_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'691'_946 ~v0 ~v1 ~v2 v3
  = du_'8838''45'merge'691'_946 v3
du_'8838''45'merge'691'_946 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'691'_946 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties.du_'8838''45'merge'691'_652
      (coe du_S_782 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__474
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_888
            (coe v0)))
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties._.filter⁺
d_filter'8314'_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_filter'8314'_1046 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_filter'8314'_1046 v4 v6 v7
du_filter'8314'_1046 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
du_filter'8314'_1046 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Linked.Properties.du_filter'8314'_336
      (coe v1)
      (let v3
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_796 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                  (coe v3)))))
      (coe v2)
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-a
d_'46'generalizedField'45'a_35365 ::
  T_GeneralizeTel_35373 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_35365 v0
  = case coe v0 of
      C_mkGeneralizeTel_35375 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-ℓ₁
d_'46'generalizedField'45'ℓ'8321'_35367 ::
  T_GeneralizeTel_35373 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8321'_35367 v0
  = case coe v0 of
      C_mkGeneralizeTel_35375 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-ℓ₂
d_'46'generalizedField'45'ℓ'8322'_35369 ::
  T_GeneralizeTel_35373 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8322'_35369 v0
  = case coe v0 of
      C_mkGeneralizeTel_35375 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties..generalizedField-p
d_'46'generalizedField'45'p_35371 ::
  T_GeneralizeTel_35373 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'p_35371 v0
  = case coe v0 of
      C_mkGeneralizeTel_35375 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.Sorted.TotalOrder.Properties.GeneralizeTel
d_GeneralizeTel_35373 = ()
data T_GeneralizeTel_35373
  = C_mkGeneralizeTel_35375 MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
                            MAlonzo.Code.Agda.Primitive.T_Level_18
