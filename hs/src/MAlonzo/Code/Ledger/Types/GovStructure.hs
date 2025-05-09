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
import qualified MAlonzo.Code.Agda.Primitive
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
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Types.GovStructure.GovStructure
d_GovStructure_6 = ()
data T_GovStructure_6
  = C_GovStructure'46'constructor_3123 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1504
                                       MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_210 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_306 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_306 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536 (coe v0)
-- Ledger.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_312 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_312 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_570 :: T_GovStructure_6 -> ()
d_TxId_570 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_572 :: T_GovStructure_6 -> ()
d_DocHash_572 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_574 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_574 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_576 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_576 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_580 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_580 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_582 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_582 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_576 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_584 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_584 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_586 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_586 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_588 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_588 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_590 :: T_GovStructure_6 -> ()
d_THash_590 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_592 :: T_GovStructure_6 -> ()
d_KeyPair_592 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_594 :: T_GovStructure_6 -> ()
d_SKey_594 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_596 :: T_GovStructure_6 -> ()
d_ScriptHash_596 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_598 :: T_GovStructure_6 -> ()
d_Ser_598 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_600 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_600 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_576 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_602 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_602 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_604 :: T_GovStructure_6 -> ()
d_Sig_604 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_606 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_606 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_608 :: T_GovStructure_6 -> ()
d_VKey_608 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_610 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_610 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_612 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_612 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_614 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_614 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_616 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_616 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_576 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_618 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_618 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_576 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_620 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_620 v0
  = let v1 = d_crypto_576 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_622 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_622 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__626 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__626 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__628 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__628 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_630 ::
  T_GovStructure_6 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_630 = erased
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_632 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_632 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_634 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_634 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_636 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_636 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_638 :: T_GovStructure_6 -> ()
d_Epoch_638 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_640 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_640 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_642 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_642 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_644 :: T_GovStructure_6 -> ()
d_Slot_644 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_646 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_646 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_648 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_648 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_650 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_650 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_652 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_652 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_654 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_654 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_656 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_656 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_658 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_658 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_660 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_660 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_662 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_662 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_622 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_664 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_664 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__668 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__668 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_670 :: T_GovStructure_6 -> ()
d_CostModel_670 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_672 :: T_GovStructure_6 -> ()
d_T_672 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_674 :: T_GovStructure_6 -> ()
d_THash_674 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_676 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_676 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_678 :: T_GovStructure_6 -> ()
d_Datum_678 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_680 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_680 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_682 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_682 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_684 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_684 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_686 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_686 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_688 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_688 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_690 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_690 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_692 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_692 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_694 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_694 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_696 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_696 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_664 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_698 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_698 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_664 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_700 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_700 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_702 :: T_GovStructure_6 -> ()
d_ExUnits_702 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_704 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_704 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_706 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_708 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_708 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe d_scriptStructure_664 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_710 :: T_GovStructure_6 -> ()
d_LangDepView_710 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_712 :: T_GovStructure_6 -> ()
d_Language_712 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_714 :: T_GovStructure_6 -> ()
d_P1Script_714 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_716 :: T_GovStructure_6 -> ()
d_PlutusScript_716 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_718 :: T_GovStructure_6 -> AgdaAny
d_PlutusV1_718 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_720 :: T_GovStructure_6 -> AgdaAny
d_PlutusV2_720 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_722 :: T_GovStructure_6 -> AgdaAny
d_PlutusV3_722 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_724 :: T_GovStructure_6 -> ()
d_Prices_724 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_726 :: T_GovStructure_6 -> ()
d_Redeemer_726 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_728 :: T_GovStructure_6 -> ()
d_Script_728 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_730 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_730 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_732 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_732 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_734 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_734 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_736 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_736 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_664 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_738 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_738 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_664 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_740 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_740 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe d_scriptStructure_664 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_742 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_742 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
      (coe d_scriptStructure_664 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_744 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_744 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_746 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_746 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_426
      (coe d_scriptStructure_664 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_748 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_748 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_448
      (coe d_scriptStructure_664 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_750 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_750 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_664 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_752 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_752 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_754 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_754 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_758 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_760 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_760 ~v0 = du_DecEq'45'DrepThresholds_760
du_DecEq'45'DrepThresholds_760 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_760
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_576
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_762 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_762 ~v0 = du_DecEq'45'PParamGroup_762
du_DecEq'45'PParamGroup_762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_762
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_582
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_764 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_764 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_580
      (coe d_epochStructure_622 (coe v0))
      (coe d_scriptStructure_664 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_766 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_766 ~v0 = du_DecEq'45'PoolThresholds_766
du_DecEq'45'PoolThresholds_766 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_766
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_578
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_768 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_772 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_776 ::
  T_GovStructure_6 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_776 ~v0 = du_HasCast'45'Acnt_776
du_HasCast'45'Acnt_776 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_776
  = coe MAlonzo.Code.Ledger.PParams.du_HasCast'45'Acnt_184
-- Ledger.Types.GovStructure.GovStructure._.HasPParams
d_HasPParams_778 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.HasccMaxTermLength
d_HasccMaxTermLength_780 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.HasgovActionDeposit
d_HasgovActionDeposit_782 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_784 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
d_HasgovActionDeposit'45'PParams_784 ~v0
  = du_HasgovActionDeposit'45'PParams_784
du_HasgovActionDeposit'45'PParams_784 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
du_HasgovActionDeposit'45'PParams_784
  = coe
      MAlonzo.Code.Ledger.PParams.du_HasgovActionDeposit'45'PParams_458
-- Ledger.Types.GovStructure.GovStructure._.Hastreasury
d_Hastreasury_786 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_790 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_792 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_794 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsOf
d_PParamsOf_796 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_798 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_800 :: T_GovStructure_6 -> ()
d_ProtVer_800 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_804 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_804 ~v0 = du_Show'45'DrepThresholds_804
du_Show'45'DrepThresholds_804 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_804
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_584
-- Ledger.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_806 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_806 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_588
      (coe d_epochStructure_622 (coe v0))
      (coe d_scriptStructure_664 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_808 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_808 ~v0 = du_Show'45'PoolThresholds_808
du_Show'45'PoolThresholds_808 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_808
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_586
-- Ledger.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_810 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_810 ~v0 = du_Show'45'ProtVer_810
du_Show'45'ProtVer_810 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_810
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Types.GovStructure.GovStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_818 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_818 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.govActionDepositOf
d_govActionDepositOf_820 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_822 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_822 ~v0 = du_paramsWF'45'elim_822
du_paramsWF'45'elim_822 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_822 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_548 v2
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_824 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_262 -> ()
d_paramsWellFormed_824 = erased
-- Ledger.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_826 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> [Integer]
d_positivePParams_826 ~v0 = du_positivePParams_826
du_positivePParams_826 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> [Integer]
du_positivePParams_826
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_460
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_828 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_830 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_830 ~v0 = du_pvCanFollow'63'_830
du_pvCanFollow'63'_830 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_830
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1424
-- Ledger.Types.GovStructure.GovStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_832 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_832 ~v0
  = du_refScriptCostStride'62'0_832
du_refScriptCostStride'62'0_832 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_832 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_570 v0
-- Ledger.Types.GovStructure.GovStructure._.treasuryOf
d_treasuryOf_834 ::
  MAlonzo.Code.Ledger.PParams.T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_834 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryOf_168 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_840 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_840 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_842 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_842 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_846 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_846 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_220 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_848 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_848 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_222 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_850 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_850 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_224 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_852 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_852 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_226 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_854 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_854 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_228 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_856 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_856 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_230 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_858 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_858 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_232 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_860 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_860 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_234 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_862 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_862 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_236 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_864 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_864 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_238 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_868 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_870 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1504 -> ()
d_UpdateT_870 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_872 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_872 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_874 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_876 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_876 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_878 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 -> AgdaAny -> ()
d_ppdWellFormed_878 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_880 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_880 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1490
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_884 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_888 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_888 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_892 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Hastreasury.treasuryOf
d_treasuryOf_896 ::
  MAlonzo.Code.Ledger.PParams.T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_896 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryOf_168 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_912 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_912 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_914 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_914 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_916 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_918 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_918 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_946 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_950 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_952 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_966 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_966 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_974 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_976 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.treasuryCut
d_treasuryCut_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 -> ()
d_UpdateT_984 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_986 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_988 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_990 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 -> AgdaAny -> ()
d_ppdWellFormed_990 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_992 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_992 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1490 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__996 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__996 ~v0 = du__'63''8599'__996
du__'63''8599'__996 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__996 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1216 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_998 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_998 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1418
      (coe d_epochStructure_622 (coe v0))
      (coe d_scriptStructure_664 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1000 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1002 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyPParamsUpdate_1002 ~v0 = du_applyPParamsUpdate_1002
du_applyPParamsUpdate_1002 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_applyPParamsUpdate_1002
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1264
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1004 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_modifiedUpdateGroups_1004 ~v0 = du_modifiedUpdateGroups_1004
du_modifiedUpdateGroups_1004 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
du_modifiedUpdateGroups_1004
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1200
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1006 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesEconomicGroup_1006 ~v0 = du_modifiesEconomicGroup_1006
du_modifiesEconomicGroup_1006 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesEconomicGroup_1006
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_896
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1008 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesGovernanceGroup_1008 ~v0
  = du_modifiesGovernanceGroup_1008
du_modifiesGovernanceGroup_1008 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesGovernanceGroup_1008
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_1048
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1010 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesNetworkGroup_1010 ~v0 = du_modifiesNetworkGroup_1010
du_modifiesNetworkGroup_1010 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesNetworkGroup_1010
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_820
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1012 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesSecurityGroup_1012 ~v0 = du_modifiesSecurityGroup_1012
du_modifiesSecurityGroup_1012 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesSecurityGroup_1012
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesSecurityGroup_1124
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1014 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesTechnicalGroup_1014 ~v0 = du_modifiesTechnicalGroup_1014
du_modifiesTechnicalGroup_1014 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesTechnicalGroup_1014
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_972
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1016 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> ()
d_paramsUpdateWellFormed_1016 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1018 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1018 ~v0
  = du_paramsUpdateWellFormed'63'_1018
du_paramsUpdateWellFormed'63'_1018 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1018
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_816
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1020 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1020 ~v0 = du_'8801''45'update_1020
du_'8801''45'update_1020 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1020 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1230 v1
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1024 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_1024 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_710 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1026 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_a_1026 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_680 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1028 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1028 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_708 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1030 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_b_1030 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_682 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1032 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_1032 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_732 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1034 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_1034 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_730 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1036 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_1036 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1038 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_1038 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_714 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1040 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_1040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_716 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1042 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_1042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_728 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1044 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_1044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_726 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1046 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_718 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1048 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_1048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_724 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1050 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_1050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_722 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1052 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_1052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_684 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1054 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_1054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_676 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1056 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_1056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_664 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1058 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_1058 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_672 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1060 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_1060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_668 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1062 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_1062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1064 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_1064 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1066 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_1066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_674 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1068 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_1068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_666 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1070 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_1070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_670 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1072 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1072 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_696
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1074 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_1074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_706 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1076 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_688 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1078 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_nopt_1078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_712 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1080 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_1080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_686 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1082 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_720 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1084 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_1084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_694 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1086 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1086 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_678 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1088 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1088 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1090 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_1090 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_702 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1092 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1092 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_690 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1096 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1096 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_252 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1098 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1098 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_254 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1100 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1100 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_256 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1102 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1102 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_258 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5
d_Q5_1104 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1104 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5_260 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_1112 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1504
d_govParams_1112 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1116 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1116 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536
      (coe d_govParams_1112 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1118 :: T_GovStructure_6 -> ()
d_UpdateT_1118 = erased
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1120 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_1120 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe d_govParams_1112 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1122 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_1122 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
      (coe d_govParams_1112 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1124 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1124 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe d_govParams_1112 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1126 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_1126 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1128 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_1128 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1490
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe d_govParams_1112 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1130 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1130 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1134 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1134 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ActiveSlotCoeff_288
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1136 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1136 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Network
d_Network_1138 :: T_GovStructure_6 -> ()
d_Network_1138 = erased
-- Ledger.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1140 :: T_GovStructure_6 -> AgdaAny
d_NetworkId_1140 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_296
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1142 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1142 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_290
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1144 ::
  T_GovStructure_6 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1144 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1146 :: T_GovStructure_6 -> Integer
d_Quorum_1146 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_294
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1148 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1148 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_282
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1150 :: T_GovStructure_6 -> Integer
d_SlotsPerEpoch'7580'_1150 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_284
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1152 :: T_GovStructure_6 -> Integer
d_StabilityWindow'7580'_1152 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_292
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1154 ::
  T_GovStructure_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1154 = erased
-- Ledger.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1156 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1156 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_310
      (coe d_globalConstants_1130 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_1160 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1160 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1162 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1164 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_1166 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.CredentialOf
d_CredentialOf_1168 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26 ->
  AgdaAny -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_CredentialOf_1168 v0
  = coe MAlonzo.Code.Ledger.Address.d_CredentialOf_34 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1170 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1170 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1170
du_Dec'45'isScript_1170 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1170
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1172 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1172 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1172
du_Dec'45'isVKey_1172 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1172
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1174 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1174 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1174 v1 v2 v3
du_DecEq'45'BaseAddr_1174 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1174 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_234 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1176 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1176 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1176 v1 v2 v3
du_DecEq'45'BootstrapAddr_1176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1176 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_236 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1178 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1178 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1178 v2 v3
du_DecEq'45'Credential_1178 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1178 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186 (coe v0)
      (coe v1)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1180 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1180 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1180 v1 v2 v3
du_DecEq'45'RwdAddr_1180 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1180 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.HasCredential
d_HasCredential_1182 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure.GovStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1184 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_HasCredential_26
d_HasCredential'45'RwdAddr_1184 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RwdAddr_1184
du_HasCredential'45'RwdAddr_1184 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26
du_HasCredential'45'RwdAddr_1184
  = coe MAlonzo.Code.Ledger.Address.du_HasCredential'45'RwdAddr_128
-- Ledger.Types.GovStructure.GovStructure._.HasNetworkId
d_HasNetworkId_1186 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Types.GovStructure.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1188 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'BaseAddr_1188 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1188
du_HasNetworkId'45'BaseAddr_1188 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'BaseAddr_1188
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'BaseAddr_122
-- Ledger.Types.GovStructure.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1190 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'BootstrapAddr_1190 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1190
du_HasNetworkId'45'BootstrapAddr_1190 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'BootstrapAddr_1190
  = coe
      MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'BootstrapAddr_124
-- Ledger.Types.GovStructure.GovStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1192 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'RwdAddr_1192 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RwdAddr_1192
du_HasNetworkId'45'RwdAddr_1192 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'RwdAddr_1192
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'RwdAddr_126
-- Ledger.Types.GovStructure.GovStructure._.NetworkIdOf
d_NetworkIdOf_1198 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1198 v0
  = coe MAlonzo.Code.Ledger.Address.d_NetworkIdOf_116 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1200 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1204 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1204 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1206 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1206 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1208 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1208 = erased
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1212 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1212 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1212
du_Show'45'Credential_1212 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1212 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_250 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1214 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1214 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1214
du_Show'45'Credential'215'Coin_1214 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1214 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_254 v1
      v2
-- Ledger.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1216 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1216 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1216
du_Show'45'RwdAddr_1216 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1216
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_252
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1218 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1218 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1220 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1220 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1222 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1222 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1226 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_60 -> AgdaAny
d_getScriptHash_1226 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1226
du_getScriptHash_1226 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_60 -> AgdaAny
du_getScriptHash_1226
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_228
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1228 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1230 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1230 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1230
du_isBootstrapAddr'63'_1230 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1230
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_182
-- Ledger.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1232 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1232 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1234 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1234 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1234
du_isKeyHashObj_1234 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1234
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_40
-- Ledger.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1236 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1236 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1236
du_isKeyHashObj'7495'_1236 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1236
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_44
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_1238 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1240 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1240 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1242 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1242 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1242
du_isScriptObj_1242 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1242
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_50
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1244 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> ()
d_isScriptRwdAddr_1244 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1246 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1248 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1248 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_1250 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1250 ~v0 ~v1 ~v2 ~v3 = du_netId_1250
du_netId_1250 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1250 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_1252 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1252 ~v0 ~v1 ~v2 ~v3 = du_payCred_1252
du_payCred_1252 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1252 = coe MAlonzo.Code.Ledger.Address.du_payCred_152
-- Ledger.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1254 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1254 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1254
du_stakeCred_1254 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1254
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_154
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1258 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_66 -> AgdaAny
d_net_1258 v0 = coe MAlonzo.Code.Ledger.Address.d_net_74 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1260 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_66 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1260 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_76 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1262 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_66 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1262 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1266 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 -> Integer
d_attrsSize_1266 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_92 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1268 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 -> AgdaAny
d_net_1268 v0 = coe MAlonzo.Code.Ledger.Address.d_net_88 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1270 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1270 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_90 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1280 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26 ->
  AgdaAny -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_CredentialOf_1280 v0
  = coe MAlonzo.Code.Ledger.Address.d_CredentialOf_34 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1284 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1284 v0
  = coe MAlonzo.Code.Ledger.Address.d_NetworkIdOf_116 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1288 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_1288 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1290 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1290 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
