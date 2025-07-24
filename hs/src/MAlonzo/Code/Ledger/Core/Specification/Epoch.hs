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

module MAlonzo.Code.Ledger.Core.Specification.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasOrder.Instance
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Core.Specification.Epoch.additionVia
d_additionVia_10 ::
  () -> (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
d_additionVia_10 ~v0 v1 v2 v3 = du_additionVia_10 v1 v2 v3
du_additionVia_10 ::
  (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
du_additionVia_10 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe v0 (coe du_additionVia_10 (coe v0) (coe v3) (coe v2)))
-- Ledger.Core.Specification.Epoch.EpochStructure
d_EpochStructure_22 = ()
data T_EpochStructure_22
  = C_EpochStructure'46'constructor_1323 MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
                                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                         MAlonzo.Code.Class.Show.Core.T_Show_10
                                         MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
                                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                         (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                         (AgdaAny -> AgdaAny) (Integer -> AgdaAny -> AgdaAny)
-- Ledger.Core.Specification.Epoch.EpochStructure.Slotʳ
d_Slot'691'_56 ::
  T_EpochStructure_22 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_56 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.Epoch
d_Epoch_58 :: T_EpochStructure_22 -> ()
d_Epoch_58 = erased
-- Ledger.Core.Specification.Epoch.EpochStructure.DecEq-Epoch
d_DecEq'45'Epoch_60 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_60 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.Show-Epoch
d_Show'45'Epoch_62 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_62 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.Slot
d_Slot_64 :: T_EpochStructure_22 -> ()
d_Slot_64 = erased
-- Ledger.Core.Specification.Epoch.EpochStructure.DecPo-Slot
d_DecPo'45'Slot_66 ::
  T_EpochStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_66 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.DecEq-Slot
d_DecEq'45'Slot_68 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_68 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.epoch
d_epoch_70 :: T_EpochStructure_22 -> AgdaAny -> AgdaAny
d_epoch_70 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.firstSlot
d_firstSlot_72 :: T_EpochStructure_22 -> AgdaAny -> AgdaAny
d_firstSlot_72 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.StabilityWindow
d_StabilityWindow_74 :: T_EpochStructure_22 -> AgdaAny
d_StabilityWindow_74 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.sucᵉ
d_suc'7497'_76 :: T_EpochStructure_22 -> AgdaAny -> AgdaAny
d_suc'7497'_76 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure._+ᵉ_
d__'43''7497'__78 ::
  T_EpochStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__78 v0
  = coe du_additionVia_10 (coe d_suc'7497'_76 (coe v0))
-- Ledger.Core.Specification.Epoch.EpochStructure._+ᵉ'_
d__'43''7497'''__80 ::
  T_EpochStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__80 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1323 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_86 ::
  T_EpochStructure_22 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_86 = erased
-- Ledger.Core.Specification.Epoch.EpochStructure.preoEpoch
d_preoEpoch_88 ::
  T_EpochStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_88 v0
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du_hasPreorderFromStrictPartialOrder_598
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_16311
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Class.HasOrder.Core.du_'60''45'trans_202
              (coe
                 MAlonzo.Code.Class.HasOrder.Core.d_hasPartialOrder_264
                 (coe d_DecPo'45'Slot_66 (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (d_firstSlot_72 (coe v0)) (\ v4 v5 -> v4) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_72 (coe v0)) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_72 (coe v0)) v2 v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe (\ v1 v2 v3 v4 v5 -> v5)) (coe (\ v1 v2 v3 v4 v5 -> v5))))
-- Ledger.Core.Specification.Epoch.EpochStructure.ℕtoEpoch
d_ℕtoEpoch_242 :: T_EpochStructure_22 -> Integer -> AgdaAny
d_ℕtoEpoch_242 v0 v1
  = case coe v1 of
      0 -> coe
             d_epoch_70 v0
             (MAlonzo.Code.Algebra.Bundles.d_0'35'_2332
                (coe d_Slot'691'_56 (coe v0)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe d_suc'7497'_76 v0 (d_ℕtoEpoch_242 (coe v0) (coe v2)))
-- Ledger.Core.Specification.Epoch.EpochStructure.addSlot
d_addSlot_246 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_246 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_25
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'43'__2328
         (coe d_Slot'691'_56 (coe v0)))
-- Ledger.Core.Specification.Epoch.EpochStructure.addEpoch
d_addEpoch_248 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_248 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_25
      (coe
         (\ v1 v2 ->
            coe
              d_epoch_70 v0
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'43'__2328
                 (d_Slot'691'_56 (coe v0)) (coe d_firstSlot_72 v0 v1)
                 (coe d_firstSlot_72 v0 v2))))
-- Ledger.Core.Specification.Epoch.EpochStructure.Number-Epoch
d_Number'45'Epoch_254 ::
  T_EpochStructure_22 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_254 v0
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_55
      (\ v1 v2 -> d_ℕtoEpoch_242 (coe v0) (coe v1))
-- Ledger.Core.Specification.Epoch.GlobalConstants
d_GlobalConstants_258 = ()
data T_GlobalConstants_258
  = C_GlobalConstants'46'constructor_6529 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                          MAlonzo.Code.Class.Show.Core.T_Show_10 Integer
                                          MAlonzo.Code.Data.Nat.Base.T_NonZero_112
                                          MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                          MAlonzo.Code.Data.Integer.Base.T_Positive_134 Integer
                                          Integer AgdaAny
-- Ledger.Core.Specification.Epoch.GlobalConstants.Network
d_Network_280 :: T_GlobalConstants_258 -> ()
d_Network_280 = erased
-- Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw
d_DecEq'45'Netw_282 ::
  T_GlobalConstants_258 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_282 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.Show-Network
d_Show'45'Network_284 ::
  T_GlobalConstants_258 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_284 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_286 :: T_GlobalConstants_258 -> Integer
d_SlotsPerEpoch'7580'_286 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_288 ::
  T_GlobalConstants_258 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_288 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.ActiveSlotCoeff
d_ActiveSlotCoeff_290 ::
  T_GlobalConstants_258 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_290 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_292 ::
  T_GlobalConstants_258 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_292 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.StabilityWindowᶜ
d_StabilityWindow'7580'_294 :: T_GlobalConstants_258 -> Integer
d_StabilityWindow'7580'_294 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.Quorum
d_Quorum_296 :: T_GlobalConstants_258 -> Integer
d_Quorum_296 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId
d_NetworkId_298 :: T_GlobalConstants_258 -> AgdaAny
d_NetworkId_298 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6529 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_300 ::
  T_GlobalConstants_258 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_300 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.d_'62''45'nonZero_224
      (coe d_ActiveSlotCoeff_290 (coe v0))
      (coe
         MAlonzo.Code.Data.Rational.Properties.du_positive'8315''185'_3916
         (coe d_ActiveSlotCoeff_290 (coe v0)))
-- Ledger.Core.Specification.Epoch.GlobalConstants.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_306 ::
  T_GlobalConstants_258 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_306 = erased
-- Ledger.Core.Specification.Epoch.GlobalConstants.ℕEpochStructure
d_ℕEpochStructure_314 ::
  T_GlobalConstants_258 -> T_EpochStructure_22
d_ℕEpochStructure_314 v0
  = coe
      C_EpochStructure'46'constructor_1323
      MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3794
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
      MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
           (coe d_SlotsPerEpoch'7580'_286 (coe v0)))
      (\ v1 -> mulInt (coe v1) (coe d_SlotsPerEpoch'7580'_286 (coe v0)))
      (d_StabilityWindow'7580'_294 (coe v0))
      (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt
