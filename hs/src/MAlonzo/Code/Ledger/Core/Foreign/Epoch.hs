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

module MAlonzo.Code.Ledger.Core.Foreign.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch

type Epoch = Integer
-- Ledger.Core.Foreign.Epoch.HSGlobalConstants
d_HSGlobalConstants_8 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_HSGlobalConstants_8
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.C_constructor_376
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (4320 :: Integer)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_constructor_120
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156
         (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16) (coe (20 :: Integer)))
      (coe
         MAlonzo.Code.Data.Integer.Base.C_constructor_142
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (10 :: Integer) (10 :: Integer) (1 :: Integer) (1 :: Integer)
      (0 :: Integer)
-- Ledger.Core.Foreign.Epoch.HSEpochStructure
d_HSEpochStructure_10 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_HSEpochStructure_10
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe d_HSGlobalConstants_8)
-- Ledger.Core.Foreign.Epoch._._+ᵉ_
d__'43''7497'__14 :: Integer -> Integer -> Integer
d__'43''7497'__14
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._._+ᵉ'_
d__'43''7497'''__16 :: Integer -> Integer -> Integer
d__'43''7497'''__16
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_18 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_18 = erased
-- Ledger.Core.Foreign.Epoch._.DecEq-Epoch
d_DecEq'45'Epoch_20 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_20
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.DecEq-Slot
d_DecEq'45'Slot_22 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_22
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.DecPo-Slot
d_DecPo'45'Slot_24 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_24
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.Epoch
d_Epoch_26 :: ()
d_Epoch_26 = erased
-- Ledger.Core.Foreign.Epoch._.Number-Epoch
d_Number'45'Epoch_28 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_28
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_30 :: Integer
d_RandomnessStabilisationWindow_30
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.Show-Epoch
d_Show'45'Epoch_32 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_32
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.Slot
d_Slot_34 :: ()
d_Slot_34 = erased
-- Ledger.Core.Foreign.Epoch._.Slotʳ
d_Slot'691'_36 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_36
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.StabilityWindow
d_StabilityWindow_38 :: Integer
d_StabilityWindow_38
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.addEpoch
d_addEpoch_40 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_40
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.addSlot
d_addSlot_42 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_42
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.e<sucᵉ
d_e'60'suc'7497'_44 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_44
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.epoch
d_epoch_46 :: Integer -> Integer
d_epoch_46
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.firstSlot
d_firstSlot_48 :: Integer -> Integer
d_firstSlot_48
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.preoEpoch
d_preoEpoch_50 :: MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_50
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.sucᵉ
d_suc'7497'_52 :: Integer -> Integer
d_suc'7497'_52
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.ℕtoEpoch
d_ℕtoEpoch_54 :: Integer -> Integer
d_ℕtoEpoch_54
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_HSEpochStructure_10)
-- Ledger.Core.Foreign.Epoch._.≤-predᵉ
d_'8804''45'pred'7497'_56 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_56
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_HSEpochStructure_10)
