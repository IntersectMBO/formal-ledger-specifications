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
import qualified MAlonzo.Code.Class.HasOrder.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
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
  = C_constructor_290 MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 (AgdaAny -> AgdaAny)
                      (AgdaAny -> AgdaAny) AgdaAny AgdaAny (AgdaAny -> AgdaAny)
                      (Integer -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                      (AgdaAny ->
                       AgdaAny ->
                       MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
                       MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Core.Specification.Epoch.EpochStructure.Slotʳ
d_Slot'691'_76 ::
  T_EpochStructure_22 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_76 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.Epoch
d_Epoch_78 :: T_EpochStructure_22 -> ()
d_Epoch_78 = erased
-- Ledger.Core.Specification.Epoch.EpochStructure.DecEq-Epoch
d_DecEq'45'Epoch_80 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_80 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.Show-Epoch
d_Show'45'Epoch_82 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_82 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.Slot
d_Slot_84 :: T_EpochStructure_22 -> ()
d_Slot_84 = erased
-- Ledger.Core.Specification.Epoch.EpochStructure.DecPo-Slot
d_DecPo'45'Slot_86 ::
  T_EpochStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_86 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.DecEq-Slot
d_DecEq'45'Slot_88 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_88 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.epoch
d_epoch_90 :: T_EpochStructure_22 -> AgdaAny -> AgdaAny
d_epoch_90 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.firstSlot
d_firstSlot_92 :: T_EpochStructure_22 -> AgdaAny -> AgdaAny
d_firstSlot_92 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_94 ::
  T_EpochStructure_22 -> AgdaAny
d_RandomnessStabilisationWindow_94 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.StabilityWindow
d_StabilityWindow_96 :: T_EpochStructure_22 -> AgdaAny
d_StabilityWindow_96 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.sucᵉ
d_suc'7497'_98 :: T_EpochStructure_22 -> AgdaAny -> AgdaAny
d_suc'7497'_98 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure._+ᵉ_
d__'43''7497'__100 ::
  T_EpochStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__100 v0
  = coe du_additionVia_10 (coe d_suc'7497'_98 (coe v0))
-- Ledger.Core.Specification.Epoch.EpochStructure._+ᵉ'_
d__'43''7497'''__102 ::
  T_EpochStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__102 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_108 ::
  T_EpochStructure_22 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_108 = erased
-- Ledger.Core.Specification.Epoch.EpochStructure.preoEpoch
d_preoEpoch_110 ::
  T_EpochStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_110 v0
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du_hasPreorderFromStrictPartialOrder_610
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Class.HasOrder.Core.du_'60''45'trans_206
              (coe
                 MAlonzo.Code.Class.HasOrder.Core.d_hasPartialOrder_270
                 (coe d_DecPo'45'Slot_86 (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (d_firstSlot_92 (coe v0)) (\ v4 v5 -> v4) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_92 (coe v0)) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_92 (coe v0)) v2 v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe (\ v1 v2 v3 v4 v5 -> v5)) (coe (\ v1 v2 v3 v4 v5 -> v5))))
-- Ledger.Core.Specification.Epoch.EpochStructure.e<sucᵉ
d_e'60'suc'7497'_120 :: T_EpochStructure_22 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_120 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.≤-predᵉ
d_'8804''45'pred'7497'_126 ::
  T_EpochStructure_22 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_126 v0
  = case coe v0 of
      C_constructor_290 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v14 v15
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.EpochStructure.ℕtoEpoch
d_ℕtoEpoch_274 :: T_EpochStructure_22 -> Integer -> AgdaAny
d_ℕtoEpoch_274 v0 v1
  = case coe v1 of
      0 -> coe
             d_epoch_90 v0
             (MAlonzo.Code.Algebra.Bundles.d_0'35'_2384
                (coe d_Slot'691'_76 (coe v0)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe d_suc'7497'_98 v0 (d_ℕtoEpoch_274 (coe v0) (coe v2)))
-- Ledger.Core.Specification.Epoch.EpochStructure.addSlot
d_addSlot_278 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_278 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_constructor_18
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'43'__2380
         (coe d_Slot'691'_76 (coe v0)))
-- Ledger.Core.Specification.Epoch.EpochStructure.addEpoch
d_addEpoch_280 ::
  T_EpochStructure_22 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_280 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_constructor_18
      (coe
         (\ v1 v2 ->
            coe
              d_epoch_90 v0
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                 (d_Slot'691'_76 (coe v0)) (coe d_firstSlot_92 v0 v1)
                 (coe d_firstSlot_92 v0 v2))))
