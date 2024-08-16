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
  = C_GovStructure'46'constructor_2427 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1152
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_194 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_498 :: T_GovStructure_6 -> ()
d_TxId_498 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_500 :: T_GovStructure_6 -> ()
d_DocHash_500 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_502 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_502 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2427 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_504 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_504 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2427 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_508 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_508 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_510 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_510 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_504 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_512 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_512 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_514 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_514 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_516 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_516 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_518 :: T_GovStructure_6 -> ()
d_THash_518 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_520 :: T_GovStructure_6 -> ()
d_KeyPair_520 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_522 :: T_GovStructure_6 -> ()
d_SKey_522 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_524 :: T_GovStructure_6 -> ()
d_ScriptHash_524 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_526 :: T_GovStructure_6 -> ()
d_Ser_526 = erased
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_528 :: T_GovStructure_6 -> ()
d_Sig_528 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_530 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_530 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_532 :: T_GovStructure_6 -> ()
d_VKey_532 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_534 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_534 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_536 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_536 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_538 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_538 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_540 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_540 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_504 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_542 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_542 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_504 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_544 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_544 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_546 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_546 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2427 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__550 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__550 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_552 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_552 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_554 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_554 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_556 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_556 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_558 :: T_GovStructure_6 -> ()
d_Epoch_558 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_560 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_560 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_562 :: T_GovStructure_6 -> ()
d_Slot_562 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_564 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_564 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_566 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_566 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_568 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_568 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_570 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_570 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_572 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_572 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_574 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_574 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_576 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_576 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_578 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_578 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_580 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_580 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_546 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_582 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
d_scriptStructure_582 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2427 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__586 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__586 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_588 :: T_GovStructure_6 -> ()
d_CostModel_588 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_590 :: T_GovStructure_6 -> ()
d_T_590 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_592 :: T_GovStructure_6 -> ()
d_THash_592 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_594 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_594 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_172
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_596 :: T_GovStructure_6 -> ()
d_Datum_596 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_598 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_598 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (let v2 = d_epochStructure_546 (coe v0) in
       coe
         (let v3 = d_scriptStructure_582 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_600 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_600 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_602 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_602 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_604 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_604 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_606 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_606 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_608 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_608 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_610 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_610 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_612 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_612 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (let v2 = d_epochStructure_546 (coe v0) in
       coe
         (let v3 = d_scriptStructure_582 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_614 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_614 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_428
                 (coe d_scriptStructure_582 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_616 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_616 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_428
                 (coe d_scriptStructure_582 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_618 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_618 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_620 :: T_GovStructure_6 -> ()
d_ExUnits_620 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hash-Timelock
d_Hash'45'Timelock_622 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_622 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412
      (coe d_scriptStructure_582 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_624 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_624 v0
  = let v1 = d_crypto_504 (coe v0) in
    coe
      (let v2 = d_epochStructure_546 (coe v0) in
       coe
         (let v3 = d_scriptStructure_582 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_626 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_626 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_628 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_628 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
      (coe d_crypto_504 (coe v0)) (coe d_epochStructure_546 (coe v0))
      (coe d_scriptStructure_582 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_630 :: T_GovStructure_6 -> ()
d_LangDepView_630 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_632 :: T_GovStructure_6 -> ()
d_Language_632 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_634 :: T_GovStructure_6 -> ()
d_P1Script_634 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_636 :: T_GovStructure_6 -> ()
d_PlutusScript_636 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_638 :: T_GovStructure_6 -> AgdaAny
d_PlutusV1_638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_640 :: T_GovStructure_6 -> AgdaAny
d_PlutusV2_640 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_188
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_642 :: T_GovStructure_6 -> AgdaAny
d_PlutusV3_642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_644 :: T_GovStructure_6 -> ()
d_Prices_644 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_646 :: T_GovStructure_6 -> ()
d_Redeemer_646 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_648 :: T_GovStructure_6 -> ()
d_Script_648 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_650 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_650 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_428
                 (coe d_scriptStructure_582 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_652 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_652 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe d_scriptStructure_582 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_654 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_654 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410
      (coe d_scriptStructure_582 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_656 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_656 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_232
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_658 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_658 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_414 (coe d_crypto_504 (coe v0))
      (coe d_epochStructure_546 (coe v0))
      (coe d_scriptStructure_582 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_660 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_660 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_428
      (coe d_scriptStructure_582 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_662 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_236
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_582 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_664 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_664 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_666 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_666 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_670 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_672 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_672 ~v0 = du_DecEq'45'DrepThresholds_672
du_DecEq'45'DrepThresholds_672 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_672
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_414
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_674 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_674 ~v0 = du_DecEq'45'PParamGroup_674
du_DecEq'45'PParamGroup_674 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_674
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_420
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_676 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_676 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_418
      (coe d_epochStructure_546 (coe v0))
      (coe d_scriptStructure_582 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_678 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_678 ~v0 = du_DecEq'45'PoolThresholds_678
du_DecEq'45'PoolThresholds_678 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_678
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_416
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_680 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_684 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_690 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_692 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_694 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_696 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_698 :: T_GovStructure_6 -> ()
d_ProtVer_698 = erased
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_708 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_228 -> ()
d_paramsWellFormed_708 = erased
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_710 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_712 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_712 ~v0 = du_pvCanFollow'63'_712
du_pvCanFollow'63'_712 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_712
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1072
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_718 :: MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_reserves_718 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_140 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_720 :: MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_treasury_720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_138 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_724 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_724 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_186 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_726 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_726 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_188 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_728 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_728 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_190 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_730 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_730 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_192 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_732 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_732 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_194 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_734 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_734 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_196 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_736 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_736 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_198 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_738 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_738 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_200 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_740 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_740 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_202 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_742 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_742 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_204 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_746 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_746 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_748 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_748 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_750 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.THash
d_THash_752 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_THash_752 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_754 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_UpdateT_754 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_756 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_756 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_758 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_758 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_760 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_760 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_762 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_764 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_764 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_766 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> AgdaAny -> ()
d_ppdWellFormed_766 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_768 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_768 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_784 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_Emax_784 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_786 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_a_786 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_304 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_788 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_788 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_790 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_b_790 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_306 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_792 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMaxTermLength_792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_794 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMinSize_794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_796 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_coinsPerUTxOByte_796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_798 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_collateralPercentage_798 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_800 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_costmdls_800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_802 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_drepActivity_802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_344 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_804 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepDeposit_804 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_342 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_806 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_808 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionDeposit_808 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_810 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionLifetime_810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_338 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_812 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_keyDeposit_812 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_308 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_814 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_maxBlockExUnits_814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_296 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_816 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxBlockSize_816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_288 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_818 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxCollateralInputs_818 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_300 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_820 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxHeaderSize_820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_292 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_822 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_maxTxExUnits_822 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_294 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_824 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxTxSize_824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_290 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_826 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxValSize_826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_298 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_828 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_828 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_316
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_830 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_minUTxOValue_830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_832 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_nopt_832 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_834 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_poolDeposit_834 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_836 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_836 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_838 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_prices_838 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_840 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_840 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_302 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_844 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> ()
d_UpdateT_844 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_846 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_848 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_848 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_850 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> AgdaAny -> ()
d_ppdWellFormed_850 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_852 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1138 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__856 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__856 ~v0 = du__'63''8599'__856
du__'63''8599'__856 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__856 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__888 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_858 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_858 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1066
      (coe d_epochStructure_546 (coe v0))
      (coe d_scriptStructure_582 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_860 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_862 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyPParamsUpdate_862 ~v0 = du_applyPParamsUpdate_862
du_applyPParamsUpdate_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_applyPParamsUpdate_862
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_936
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_864 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_modifiedUpdateGroups_864 ~v0 = du_modifiedUpdateGroups_864
du_modifiedUpdateGroups_864 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
du_modifiedUpdateGroups_864
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_872
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_866 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesEconomicGroup_866 ~v0 = du_modifiesEconomicGroup_866
du_modifiesEconomicGroup_866 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesEconomicGroup_866
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_680
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_868 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesGovernanceGroup_868 ~v0 = du_modifiesGovernanceGroup_868
du_modifiesGovernanceGroup_868 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesGovernanceGroup_868
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_808
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_870 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesNetworkGroup_870 ~v0 = du_modifiesNetworkGroup_870
du_modifiesNetworkGroup_870 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesNetworkGroup_870
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_616
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_872 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesTechnicalGroup_872 ~v0 = du_modifiesTechnicalGroup_872
du_modifiesTechnicalGroup_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesTechnicalGroup_872
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_744
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_874 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> ()
d_paramsUpdateWellFormed_874 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_876 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_876 ~v0
  = du_paramsUpdateWellFormed'63'_876
du_paramsUpdateWellFormed'63'_876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_876
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_612
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_878 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_878 ~v0 = du_'8801''45'update_878
du_'8801''45'update_878 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_878 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_902 v1
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_882 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_882 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_518 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_884 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_a_884 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_500 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_886 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_886 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_516 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_888 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_b_888 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_502 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_890 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_890 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_540 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_892 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_538 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_894 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_896 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_522 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_524 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_536 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_534 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_526 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_532 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_530 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_504 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_496 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_484 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_916 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_492 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_488 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_494 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_486 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_490 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_510
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_514 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_nopt_930 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_520 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_506 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_528 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_512 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_938 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_498 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_942 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_942 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_218 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_944 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_220 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_946 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_946 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_222 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_948 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_948 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_224 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_950 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_950 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_226 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_958 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1152
d_govParams_958 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2427 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_962 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_962 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe d_govParams_958 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_964 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_964 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe d_govParams_958 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_966 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_966 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208
      (coe d_govParams_958 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_968 :: T_GovStructure_6 -> ()
d_THash_968 = erased
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_970 :: T_GovStructure_6 -> ()
d_UpdateT_970 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_972 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_972 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe d_govParams_958 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_974 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_974 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe d_govParams_958 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_976 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_976 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
      (coe d_govParams_958 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_978 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
      (coe d_govParams_958 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_980 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_980 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe d_govParams_958 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_982 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_982 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_984 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_984 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe d_govParams_958 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_986 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_986 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2427 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_990 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_990 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
      (coe d_globalConstants_986 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Network
d_Network_992 :: T_GovStructure_6 -> ()
d_Network_992 = erased
-- Ledger.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_994 :: T_GovStructure_6 -> AgdaAny
d_NetworkId_994 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
      (coe d_globalConstants_986 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_996 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_996 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
      (coe d_globalConstants_986 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Quorum
d_Quorum_998 :: T_GovStructure_6 -> Integer
d_Quorum_998 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
      (coe d_globalConstants_986 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1000 :: T_GovStructure_6 -> Integer
d_SlotsPerEpoch'7580'_1000 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
      (coe d_globalConstants_986 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1002 :: T_GovStructure_6 -> Integer
d_StabilityWindow'7580'_1002 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
      (coe d_globalConstants_986 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1004 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1004 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
      (coe d_globalConstants_986 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_1008 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1008 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1010 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1012 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_1014 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1016 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1016 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1016
du_Dec'45'isScript_1016 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1016
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1018 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1018 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1018
du_Dec'45'isVKey_1018 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1018
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1020 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1020 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1020 v1 v2 v3
du_DecEq'45'BaseAddr_1020 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1020 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1022 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1022 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1022 v1 v2 v3
du_DecEq'45'BootstrapAddr_1022 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1022 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1024 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1024 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1024 v2 v3
du_DecEq'45'Credential_1024 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1024 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1026 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1026 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1026 v1 v2 v3
du_DecEq'45'RwdAddr_1026 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1026 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1032 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1036 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1036 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1038 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1038 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1040 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1040 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1044 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1044 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1046 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1046 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1048 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1048 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1052 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1052 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1052
du_getScriptHash_1052 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1052
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1054 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1056 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1056 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1056
du_isBootstrapAddr'63'_1056 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1056
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1058 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1058 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1060 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1060 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1060
du_isKeyHashObj_1060 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1060
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1062 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1062 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1062
du_isKeyHashObj'7495'_1062 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1062
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_1064 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1066 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1066 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1068 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1068 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1068
du_isScriptObj_1068 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1068
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1070 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1070 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1072 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1074 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1074 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_1076 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1076 ~v0 ~v1 ~v2 ~v3 = du_netId_1076
du_netId_1076 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1076 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_1078 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1078 ~v0 ~v1 ~v2 ~v3 = du_payCred_1078
du_payCred_1078 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1078 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1080 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1080 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1080
du_stakeCred_1080 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1080
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1084 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1084 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1086 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1086 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1088 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1088 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1092 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1092 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1094 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1094 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1096 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1096 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1106 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1106 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1108 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1108 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
