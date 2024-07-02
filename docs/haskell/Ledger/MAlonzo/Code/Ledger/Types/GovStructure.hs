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
  = C_GovStructure'46'constructor_2389 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1142
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_186 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_488 :: T_GovStructure_6 -> ()
d_TxId_488 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_490 :: T_GovStructure_6 -> ()
d_DocHash_490 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_492 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_492 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_494 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_494 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_498 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_498 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_500 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_500 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_494 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_502 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_502 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_504 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_504 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_506 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_506 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_508 :: T_GovStructure_6 -> ()
d_THash_508 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_510 :: T_GovStructure_6 -> ()
d_KeyPair_510 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_512 :: T_GovStructure_6 -> ()
d_SKey_512 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_514 :: T_GovStructure_6 -> ()
d_ScriptHash_514 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_516 :: T_GovStructure_6 -> ()
d_Ser_516 = erased
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_518 :: T_GovStructure_6 -> ()
d_Sig_518 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_520 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_520 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_522 :: T_GovStructure_6 -> ()
d_VKey_522 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_524 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_524 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_526 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_526 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_528 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_528 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_530 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_530 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_494 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_532 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_532 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_494 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_534 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_534 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_536 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_536 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__540 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__540 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_542 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_542 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_544 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_544 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_546 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_546 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_548 :: T_GovStructure_6 -> ()
d_Epoch_548 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_550 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_550 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_552 :: T_GovStructure_6 -> ()
d_Slot_552 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_554 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_554 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_556 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_556 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_558 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_558 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_560 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_560 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_562 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_562 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_564 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_564 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_566 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_566 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_568 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_568 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_570 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_570 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_536 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_572 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
d_scriptStructure_572 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__576 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__576 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_578 :: T_GovStructure_6 -> ()
d_CostModel_578 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_580 :: T_GovStructure_6 -> ()
d_T_580 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_582 :: T_GovStructure_6 -> ()
d_THash_582 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_584 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_584 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_586 :: T_GovStructure_6 -> ()
d_Datum_586 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_588 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_588 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (let v2 = d_epochStructure_536 (coe v0) in
       coe
         (let v3 = d_scriptStructure_572 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_590 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_590 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_592 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_592 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_594 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_594 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_596 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_596 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_598 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_598 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_600 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_600 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (let v2 = d_epochStructure_536 (coe v0) in
       coe
         (let v3 = d_scriptStructure_572 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_602 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_602 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_572 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_604 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_604 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_572 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_606 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_606 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_608 :: T_GovStructure_6 -> ()
d_ExUnits_608 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hash-Timelock
d_Hash'45'Timelock_610 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_610 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396
      (coe d_scriptStructure_572 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_612 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_612 v0
  = let v1 = d_crypto_494 (coe v0) in
    coe
      (let v2 = d_epochStructure_536 (coe v0) in
       coe
         (let v3 = d_scriptStructure_572 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_614 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_614 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_616 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_616 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
      (coe d_crypto_494 (coe v0)) (coe d_epochStructure_536 (coe v0))
      (coe d_scriptStructure_572 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_618 :: T_GovStructure_6 -> ()
d_LangDepView_618 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_620 :: T_GovStructure_6 -> ()
d_Language_620 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_622 :: T_GovStructure_6 -> ()
d_P1Script_622 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_624 :: T_GovStructure_6 -> ()
d_PlutusScript_624 = erased
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_626 :: T_GovStructure_6 -> ()
d_Prices_626 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_628 :: T_GovStructure_6 -> ()
d_Redeemer_628 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_630 :: T_GovStructure_6 -> ()
d_Script_630 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_632 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_632 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_572 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_634 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_634 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe d_scriptStructure_572 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_636 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_636 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
      (coe d_scriptStructure_572 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_638 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_640 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_640 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_398 (coe d_crypto_494 (coe v0))
      (coe d_epochStructure_536 (coe v0))
      (coe d_scriptStructure_572 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_642 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_412
      (coe d_scriptStructure_572 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_644 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_644 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_572 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_646 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_646 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_648 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_648 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_652 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_654 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_654 ~v0 = du_DecEq'45'DrepThresholds_654
du_DecEq'45'DrepThresholds_654 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_654
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_404
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_656 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_656 ~v0 = du_DecEq'45'PParamGroup_656
du_DecEq'45'PParamGroup_656 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_656
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_410
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_658 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_658 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_408
      (coe d_epochStructure_536 (coe v0))
      (coe d_scriptStructure_572 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_660 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_660 ~v0 = du_DecEq'45'PoolThresholds_660
du_DecEq'45'PoolThresholds_660 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_660
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_406
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_662 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_666 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_672 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_674 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_676 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_678 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_680 :: T_GovStructure_6 -> ()
d_ProtVer_680 = erased
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_690 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_218 -> ()
d_paramsWellFormed_690 = erased
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_692 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_694 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_694 ~v0 = du_pvCanFollow'63'_694
du_pvCanFollow'63'_694 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_694
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1062
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_698 :: MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_reserves_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_132 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_700 :: MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_treasury_700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_130 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_704 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_704 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_176 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_706 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_706 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_178 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_708 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_708 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_180 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_710 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_710 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_182 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_712 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_712 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_184 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_714 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_714 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_186 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_716 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_716 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_188 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_718 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_718 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_190 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_720 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_720 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_192 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_722 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_722 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_194 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_726 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_726 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_728 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_728 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_730 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1198 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.THash
d_THash_732 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1142 -> ()
d_THash_732 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_734 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1142 -> ()
d_UpdateT_734 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_736 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_736 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_738 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_738 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1126
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_740 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_742 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110
d_ppUpd_742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_744 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_744 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1134
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_746 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 -> AgdaAny -> ()
d_ppdWellFormed_746 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_748 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_748 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1128
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_764 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_Emax_764 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_766 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_a_766 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_294 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_768 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_768 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_310 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_770 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_b_770 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_296 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_772 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMaxTermLength_772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_774 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMinSize_774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_332 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_coinsPerUTxOByte_776 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_302 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_778 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_collateralPercentage_778 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_780 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_costmdls_780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_782 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_drepActivity_782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_784 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_drepDeposit_784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_788 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionDeposit_788 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_790 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionLifetime_790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_792 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_keyDeposit_792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_298 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_794 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxBlockExUnits_794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_290 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_796 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxBlockSize_796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_278 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_798 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxCollateralInputs_798 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_286 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_800 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxHeaderSize_800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_282 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_802 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxTxExUnits_802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_288 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_804 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxTxSize_804 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_280 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_806 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxValSize_806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_284 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_808 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_808 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_304
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_810 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_minUTxOValue_810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_308 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_812 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_nopt_812 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_814 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_poolDeposit_814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_300 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_816 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_818 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_prices_818 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_306 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_820 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_820 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_292 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_824 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 -> ()
d_UpdateT_824 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_826 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1126 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_828 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_828 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1134 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_830 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 -> AgdaAny -> ()
d_ppdWellFormed_830 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_832 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_832 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1128 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__836 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__836 ~v0 = du__'63''8599'__836
du__'63''8599'__836 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__836 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__878 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_838 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_838 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1056
      (coe d_epochStructure_536 (coe v0))
      (coe d_scriptStructure_572 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_840 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_842 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyPParamsUpdate_842 ~v0 = du_applyPParamsUpdate_842
du_applyPParamsUpdate_842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
du_applyPParamsUpdate_842
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_926
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_844 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_modifiedUpdateGroups_844 ~v0 = du_modifiedUpdateGroups_844
du_modifiedUpdateGroups_844 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
du_modifiedUpdateGroups_844
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_862
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_846 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesEconomicGroup_846 ~v0 = du_modifiesEconomicGroup_846
du_modifiesEconomicGroup_846 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesEconomicGroup_846
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_670
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_848 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesGovernanceGroup_848 ~v0 = du_modifiesGovernanceGroup_848
du_modifiesGovernanceGroup_848 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesGovernanceGroup_848
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_798
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_850 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesNetworkGroup_850 ~v0 = du_modifiesNetworkGroup_850
du_modifiesNetworkGroup_850 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesNetworkGroup_850
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_606
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_852 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesTechnicalGroup_852 ~v0 = du_modifiesTechnicalGroup_852
du_modifiesTechnicalGroup_852 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesTechnicalGroup_852
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_734
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_854 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> ()
d_paramsUpdateWellFormed_854 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_856 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_856 ~v0
  = du_paramsUpdateWellFormed'63'_856
du_paramsUpdateWellFormed'63'_856 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_856
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_602
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_858 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_858 ~v0 = du_'8801''45'update_858
du_'8801''45'update_858 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_858 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_892 v1
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_862 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_508 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_864 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_a_864 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_490 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_866 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_866 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_506 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_868 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_b_868 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_492 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_870 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_530 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_872 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_528 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_874 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_876 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_512 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_878 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_514 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_880 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_526 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_882 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_882 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_524 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_884 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_516 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_886 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_886 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_522 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_888 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_888 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_520 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_890 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_890 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_494 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_892 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_486 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_894 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_894 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_474 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_896 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_896 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_482 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_478 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_484 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_476 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_904 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_480 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_906 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_500
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_504 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_nopt_910 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_510 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_912 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_496 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_518 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_502 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_918 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_488 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_922 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_922 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_924 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_924 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_926 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_926 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_928 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_928 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_930 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_930 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_938 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1142
d_govParams_938 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_942 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_942 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
         (coe d_govParams_938 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_944 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_944 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
         (coe d_govParams_938 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_946 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_946 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1198
      (coe d_govParams_938 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_948 :: T_GovStructure_6 -> ()
d_THash_948 = erased
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_950 :: T_GovStructure_6 -> ()
d_UpdateT_950 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_952 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_952 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
         (coe d_govParams_938 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_954 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1126
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
         (coe d_govParams_938 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_956 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
      (coe d_govParams_938 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_958 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110
d_ppUpd_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
      (coe d_govParams_938 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_960 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1134
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
         (coe d_govParams_938 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_962 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_962 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_964 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_964 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1128
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
         (coe d_govParams_938 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_966 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_966 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_970 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_970 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
      (coe d_globalConstants_966 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Network
d_Network_972 :: T_GovStructure_6 -> ()
d_Network_972 = erased
-- Ledger.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_974 :: T_GovStructure_6 -> AgdaAny
d_NetworkId_974 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
      (coe d_globalConstants_966 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_976 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_976 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
      (coe d_globalConstants_966 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Quorum
d_Quorum_978 :: T_GovStructure_6 -> Integer
d_Quorum_978 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
      (coe d_globalConstants_966 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_980 :: T_GovStructure_6 -> Integer
d_SlotsPerEpoch'7580'_980 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
      (coe d_globalConstants_966 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_982 :: T_GovStructure_6 -> Integer
d_StabilityWindow'7580'_982 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
      (coe d_globalConstants_966 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_984 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_984 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
      (coe d_globalConstants_966 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_988 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_988 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_990 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_992 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_994 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_996 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_996 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_996
du_Dec'45'isScript_996 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_996
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_140
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_998 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_998 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_998
du_Dec'45'isVKey_998 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_998
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_126
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1000 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1000 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1000 v1 v2 v3
du_DecEq'45'BaseAddr_1000 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1000 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1002 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1002 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1002 v1 v2 v3
du_DecEq'45'BootstrapAddr_1002 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1002 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1004 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1004 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1004 v2 v3
du_DecEq'45'Credential_1004 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1004 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124 (coe v0)
      (coe v1)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1006 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1006 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1006 v1 v2 v3
du_DecEq'45'RwdAddr_1006 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1006 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_176 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1010 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1014 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1014 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1016 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1016 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1018 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1018 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1022 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1022 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1024 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1024 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1026 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1026 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1030 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> AgdaAny
d_getScriptHash_1030 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1030
du_getScriptHash_1030 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> AgdaAny
du_getScriptHash_1030
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_166
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1032 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1032 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1032
du_isKeyHashObj_1032 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1032
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_1034 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1036 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1036 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1038 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1038 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1038
du_isScriptObj_1038 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1038
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_26
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1040 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> ()
d_isScriptRwdAddr_1040 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1042 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1044 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1044 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_1046 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1046 ~v0 ~v1 ~v2 ~v3 = du_netId_1046
du_netId_1046 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1046 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_1048 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1048 ~v0 ~v1 ~v2 ~v3 = du_payCred_1048
du_payCred_1048 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1048 = coe MAlonzo.Code.Ledger.Address.du_payCred_102
-- Ledger.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1050 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1050 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1050
du_stakeCred_1050 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1050
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_104
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1054 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_42 -> AgdaAny
d_net_1054 v0 = coe MAlonzo.Code.Ledger.Address.d_net_50 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1056 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1056 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_52 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1058 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1058 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_54 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1062 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> Integer
d_attrsSize_1062 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_68 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1064 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> AgdaAny
d_net_1064 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1066 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1066 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_66 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1076 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> AgdaAny
d_net_1076 v0 = coe MAlonzo.Code.Ledger.Address.d_net_76 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1078 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1078 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
