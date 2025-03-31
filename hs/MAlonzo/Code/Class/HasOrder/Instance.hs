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

module MAlonzo.Code.Class.HasOrder.Instance where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.HasOrder.Instance.ℕ-hasPreorder
d_ℕ'45'hasPreorder_6 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_ℕ'45'hasPreorder_6
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasPreorder'46'constructor_1257
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
           (coe
              (\ v2 ->
                 let v3
                       = coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 v0 v1 in
                 coe
                   (case coe v3 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                        -> if coe v4
                             then case coe v5 of
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                      -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             else coe
                                    seq (coe v5)
                                    (coe
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2944
                                          (coe v1) (coe v2)))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
           (coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880)
              (\ v2 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2794
                   (coe v0))))
-- Class.HasOrder.Instance.ℕ-hasPartialOrder
d_ℕ'45'hasPartialOrder_16 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPartialOrder_176
d_ℕ'45'hasPartialOrder_16
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasPartialOrder'46'constructor_13979
      (coe
         MAlonzo.Code.Class.HasOrder.Core.C_HasPreorder'46'constructor_1257
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
              (coe
                 (\ v2 ->
                    let v3
                          = coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 v0 v1 in
                    coe
                      (case coe v3 of
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                           -> if coe v4
                                then case coe v5 of
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                         -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                else coe
                                       seq (coe v5)
                                       (coe
                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2944
                                             (coe v1) (coe v2)))
                         _ -> MAlonzo.RTE.mazUnreachableError)))
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                 (coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880)
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2794
                      (coe v0)))))
      erased
-- Class.HasOrder.Instance.ℕ-hasDecPartialOrder
d_ℕ'45'hasDecPartialOrder_18 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_ℕ'45'hasDecPartialOrder_18
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasDecPartialOrder'46'constructor_29851
      (coe d_ℕ'45'hasPartialOrder_16)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2824 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2824
                 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1))))
-- Class.HasOrder.Instance.ℕ-hasTotalOrder
d_ℕ'45'hasTotalOrder_20 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasTotalOrder_270
d_ℕ'45'hasTotalOrder_20
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasTotalOrder'46'constructor_30277
      (coe
         MAlonzo.Code.Class.HasOrder.Core.C_HasPartialOrder'46'constructor_13979
         (coe
            MAlonzo.Code.Class.HasOrder.Core.C_HasPreorder'46'constructor_1257
            MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2832
            (\ v0 v1 ->
               coe
                 MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
                 (coe
                    (\ v2 ->
                       let v3
                             = coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 v0 v1 in
                       coe
                         (case coe v3 of
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                              -> if coe v4
                                   then case coe v5 of
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                            -> coe
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   else coe
                                          seq (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2944
                                                (coe v1) (coe v2)))
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                 (coe
                    MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                    (coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2880)
                    (\ v2 ->
                       coe
                         MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2794
                         (coe v0)))))
         erased)
      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_2812)
-- Class.HasOrder.Instance.ℕ-hasDecTotalOrder
d_ℕ'45'hasDecTotalOrder_22 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecTotalOrder_354
d_ℕ'45'hasDecTotalOrder_22
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasDecTotalOrder'46'constructor_40261
      (coe d_ℕ'45'hasTotalOrder_20)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2824 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2824
                 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1))))
-- Class.HasOrder.Instance.ℤ-hasPreorder
d_ℤ'45'hasPreorder_24 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_ℤ'45'hasPreorder_24
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasPreorder'46'constructor_1257
      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2822
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
           (coe
              (\ v2 ->
                 let v3
                       = coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℤ_28 v0 v1 in
                 coe
                   (case coe v3 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                        -> if coe v4
                             then case coe v5 of
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                      -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             else coe
                                    seq (coe v5)
                                    (coe
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                       (coe
                                          MAlonzo.Code.Data.Integer.Properties.du_'8804''8743''8802''8658''60'_2950
                                          (coe v0) (coe v1) (coe v2)))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
           (coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2868)
              (\ v2 ->
                 coe
                   MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2744
                   (coe v0))))
-- Class.HasOrder.Instance.ℤ-hasPartialOrder
d_ℤ'45'hasPartialOrder_34 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPartialOrder_176
d_ℤ'45'hasPartialOrder_34
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasPartialOrder'46'constructor_13979
      (coe
         MAlonzo.Code.Class.HasOrder.Core.C_HasPreorder'46'constructor_1257
         MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2822
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
              (coe
                 (\ v2 ->
                    let v3
                          = coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℤ_28 v0 v1 in
                    coe
                      (case coe v3 of
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                           -> if coe v4
                                then case coe v5 of
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                         -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                else coe
                                       seq (coe v5)
                                       (coe
                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                          (coe
                                             MAlonzo.Code.Data.Integer.Properties.du_'8804''8743''8802''8658''60'_2950
                                             (coe v0) (coe v1) (coe v2)))
                         _ -> MAlonzo.RTE.mazUnreachableError)))
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                 (coe MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2868)
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2744
                      (coe v0)))))
      erased
