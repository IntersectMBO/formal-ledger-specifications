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

module MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch where

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
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.HasOrder.Instance
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Conway.Conformance.Types.Epoch.additionVia
d_additionVia_12 ::
  () -> (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
d_additionVia_12 ~v0 v1 v2 v3 = du_additionVia_12 v1 v2 v3
du_additionVia_12 ::
  (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
du_additionVia_12 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe v0 (coe du_additionVia_12 (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure
d_EpochStructure_24 = ()
data T_EpochStructure_24
  = C_EpochStructure'46'constructor_1287 MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
                                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                         MAlonzo.Code.Class.Show.Core.T_Show_10
                                         MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
                                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                         (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                         (AgdaAny -> AgdaAny) (Integer -> AgdaAny -> AgdaAny)
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.Slotʳ
d_Slot'691'_58 ::
  T_EpochStructure_24 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_58 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.Epoch
d_Epoch_60 :: T_EpochStructure_24 -> ()
d_Epoch_60 = erased
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.DecEq-Epoch
d_DecEq'45'Epoch_62 ::
  T_EpochStructure_24 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_62 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.Show-Epoch
d_Show'45'Epoch_64 ::
  T_EpochStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_64 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.Slot
d_Slot_66 :: T_EpochStructure_24 -> ()
d_Slot_66 = erased
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.DecPo-Slot
d_DecPo'45'Slot_68 ::
  T_EpochStructure_24 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_68 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.DecEq-Slot
d_DecEq'45'Slot_70 ::
  T_EpochStructure_24 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_70 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.epoch
d_epoch_72 :: T_EpochStructure_24 -> AgdaAny -> AgdaAny
d_epoch_72 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.firstSlot
d_firstSlot_74 :: T_EpochStructure_24 -> AgdaAny -> AgdaAny
d_firstSlot_74 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.StabilityWindow
d_StabilityWindow_76 :: T_EpochStructure_24 -> AgdaAny
d_StabilityWindow_76 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.sucᵉ
d_suc'7497'_78 :: T_EpochStructure_24 -> AgdaAny -> AgdaAny
d_suc'7497'_78 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure._+ᵉ_
d__'43''7497'__80 ::
  T_EpochStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__80 v0
  = coe du_additionVia_12 (coe d_suc'7497'_78 (coe v0))
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure._+ᵉ'_
d__'43''7497'''__82 ::
  T_EpochStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__82 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_88 ::
  T_EpochStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_88 = erased
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.preoEpoch
d_preoEpoch_90 ::
  T_EpochStructure_24 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_90 v0
  = coe
      MAlonzo.Code.Interface.HasOrder.du_hasPreorderFromStrictPartialOrder_438
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14045
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Interface.HasOrder.du_'60''45'trans_192
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_hasPartialOrder_228
                 (coe d_DecPo'45'Slot_68 (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (d_firstSlot_74 (coe v0)) (\ v4 v5 -> v4) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_74 (coe v0)) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_74 (coe v0)) v2 v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe (\ v1 v2 v3 v4 v5 -> v5)) (coe (\ v1 v2 v3 v4 v5 -> v5))))
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.ℕtoEpoch
d_ℕtoEpoch_244 :: T_EpochStructure_24 -> Integer -> AgdaAny
d_ℕtoEpoch_244 v0 v1
  = case coe v1 of
      0 -> coe
             d_epoch_72 v0
             (MAlonzo.Code.Algebra.Bundles.d_0'35'_2308
                (coe d_Slot'691'_58 (coe v0)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe d_suc'7497'_78 v0 (d_ℕtoEpoch_244 (coe v0) (coe v2)))
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.addSlot
d_addSlot_248 ::
  T_EpochStructure_24 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_248 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'43'__2304
         (coe d_Slot'691'_58 (coe v0)))
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.addEpoch
d_addEpoch_250 ::
  T_EpochStructure_24 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_250 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         (\ v1 v2 ->
            coe
              d_epoch_72 v0
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'43'__2304
                 (d_Slot'691'_58 (coe v0)) (coe d_firstSlot_74 v0 v1)
                 (coe d_firstSlot_74 v0 v2))))
-- Ledger.Conway.Conformance.Types.Epoch.EpochStructure.Number-Epoch
d_Number'45'Epoch_256 ::
  T_EpochStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_256 v0
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_55
      (\ v1 v2 -> d_ℕtoEpoch_244 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants
d_GlobalConstants_260 = ()
data T_GlobalConstants_260
  = C_GlobalConstants'46'constructor_6069 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                          MAlonzo.Code.Class.Show.Core.T_Show_10 Integer
                                          MAlonzo.Code.Data.Nat.Base.T_NonZero_112 Integer Integer
                                          AgdaAny
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.Network
d_Network_278 :: T_GlobalConstants_260 -> ()
d_Network_278 = erased
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.DecEq-Netw
d_DecEq'45'Netw_280 ::
  T_GlobalConstants_260 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_280 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.Show-Network
d_Show'45'Network_282 ::
  T_GlobalConstants_260 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_282 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_284 :: T_GlobalConstants_260 -> Integer
d_SlotsPerEpoch'7580'_284 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_286 ::
  T_GlobalConstants_260 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_286 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.StabilityWindowᶜ
d_StabilityWindow'7580'_288 :: T_GlobalConstants_260 -> Integer
d_StabilityWindow'7580'_288 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.Quorum
d_Quorum_290 :: T_GlobalConstants_260 -> Integer
d_Quorum_290 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.NetworkId
d_NetworkId_292 :: T_GlobalConstants_260 -> AgdaAny
d_NetworkId_292 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_298 ::
  T_GlobalConstants_260 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_298 = erased
-- Ledger.Conway.Conformance.Types.Epoch.GlobalConstants.ℕEpochStructure
d_ℕEpochStructure_306 ::
  T_GlobalConstants_260 -> T_EpochStructure_24
d_ℕEpochStructure_306 v0
  = coe
      C_EpochStructure'46'constructor_1287
      MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
      MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
           (coe d_SlotsPerEpoch'7580'_284 (coe v0)))
      (\ v1 -> mulInt (coe v1) (coe d_SlotsPerEpoch'7580'_284 (coe v0)))
      (d_StabilityWindow'7580'_288 (coe v0))
      (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt
