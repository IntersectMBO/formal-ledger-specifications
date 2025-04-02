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
d_IsEquivalence_32 a0 a1 a2 a3 = ()
-- Relation.Binary.Structures.Biased._.IsStrictTotalOrder
d_IsStrictTotalOrder_42 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Structures.Biased._.IsEquivalence.refl
d_refl_326 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  AgdaAny -> AgdaAny
d_refl_326 v0
  = coe MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v0)
-- Relation.Binary.Structures.Biased._.IsEquivalence.sym
d_sym_330 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_330 v0
  = coe MAlonzo.Code.Relation.Binary.Structures.d_sym_36 (coe v0)
-- Relation.Binary.Structures.Biased._.IsEquivalence.trans
d_trans_332 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_332 v0
  = coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v0)
-- Relation.Binary.Structures.Biased._.IsStrictTotalOrder.compare
d_compare_454 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_compare_610 (coe v0)
-- Relation.Binary.Structures.Biased._.IsStrictTotalOrder.isStrictPartialOrder
d_isStrictPartialOrder_464 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_isStrictPartialOrder_464 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
      (coe v0)
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ
d_IsStrictTotalOrder'7580'_574 a0 a1 a2 a3 a4 a5 = ()
data T_IsStrictTotalOrder'7580'_574
  = C_IsStrictTotalOrder'7580''46'constructor_6685 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158)
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.isEquivalence
d_isEquivalence_584 ::
  T_IsStrictTotalOrder'7580'_574 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_584 v0
  = case coe v0 of
      C_IsStrictTotalOrder'7580''46'constructor_6685 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.trans
d_trans_586 ::
  T_IsStrictTotalOrder'7580'_574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_586 v0
  = case coe v0 of
      C_IsStrictTotalOrder'7580''46'constructor_6685 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.compare
d_compare_588 ::
  T_IsStrictTotalOrder'7580'_574 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_588 v0
  = case coe v0 of
      C_IsStrictTotalOrder'7580''46'constructor_6685 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.Biased.IsStrictTotalOrderᶜ.isStrictTotalOrderᶜ
d_isStrictTotalOrder'7580'_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder'7580'_574 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_isStrictTotalOrder'7580'_590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isStrictTotalOrder'7580'_590 v6
du_isStrictTotalOrder'7580'_590 ::
  T_IsStrictTotalOrder'7580'_574 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
du_isStrictTotalOrder'7580'_590 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_27253
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_16311
         (d_isEquivalence_584 (coe v0)) (d_trans_586 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du_trans'8743'tri'8658'resp_716
            (coe d_compare_588 (coe v0))))
      (coe d_compare_588 (coe v0))
