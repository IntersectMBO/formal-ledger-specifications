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

module MAlonzo.Code.Ledger.Types.GovStructure where

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
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Types.GovStructure.GovStructure
d_GovStructure_6 = ()
data T_GovStructure_6
  = C_GovStructure'46'constructor_2505 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_398
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1176
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_230
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_208 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_526 :: T_GovStructure_6 -> ()
d_TxId_526 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_528 :: T_GovStructure_6 -> ()
d_DocHash_528 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_530 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_530 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2505 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_532 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_532 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2505 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_536 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_536 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_538 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_538 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_532 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_540 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_540 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_542 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_542 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_544 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_544 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_546 :: T_GovStructure_6 -> ()
d_THash_546 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_548 :: T_GovStructure_6 -> ()
d_KeyPair_548 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_550 :: T_GovStructure_6 -> ()
d_SKey_550 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_552 :: T_GovStructure_6 -> ()
d_ScriptHash_552 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_554 :: T_GovStructure_6 -> ()
d_Ser_554 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_556 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_556 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_532 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_558 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_558 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_560 :: T_GovStructure_6 -> ()
d_Sig_560 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_562 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_562 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_564 :: T_GovStructure_6 -> ()
d_VKey_564 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_566 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_566 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_568 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_568 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_570 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_570 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_572 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_572 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_532 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_574 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_574 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_532 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_576 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_576 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_578 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_578 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2505 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__582 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__582 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__210
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_584 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_584 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_34
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_586 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_586 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_42
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_588 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_588 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_40
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_590 :: T_GovStructure_6 -> ()
d_Epoch_590 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_592 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_592 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_226
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_594 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_594 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_36
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_596 :: T_GovStructure_6 -> ()
d_Slot_596 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_598 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_598 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_30
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_600 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_600 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_48
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_602 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_602 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_220
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_604 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_604 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_218
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_606 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_606 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_44
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_608 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_608 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_610 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_610 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_52
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_612 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_612 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_50
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_614 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_614 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_206
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_616 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398
d_scriptStructure_616 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2505 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__620 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__620 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_622 :: T_GovStructure_6 -> ()
d_CostModel_622 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_624 :: T_GovStructure_6 -> ()
d_T_624 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_626 :: T_GovStructure_6 -> ()
d_THash_626 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_628 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_628 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_630 :: T_GovStructure_6 -> ()
d_Datum_630 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_632 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_632 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (let v2 = d_epochStructure_578 (coe v0) in
       coe
         (let v3 = d_scriptStructure_616 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_634 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_634 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_636 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_636 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_638 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_640 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_640 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_642 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_644 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_644 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_646 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_646 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (let v2 = d_epochStructure_578 (coe v0) in
       coe
         (let v3 = d_scriptStructure_616 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_648 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_648 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_616 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_650 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_650 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_616 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_652 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_652 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_654 :: T_GovStructure_6 -> ()
d_ExUnits_654 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hash-Timelock
d_Hash'45'Timelock_656 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_656 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_434
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_658 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_658 v0
  = let v1 = d_crypto_532 (coe v0) in
    coe
      (let v2 = d_epochStructure_578 (coe v0) in
       coe
         (let v3 = d_scriptStructure_616 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_660 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_660 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_662 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
      (coe d_crypto_532 (coe v0)) (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_664 :: T_GovStructure_6 -> ()
d_LangDepView_664 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_666 :: T_GovStructure_6 -> ()
d_Language_666 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_668 :: T_GovStructure_6 -> ()
d_P1Script_668 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_670 :: T_GovStructure_6 -> ()
d_PlutusScript_670 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_672 :: T_GovStructure_6 -> AgdaAny
d_PlutusV1_672 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_200
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_674 :: T_GovStructure_6 -> AgdaAny
d_PlutusV2_674 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_202
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_676 :: T_GovStructure_6 -> AgdaAny
d_PlutusV3_676 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_678 :: T_GovStructure_6 -> ()
d_Prices_678 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_680 :: T_GovStructure_6 -> ()
d_Redeemer_680 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_682 :: T_GovStructure_6 -> ()
d_Script_682 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_684 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_684 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_686 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_686 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_688 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_688 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_690 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_690 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_616 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_692 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_692 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_616 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_694 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_694 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_186
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe d_scriptStructure_616 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_696 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_696 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_698 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_698 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_254
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_700 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_p1s_700 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_436 (coe d_crypto_532 (coe v0))
      (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_702 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110
d_ps_702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_450
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_704 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_704 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_616 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_706 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 -> ()
d_validP1Script_706 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_708 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_708 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_712 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_714 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_714 ~v0 = du_DecEq'45'DrepThresholds_714
du_DecEq'45'DrepThresholds_714 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_714
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_432
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_716 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_716 ~v0 = du_DecEq'45'PParamGroup_716
du_DecEq'45'PParamGroup_716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_716
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_438
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_718 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_718 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_436
      (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_720 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_720 ~v0 = du_DecEq'45'PoolThresholds_720
du_DecEq'45'PoolThresholds_720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_720
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_434
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_722 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_726 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_732 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_734 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_736 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_738 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_740 :: T_GovStructure_6 -> ()
d_ProtVer_740 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_744 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_744 ~v0 = du_Show'45'DrepThresholds_744
du_Show'45'DrepThresholds_744 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_744
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_440
-- Ledger.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_746 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_746 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_444
      (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_748 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_748 ~v0 = du_Show'45'PoolThresholds_748
du_Show'45'PoolThresholds_748 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_748
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_442
-- Ledger.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_750 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_750 ~v0 = du_Show'45'ProtVer_750
du_Show'45'ProtVer_750 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_750
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ProtVer_156
-- Ledger.Types.GovStructure.GovStructure._.Show-ℚ
d_Show'45'ℚ_752 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_752 ~v0 = du_Show'45'ℚ_752
du_Show'45'ℚ_752 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_752 = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ℚ_426
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_760 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_240 -> ()
d_paramsWellFormed_760 = erased
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_762 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_764 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_764 ~v0 = du_pvCanFollow'63'_764
du_pvCanFollow'63'_764 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_764
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1096
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_770 :: MAlonzo.Code.Ledger.PParams.T_Acnt_142 -> Integer
d_reserves_770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_150 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_772 :: MAlonzo.Code.Ledger.PParams.T_Acnt_142 -> Integer
d_treasury_772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_148 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_776 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_776 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_198 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_778 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_778 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_200 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_780 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_780 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_202 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_782 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_782 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_204 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_784 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_784 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_206 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_786 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_786 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_788 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_788 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_790 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_790 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_792 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_792 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_794 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_794 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_798 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_798 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_800 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_800 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_802 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1236 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.THash
d_THash_804 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_THash_804 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_806 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_UpdateT_806 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.Show-THash
d_Show'45'THash_808 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_808 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_810 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_810 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_812 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_812 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_814 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_816 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144
d_ppUpd_816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_818 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_818 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_820 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> AgdaAny -> ()
d_ppdWellFormed_820 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_822 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_822 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_838 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_Emax_838 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_332 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_840 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_a_840 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_842 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_336 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_844 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_b_844 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMaxTermLength_846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_348 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMinSize_848 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_346 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_coinsPerUTxOByte_850 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_collateralPercentage_852 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_338 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_854 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_costmdls_854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_340 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_drepActivity_856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_356 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_drepDeposit_858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_354 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionDeposit_862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_352 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_864 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionLifetime_864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_350 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_keyDeposit_866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_868 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_maxBlockExUnits_868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_308 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_870 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxBlockSize_870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_300 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxCollateralInputs_872 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_874 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxHeaderSize_874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_304 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_876 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_maxTxExUnits_876 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_306 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_878 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxTxSize_878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_302 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_880 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxValSize_880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_310 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_882 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_882 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_328
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_884 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_minUTxOValue_884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_886 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_nopt_886 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_888 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_poolDeposit_888 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_890 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_890 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_892 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_prices_892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 -> ()
d_UpdateT_898 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_904 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 -> AgdaAny -> ()
d_ppdWellFormed_904 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1162 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__910 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__910 ~v0 = du__'63''8599'__910
du__'63''8599'__910 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__910 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__912 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_912 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_912 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1090
      (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_616 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_914 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_916 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyPParamsUpdate_916 ~v0 = du_applyPParamsUpdate_916
du_applyPParamsUpdate_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
du_applyPParamsUpdate_916
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_960
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_918 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_modifiedUpdateGroups_918 ~v0 = du_modifiedUpdateGroups_918
du_modifiedUpdateGroups_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
du_modifiedUpdateGroups_918
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_896
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_920 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesEconomicGroup_920 ~v0 = du_modifiesEconomicGroup_920
du_modifiesEconomicGroup_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesEconomicGroup_920
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_704
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_922 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesGovernanceGroup_922 ~v0 = du_modifiesGovernanceGroup_922
du_modifiesGovernanceGroup_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesGovernanceGroup_922
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_832
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_924 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesNetworkGroup_924 ~v0 = du_modifiesNetworkGroup_924
du_modifiesNetworkGroup_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesNetworkGroup_924
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_640
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_926 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesTechnicalGroup_926 ~v0 = du_modifiesTechnicalGroup_926
du_modifiesTechnicalGroup_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesTechnicalGroup_926
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_768
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_928 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> ()
d_paramsUpdateWellFormed_928 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_930 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_930 ~v0
  = du_paramsUpdateWellFormed'63'_930
du_paramsUpdateWellFormed'63'_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_930
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_636
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_932 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_932 ~v0 = du_'8801''45'update_932
du_'8801''45'update_932 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_932 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_926 v1
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_Emax_936 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_542 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_a_938 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_524 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_940 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_540 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_b_942 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_526 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMaxTermLength_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_564 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMinSize_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_562 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_coinsPerUTxOByte_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_532 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_collateralPercentage_950 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_546 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_costmdls_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_548 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_drepActivity_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_560 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_drepDeposit_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_558 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_550 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionDeposit_960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_556 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionLifetime_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_554 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_keyDeposit_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_528 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_maxBlockExUnits_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_520 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxBlockSize_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_508 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxCollateralInputs_970 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_516 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxHeaderSize_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_512 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_maxTxExUnits_974 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_518 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxTxSize_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_510 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxValSize_978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_514 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_980 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_534
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_minUTxOValue_982 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_538 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_nopt_984 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_544 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_poolDeposit_986 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_530 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_988 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_552 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_990 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_prices_990 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_536 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_992 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_992 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_522 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_996 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_996 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_230 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_998 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_998 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_232 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1000 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1000 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_234 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1002 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1002 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_236 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_1004 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1004 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_238 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_1012 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1176
d_govParams_1012 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2505 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_1016 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1016 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_1012 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_1018 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1018 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_1012 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1020 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1020 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1236
      (coe d_govParams_1012 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_1022 :: T_GovStructure_6 -> ()
d_THash_1022 = erased
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1024 :: T_GovStructure_6 -> ()
d_UpdateT_1024 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_1026 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1026 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_1012 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_1028 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1028 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_1012 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1030 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_1030 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe d_govParams_1012 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_1032 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1032 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
      (coe d_govParams_1012 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1034 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144
d_ppUpd_1034 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
      (coe d_govParams_1012 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1036 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1036 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe d_govParams_1012 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1038 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_1038 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1040 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_1040 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe d_govParams_1012 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1042 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_230
d_globalConstants_1042 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2505 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1046 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1046 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Network
d_Network_1048 :: T_GovStructure_6 -> ()
d_Network_1048 = erased
-- Ledger.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1050 :: T_GovStructure_6 -> AgdaAny
d_NetworkId_1050 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_262
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1052 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1052 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_256
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1054 :: T_GovStructure_6 -> Integer
d_Quorum_1054 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_260
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1056 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1056 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_252
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1058 :: T_GovStructure_6 -> Integer
d_SlotsPerEpoch'7580'_1058 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1060 :: T_GovStructure_6 -> Integer
d_StabilityWindow'7580'_1060 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1062 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1062 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_264
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_1066 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1066 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1068 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1070 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_1072 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1074 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1074 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1074
du_Dec'45'isScript_1074 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1074
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1076 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1076 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1076
du_Dec'45'isVKey_1076 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1076
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1078 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1078 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1078 v1 v2 v3
du_DecEq'45'BaseAddr_1078 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1078 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1080 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1080 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1080 v1 v2 v3
du_DecEq'45'BootstrapAddr_1080 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1080 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1082 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1082 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1082 v2 v3
du_DecEq'45'Credential_1082 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1082 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1084 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1084 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1084 v1 v2 v3
du_DecEq'45'RwdAddr_1084 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1084 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1090 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1094 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1094 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1096 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1096 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1098 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1098 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1102 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1102 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1102
du_Show'45'Credential_1102 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1102 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1104 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1104 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1104
du_Show'45'Credential'215'Coin_1104 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1104 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1106 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1106 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1106
du_Show'45'RwdAddr_1106 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1106
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1108 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1108 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1110 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1110 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1112 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1112 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1116 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1116 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1116
du_getScriptHash_1116 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1116
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1118 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1120 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1120 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1120
du_isBootstrapAddr'63'_1120 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1120
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1122 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1122 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1124 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1124 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1124
du_isKeyHashObj_1124 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1124
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1126 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1126 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1126
du_isKeyHashObj'7495'_1126 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1126
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_1128 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1130 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1130 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1132 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1132 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1132
du_isScriptObj_1132 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1132
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1134 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1134 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1136 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1138 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1138 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_1140 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1140 ~v0 ~v1 ~v2 ~v3 = du_netId_1140
du_netId_1140 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1140 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_1142 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1142 ~v0 ~v1 ~v2 ~v3 = du_payCred_1142
du_payCred_1142 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1142 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1144 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1144 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1144
du_stakeCred_1144 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1144
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1148 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1148 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1150 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1150 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1152 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1152 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1156 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1156 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1158 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1158 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1160 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1160 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1170 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1170 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1172 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1172 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
