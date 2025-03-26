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
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Types.Epoch.additionVia
d_additionVia_8 ::
  () -> (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
d_additionVia_8 ~v0 v1 v2 v3 = du_additionVia_8 v1 v2 v3
du_additionVia_8 ::
  (AgdaAny -> AgdaAny) -> Integer -> AgdaAny -> AgdaAny
du_additionVia_8 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe v0 (coe du_additionVia_8 (coe v0) (coe v3) (coe v2)))
-- Ledger.Types.Epoch.EpochStructure
d_EpochStructure_20 = ()
data T_EpochStructure_20
  = C_EpochStructure'46'constructor_1287 MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
                                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                         MAlonzo.Code.Class.Show.Core.T_Show_10
                                         MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
                                         MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                         (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                         (AgdaAny -> AgdaAny) (Integer -> AgdaAny -> AgdaAny)
-- Ledger.Types.Epoch.EpochStructure.Slotʳ
d_Slot'691'_54 ::
  T_EpochStructure_20 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_54 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.Epoch
d_Epoch_56 :: T_EpochStructure_20 -> ()
d_Epoch_56 = erased
-- Ledger.Types.Epoch.EpochStructure.DecEq-Epoch
d_DecEq'45'Epoch_58 ::
  T_EpochStructure_20 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_58 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.Show-Epoch
d_Show'45'Epoch_60 ::
  T_EpochStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_60 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.Slot
d_Slot_62 :: T_EpochStructure_20 -> ()
d_Slot_62 = erased
-- Ledger.Types.Epoch.EpochStructure.DecPo-Slot
d_DecPo'45'Slot_64 ::
  T_EpochStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_64 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.DecEq-Slot
d_DecEq'45'Slot_66 ::
  T_EpochStructure_20 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_66 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.epoch
d_epoch_68 :: T_EpochStructure_20 -> AgdaAny -> AgdaAny
d_epoch_68 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.firstSlot
d_firstSlot_70 :: T_EpochStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_70 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.StabilityWindow
d_StabilityWindow_72 :: T_EpochStructure_20 -> AgdaAny
d_StabilityWindow_72 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.sucᵉ
d_suc'7497'_74 :: T_EpochStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_74 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure._+ᵉ_
d__'43''7497'__76 ::
  T_EpochStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__76 v0
  = coe du_additionVia_8 (coe d_suc'7497'_74 (coe v0))
-- Ledger.Types.Epoch.EpochStructure._+ᵉ'_
d__'43''7497'''__78 ::
  T_EpochStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__78 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_1287 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.EpochStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_84 ::
  T_EpochStructure_20 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_84 = erased
-- Ledger.Types.Epoch.EpochStructure.preoEpoch
d_preoEpoch_86 ::
  T_EpochStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_86 v0
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du_hasPreorderFromStrictPartialOrder_440
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14045
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Class.HasOrder.Core.du_'60''45'trans_194
              (coe
                 MAlonzo.Code.Class.HasOrder.Core.d_hasPartialOrder_230
                 (coe d_DecPo'45'Slot_64 (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (d_firstSlot_70 (coe v0)) (\ v4 v5 -> v4) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_70 (coe v0)) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_70 (coe v0)) v2 v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe (\ v1 v2 v3 v4 v5 -> v5)) (coe (\ v1 v2 v3 v4 v5 -> v5))))
-- Ledger.Types.Epoch.EpochStructure.ℕtoEpoch
d_ℕtoEpoch_240 :: T_EpochStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_240 v0 v1
  = case coe v1 of
      0 -> coe
             d_epoch_68 v0
             (MAlonzo.Code.Algebra.Bundles.d_0'35'_2308
                (coe d_Slot'691'_54 (coe v0)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe d_suc'7497'_74 v0 (d_ℕtoEpoch_240 (coe v0) (coe v2)))
-- Ledger.Types.Epoch.EpochStructure.addSlot
d_addSlot_244 ::
  T_EpochStructure_20 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_244 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_7
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'43'__2304
         (coe d_Slot'691'_54 (coe v0)))
-- Ledger.Types.Epoch.EpochStructure.addEpoch
d_addEpoch_246 ::
  T_EpochStructure_20 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_246 v0
  = coe
      MAlonzo.Code.Class.HasAdd.Core.C_HasAdd'46'constructor_7
      (coe
         (\ v1 v2 ->
            coe
              d_epoch_68 v0
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'43'__2304
                 (d_Slot'691'_54 (coe v0)) (coe d_firstSlot_70 v0 v1)
                 (coe d_firstSlot_70 v0 v2))))
-- Ledger.Types.Epoch.EpochStructure.Number-Epoch
d_Number'45'Epoch_252 ::
  T_EpochStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_252 v0
  = coe
      MAlonzo.Code.Agda.Builtin.FromNat.C_Number'46'constructor_55
      (\ v1 v2 -> d_ℕtoEpoch_240 (coe v0) (coe v1))
-- Ledger.Types.Epoch.GlobalConstants
d_GlobalConstants_256 = ()
data T_GlobalConstants_256
  = C_GlobalConstants'46'constructor_6069 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                          MAlonzo.Code.Class.Show.Core.T_Show_10 Integer
                                          MAlonzo.Code.Data.Nat.Base.T_NonZero_112 Integer Integer
                                          AgdaAny
-- Ledger.Types.Epoch.GlobalConstants.Network
d_Network_274 :: T_GlobalConstants_256 -> ()
d_Network_274 = erased
-- Ledger.Types.Epoch.GlobalConstants.DecEq-Netw
d_DecEq'45'Netw_276 ::
  T_GlobalConstants_256 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_276 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.Show-Network
d_Show'45'Network_278 ::
  T_GlobalConstants_256 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_278 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_280 :: T_GlobalConstants_256 -> Integer
d_SlotsPerEpoch'7580'_280 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_282 ::
  T_GlobalConstants_256 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_282 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.StabilityWindowᶜ
d_StabilityWindow'7580'_284 :: T_GlobalConstants_256 -> Integer
d_StabilityWindow'7580'_284 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.Quorum
d_Quorum_286 :: T_GlobalConstants_256 -> Integer
d_Quorum_286 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.NetworkId
d_NetworkId_288 :: T_GlobalConstants_256 -> AgdaAny
d_NetworkId_288 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_6069 v2 v3 v4 v5 v6 v7 v8
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.Epoch.GlobalConstants.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_294 ::
  T_GlobalConstants_256 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_294 = erased
-- Ledger.Types.Epoch.GlobalConstants.ℕEpochStructure
d_ℕEpochStructure_302 ::
  T_GlobalConstants_256 -> T_EpochStructure_20
d_ℕEpochStructure_302 v0
  = coe
      C_EpochStructure'46'constructor_1287
      MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
      MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
           (coe d_SlotsPerEpoch'7580'_280 (coe v0)))
      (\ v1 -> mulInt (coe v1) (coe d_SlotsPerEpoch'7580'_280 (coe v0)))
      (d_StabilityWindow'7580'_284 (coe v0))
      (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt
