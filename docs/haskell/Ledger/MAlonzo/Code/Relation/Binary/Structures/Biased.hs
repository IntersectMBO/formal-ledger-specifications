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

module MAlonzo.Code.Relation.Binary.Structures.Biased where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Relation.Binary.Structures.Biased._.IsEquivalence
d_IsEquivalence_30 a0 a1 a2 a3 = ()
-- Relation.Binary.Structures.Biased._.IsStrictTotalOrder
d_IsStrictTotalOrder_40 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ
d_IsStrictTotalOrder'7580'_522 a0 a1 a2 a3 a4 a5 = ()
data T_IsStrictTotalOrder'7580'_522
  = C_IsStrictTotalOrder'7580''46'constructor_6029 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158)
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.isEquivalence
d_isEquivalence_532 ::
  T_IsStrictTotalOrder'7580'_522 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_532 v0
  = case coe v0 of
      C_IsStrictTotalOrder'7580''46'constructor_6029 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.trans
d_trans_534 ::
  T_IsStrictTotalOrder'7580'_522 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_534 v0
  = case coe v0 of
      C_IsStrictTotalOrder'7580''46'constructor_6029 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.compare
d_compare_536 ::
  T_IsStrictTotalOrder'7580'_522 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_536 v0
  = case coe v0 of
      C_IsStrictTotalOrder'7580''46'constructor_6029 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.isStrictTotalOrderᶜ
d_isStrictTotalOrder'7580'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder'7580'_522 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_isStrictTotalOrder'7580'_538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isStrictTotalOrder'7580'_538 v6
du_isStrictTotalOrder'7580'_538 ::
  T_IsStrictTotalOrder'7580'_522 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
du_isStrictTotalOrder'7580'_538 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24885
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
         (d_isEquivalence_532 (coe v0)) (d_trans_534 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du_trans'8743'tri'8658'resp_716
            (coe d_compare_536 (coe v0))))
      (coe d_compare_536 (coe v0))
