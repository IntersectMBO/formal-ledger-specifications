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

module MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure
d_GovStructure_10 = ()
data T_GovStructure_10
  = C_GovStructure'46'constructor_2849 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360
                                       MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
-- Ledger.Conway.Conformance.Types.GovStructure._.GovParams
d_GovParams_216 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Conformance.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.TxId
d_TxId_556 :: T_GovStructure_10 -> ()
d_TxId_556 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.DocHash
d_DocHash_558 :: T_GovStructure_10 -> ()
d_DocHash_558 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_560 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_560 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2849 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.crypto
d_crypto_562 ::
  T_GovStructure_10 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_562 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2849 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_566 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_566 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_568 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_568 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_562 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_570 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_570 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_572 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_572 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_574 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_574 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.THash
d_THash_576 :: T_GovStructure_10 -> ()
d_THash_576 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_578 :: T_GovStructure_10 -> ()
d_KeyPair_578 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.SKey
d_SKey_580 :: T_GovStructure_10 -> ()
d_SKey_580 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_582 :: T_GovStructure_10 -> ()
d_ScriptHash_582 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Ser
d_Ser_584 :: T_GovStructure_10 -> ()
d_Ser_584 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_586 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_586 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_562 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_588 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_588 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Sig
d_Sig_590 :: T_GovStructure_10 -> ()
d_Sig_590 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_592 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_592 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.VKey
d_VKey_594 :: T_GovStructure_10 -> ()
d_VKey_594 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_596 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_596 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isSigned
d_isSigned_598 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_598 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_600 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_600 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.khs
d_khs_602 ::
  T_GovStructure_10 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_602 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_562 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.pkk
d_pkk_604 ::
  T_GovStructure_10 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_604 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_562 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.sign
d_sign_606 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_606 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_608 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_608 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2849 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__612 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__612 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__614 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__614 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_616 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_616 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_618 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_618 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_620 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_620 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_622 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_622 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Epoch
d_Epoch_624 :: T_GovStructure_10 -> ()
d_Epoch_624 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_626 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_626 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_628 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_628 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Slot
d_Slot_630 :: T_GovStructure_10 -> ()
d_Slot_630 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_632 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_632 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_634 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_634 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_636 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_636 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.addSlot
d_addSlot_638 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_638 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.epoch
d_epoch_640 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_640 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_642 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_642 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_644 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_644 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_646 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_646 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_648 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_648 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_650 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360
d_scriptStructure_650 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2849 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__654 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__654 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.CostModel
d_CostModel_656 :: T_GovStructure_10 -> ()
d_CostModel_656 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.T
d_T_658 :: T_GovStructure_10 -> ()
d_T_658 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.THash
d_THash_660 :: T_GovStructure_10 -> ()
d_THash_660 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_662 ::
  T_GovStructure_10 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Datum
