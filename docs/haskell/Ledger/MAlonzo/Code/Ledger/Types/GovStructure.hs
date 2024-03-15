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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
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
  = C_GovStructure'46'constructor_2381 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_362
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_494
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_188 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_378 :: T_GovStructure_6 -> ()
d_TxId_378 = erased
-- Ledger.Types.GovStructure.GovStructure.Network
d_Network_380 :: T_GovStructure_6 -> ()
d_Network_380 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_382 :: T_GovStructure_6 -> ()
d_DocHash_382 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_384 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_384 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.DecEq-Netw
d_DecEq'45'Netw_386 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_386 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_388 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_388 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_392 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_392 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_394 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_394 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_388 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_396 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_396 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_398 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_398 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_400 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_400 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_402 :: T_GovStructure_6 -> ()
d_THash_402 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_404 :: T_GovStructure_6 -> ()
d_KeyPair_404 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_406 :: T_GovStructure_6 -> ()
d_SKey_406 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_408 :: T_GovStructure_6 -> ()
d_ScriptHash_408 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_410 :: T_GovStructure_6 -> ()
d_Ser_410 = erased
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_412 :: T_GovStructure_6 -> ()
d_Sig_412 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_414 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_414 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_416 :: T_GovStructure_6 -> ()
d_VKey_416 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_418 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_418 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_420 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_420 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_422 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_422 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_424 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_424 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_388 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_426 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_426 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_388 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_428 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_428 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_430 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_430 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__434 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__434 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_436 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_436 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_438 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_438 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_440 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_440 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_442 :: T_GovStructure_6 -> ()
d_Epoch_442 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_444 :: T_GovStructure_6 -> ()
d_Slot_444 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_446 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_446 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_448 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_448 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_450 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_450 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_452 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_452 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_454 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_454 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_456 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_456 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_458 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_458 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_460 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_460 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_462 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_462 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_430 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_464 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362
d_scriptStructure_464 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__468 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__468 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_470 :: T_GovStructure_6 -> ()
d_CostModel_470 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_472 :: T_GovStructure_6 -> ()
d_T_472 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_474 :: T_GovStructure_6 -> ()
d_THash_474 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_476 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_476 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_478 :: T_GovStructure_6 -> ()
d_Datum_478 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_480 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_480 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (let v2 = d_epochStructure_430 (coe v0) in
       coe
         (let v3 = d_scriptStructure_464 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_482 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_482 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_484 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_484 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_192
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_486 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_486 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_184
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_488 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_488 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_490 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_490 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_492 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_492 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (let v2 = d_epochStructure_430 (coe v0) in
       coe
         (let v3 = d_scriptStructure_464 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_494 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PlutusScript_494 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_496 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_496 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_464 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_498 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_498 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_464 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_500 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_500 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_502 :: T_GovStructure_6 -> ()
d_ExUnits_502 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hash-Timelock
d_Hash'45'Timelock_504 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_504 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_398
      (coe d_scriptStructure_464 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_506 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_506 v0
  = let v1 = d_crypto_388 (coe v0) in
    coe
      (let v2 = d_epochStructure_430 (coe v0) in
       coe
         (let v3 = d_scriptStructure_464 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_508 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_508 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_510 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_510 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_474
      (coe d_crypto_388 (coe v0)) (coe d_epochStructure_430 (coe v0))
      (coe d_scriptStructure_464 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_512 :: T_GovStructure_6 -> ()
d_LangDepView_512 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_514 :: T_GovStructure_6 -> ()
d_Language_514 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_516 :: T_GovStructure_6 -> ()
d_P1Script_516 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_518 :: T_GovStructure_6 -> ()
d_PlutusScript_518 = erased
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_520 :: T_GovStructure_6 -> ()
d_Prices_520 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_522 :: T_GovStructure_6 -> ()
d_Redeemer_522 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_524 :: T_GovStructure_6 -> ()
d_Script_524 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_526 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_526 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_464 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_528 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_528 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_414
            (coe d_scriptStructure_464 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_530 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_530 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_396
      (coe d_scriptStructure_464 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_532 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_532 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_534 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_p1s_534 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_400 (coe d_crypto_388 (coe v0))
      (coe d_epochStructure_430 (coe v0))
      (coe d_scriptStructure_464 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_536 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102
d_ps_536 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_414
      (coe d_scriptStructure_464 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_538 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_538 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_464 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_540 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 -> ()
d_validP1Script_540 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_542 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_542 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_546 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_548 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_548 ~v0 = du_DecEq'45'DrepThresholds_548
du_DecEq'45'DrepThresholds_548 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_548
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_398
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_550 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_550 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_402
      (coe d_epochStructure_430 (coe v0))
      (coe d_scriptStructure_464 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_552 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_552 ~v0 = du_DecEq'45'PoolThresholds_552
du_DecEq'45'PoolThresholds_552 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_552
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_400
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_554 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_558 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_564 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_566 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_568 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_570 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_572 :: T_GovStructure_6 -> ()
d_ProtVer_572 = erased
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_582 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_218 -> ()
d_paramsWellFormed_582 = erased
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_584 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_586 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_586 ~v0 = du_pvCanFollow'63'_586
du_pvCanFollow'63'_586 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_586
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_408
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_590 :: MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_reserves_590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_132 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_592 :: MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_treasury_592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_130 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_596 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_596 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_176 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_598 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_598 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_178 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_600 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_600 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_180 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_602 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_602 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_182 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_604 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_604 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_184 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_606 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_606 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_186 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_608 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_608 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_188 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_610 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_610 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_190 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_612 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_612 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_192 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_614 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_614 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_194 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_618 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_618 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_620 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_620 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_622 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_622 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_554 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.THash
d_THash_624 :: MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> ()
d_THash_624 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_626 :: MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> ()
d_UpdateT_626 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_628 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_628 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_630 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_630 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_632 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_632 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_634 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456
d_ppUpd_634 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_636 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> AgdaAny -> Bool
d_ppdWellFormed_636 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_638 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_638 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_640 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_640 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_642 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_642 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_478
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_658 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_Emax_658 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_308 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_660 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_a_660 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_292 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_662 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_662 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_306 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_664 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_b_664 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_294 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMaxTermLength_666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMinSize_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_coinsPerUTxOWord_670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_300 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_collateralPercentage_672 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_costmdls_674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_drepActivity_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_drepDeposit_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionDeposit_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionLifetime_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxBlockExUnits_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_290 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxBlockSize_688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_276 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxCollateralInputs_690 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_284 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxHeaderSize_692 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_280 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxTxExUnits_694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_288 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxTxSize_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_278 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxValSize_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_282 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_700 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_302
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_minUTxOValue_702 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_296 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_704 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_nopt_704 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_310 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_706 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_poolDeposit_706 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_298 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_708 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_prices_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_304 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_712 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_286 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_716 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 -> ()
d_UpdateT_716 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_718 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_718 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_480 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_720 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 -> AgdaAny -> Bool
d_ppdWellFormed_720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_722 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_722 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_724 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_724 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_726 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_726 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_478 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_730 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_730 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_732 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_732 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_734 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_734 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_736 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_736 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_738 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_738 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_746 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_494
d_govParams_746 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_750 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_750 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_746 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_752 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_752 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_746 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_754 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_754 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_554
      (coe d_govParams_746 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_756 :: T_GovStructure_6 -> ()
d_THash_756 = erased
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_758 :: T_GovStructure_6 -> ()
d_UpdateT_758 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_760 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_760 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_746 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_762 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_762 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_746 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_764 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_764 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
      (coe d_govParams_746 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_766 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456
d_ppUpd_766 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_526
      (coe d_govParams_746 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_768 :: T_GovStructure_6 -> AgdaAny -> Bool
d_ppdWellFormed_768 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_746 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_770 ::
  T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_770 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_746 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_772 ::
  T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_772 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_774 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_774 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_478
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_746 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_778 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_778 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_780 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_782 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_784 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_784 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_786 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_786 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_786
du_Dec'45'isScript_786 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_786
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_788 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_788 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_788
du_Dec'45'isVKey_788 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_788
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_790 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_790 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_790 v1 v2 v3
du_DecEq'45'BaseAddr_790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_790 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_792 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_792 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_792 v1 v2 v3
du_DecEq'45'BootstrapAddr_792 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_792 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_794 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_794 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_794 v1 v2 v3
du_DecEq'45'RwdAddr_794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_794 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_796 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_800 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_800 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_802 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_802 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_804 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_804 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_806 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_806 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_808 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_808 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_810 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_810 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_814 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_814 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_814
du_getScriptHash_814 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_814
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_148
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_816 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_818 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_818 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_820 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_820 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_822 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_824 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_824 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_826 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_826 ~v0 ~v1 ~v2 ~v3 = du_netId_826
du_netId_826 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_826 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_828 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_828 ~v0 ~v1 ~v2 ~v3 = du_payCred_828
du_payCred_828 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_828 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_832 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_832 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_834 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_834 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_836 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_836 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_840 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_840 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_842 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_842 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_844 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_844 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_848 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_848 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_850 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_850 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