-- Class.HasOrder.Instance.ℤ-hasDecPartialOrder
d_ℤ'45'hasDecPartialOrder_36 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_ℤ'45'hasDecPartialOrder_36
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasDecPartialOrder'46'constructor_29851
      (coe d_ℤ'45'hasPartialOrder_34)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2794 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'60''63'__3104 (coe v0)
                 (coe v1))))
-- Class.HasOrder.Instance.ℤ-hasTotalOrder
d_ℤ'45'hasTotalOrder_38 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasTotalOrder_270
d_ℤ'45'hasTotalOrder_38
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasTotalOrder'46'constructor_30277
      (coe
         MAlonzo.Code.Class.HasOrder.Core.C_HasPartialOrder'46'constructor_13979
         (coe
            MAlonzo.Code.Class.HasOrder.Core.C_HasPreorder'46'constructor_1257
            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2822
            (\ v0 v1 ->
               coe
                 MAlonzo.Code.Function.Bundles.du_mk'8660'_2414
                 (coe
                    (\ v2 ->
                       let v3
                             = coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℤ_28 v0 v1 in
                       coe
                         (case coe v3 of
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                              -> if coe v4
                                   then case coe v5 of
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                            -> coe
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   else coe
                                          seq (coe v5)
                                          (coe
                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                             (coe
                                                MAlonzo.Code.Data.Integer.Properties.du_'8804''8743''8802''8658''60'_2950
                                                (coe v0) (coe v1) (coe v2)))
                            _ -> MAlonzo.RTE.mazUnreachableError)))
                 (coe
                    MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                    (coe MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2868)
                    (\ v2 ->
                       coe
                         MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2744
                         (coe v0)))))
         erased)
      (coe MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_2776)
-- Class.HasOrder.Instance.ℤ-hasDecTotalOrder
d_ℤ'45'hasDecTotalOrder_40 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecTotalOrder_354
d_ℤ'45'hasDecTotalOrder_40
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasDecTotalOrder'46'constructor_40261
      (coe d_ℤ'45'hasTotalOrder_38)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2794 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'60''63'__3104 (coe v0)
                 (coe v1))))
-- Class.HasOrder.Instance.ℚ-hasPreorder
d_ℚ'45'hasPreorder_42 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_ℚ'45'hasPreorder_42
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du_hasPreorderFromNonStrict_520
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
      (coe MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706)
-- Class.HasOrder.Instance.ℚ-hasPartialOrder
d_ℚ'45'hasPartialOrder_44 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPartialOrder_176
d_ℚ'45'hasPartialOrder_44
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasPartialOrder'46'constructor_13979
      (coe
         MAlonzo.Code.Class.HasOrder.Core.du_hasPreorderFromNonStrict_520
         (coe
            MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
         (coe MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706))
      erased
-- Class.HasOrder.Instance.ℚ-hasDecPartialOrder
d_ℚ'45'hasDecPartialOrder_46 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_ℚ'45'hasDecPartialOrder_46
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasDecPartialOrder'46'constructor_29851
      (coe d_ℚ'45'hasPartialOrder_44)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_82 v0
                 v1)
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34) (coe v0)
                    (coe v1))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
-- Class.HasOrder.Instance.ℚ-hasTotalOrder
d_ℚ'45'hasTotalOrder_48 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasTotalOrder_270
d_ℚ'45'hasTotalOrder_48
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasTotalOrder'46'constructor_30277
      (coe
         MAlonzo.Code.Class.HasOrder.Core.C_HasPartialOrder'46'constructor_13979
         (coe
            MAlonzo.Code.Class.HasOrder.Core.du_hasPreorderFromNonStrict_520
            (coe
               MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3566)
            (coe MAlonzo.Code.Data.Rational.Properties.d__'8799'__2706))
         erased)
      (coe MAlonzo.Code.Data.Rational.Properties.d_'8804''45'total_3546)
-- Class.HasOrder.Instance.ℚ-hasDecTotalOrder
d_ℚ'45'hasDecTotalOrder_50 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecTotalOrder_354
d_ℚ'45'hasDecTotalOrder_50
  = coe
      MAlonzo.Code.Class.HasOrder.Core.C_HasDecTotalOrder'46'constructor_40261
      (coe d_ℚ'45'hasTotalOrder_48)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3552 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_82 v0
                 v1)
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℚ_34) (coe v0)
                    (coe v1))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