d_Datum_664 :: T_GovStructure_10 -> ()
d_Datum_664 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_666 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_666 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (let v2 = d_epochStructure_608 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_668 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_668 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_670 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_670 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_672 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_672 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_674 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_674 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_676 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_676 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_678 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_678 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_680 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_680 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (let v2 = d_epochStructure_608 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_682 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_682 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_650 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_684 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_684 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_650 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_686 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_686 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_688 :: T_GovStructure_10 -> ()
d_ExUnits_688 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Hash-Timelock
d_Hash'45'Timelock_690 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_410
      (coe d_scriptStructure_650 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_692 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_692 v0
  = let v1 = d_crypto_562 (coe v0) in
    coe
      (let v2 = d_epochStructure_608 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_694 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_694 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_696 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_486
      (coe d_crypto_562 (coe v0)) (coe d_epochStructure_608 (coe v0))
      (coe d_scriptStructure_650 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_698 :: T_GovStructure_10 -> ()
d_LangDepView_698 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Language
d_Language_700 :: T_GovStructure_10 -> ()
d_Language_700 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.P1Script
d_P1Script_702 :: T_GovStructure_10 -> ()
d_P1Script_702 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_704 :: T_GovStructure_10 -> ()
d_PlutusScript_704 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_706 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_708 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_710 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_710 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Prices
d_Prices_712 :: T_GovStructure_10 -> ()
d_Prices_712 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_714 :: T_GovStructure_10 -> ()
d_Redeemer_714 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Script
d_Script_716 :: T_GovStructure_10 -> ()
d_Script_716 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_718 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_718 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_720 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_720 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_722 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_722 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_724 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_724 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_650 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_726 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_726 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_650 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_728 ::
  T_GovStructure_10 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_728 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe d_scriptStructure_650 (coe v0))))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_730 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
      (coe d_scriptStructure_650 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.language
d_language_732 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_732 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.p1s
d_p1s_734 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
      (coe d_crypto_562 (coe v0)) (coe d_epochStructure_608 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ps
d_ps_736 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
      (coe d_scriptStructure_650 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.toData
d_toData_738 :: T_GovStructure_10 -> () -> AgdaAny -> AgdaAny
d_toData_738 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_650 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_740 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  ()
d_validP1Script_740 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_742 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_742 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Acnt
d_Acnt_746 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_748 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_748 ~v0 = du_DecEq'45'DrepThresholds_748
du_DecEq'45'DrepThresholds_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_748
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'DrepThresholds_500
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_750 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_750 ~v0 = du_DecEq'45'PParamGroup_750
du_DecEq'45'PParamGroup_750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_750
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_752 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
      (coe d_epochStructure_608 (coe v0))
      (coe d_scriptStructure_650 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_754 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_754 ~v0 = du_DecEq'45'PoolThresholds_754
du_DecEq'45'PoolThresholds_754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_754
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PoolThresholds_502
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_756 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams
d_GovParams_760 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_766 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams
d_PParams_768 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_770 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_772 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_774 :: T_GovStructure_10 -> ()
d_ProtVer_774 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_778 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_778 ~v0 = du_Show'45'DrepThresholds_778
du_Show'45'DrepThresholds_778 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_778
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'DrepThresholds_508
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_780 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
      (coe d_epochStructure_608 (coe v0))
      (coe d_scriptStructure_650 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_782 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_782 ~v0 = du_Show'45'PoolThresholds_782
du_Show'45'PoolThresholds_782 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_782
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PoolThresholds_510
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_784 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_784 ~v0 = du_Show'45'ProtVer_784
du_Show'45'ProtVer_784 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_784
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-ℚ
d_Show'45'ℚ_786 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_786 ~v0 = du_Show'45'ℚ_786
du_Show'45'ℚ_786 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_786
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_794 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_794 ~v0 = du_paramsWF'45'elim_794
du_paramsWF'45'elim_794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_794 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsWF'45'elim_466
      v2
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_796 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_796 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_798 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
d_positivePParams_798 ~v0 = du_positivePParams_798
du_positivePParams_798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
du_positivePParams_798
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_positivePParams_382
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_800 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_802 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_802 ~v0 = du_pvCanFollow'63'_802
du_pvCanFollow'63'_802 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_802
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_804 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_804 ~v0
  = du_refScriptCostStride'62'0_804
du_refScriptCostStride'62'0_804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_804 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_refScriptCostStride'62'0_488
      v0
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_reserves_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_treasury_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P1_206 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2a_208 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2b_210 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P3_212 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P4_214 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5a_216 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5b_218 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5c_220 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5d_222 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P6_224 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_838 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_840 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.THash
d_THash_844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_THash_844 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_846 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_UpdateT_846 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.Show-THash
d_Show'45'THash_848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_848 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_850 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_854 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_856 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_860 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> ()
d_ppdWellFormed_860 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_878 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.a
d_a_880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.a0
d_a0_882 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.b
d_b_884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_888 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_906 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_908 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_912 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_914 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_916 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_918 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_920 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_922 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_924 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_926 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_928 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_930 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.prices
d_prices_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.pv
d_pv_938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_942 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_946 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_946 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_952 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> ()
d_ppdWellFormed_952 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_954 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__958 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__958 ~v0 = du__'63''8599'__958
du__'63''8599'__958 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__958 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du__'63''8599'__1036
      v1 v2
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_960 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
      (coe d_epochStructure_608 (coe v0))
      (coe d_scriptStructure_650 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_962 a0 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_964 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_964 ~v0 = du_applyPParamsUpdate_964
du_applyPParamsUpdate_964 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_applyPParamsUpdate_964
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_966 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_modifiedUpdateGroups_966 ~v0 = du_modifiedUpdateGroups_966
du_modifiedUpdateGroups_966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
du_modifiedUpdateGroups_966
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_968 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesEconomicGroup_968 ~v0 = du_modifiesEconomicGroup_968
du_modifiesEconomicGroup_968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesEconomicGroup_968
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesEconomicGroup_804
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_970 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesGovernanceGroup_970 ~v0 = du_modifiesGovernanceGroup_970
du_modifiesGovernanceGroup_970 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesGovernanceGroup_970
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesGovernanceGroup_948
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_972 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesNetworkGroup_972 ~v0 = du_modifiesNetworkGroup_972
du_modifiesNetworkGroup_972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesNetworkGroup_972
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesNetworkGroup_732
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_974 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesTechnicalGroup_974 ~v0 = du_modifiesTechnicalGroup_974
du_modifiesTechnicalGroup_974 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesTechnicalGroup_974
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesTechnicalGroup_876
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_976 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_paramsUpdateWellFormed_976 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_978 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_978 ~v0
  = du_paramsUpdateWellFormed'63'_978
du_paramsUpdateWellFormed'63'_978 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_978
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsUpdateWellFormed'63'_728
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_980 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_980 ~v0 = du_'8801''45'update_980
du_'8801''45'update_980 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_980 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_'8801''45'update_1050
      v1
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_984 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_Emax_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_986 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_988 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_990 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_992 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_994 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_998 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1000 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_costmdls_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1002 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_drepActivity_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1004 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1006 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1008 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1010 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_1010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1012 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1014 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_maxBlockExUnits_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1016 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1018 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1020 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1022 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1024 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1026 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_maxTxExUnits_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_1036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_prices_1042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q1_238 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2a_240 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2b_242 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q4_244 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_1060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q5e_246 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.govParams
d_govParams_1068 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_govParams_1068 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2849 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_1072 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1072 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_1068 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_1074 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1074 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_1068 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1076 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe d_govParams_1068 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.THash
d_THash_1078 :: T_GovStructure_10 -> ()
d_THash_1078 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1080 :: T_GovStructure_10 -> ()
d_UpdateT_1080 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_1082 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1082 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_1068 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_1084 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1084 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_1068 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1086 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_1068 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_1088 ::
  T_GovStructure_10 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe d_govParams_1068 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1090 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe d_govParams_1068 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1092 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_1068 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1094 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1094 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1096 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_1068 (coe v0)))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1098 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1098 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2849 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1102 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1102 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Network
d_Network_1104 :: T_GovStructure_10 -> ()
d_Network_1104 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1106 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_1106 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1108 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1108 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1110 :: T_GovStructure_10 -> Integer
d_Quorum_1110 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1112 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1112 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1114 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_1114 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1116 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_1116 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1118 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1118 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1120 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1120 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_globalConstants_1098 (coe v0))
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Addr
d_Addr_1124 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1124 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1126 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1128 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Credential
d_Credential_1130 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1132 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1132 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1132
du_Dec'45'isScript_1132 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1132
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1134 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1134 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1134
du_Dec'45'isVKey_1134 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1134
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1136 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1136 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1136 v1 v2 v3
du_DecEq'45'BaseAddr_1136 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1136 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1138 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1138 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1138 v1 v2 v3
du_DecEq'45'BootstrapAddr_1138 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1138 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1140 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1140 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1140 v2 v3
du_DecEq'45'Credential_1140 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1140 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1142 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1142 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1142 v1 v2 v3
du_DecEq'45'RwdAddr_1142 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1142 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1148 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1152 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1152 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1154 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1154 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1156 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1156 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1160 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1160 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1160
du_Show'45'Credential_1160 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1160 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1162 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1162 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1162
du_Show'45'Credential'215'Coin_1162 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1162 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1164 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1164 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1164
du_Show'45'RwdAddr_1164 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1164
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1166 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1166 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1168 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1168 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1170 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1170 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1174 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1174 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1174
du_getScriptHash_1174 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1174
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1176 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1178 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1178 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1178
du_isBootstrapAddr'63'_1178 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1178
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1180 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1180 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1182 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1182 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1182
du_isKeyHashObj_1182 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1182
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1184 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1184 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1184
du_isKeyHashObj'7495'_1184 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1184
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isScript
d_isScript_1186 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1188 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1188 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1190 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1190 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1190
du_isScriptObj_1190 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1190
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1192 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1192 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1194 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1196 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1196 = erased
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.netId
d_netId_1198 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1198 ~v0 ~v1 ~v2 ~v3 = du_netId_1198
du_netId_1198 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1198 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.payCred
d_payCred_1200 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1200 ~v0 ~v1 ~v2 ~v3 = du_payCred_1200
du_payCred_1200 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1200 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1202 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1202 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1202
du_stakeCred_1202 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1202
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1206 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1206 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1208 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1208 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1210 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1210 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1214 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1214 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1216 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1216 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1218 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1218 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1228 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1228 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Conway.Conformance.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1230 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1230 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
