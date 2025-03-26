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
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Refinement
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
  = C_GovStructure'46'constructor_2819 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1436
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_210 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_290 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_290 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1468 (coe v0)
-- Ledger.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_296 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404
d_ppUpd_296 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1454 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_538 :: T_GovStructure_6 -> ()
d_TxId_538 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_540 :: T_GovStructure_6 -> ()
d_DocHash_540 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_542 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_542 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2819 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_544 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_544 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2819 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_548 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_548 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_550 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_550 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_544 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_552 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_552 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_554 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_554 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_556 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_556 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_558 :: T_GovStructure_6 -> ()
d_THash_558 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_560 :: T_GovStructure_6 -> ()
d_KeyPair_560 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_562 :: T_GovStructure_6 -> ()
d_SKey_562 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_564 :: T_GovStructure_6 -> ()
d_ScriptHash_564 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_566 :: T_GovStructure_6 -> ()
d_Ser_566 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_568 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_568 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_544 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_570 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_570 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_572 :: T_GovStructure_6 -> ()
d_Sig_572 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_574 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_574 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_576 :: T_GovStructure_6 -> ()
d_VKey_576 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_578 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_578 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_580 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_580 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_582 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_582 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_584 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_584 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_544 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_586 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_586 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_544 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_588 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_588 v0
  = let v1 = d_crypto_544 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_590 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_590 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2819 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__594 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__594 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__596 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__596 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_598 ::
  T_GovStructure_6 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_598 = erased
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_600 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_600 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_602 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_602 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_604 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_604 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_606 :: T_GovStructure_6 -> ()
d_Epoch_606 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_608 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_608 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_610 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_610 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_612 :: T_GovStructure_6 -> ()
d_Slot_612 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_614 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_614 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_616 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_616 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_618 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_618 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_620 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_620 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_622 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_622 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_624 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_624 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_626 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_626 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_628 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_628 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_630 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_630 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_590 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_632 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_632 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2819 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__636 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__636 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_638 :: T_GovStructure_6 -> ()
d_CostModel_638 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_640 :: T_GovStructure_6 -> ()
d_T_640 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_642 :: T_GovStructure_6 -> ()
d_THash_642 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_644 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_644 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_646 :: T_GovStructure_6 -> ()
d_Datum_646 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_648 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_648 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_650 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_650 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_652 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_652 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_654 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_654 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_656 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_656 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_658 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_658 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_660 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_660 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_662 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_664 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_664 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_632 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_666 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_666 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_632 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_668 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_668 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_670 :: T_GovStructure_6 -> ()
d_ExUnits_670 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_672 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_672 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_674 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_674 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_676 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_676 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe d_scriptStructure_632 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_678 :: T_GovStructure_6 -> ()
d_LangDepView_678 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_680 :: T_GovStructure_6 -> ()
d_Language_680 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_682 :: T_GovStructure_6 -> ()
d_P1Script_682 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_684 :: T_GovStructure_6 -> ()
d_PlutusScript_684 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_686 :: T_GovStructure_6 -> AgdaAny
d_PlutusV1_686 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_688 :: T_GovStructure_6 -> AgdaAny
d_PlutusV2_688 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_690 :: T_GovStructure_6 -> AgdaAny
d_PlutusV3_690 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_692 :: T_GovStructure_6 -> ()
d_Prices_692 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_694 :: T_GovStructure_6 -> ()
d_Redeemer_694 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_696 :: T_GovStructure_6 -> ()
d_Script_696 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_698 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_698 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_700 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_700 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_702 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_704 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_704 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_632 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_706 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_706 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_632 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_708 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_708 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe d_scriptStructure_632 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_710 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_710 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
      (coe d_scriptStructure_632 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_712 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_712 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_714 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_714 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_426
      (coe d_scriptStructure_632 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_716 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_716 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_448
      (coe d_scriptStructure_632 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_718 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_718 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_632 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_720 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_720 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_722 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_722 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_726 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_728 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_728 ~v0 = du_DecEq'45'DrepThresholds_728
du_DecEq'45'DrepThresholds_728 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_728
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_508
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_730 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_730 ~v0 = du_DecEq'45'PParamGroup_730
du_DecEq'45'PParamGroup_730 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_730
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_514
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_732 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_732 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_512
      (coe d_epochStructure_590 (coe v0))
      (coe d_scriptStructure_632 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_734 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_734 ~v0 = du_DecEq'45'PoolThresholds_734
du_DecEq'45'PoolThresholds_734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_734
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_510
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_736 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_740 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_746 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_748 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_750 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_752 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_754 :: T_GovStructure_6 -> ()
d_ProtVer_754 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_758 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_758 ~v0 = du_Show'45'DrepThresholds_758
du_Show'45'DrepThresholds_758 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_758
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_516
-- Ledger.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_760 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_760 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_520
      (coe d_epochStructure_590 (coe v0))
      (coe d_scriptStructure_632 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_762 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_762 ~v0 = du_Show'45'PoolThresholds_762
du_Show'45'PoolThresholds_762 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_762
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_518
-- Ledger.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_764 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_764 ~v0 = du_Show'45'ProtVer_764
du_Show'45'ProtVer_764 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_764
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Types.GovStructure.GovStructure._.Show-ℚ
d_Show'45'ℚ_766 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_766 ~v0 = du_Show'45'ℚ_766
du_Show'45'ℚ_766 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_766
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Types.GovStructure.GovStructure._.To-Acnt
d_To'45'Acnt_770 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.To.T_To_8
d_To'45'Acnt_770 ~v0 = du_To'45'Acnt_770
du_To'45'Acnt_770 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'Acnt_770
  = coe MAlonzo.Code.Ledger.PParams.du_To'45'Acnt_166
-- Ledger.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_776 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_776 ~v0 = du_paramsWF'45'elim_776
du_paramsWF'45'elim_776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_776 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_474 v2
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_778 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_778 = erased
-- Ledger.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_780 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
d_positivePParams_780 ~v0 = du_positivePParams_780
du_positivePParams_780 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
du_positivePParams_780
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_386
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_782 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_784 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_784 ~v0 = du_pvCanFollow'63'_784
du_pvCanFollow'63'_784 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_784
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1356
-- Ledger.Types.GovStructure.GovStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_786 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_786 ~v0
  = du_refScriptCostStride'62'0_786
du_refScriptCostStride'62'0_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_786 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_496 v0
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_792 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_794 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_798 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_798 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_800 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_800 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_802 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_802 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_804 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_804 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_806 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_806 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_808 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_808 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_810 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_810 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_812 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_812 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_814 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_814 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_816 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_816 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_820 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1468 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_822 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1436 -> ()
d_UpdateT_822 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_824 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_824 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1420
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1454 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_826 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404
d_ppUpd_826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1454 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_828 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_828 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1428
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1454 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_830 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 -> AgdaAny -> ()
d_ppdWellFormed_830 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_832 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1436 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_832 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1422
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1454 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_848 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_848 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_360 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_850 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_850 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_332 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_852 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_364 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_854 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_854 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_376 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_374 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_344 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_862 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_366 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_864 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_368 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_384 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_868 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_382 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_870 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_372 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_872 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_380 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_874 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_378 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_876 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_876 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_336 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_878 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_880 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_882 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_882 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_884 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_886 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_886 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_352 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_888 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_888 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_350 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_890 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_890 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_892 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_894 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_896 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_348
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_358 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_monetaryExpansion_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_340 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_902 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_362 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_338 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_370 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_346 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_910 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_912 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_356 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_914 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_354 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.treasuryCut
d_treasuryCut_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Refinement.T_Refinement_24
d_treasuryCut_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_342 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404 -> ()
d_UpdateT_920 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1420 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1428 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_926 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404 -> AgdaAny -> ()
d_ppdWellFormed_926 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1422 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__932 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__932 ~v0 = du__'63''8599'__932
du__'63''8599'__932 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__932 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1148 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_934 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1350
      (coe d_epochStructure_590 (coe v0))
      (coe d_scriptStructure_632 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_936 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_938 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_938 ~v0 = du_applyPParamsUpdate_938
du_applyPParamsUpdate_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_applyPParamsUpdate_938
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1196
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_940 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_modifiedUpdateGroups_940 ~v0 = du_modifiedUpdateGroups_940
du_modifiedUpdateGroups_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
du_modifiedUpdateGroups_940
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1132
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_942 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
d_modifiesEconomicGroup_942 ~v0 = du_modifiesEconomicGroup_942
du_modifiesEconomicGroup_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
du_modifiesEconomicGroup_942
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_828
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_944 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
d_modifiesGovernanceGroup_944 ~v0 = du_modifiesGovernanceGroup_944
du_modifiesGovernanceGroup_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
du_modifiesGovernanceGroup_944
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_980
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_946 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
d_modifiesNetworkGroup_946 ~v0 = du_modifiesNetworkGroup_946
du_modifiesNetworkGroup_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
du_modifiesNetworkGroup_946
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_752
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_948 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
d_modifiesSecurityGroup_948 ~v0 = du_modifiesSecurityGroup_948
du_modifiesSecurityGroup_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
du_modifiesSecurityGroup_948
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesSecurityGroup_1056
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_950 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
d_modifiesTechnicalGroup_950 ~v0 = du_modifiesTechnicalGroup_950
du_modifiesTechnicalGroup_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Bool
du_modifiesTechnicalGroup_950
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_904
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_952 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> ()
d_paramsUpdateWellFormed_952 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_954 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_954 ~v0
  = du_paramsUpdateWellFormed'63'_954
du_paramsUpdateWellFormed'63'_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_954
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_748
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_956 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_956 ~v0 = du_'8801''45'update_956
du_'8801''45'update_956 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_956 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1162 v1
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe AgdaAny
d_Emax_960 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_642 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_a_962 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_612 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_964 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_640 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_b_966 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_614 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_ccMaxTermLength_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_664 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_ccMinSize_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_662 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_coinsPerUTxOByte_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_624 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_collateralPercentage_974 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_646 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe AgdaAny
d_costmdls_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_648 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe AgdaAny
d_drepActivity_978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_660 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_drepDeposit_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_658 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_982 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_650 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_govActionDeposit_984 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_656 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_govActionLifetime_986 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_654 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_keyDeposit_988 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_616 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_990 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe AgdaAny
d_maxBlockExUnits_990 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_608 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_992 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_maxBlockSize_992 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_596 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_994 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_maxCollateralInputs_994 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_604 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_996 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_maxHeaderSize_996 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_600 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_998 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_maxRefScriptSizePerBlock_998 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_632 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1000 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_maxRefScriptSizePerTx_1000 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_630 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1002 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe AgdaAny
d_maxTxExUnits_1002 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_606 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1004 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_maxTxSize_1004 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_598 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1006 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_maxValSize_1006 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_602 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1008 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1008 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_628
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1010 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_minUTxOValue_1010 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_638 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1012 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Data.Refinement.T_Refinement_24
d_monetaryExpansion_1012 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_620 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1014 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_nopt_1014 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_644 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1016 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_poolDeposit_1016 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_618 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1018 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1018 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_652 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1020 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe AgdaAny
d_prices_1020 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_626 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1022 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1022 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_610 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1024 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1024 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_636 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1026 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 -> Maybe Integer
d_refScriptCostStride_1026 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_634 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1028 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_524 ->
  Maybe MAlonzo.Code.Data.Refinement.T_Refinement_24
d_treasuryCut_1028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_622 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1032 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1032 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1034 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1034 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1036 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1036 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1038 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1038 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5
d_Q5_1040 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1040 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5_242 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_1048 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1436
d_govParams_1048 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2819 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1052 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1052 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1468
      (coe d_govParams_1048 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1054 :: T_GovStructure_6 -> ()
d_UpdateT_1054 = erased
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1056 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1056 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1420
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1454
         (coe d_govParams_1048 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1058 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1404
d_ppUpd_1058 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1454
      (coe d_govParams_1048 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1060 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1060 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1428
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1454
         (coe d_govParams_1048 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1062 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_1062 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1064 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1064 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1422
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1454
         (coe d_govParams_1048 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1066 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1066 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2819 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1070 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1070 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Network
d_Network_1072 :: T_GovStructure_6 -> ()
d_Network_1072 = erased
-- Ledger.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1074 :: T_GovStructure_6 -> AgdaAny
d_NetworkId_1074 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1076 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1076 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1078 :: T_GovStructure_6 -> Integer
d_Quorum_1078 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1080 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1080 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1082 :: T_GovStructure_6 -> Integer
d_SlotsPerEpoch'7580'_1082 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1084 :: T_GovStructure_6 -> Integer
d_StabilityWindow'7580'_1084 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1086 ::
  T_GovStructure_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1086 = erased
-- Ledger.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1088 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1088 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_globalConstants_1066 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_1092 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1092 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1094 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1096 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_1098 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1100 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1100 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1100
du_Dec'45'isScript_1100 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1100
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1102 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1102 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1102
du_Dec'45'isVKey_1102 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1102
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1104 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1104 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1104 v1 v2 v3
du_DecEq'45'BaseAddr_1104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1104 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1106 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1106 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1106 v1 v2 v3
du_DecEq'45'BootstrapAddr_1106 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1106 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1108 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1108 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1108 v2 v3
du_DecEq'45'Credential_1108 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1108 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1110 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1110 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1110 v1 v2 v3
du_DecEq'45'RwdAddr_1110 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1110 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1116 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1120 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1120 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1122 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1122 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1124 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1124 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1128 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1128 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1128
du_Show'45'Credential_1128 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1128 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1130 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1130 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1130
du_Show'45'Credential'215'Coin_1130 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1130 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1132 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1132 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1132
du_Show'45'RwdAddr_1132 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1132
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1134 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1134 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1136 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1136 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1138 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1138 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1142 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1142 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1142
du_getScriptHash_1142 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1142
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1144 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1146 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1146 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1146
du_isBootstrapAddr'63'_1146 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1146
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1148 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1148 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1150 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1150 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1150
du_isKeyHashObj_1150 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1150
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1152 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1152 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1152
du_isKeyHashObj'7495'_1152 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1152
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_1154 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1156 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1156 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1158 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1158 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1158
du_isScriptObj_1158 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1158
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1160 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1160 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1162 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1164 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1164 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_1166 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1166 ~v0 ~v1 ~v2 ~v3 = du_netId_1166
du_netId_1166 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1166 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_1168 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1168 ~v0 ~v1 ~v2 ~v3 = du_payCred_1168
du_payCred_1168 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1168 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1170 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1170 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1170
du_stakeCred_1170 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1170
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1174 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1174 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1176 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1176 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1178 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1178 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1182 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1182 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1184 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1184 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1186 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1186 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1196 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1196 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1198 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1198 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
