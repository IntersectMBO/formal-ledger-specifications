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

module MAlonzo.Code.Ledger.Conway.Types.GovStructure where

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
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Types.GovStructure.GovStructure
d_GovStructure_8 = ()
data T_GovStructure_8
  = C_GovStructure'46'constructor_3269 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
                                       MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
                                       MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268
                                       MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530
                                       MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
-- Ledger.Conway.Types.GovStructure._.GovParams
d_GovParams_226 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_324 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1562 (coe v0)
-- Ledger.Conway.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_330 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498
d_ppUpd_330 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure.TxId
d_TxId_592 :: T_GovStructure_8 -> ()
d_TxId_592 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure.DocHash
d_DocHash_594 :: T_GovStructure_8 -> ()
d_DocHash_594 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_596 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_596 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3269 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure.crypto
d_crypto_598 ::
  T_GovStructure_8 -> MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_598 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3269 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_602 ::
  T_GovStructure_8 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_602 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_604 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
      (coe d_crypto_598 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_606 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_606 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_608 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_608 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_610 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_610 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.THash
d_THash_612 :: T_GovStructure_8 -> ()
d_THash_612 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_614 :: T_GovStructure_8 -> ()
d_KeyPair_614 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.SKey
d_SKey_616 :: T_GovStructure_8 -> ()
d_SKey_616 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_618 :: T_GovStructure_8 -> ()
d_ScriptHash_618 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Ser
d_Ser_620 :: T_GovStructure_8 -> ()
d_Ser_620 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_622 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
      (coe d_crypto_598 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_624 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_624 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Sig
d_Sig_626 :: T_GovStructure_8 -> ()
d_Sig_626 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_628 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_628 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKey
d_VKey_630 :: T_GovStructure_8 -> ()
d_VKey_630 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_632 :: T_GovStructure_8 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_632 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isSigned
d_isSigned_634 ::
  T_GovStructure_8 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_634 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_636 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_636 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_isSigned'45'correct_130
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.khs
d_khs_638 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
      (coe d_crypto_598 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.pkk
d_pkk_640 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
      (coe d_crypto_598 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.sign
d_sign_642 :: T_GovStructure_8 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_642 v0
  = let v1 = d_crypto_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_644 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_644 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3269 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__648 ::
  T_GovStructure_8 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__650 ::
  T_GovStructure_8 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_652 ::
  T_GovStructure_8 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_652 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_654 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_656 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_658 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Epoch
d_Epoch_660 :: T_GovStructure_8 -> ()
d_Epoch_660 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_662 ::
  T_GovStructure_8 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_664 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Slot
d_Slot_666 :: T_GovStructure_8 -> ()
d_Slot_666 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_668 ::
  T_GovStructure_8 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_670 :: T_GovStructure_8 -> AgdaAny
d_StabilityWindow_670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_672 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.addSlot
d_addSlot_674 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.epoch
d_epoch_676 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_epoch_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_678 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_firstSlot_678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_680 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_682 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_suc'7497'_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_684 :: T_GovStructure_8 -> Integer -> AgdaAny
d_ℕtoEpoch_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_686 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268
d_scriptStructure_686 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3269 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__690 ::
  T_GovStructure_8 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__690 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.CostModel
d_CostModel_692 :: T_GovStructure_8 -> ()
d_CostModel_692 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.T
d_T_694 :: T_GovStructure_8 -> ()
d_T_694 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.THash
d_THash_696 :: T_GovStructure_8 -> ()
d_THash_696 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_698 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Datum
d_Datum_700 :: T_GovStructure_8 -> ()
d_Datum_700 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_702 ::
  T_GovStructure_8 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_704 ::
  T_GovStructure_8 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validPlutusScript_260
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_706 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_708 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_710 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_712 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_714 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_716 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_718 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_718 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_686 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_720 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_720 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_686 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_722 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_724 :: T_GovStructure_8 -> ()
d_ExUnits_724 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_726 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_728 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_730 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
      (coe d_scriptStructure_686 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_732 :: T_GovStructure_8 -> ()
d_LangDepView_732 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Language
d_Language_734 :: T_GovStructure_8 -> ()
d_Language_734 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.P1Script
d_P1Script_736 :: T_GovStructure_8 -> ()
d_P1Script_736 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_738 :: T_GovStructure_8 -> ()
d_PlutusScript_738 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_740 :: T_GovStructure_8 -> AgdaAny
d_PlutusV1_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_742 :: T_GovStructure_8 -> AgdaAny
d_PlutusV2_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_744 :: T_GovStructure_8 -> AgdaAny
d_PlutusV3_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Prices
d_Prices_746 :: T_GovStructure_8 -> ()
d_Prices_746 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_748 :: T_GovStructure_8 -> ()
d_Redeemer_748 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Script
d_Script_750 :: T_GovStructure_8 -> ()
d_Script_750 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_752 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_754 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_756 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_758 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_758 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_686 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_760 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_760 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_686 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_762 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
            (coe d_scriptStructure_686 (coe v0))))
-- Ledger.Conway.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_764 ::
  T_GovStructure_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_hashRespectsUnion_314
      (coe d_scriptStructure_686 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.isNativeScript
d_isNativeScript_766 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_766 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isP1Script
d_isP1Script_768 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_768 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isP1Script?
d_isP1Script'63'_770 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_770 ~v0 = du_isP1Script'63'_770
du_isP1Script'63'_770 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_770
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_isP1Script'63'_396
-- Ledger.Conway.Types.GovStructure.GovStructure._.isP2Script
d_isP2Script_772 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_772 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isP2Script?
d_isP2Script'63'_774 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_774 ~v0 = du_isP2Script'63'_774
du_isP2Script'63'_774 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_774
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_isP2Script'63'_410
-- Ledger.Conway.Types.GovStructure.GovStructure._.language
d_language_776 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_language_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.p1s
d_p1s_778 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96
d_p1s_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
      (coe d_scriptStructure_686 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ps
d_ps_780 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118
d_ps_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
      (coe d_scriptStructure_686 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.toData
d_toData_782 :: T_GovStructure_8 -> () -> AgdaAny -> AgdaAny
d_toData_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_686 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.toP1Script
d_toP1Script_784 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_784 ~v0 = du_toP1Script_784
du_toP1Script_784 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_784
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404
-- Ledger.Conway.Types.GovStructure.GovStructure._.toP2Script
d_toP2Script_786 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_786 ~v0 = du_toP2Script_786
du_toP2Script_786 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_786
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP2Script_416
-- Ledger.Conway.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_788 ::
  T_GovStructure_8 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_788 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_790 ::
  T_GovStructure_8 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_790 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt
d_Acnt_794 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_796 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_796 ~v0 = du_DecEq'45'DrepThresholds_796
du_DecEq'45'DrepThresholds_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_796
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_602
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_798 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_798 ~v0 = du_DecEq'45'PParamGroup_798
du_DecEq'45'PParamGroup_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_798
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_608
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_800 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_606
      (coe d_epochStructure_644 (coe v0))
      (coe d_scriptStructure_686 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_802 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_802 ~v0 = du_DecEq'45'PoolThresholds_802
du_DecEq'45'PoolThresholds_802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_802
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_604
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_804 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams
d_GovParams_808 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_812 ::
  T_GovStructure_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_812 ~v0 = du_HasCast'45'Acnt_812
du_HasCast'45'Acnt_812 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_812
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_218
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasPParams
d_HasPParams_814 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasccMaxTermLength
d_HasccMaxTermLength_816 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit
d_HasgovActionDeposit_818 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_820 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
d_HasgovActionDeposit'45'PParams_820 ~v0
  = du_HasgovActionDeposit'45'PParams_820
du_HasgovActionDeposit'45'PParams_820 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
du_HasgovActionDeposit'45'PParams_820
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_492
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hasreserves
d_Hasreserves_822 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hastreasury
d_Hastreasury_824 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_828 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams
d_PParams_830 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_832 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsOf
d_PParamsOf_834 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_834 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_836 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_838 :: T_GovStructure_8 -> ()
d_ProtVer_838 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_842 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_842 ~v0 = du_Show'45'DrepThresholds_842
du_Show'45'DrepThresholds_842 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_842
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_610
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_844 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_614
      (coe d_epochStructure_644 (coe v0))
      (coe d_scriptStructure_686 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_846 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_846 ~v0 = du_Show'45'PoolThresholds_846
du_Show'45'PoolThresholds_846 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_846
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_612
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_848 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_848 ~v0 = du_Show'45'ProtVer_848
du_Show'45'ProtVer_848 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_848
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_856 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.govActionDepositOf
d_govActionDepositOf_858 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_860 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_860 ~v0 = du_paramsWF'45'elim_860
du_paramsWF'45'elim_860 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_860 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_582 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_862 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> ()
d_paramsWellFormed_862 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_864 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> [Integer]
d_positivePParams_864 ~v0 = du_positivePParams_864
du_positivePParams_864 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> [Integer]
du_positivePParams_864
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_494
-- Ledger.Conway.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_866 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_868 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_868 ~v0 = du_pvCanFollow'63'_868
du_pvCanFollow'63'_868 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_868
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1450
-- Ledger.Conway.Types.GovStructure.GovStructure._.reservesOf
d_reservesOf_870 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_194 ->
  AgdaAny -> Integer
d_reservesOf_870 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_202 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.treasuryOf
d_treasuryOf_872 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_176 ->
  AgdaAny -> Integer
d_treasuryOf_872 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_184 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_878 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160 -> Integer
d_reserves_878 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_168 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_880 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160 -> Integer
d_treasury_880 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_166 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_884 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_884 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_254 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_886 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_886 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_256 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_888 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_888 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_258 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_890 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_890 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_260 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_892 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_892 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_262 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_894 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_894 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_264 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_896 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_896 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_266 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_898 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_898 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_268 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_900 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_900 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_270 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_902 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_902 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_272 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_906 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1562 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_908 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 -> ()
d_UpdateT_908 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_910 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_912 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498
d_ppUpd_912 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_914 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_916 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> ()
d_ppdWellFormed_916 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_918 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_922 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_922 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_926 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_930 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hasreserves.reservesOf
d_reservesOf_934 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_194 ->
  AgdaAny -> Integer
d_reservesOf_934 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_202 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hastreasury.treasuryOf
d_treasuryOf_938 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_176 ->
  AgdaAny -> Integer
d_treasuryOf_938 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_184 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_954 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_Emax_954 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.a
d_a_956 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_a_956 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.a0
d_a0_958 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_958 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.b
d_b_960 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_b_960 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_962 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMaxTermLength_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_964 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMinSize_964 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_966 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_coinsPerUTxOByte_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_968 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_collateralPercentage_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_970 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_costmdls_970 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_972 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_drepActivity_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_974 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepDeposit_974 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_976 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_978 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionDeposit_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_980 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionLifetime_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_982 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_keyDeposit_982 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_984 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxBlockExUnits_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_986 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxBlockSize_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_988 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxCollateralInputs_988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_990 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxHeaderSize_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_992 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_994 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_996 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxTxExUnits_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_998 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxTxSize_998 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_1000 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxValSize_1000 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1002 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_1004 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_minUTxOValue_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_1006 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_1008 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_nopt_1008 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_1010 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_poolDeposit_1010 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_1012 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.prices
d_prices_1014 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_prices_1014 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.pv
d_pv_1016 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1016 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1018 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1020 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.treasuryCut
d_treasuryCut_1022 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1022 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1026 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 -> ()
d_UpdateT_1026 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1028 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1030 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1030 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1032 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> ()
d_ppdWellFormed_1032 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1034 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1038 ::
  T_GovStructure_8 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1038 ~v0 = du__'63''8599'__1038
du__'63''8599'__1038 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1038 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1242 v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1040 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1444
      (coe d_epochStructure_644 (coe v0))
      (coe d_scriptStructure_686 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1042 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1044 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyPParamsUpdate_1044 ~v0 = du_applyPParamsUpdate_1044
du_applyPParamsUpdate_1044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_applyPParamsUpdate_1044
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1290
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1046 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_modifiedUpdateGroups_1046 ~v0 = du_modifiedUpdateGroups_1046
du_modifiedUpdateGroups_1046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
du_modifiedUpdateGroups_1046
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1226
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1048 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesEconomicGroup_1048 ~v0 = du_modifiesEconomicGroup_1048
du_modifiesEconomicGroup_1048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesEconomicGroup_1048
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_922
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1050 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesGovernanceGroup_1050 ~v0
  = du_modifiesGovernanceGroup_1050
du_modifiesGovernanceGroup_1050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesGovernanceGroup_1050
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1074
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1052 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesNetworkGroup_1052 ~v0 = du_modifiesNetworkGroup_1052
du_modifiesNetworkGroup_1052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesNetworkGroup_1052
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_846
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1054 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesSecurityGroup_1054 ~v0 = du_modifiesSecurityGroup_1054
du_modifiesSecurityGroup_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesSecurityGroup_1054
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1150
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1056 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesTechnicalGroup_1056 ~v0 = du_modifiesTechnicalGroup_1056
du_modifiesTechnicalGroup_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesTechnicalGroup_1056
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_998
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1058 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> ()
d_paramsUpdateWellFormed_1058 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1060 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1060 ~v0
  = du_paramsUpdateWellFormed'63'_1060
du_paramsUpdateWellFormed'63'_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1060
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_842
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1062 ::
  T_GovStructure_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1062 ~v0 = du_'8801''45'update_1062
du_'8801''45'update_1062 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1062 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1256 v1
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_Emax_1066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_736 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_a_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_706 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_734 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_b_1072 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_708 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_ccMaxTermLength_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_ccMinSize_1076 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_756 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_coinsPerUTxOByte_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_collateralPercentage_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_740
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_costmdls_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_742 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_drepActivity_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_754 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_drepDeposit_1086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_752 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_744 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_govActionDeposit_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_govActionLifetime_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_keyDeposit_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_710 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_maxBlockExUnits_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxBlockSize_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxCollateralInputs_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_698
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxHeaderSize_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_726
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_724
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_maxTxExUnits_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxTxSize_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_692 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxValSize_1112 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_696 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_722
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_minUTxOValue_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_nopt_1120 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_738 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_poolDeposit_1122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_712 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_746 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1126 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_prices_1126 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_720 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1128 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1128 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_704 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1130 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_730
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1132 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_728
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1134 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1134 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_716 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1138 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1138 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_286 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1140 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1140 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_288 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1142 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1142 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_290 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1144 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1144 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_292 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q5
d_Q5_1146 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1146 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_294 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure.govParams
d_govParams_1154 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530
d_govParams_1154 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3269 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1158 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1562
      (coe d_govParams_1154 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1160 :: T_GovStructure_8 -> ()
d_UpdateT_1160 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1162 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
         (coe d_govParams_1154 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1164 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498
d_ppUpd_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
      (coe d_govParams_1154 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1166 ::
  T_GovStructure_8 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
         (coe d_govParams_1154 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1168 :: T_GovStructure_8 -> AgdaAny -> ()
d_ppdWellFormed_1168 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1170 ::
  T_GovStructure_8 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
         (coe d_govParams_1154 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1172 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_1172 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3269 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1176 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1178 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Network
d_Network_1180 :: T_GovStructure_8 -> ()
d_Network_1180 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1182 :: T_GovStructure_8 -> AgdaAny
d_NetworkId_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1184 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_300
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1186 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1188 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Positive'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1190 :: T_GovStructure_8 -> Integer
d_Quorum_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1192 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1194 :: T_GovStructure_8 -> Integer
d_SlotsPerEpoch'7580'_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1196 :: T_GovStructure_8 -> Integer
d_StabilityWindow'7580'_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1198 ::
  T_GovStructure_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1198 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1200 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_314
      (coe d_globalConstants_1172 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Addr
d_Addr_1204 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1204 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1206 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1208 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.Credential
d_Credential_1210 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.CredentialOf
d_CredentialOf_1212 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1212 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1214 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1214 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1214
du_Dec'45'isScript_1214 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1214
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1216 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1216 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1216
du_Dec'45'isVKey_1216 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1216
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1218 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1218 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1218 v1 v2 v3
du_DecEq'45'BaseAddr_1218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1220 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1220 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1220 v1 v2 v3
du_DecEq'45'BootstrapAddr_1220 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1220 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1222 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1222 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1222 v2 v3
du_DecEq'45'Credential_1222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1222 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe v0) (coe v1)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1224 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1224 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1224 v1 v2 v3
du_DecEq'45'RwdAddr_1224 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1224 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential
d_HasCredential_1226 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1228 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_1228 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RwdAddr_1228
du_HasCredential'45'RwdAddr_1228 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_1228
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId
d_HasNetworkId_1230 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1232 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_1232 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1232
du_HasNetworkId'45'BaseAddr_1232 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BaseAddr_1232
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1234 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_1234 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1234
du_HasNetworkId'45'BootstrapAddr_1234 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BootstrapAddr_1234
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1236 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_1236 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RwdAddr_1236
du_HasNetworkId'45'RwdAddr_1236 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_1236
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Types.GovStructure.GovStructure._.NetworkIdOf
d_NetworkIdOf_1242 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1242 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1244 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1248 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1248 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1250 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1250 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1252 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1252 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1256 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1256 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1256
du_Show'45'Credential_1256 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1256 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1258 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1258 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1258
du_Show'45'Credential'215'Coin_1258 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1258 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1260 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1260 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1260
du_Show'45'RwdAddr_1260 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1260
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1262 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1262 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1264 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1264 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1266 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1266 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1270 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
d_getScriptHash_1270 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1270
du_getScriptHash_1270 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
du_getScriptHash_1270
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1272 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1274 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1274 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1274
du_isBootstrapAddr'63'_1274 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1274
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1276 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_1276 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1278 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_1278 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1278
du_isKeyHashObj_1278 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_1278
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1280 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_1280 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1280
du_isKeyHashObj'7495'_1280 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
du_isKeyHashObj'7495'_1280
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScript
d_isScript_1282 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1284 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1284 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1286 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_1286 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1286
du_isScriptObj_1286 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_1286
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1288 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_1288 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1290 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1292 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1292 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.netId
d_netId_1294 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1294 ~v0 ~v1 ~v2 ~v3 = du_netId_1294
du_netId_1294 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1294 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Types.GovStructure.GovStructure._.payCred
d_payCred_1296 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_1296 ~v0 ~v1 ~v2 ~v3 = du_payCred_1296
du_payCred_1296 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_payCred_1296
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1298 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_1298 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1298
du_stakeCred_1298 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_stakeCred_1298
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1302 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> AgdaAny
d_net_1302 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1304 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1304 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1306 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1306 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1310 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1310 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1312 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> AgdaAny
d_net_1312 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1314 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1314 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1324 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1324 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1328 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1328 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1332 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1332 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1334 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1334 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
