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
  = C_GovStructure'46'constructor_2741 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1310
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_210 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_288 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_288 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1342 (coe v0)
-- Ledger.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_294 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278
d_ppUpd_294 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0)
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
      C_GovStructure'46'constructor_2741 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_532 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_532 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2741 v3 v4 v5 v6 v7 v8 -> coe v4
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
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_578 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2741 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__582 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__582 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__584 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__584 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_586 ::
  T_GovStructure_6 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_586 = erased
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_588 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_588 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_590 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_590 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_592 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_592 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_594 :: T_GovStructure_6 -> ()
d_Epoch_594 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_596 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_596 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_598 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_598 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_600 :: T_GovStructure_6 -> ()
d_Slot_600 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_602 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_602 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_604 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_604 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_606 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_606 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_608 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_608 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_610 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_610 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_612 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_612 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_614 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_614 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_616 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_616 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_618 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_618 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_578 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_620 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_620 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2741 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__624 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__624 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_626 :: T_GovStructure_6 -> ()
d_CostModel_626 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_628 :: T_GovStructure_6 -> ()
d_T_628 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_630 :: T_GovStructure_6 -> ()
d_THash_630 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_632 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_632 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_634 :: T_GovStructure_6 -> ()
d_Datum_634 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_636 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_636 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_638 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_640 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_640 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_642 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_644 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_644 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_646 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_646 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_648 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_648 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_650 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_650 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_652 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_652 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_620 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_654 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_654 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_620 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_656 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_656 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_658 :: T_GovStructure_6 -> ()
d_ExUnits_658 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_660 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_660 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_662 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_664 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_664 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe d_scriptStructure_620 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_666 :: T_GovStructure_6 -> ()
d_LangDepView_666 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_668 :: T_GovStructure_6 -> ()
d_Language_668 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_670 :: T_GovStructure_6 -> ()
d_P1Script_670 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_672 :: T_GovStructure_6 -> ()
d_PlutusScript_672 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_674 :: T_GovStructure_6 -> AgdaAny
d_PlutusV1_674 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_676 :: T_GovStructure_6 -> AgdaAny
d_PlutusV2_676 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_678 :: T_GovStructure_6 -> AgdaAny
d_PlutusV3_678 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_680 :: T_GovStructure_6 -> ()
d_Prices_680 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_682 :: T_GovStructure_6 -> ()
d_Redeemer_682 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_684 :: T_GovStructure_6 -> ()
d_Script_684 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_686 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_686 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_688 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_688 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_690 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_690 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_692 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_692 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_620 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_694 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_694 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_620 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_696 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_696 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe d_scriptStructure_620 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_698 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_698 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
      (coe d_scriptStructure_620 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_700 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_700 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_702 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_426
      (coe d_scriptStructure_620 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_704 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_704 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_448
      (coe d_scriptStructure_620 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_706 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_620 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_708 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_708 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_710 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_710 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_714 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_716 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_716 ~v0 = du_DecEq'45'DrepThresholds_716
du_DecEq'45'DrepThresholds_716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_716
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_494
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_718 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_718 ~v0 = du_DecEq'45'PParamGroup_718
du_DecEq'45'PParamGroup_718 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_718
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_500
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_720 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_720 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_498
      (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_620 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_722 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_722 ~v0 = du_DecEq'45'PoolThresholds_722
du_DecEq'45'PoolThresholds_722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_722
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_496
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_724 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_728 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_734 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_736 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_738 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_740 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_742 :: T_GovStructure_6 -> ()
d_ProtVer_742 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_746 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_746 ~v0 = du_Show'45'DrepThresholds_746
du_Show'45'DrepThresholds_746 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_746
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_502
-- Ledger.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_748 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_748 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_506
      (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_620 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_750 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_750 ~v0 = du_Show'45'PoolThresholds_750
du_Show'45'PoolThresholds_750 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_750
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_504
-- Ledger.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_752 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_752 ~v0 = du_Show'45'ProtVer_752
du_Show'45'ProtVer_752 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_752
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Types.GovStructure.GovStructure._.Show-ℚ
d_Show'45'ℚ_754 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_754 ~v0 = du_Show'45'ℚ_754
du_Show'45'ℚ_754 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_754
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_762 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_762 ~v0 = du_paramsWF'45'elim_762
du_paramsWF'45'elim_762 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_762 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_460 v2
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_764 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_242 -> ()
d_paramsWellFormed_764 = erased
-- Ledger.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_766 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> [Integer]
d_positivePParams_766 ~v0 = du_positivePParams_766
du_positivePParams_766 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> [Integer]
du_positivePParams_766
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_376
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_768 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_770 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_770 ~v0 = du_pvCanFollow'63'_770
du_pvCanFollow'63'_770 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_770
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1230
-- Ledger.Types.GovStructure.GovStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_772 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_772 ~v0
  = du_refScriptCostStride'62'0_772
du_refScriptCostStride'62'0_772 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_772 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_482 v0
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_778 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_778 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_780 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_784 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_784 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_200 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_786 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_786 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_202 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_788 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_788 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_204 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_790 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_790 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_206 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_792 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_792 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_794 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_794 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_796 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_796 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_798 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_798 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_800 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_800 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_802 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_802 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_218 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_806 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1342 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_808 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1310 -> ()
d_UpdateT_808 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_810 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_810 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1294
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_812 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278
d_ppUpd_812 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_814 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_814 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1302
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_816 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 -> AgdaAny -> ()
d_ppdWellFormed_816 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_818 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_818 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1296
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_834 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_834 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_836 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_836 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_838 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_838 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_840 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_840 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_842 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_844 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_844 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_848 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_850 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_854 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_864 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_868 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_868 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_870 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_872 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_874 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_874 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_876 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_876 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_878 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_880 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_882 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_882 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_884 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_886 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_886 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_888 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_888 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_890 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_890 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_892 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_896 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_898 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 -> ()
d_UpdateT_902 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1294 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1302 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_908 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 -> AgdaAny -> ()
d_ppdWellFormed_908 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1296 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__914 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__914 ~v0 = du__'63''8599'__914
du__'63''8599'__914 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__914 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1030 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_916 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_916 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1224
      (coe d_epochStructure_578 (coe v0))
      (coe d_scriptStructure_620 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_918 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_920 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyPParamsUpdate_920 ~v0 = du_applyPParamsUpdate_920
du_applyPParamsUpdate_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_applyPParamsUpdate_920
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1078
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_922 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_modifiedUpdateGroups_922 ~v0 = du_modifiedUpdateGroups_922
du_modifiedUpdateGroups_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
du_modifiedUpdateGroups_922
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1014
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_924 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesEconomicGroup_924 ~v0 = du_modifiesEconomicGroup_924
du_modifiesEconomicGroup_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesEconomicGroup_924
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_798
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_926 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesGovernanceGroup_926 ~v0 = du_modifiesGovernanceGroup_926
du_modifiesGovernanceGroup_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesGovernanceGroup_926
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_942
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_928 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesNetworkGroup_928 ~v0 = du_modifiesNetworkGroup_928
du_modifiesNetworkGroup_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesNetworkGroup_928
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_726
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_930 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesTechnicalGroup_930 ~v0 = du_modifiesTechnicalGroup_930
du_modifiesTechnicalGroup_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesTechnicalGroup_930
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_870
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_932 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> ()
d_paramsUpdateWellFormed_932 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_934 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_934 ~v0
  = du_paramsUpdateWellFormed'63'_934
du_paramsUpdateWellFormed'63'_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_934
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_722
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_936 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_936 ~v0 = du_'8801''45'update_936
du_'8801''45'update_936 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_936 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1044 v1
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_Emax_940 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_620 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_a_942 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_594 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_618 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_b_946 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_596 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMaxTermLength_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_642 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMinSize_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_640 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_coinsPerUTxOByte_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_602 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_collateralPercentage_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_624 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_costmdls_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_626 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_drepActivity_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_638 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_drepDeposit_960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_636 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_628 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionDeposit_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_634 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionLifetime_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_632 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_keyDeposit_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_598 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_maxBlockExUnits_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_590 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxBlockSize_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_578 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxCollateralInputs_974 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_586 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxHeaderSize_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_582 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerBlock_978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_610 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerTx_980 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_608 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_maxTxExUnits_982 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_588 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxTxSize_984 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_580 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxValSize_986 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_584 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_988 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_606
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_990 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_minUTxOValue_990 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_616 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_992 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_nopt_992 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_622 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_994 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_poolDeposit_994 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_600 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_996 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_996 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_630 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_998 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_prices_998 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_604 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1000 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1000 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_592 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1002 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1002 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_614 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1004 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_refScriptCostStride_1004 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_612 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1008 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1008 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_232 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1010 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1010 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_234 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1012 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1012 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_236 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1014 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1014 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_238 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_1016 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1016 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_240 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_1024 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1310
d_govParams_1024 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2741 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1028 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1028 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1342
      (coe d_govParams_1024 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1030 :: T_GovStructure_6 -> ()
d_UpdateT_1030 = erased
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1032 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_1032 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1294
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
         (coe d_govParams_1024 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1034 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278
d_ppUpd_1034 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
      (coe d_govParams_1024 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1036 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1036 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1302
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
         (coe d_govParams_1024 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1038 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_1038 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1040 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_1040 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1296
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
         (coe d_govParams_1024 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1042 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1042 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2741 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1046 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1046 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Network
d_Network_1048 :: T_GovStructure_6 -> ()
d_Network_1048 = erased
-- Ledger.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1050 :: T_GovStructure_6 -> AgdaAny
d_NetworkId_1050 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1052 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1052 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1054 :: T_GovStructure_6 -> Integer
d_Quorum_1054 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1056 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1056 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1058 :: T_GovStructure_6 -> Integer
d_SlotsPerEpoch'7580'_1058 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1060 :: T_GovStructure_6 -> Integer
d_StabilityWindow'7580'_1060 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1062 ::
  T_GovStructure_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1062 = erased
-- Ledger.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1064 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1064 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_globalConstants_1042 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_1068 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1068 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1070 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1072 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_1074 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1076 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1076 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1076
du_Dec'45'isScript_1076 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1076
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1078 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1078 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1078
du_Dec'45'isVKey_1078 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1078
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1080 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1080 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1080 v1 v2 v3
du_DecEq'45'BaseAddr_1080 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1080 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1082 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1082 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1082 v1 v2 v3
du_DecEq'45'BootstrapAddr_1082 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1082 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1084 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1084 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1084 v2 v3
du_DecEq'45'Credential_1084 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1084 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1086 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1086 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1086 v1 v2 v3
du_DecEq'45'RwdAddr_1086 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1086 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1092 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1096 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1096 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1098 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1098 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1100 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1100 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1104 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1104 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1104
du_Show'45'Credential_1104 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1104 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1106 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1106 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1106
du_Show'45'Credential'215'Coin_1106 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1106 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1108 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1108 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1108
du_Show'45'RwdAddr_1108 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1108
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1110 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1110 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1112 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1112 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1114 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1114 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1118 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1118 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1118
du_getScriptHash_1118 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1118
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1120 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1122 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1122 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1122
du_isBootstrapAddr'63'_1122 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1122
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1124 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1124 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1126 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1126 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1126
du_isKeyHashObj_1126 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1126
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1128 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1128 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1128
du_isKeyHashObj'7495'_1128 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1128
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_1130 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1132 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1132 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1134 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1134 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1134
du_isScriptObj_1134 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1134
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1136 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1136 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1138 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1140 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1140 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_1142 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1142 ~v0 ~v1 ~v2 ~v3 = du_netId_1142
du_netId_1142 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1142 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_1144 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1144 ~v0 ~v1 ~v2 ~v3 = du_payCred_1144
du_payCred_1144 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1144 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1146 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1146 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1146
du_stakeCred_1146 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1146
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1150 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1150 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1152 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1152 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1154 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1154 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1158 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1158 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1160 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1160 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1162 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1162 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1172 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1172 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1174 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1174 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
