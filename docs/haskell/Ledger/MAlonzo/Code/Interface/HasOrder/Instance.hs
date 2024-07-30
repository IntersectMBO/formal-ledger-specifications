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

module MAlonzo.Code.Interface.HasOrder.Instance where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Interface.HasOrder.Instance.ℕ-hasPreorder
d_ℕ'45'hasPreorder_6 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_ℕ'45'hasPreorder_6
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPreorder'46'constructor_851
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
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
                                          MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2788
                                          (coe v1) (coe v2)))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
           (coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724)
              (\ v2 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2642
                   (coe v0))))
-- Interface.HasOrder.Instance.ℕ-hasPartialOrder
d_ℕ'45'hasPartialOrder_16 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPartialOrder_166
d_ℕ'45'hasPartialOrder_16
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPartialOrder'46'constructor_9473
      (coe
         MAlonzo.Code.Interface.HasOrder.C_HasPreorder'46'constructor_851
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
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
                                             MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2788
                                             (coe v1) (coe v2)))
                         _ -> MAlonzo.RTE.mazUnreachableError)))
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                 (coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724)
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2642
                      (coe v0)))))
      erased
-- Interface.HasOrder.Instance.ℕ-hasDecPartialOrder
d_ℕ'45'hasDecPartialOrder_18 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_ℕ'45'hasDecPartialOrder_18
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasDecPartialOrder'46'constructor_19617
      (coe d_ℕ'45'hasPartialOrder_16)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1))))
-- Interface.HasOrder.Instance.ℤ-hasPreorder
d_ℤ'45'hasPreorder_20 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_ℤ'45'hasPreorder_20
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPreorder'46'constructor_851
      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
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
                                          MAlonzo.Code.Data.Integer.Properties.du_'8804''8743''8802''8658''60'_2798
                                          (coe v0) (coe v1) (coe v2)))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
           (coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2716)
              (\ v2 ->
                 coe
                   MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2592
                   (coe v0))))
-- Interface.HasOrder.Instance.ℤ-hasPartialOrder
d_ℤ'45'hasPartialOrder_30 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPartialOrder_166
d_ℤ'45'hasPartialOrder_30
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPartialOrder'46'constructor_9473
      (coe
         MAlonzo.Code.Interface.HasOrder.C_HasPreorder'46'constructor_851
         MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
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
                                             MAlonzo.Code.Data.Integer.Properties.du_'8804''8743''8802''8658''60'_2798
                                             (coe v0) (coe v1) (coe v2)))
                         _ -> MAlonzo.RTE.mazUnreachableError)))
              (coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                 (coe MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2716)
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2592
                      (coe v0)))))
      erased
-- Interface.HasOrder.Instance.ℤ-hasDecPartialOrder
d_ℤ'45'hasDecPartialOrder_32 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_ℤ'45'hasDecPartialOrder_32
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasDecPartialOrder'46'constructor_19617
      (coe d_ℤ'45'hasPartialOrder_30)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2642 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Integer.Properties.d__'60''63'__2952 (coe v0)
                 (coe v1))))
-- Interface.HasOrder.Instance.ℚ-hasPreorder
d_ℚ'45'hasPreorder_34 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_ℚ'45'hasPreorder_34
  = coe
      MAlonzo.Code.Interface.HasOrder.du_hasPreorderFromNonStrict_362
      (coe
         MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3416)
      (coe MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554)
-- Interface.HasOrder.Instance.ℚ-hasPartialOrder
d_ℚ'45'hasPartialOrder_36 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPartialOrder_166
d_ℚ'45'hasPartialOrder_36
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPartialOrder'46'constructor_9473
      (coe
         MAlonzo.Code.Interface.HasOrder.du_hasPreorderFromNonStrict_362
         (coe
            MAlonzo.Code.Data.Rational.Properties.d_'8804''45'isPreorder_3416)
         (coe MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554))
      erased
-- Interface.HasOrder.Instance.ℚ-hasDecPartialOrder
d_ℚ'45'hasDecPartialOrder_38 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_ℚ'45'hasDecPartialOrder_38
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasDecPartialOrder'46'constructor_19617
      (coe d_ℚ'45'hasPartialOrder_36)
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3402 (coe v0)
                 (coe v1))))
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
              (coe
                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                 (coe
                    MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3402 (coe v0)
                    (coe v1)))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554)
                    (coe v0) (coe v1))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