-- Ledger.Core.Specification.Epoch.EpochStructure.Number-Epoch
d_Number'45'Epoch_286 ::
  T_EpochStructure_22 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_286 v0
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_constructor_32
      (\ v1 v2 -> d_ℕtoEpoch_274 (coe v0) (coe v1))
-- Ledger.Core.Specification.Epoch.GlobalConstants
d_GlobalConstants_292 = ()
data T_GlobalConstants_292
  = C_constructor_376 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10 Integer
                      MAlonzo.Code.Data.Nat.Base.T_NonZero_112
                      MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                      MAlonzo.Code.Data.Integer.Base.T_Positive_134 Integer Integer
                      Integer Integer AgdaAny
-- Ledger.Core.Specification.Epoch.GlobalConstants.Network
d_Network_318 :: T_GlobalConstants_292 -> ()
d_Network_318 = erased
-- Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw
d_DecEq'45'Netw_320 ::
  T_GlobalConstants_292 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_320 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.Show-Network
d_Show'45'Network_322 ::
  T_GlobalConstants_292 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_322 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_324 :: T_GlobalConstants_292 -> Integer
d_SlotsPerEpoch'7580'_324 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_326 ::
  T_GlobalConstants_292 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_326 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.ActiveSlotCoeff
d_ActiveSlotCoeff_328 ::
  T_GlobalConstants_292 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_328 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_330 ::
  T_GlobalConstants_292 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_330 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_332 ::
  T_GlobalConstants_292 -> Integer
d_RandomnessStabilisationWindow'7580'_332 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.StabilityWindowᶜ
d_StabilityWindow'7580'_334 :: T_GlobalConstants_292 -> Integer
d_StabilityWindow'7580'_334 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_336 :: T_GlobalConstants_292 -> Integer
d_MaxLovelaceSupply'7580'_336 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.Quorum
d_Quorum_338 :: T_GlobalConstants_292 -> Integer
d_Quorum_338 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId
d_NetworkId_340 :: T_GlobalConstants_292 -> AgdaAny
d_NetworkId_340 v0
  = case coe v0 of
      C_constructor_376 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Epoch.GlobalConstants.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_342 ::
  T_GlobalConstants_292 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_342 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.d_'62''45'nonZero_224
      (coe d_ActiveSlotCoeff_328 (coe v0))
      (coe
         MAlonzo.Code.Data.Rational.Properties.du_positive'8315''185'_3986
         (coe d_ActiveSlotCoeff_328 (coe v0)))
-- Ledger.Core.Specification.Epoch.GlobalConstants.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_348 ::
  T_GlobalConstants_292 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_348 = erased
-- Ledger.Core.Specification.Epoch.GlobalConstants.ℕEpochStructure
d_ℕEpochStructure_356 ::
  T_GlobalConstants_292 -> T_EpochStructure_22
d_ℕEpochStructure_356 v0 = coe d_'46'extendedlambda0_362 (coe v0)
-- Ledger.Core.Specification.Epoch.GlobalConstants._..extendedlambda0
d_'46'extendedlambda0_362 ::
  T_GlobalConstants_292 -> T_EpochStructure_22
d_'46'extendedlambda0_362 v0
  = coe
      C_constructor_290
      MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3886
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
      MAlonzo.Code.Class.HasOrder.Instances.d_ℕ'45'hasDecPartialOrder_18
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.Base.du__'47'__318 (coe v1)
           (coe d_SlotsPerEpoch'7580'_324 (coe v0)))
      (\ v1 -> mulInt (coe v1) (coe d_SlotsPerEpoch'7580'_324 (coe v0)))
      (d_RandomnessStabilisationWindow'7580'_332 (coe v0))
      (d_StabilityWindow'7580'_334 (coe v0))
      (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.Properties.d_'43''45'mono'737''45''8804'_3682
           (mulInt (coe v1) (coe d_SlotsPerEpoch'7580'_324 (coe v0)))
           (1 :: Integer) (d_SlotsPerEpoch'7580'_324 (coe v0))
           (coe MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero'8315''185'_148))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
           (\ v3 ->
              coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'43''45'cancel'737''45''60'_3576
                   (coe d_SlotsPerEpoch'7580'_324 (coe v0)) (coe v3)))
           (\ v3 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
