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

module MAlonzo.Code.Ledger.Types.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.HasOrder.Instance
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Types.Epoch.EpochStructure
d_EpochStructure_6 = ()
data T_EpochStructure_6
  = C_EpochStructure'46'constructor_237 MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
                                        MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                        MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
                                        MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                        (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                        (AgdaAny -> AgdaAny)
-- Ledger.Types.Epoch.EpochStructure.Slotʳ
d_Slot'691'_28 ::
  T_EpochStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_28 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.Epoch
d_Epoch_30 :: T_EpochStructure_6 -> ()
d_Epoch_30 = erased
-- Ledger.Types.Epoch.EpochStructure.DecEq-Epoch
d_DecEq'45'Epoch_32 ::
  T_EpochStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_32 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.Slot
d_Slot_34 :: T_EpochStructure_6 -> ()
d_Slot_34 = erased
-- Ledger.Types.Epoch.EpochStructure.DecPo-Slot
d_DecPo'45'Slot_36 ::
  T_EpochStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_36 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.DecEq-Slot
d_DecEq'45'Slot_38 ::
  T_EpochStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_38 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.epoch
d_epoch_40 :: T_EpochStructure_6 -> AgdaAny -> AgdaAny
d_epoch_40 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.firstSlot
d_firstSlot_42 :: T_EpochStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_42 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.StabilityWindow
d_StabilityWindow_44 :: T_EpochStructure_6 -> AgdaAny
d_StabilityWindow_44 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.sucᵉ
d_suc'7497'_46 :: T_EpochStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_46 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_237 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.preoEpoch
d_preoEpoch_48 ::
  T_EpochStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_48 v0
  = coe
      MAlonzo.Code.Interface.HasOrder.du_hasPreorderFromStrictPartialOrder_438
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Interface.HasOrder.du_'60''45'trans_192
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_hasPartialOrder_228
                 (coe d_DecPo'45'Slot_36 (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (d_firstSlot_42 (coe v0)) (\ v4 v5 -> v4) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_42 (coe v0)) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_42 (coe v0)) v2 v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe (\ v1 v2 v3 v4 v5 -> v5)) (coe (\ v1 v2 v3 v4 v5 -> v5))))
-- Ledger.Types.Epoch.EpochStructure.ℕtoEpoch
d_ℕtoEpoch_202 :: T_EpochStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_202 v0 v1
  = case coe v1 of
      0 -> coe
             d_epoch_40 v0
             (MAlonzo.Code.Algebra.Bundles.d_0'35'_2050
                (coe d_Slot'691'_28 (coe v0)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe d_suc'7497'_46 v0 (d_ℕtoEpoch_202 (coe v0) (coe v2)))
-- Ledger.Types.Epoch.EpochStructure._+ᵉ_
d__'43''7497'__206 ::
  T_EpochStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__206 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                d_suc'7497'_46 v0 (d__'43''7497'__206 (coe v0) (coe v3) (coe v2)))
-- Ledger.Types.Epoch.EpochStructure.addSlot
d_addSlot_214 ::
  T_EpochStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_214 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'43'__2046
         (coe d_Slot'691'_28 (coe v0)))
-- Ledger.Types.Epoch.EpochStructure.addEpoch
d_addEpoch_216 ::
  T_EpochStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_216 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         (\ v1 v2 ->
            coe
              d_epoch_40 v0
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'43'__2046
                 (d_Slot'691'_28 (coe v0)) (coe d_firstSlot_42 v0 v1)
                 (coe d_firstSlot_42 v0 v2))))
-- Ledger.Types.Epoch.GlobalConstants
d_GlobalConstants_222 = ()
data T_GlobalConstants_222
  = C_GlobalConstants'46'constructor_4709 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                          Integer MAlonzo.Code.Data.Nat.Base.T_NonZero_104 Integer
                                          Integer AgdaAny
-- Ledger.Types.Epoch.GlobalConstants.Network
d_Network_238 :: T_GlobalConstants_222 -> ()
d_Network_238 = erased
-- Ledger.Types.Epoch.GlobalConstants.DecEq-Netw
d_DecEq'45'Netw_240 ::
  T_GlobalConstants_222 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_240 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4709 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_242 :: T_GlobalConstants_222 -> Integer
d_SlotsPerEpoch'7580'_242 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4709 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_244 ::
  T_GlobalConstants_222 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_NonZero'45'SlotsPerEpoch'7580'_244 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4709 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.StabilityWindowᶜ
d_StabilityWindow'7580'_246 :: T_GlobalConstants_222 -> Integer
d_StabilityWindow'7580'_246 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4709 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.Quorum
d_Quorum_248 :: T_GlobalConstants_222 -> Integer
d_Quorum_248 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4709 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.NetworkId
d_NetworkId_250 :: T_GlobalConstants_222 -> AgdaAny
d_NetworkId_250 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4709 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.ℕEpochStructure
d_ℕEpochStructure_252 ::
  T_GlobalConstants_222 -> T_EpochStructure_6
d_ℕEpochStructure_252 v0
  = coe
      C_EpochStructure'46'constructor_237
      MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3630
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
           (coe d_SlotsPerEpoch'7580'_242 (coe v0)))
      (\ v1 -> mulInt (coe v1) (coe d_SlotsPerEpoch'7580'_242 (coe v0)))
      (d_StabilityWindow'7580'_246 (coe v0))
      (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))
