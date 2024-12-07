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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Types.GovStructure.GovStructure
d_GovStructure_6 = ()
data T_GovStructure_6
  = C_GovStructure'46'constructor_2751 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1312
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_212 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_290 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_290 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1344 (coe v0)
-- Ledger.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_296 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_296 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_528 :: T_GovStructure_6 -> ()
d_TxId_528 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_530 :: T_GovStructure_6 -> ()
d_DocHash_530 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_532 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_532 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2751 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_534 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_534 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2751 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_538 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_538 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_540 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_540 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_534 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_542 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_542 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_544 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_544 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_546 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_546 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_548 :: T_GovStructure_6 -> ()
d_THash_548 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_550 :: T_GovStructure_6 -> ()
d_KeyPair_550 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_552 :: T_GovStructure_6 -> ()
d_SKey_552 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_554 :: T_GovStructure_6 -> ()
d_ScriptHash_554 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_556 :: T_GovStructure_6 -> ()
d_Ser_556 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_558 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_558 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_534 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_560 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_560 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_562 :: T_GovStructure_6 -> ()
d_Sig_562 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_564 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_564 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_566 :: T_GovStructure_6 -> ()
d_VKey_566 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_568 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_568 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_570 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_570 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_572 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_572 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_574 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_574 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_534 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_576 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_576 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_534 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_578 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_578 v0
  = let v1 = d_crypto_534 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_580 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_580 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2751 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__584 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__584 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__586 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__586 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_588 ::
  T_GovStructure_6 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_588 = erased
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_590 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_590 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_592 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_592 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_594 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_594 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_596 :: T_GovStructure_6 -> ()
d_Epoch_596 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_598 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_598 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_600 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_600 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_602 :: T_GovStructure_6 -> ()
d_Slot_602 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_604 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_604 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_606 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_606 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_608 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_608 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_610 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_610 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_612 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_612 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_614 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_614 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_616 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_616 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_618 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_618 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_620 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_620 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_580 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_622 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_622 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2751 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__626 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__626 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_628 :: T_GovStructure_6 -> ()
d_CostModel_628 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_630 :: T_GovStructure_6 -> ()
d_T_630 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_632 :: T_GovStructure_6 -> ()
d_THash_632 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_634 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_634 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_636 :: T_GovStructure_6 -> ()
d_Datum_636 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_638 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_428
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_640 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_640 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_642 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_644 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_644 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_646 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_646 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_648 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_648 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_650 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_650 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_652 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_652 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_428
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_654 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_654 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_452
                 (coe d_scriptStructure_622 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_656 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_656 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_452
                 (coe d_scriptStructure_622 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_658 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_658 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_660 :: T_GovStructure_6 -> ()
d_ExUnits_660 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hash-P1Script
d_Hash'45'P1Script_662 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_664 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_664 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_428
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_666 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_666 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_668 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_668 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_670 :: T_GovStructure_6 -> ()
d_LangDepView_670 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_672 :: T_GovStructure_6 -> ()
d_Language_672 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_674 :: T_GovStructure_6 -> ()
d_P1Script_674 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_676 :: T_GovStructure_6 -> ()
d_PlutusScript_676 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_678 :: T_GovStructure_6 -> AgdaAny
d_PlutusV1_678 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_680 :: T_GovStructure_6 -> AgdaAny
d_PlutusV2_680 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_682 :: T_GovStructure_6 -> AgdaAny
d_PlutusV3_682 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_684 :: T_GovStructure_6 -> ()
d_Prices_684 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_686 :: T_GovStructure_6 -> ()
d_Redeemer_686 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_688 :: T_GovStructure_6 -> ()
d_Script_688 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_690 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_690 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_692 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_692 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_694 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_694 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_696 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_696 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_452
                 (coe d_scriptStructure_622 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_698 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_698 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_452
                 (coe d_scriptStructure_622 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_700 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_700 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe d_scriptStructure_622 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_702 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_704 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_704 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_706 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_428
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_708 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_452
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_710 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_710 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe d_scriptStructure_622 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_712 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_712 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_714 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_714 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_718 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_720 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_720 ~v0 = du_DecEq'45'DrepThresholds_720
du_DecEq'45'DrepThresholds_720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_720
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_496
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_722 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_722 ~v0 = du_DecEq'45'PParamGroup_722
du_DecEq'45'PParamGroup_722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_722
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_502
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_724 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_724 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
      (coe d_epochStructure_580 (coe v0))
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_726 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_726 ~v0 = du_DecEq'45'PoolThresholds_726
du_DecEq'45'PoolThresholds_726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_726
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_498
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_728 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_732 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_738 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_740 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_742 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_744 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_746 :: T_GovStructure_6 -> ()
d_ProtVer_746 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_750 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_750 ~v0 = du_Show'45'DrepThresholds_750
du_Show'45'DrepThresholds_750 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_750
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_504
-- Ledger.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_752 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_752 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
      (coe d_epochStructure_580 (coe v0))
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_754 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_754 ~v0 = du_Show'45'PoolThresholds_754
du_Show'45'PoolThresholds_754 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_754
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_506
-- Ledger.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_756 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_756 ~v0 = du_Show'45'ProtVer_756
du_Show'45'ProtVer_756 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_756
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Types.GovStructure.GovStructure._.Show-ℚ
d_Show'45'ℚ_758 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_758 ~v0 = du_Show'45'ℚ_758
du_Show'45'ℚ_758 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_758
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_766 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_766 ~v0 = du_paramsWF'45'elim_766
du_paramsWF'45'elim_766 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_766 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_462 v2
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_768 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_768 = erased
-- Ledger.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_770 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
d_positivePParams_770 ~v0 = du_positivePParams_770
du_positivePParams_770 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
du_positivePParams_770
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_378
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_772 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_774 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_774 ~v0 = du_pvCanFollow'63'_774
du_pvCanFollow'63'_774 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_774
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1232
-- Ledger.Types.GovStructure.GovStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_776 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_776 ~v0
  = du_refScriptCostStride'62'0_776
du_refScriptCostStride'62'0_776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_776 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_484 v0
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_782 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_784 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_788 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_788 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_790 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_790 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_792 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_792 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_794 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_794 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_796 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_796 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_798 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_798 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_800 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_800 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_802 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_802 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_804 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_804 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_806 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_806 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_810 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1344 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_812 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> ()
d_UpdateT_812 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_814 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_814 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_816 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_818 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_818 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_820 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> AgdaAny -> ()
d_ppdWellFormed_820 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_822 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_822 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_838 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_838 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_840 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_840 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_842 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_844 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_844 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_848 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_850 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_852 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_854 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_864 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_868 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_870 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_872 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_874 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_876 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_876 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_878 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_878 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_880 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_882 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_882 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_884 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_886 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_886 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_888 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_888 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_890 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_890 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_892 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_894 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_896 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_900 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_902 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> ()
d_UpdateT_906 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_912 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> AgdaAny -> ()
d_ppdWellFormed_912 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1298 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__918 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__918 ~v0 = du__'63''8599'__918
du__'63''8599'__918 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__918 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1032 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_920 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_920 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
      (coe d_epochStructure_580 (coe v0))
      (coe d_scriptStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_922 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_924 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_924 ~v0 = du_applyPParamsUpdate_924
du_applyPParamsUpdate_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_applyPParamsUpdate_924
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_926 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_modifiedUpdateGroups_926 ~v0 = du_modifiedUpdateGroups_926
du_modifiedUpdateGroups_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
du_modifiedUpdateGroups_926
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1016
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_928 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesEconomicGroup_928 ~v0 = du_modifiesEconomicGroup_928
du_modifiesEconomicGroup_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesEconomicGroup_928
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_800
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_930 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesGovernanceGroup_930 ~v0 = du_modifiesGovernanceGroup_930
du_modifiesGovernanceGroup_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesGovernanceGroup_930
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_944
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_932 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesNetworkGroup_932 ~v0 = du_modifiesNetworkGroup_932
du_modifiesNetworkGroup_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesNetworkGroup_932
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_728
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_934 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesTechnicalGroup_934 ~v0 = du_modifiesTechnicalGroup_934
du_modifiesTechnicalGroup_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesTechnicalGroup_934
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_872
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_936 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> ()
d_paramsUpdateWellFormed_936 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_938 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_938 ~v0
  = du_paramsUpdateWellFormed'63'_938
du_paramsUpdateWellFormed'63'_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_938
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_724
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_940 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_940 ~v0 = du_'8801''45'update_940
du_'8801''45'update_940 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_940 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1046 v1
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe AgdaAny
d_Emax_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_622 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_a_946 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_596 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_948 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_620 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_b_950 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_598 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_642 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_coinsPerUTxOByte_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_collateralPercentage_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe AgdaAny
d_costmdls_960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_628 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe AgdaAny
d_drepActivity_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_640 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_638 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_630 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionDeposit_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionLifetime_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_keyDeposit_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_600 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe AgdaAny
d_maxBlockExUnits_974 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_592 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxBlockSize_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxCollateralInputs_978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_588 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxHeaderSize_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerBlock_982 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_612 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerTx_984 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_610 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe AgdaAny
d_maxTxExUnits_986 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_590 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxTxSize_988 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_990 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxValSize_990 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_992 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_992 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_608
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_994 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_minUTxOValue_994 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_618 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_996 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_nopt_996 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_624 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_998 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_poolDeposit_998 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1000 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1000 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_632 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1002 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe AgdaAny
d_prices_1002 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_606 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1004 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1004 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_594 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1006 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1006 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_616 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1008 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_refScriptCostStride_1008 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_614 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1012 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1012 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1014 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1014 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1016 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1016 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1018 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1018 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_1020 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1020 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_242 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_1028 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1312
d_govParams_1028 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2751 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1032 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1032 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1344
      (coe d_govParams_1028 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1034 :: T_GovStructure_6 -> ()
d_UpdateT_1034 = erased
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1036 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1036 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
         (coe d_govParams_1028 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1038 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_1038 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
      (coe d_govParams_1028 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1040 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1040 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
         (coe d_govParams_1028 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1042 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_1042 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1044 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1044 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
         (coe d_govParams_1028 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1046 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1046 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2751 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1050 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1050 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Network
d_Network_1052 :: T_GovStructure_6 -> ()
d_Network_1052 = erased
-- Ledger.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1054 :: T_GovStructure_6 -> AgdaAny
d_NetworkId_1054 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1056 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1056 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1058 :: T_GovStructure_6 -> Integer
d_Quorum_1058 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1060 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1060 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1062 :: T_GovStructure_6 -> Integer
d_SlotsPerEpoch'7580'_1062 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1064 :: T_GovStructure_6 -> Integer
d_StabilityWindow'7580'_1064 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1066 ::
  T_GovStructure_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1066 = erased
-- Ledger.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1068 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1068 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_globalConstants_1046 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_1072 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1072 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1074 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1076 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_1078 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1080 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1080 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1080
du_Dec'45'isScript_1080 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1080
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1082 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1082 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1082
du_Dec'45'isVKey_1082 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1082
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1084 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1084 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1084 v1 v2 v3
du_DecEq'45'BaseAddr_1084 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1084 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1086 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1086 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1086 v1 v2 v3
du_DecEq'45'BootstrapAddr_1086 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1086 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1088 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1088 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1088 v2 v3
du_DecEq'45'Credential_1088 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1088 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1090 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1090 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1090 v1 v2 v3
du_DecEq'45'RwdAddr_1090 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1090 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1096 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1100 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1100 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1102 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1102 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1104 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1104 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1108 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1108 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1108
du_Show'45'Credential_1108 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1108 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1110 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1110 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1110
du_Show'45'Credential'215'Coin_1110 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1110 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1112 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1112 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1112
du_Show'45'RwdAddr_1112 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1112
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1114 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1114 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1116 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1116 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1118 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1118 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1122 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1122 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1122
du_getScriptHash_1122 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1122
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1124 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1126 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1126 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1126
du_isBootstrapAddr'63'_1126 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1126
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1128 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1128 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1130 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1130 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1130
du_isKeyHashObj_1130 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1130
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1132 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1132 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1132
du_isKeyHashObj'7495'_1132 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1132
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_1134 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1136 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1136 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1138 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1138 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1138
du_isScriptObj_1138 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1138
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1140 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1140 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1142 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1144 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1144 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_1146 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1146 ~v0 ~v1 ~v2 ~v3 = du_netId_1146
du_netId_1146 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1146 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_1148 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1148 ~v0 ~v1 ~v2 ~v3 = du_payCred_1148
du_payCred_1148 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1148 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1150 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1150 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1150
du_stakeCred_1150 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1150
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1154 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1154 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1156 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1156 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1158 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1158 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1162 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1162 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1164 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1164 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1166 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1166 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1176 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1176 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1178 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1178 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
