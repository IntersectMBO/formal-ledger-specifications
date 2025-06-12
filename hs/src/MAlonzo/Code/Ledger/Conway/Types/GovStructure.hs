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
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Types.GovStructure.GovStructure
d_GovStructure_8 = ()
data T_GovStructure_8
  = C_GovStructure'46'constructor_3181 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
                                       MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
                                       MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
                                       MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516
                                       MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
-- Ledger.Conway.Types.GovStructure._.GovParams
d_GovParams_212 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_310 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1548 (coe v0)
-- Ledger.Conway.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_316 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484
d_ppUpd_316 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure.TxId
d_TxId_578 :: T_GovStructure_8 -> ()
d_TxId_578 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure.DocHash
d_DocHash_580 :: T_GovStructure_8 -> ()
d_DocHash_580 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_582 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_582 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3181 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure.crypto
d_crypto_584 ::
  T_GovStructure_8 -> MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_584 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3181 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_588 ::
  T_GovStructure_8 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_588 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_590 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
      (coe d_crypto_584 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_592 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_592 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_594 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_594 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_596 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_596 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.THash
d_THash_598 :: T_GovStructure_8 -> ()
d_THash_598 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_600 :: T_GovStructure_8 -> ()
d_KeyPair_600 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.SKey
d_SKey_602 :: T_GovStructure_8 -> ()
d_SKey_602 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_604 :: T_GovStructure_8 -> ()
d_ScriptHash_604 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Ser
d_Ser_606 :: T_GovStructure_8 -> ()
d_Ser_606 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_608 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
      (coe d_crypto_584 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_610 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_610 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Sig
d_Sig_612 :: T_GovStructure_8 -> ()
d_Sig_612 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_614 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_614 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKey
d_VKey_616 :: T_GovStructure_8 -> ()
d_VKey_616 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_618 :: T_GovStructure_8 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_618 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isSigned
d_isSigned_620 ::
  T_GovStructure_8 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_620 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_622 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_622 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_isSigned'45'correct_130
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.khs
d_khs_624 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
      (coe d_crypto_584 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.pkk
d_pkk_626 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
      (coe d_crypto_584 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.sign
d_sign_628 :: T_GovStructure_8 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_628 v0
  = let v1 = d_crypto_584 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_630 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_630 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3181 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__634 ::
  T_GovStructure_8 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__636 ::
  T_GovStructure_8 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_638 ::
  T_GovStructure_8 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_638 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_640 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_642 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_644 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Epoch
d_Epoch_646 :: T_GovStructure_8 -> ()
d_Epoch_646 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_648 ::
  T_GovStructure_8 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_650 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Slot
d_Slot_652 :: T_GovStructure_8 -> ()
d_Slot_652 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_654 ::
  T_GovStructure_8 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_656 :: T_GovStructure_8 -> AgdaAny
d_StabilityWindow_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_658 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.addSlot
d_addSlot_660 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.epoch
d_epoch_662 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_epoch_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_664 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_firstSlot_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_666 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_668 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_suc'7497'_668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_670 :: T_GovStructure_8 -> Integer -> AgdaAny
d_ℕtoEpoch_670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_630 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_672 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
d_scriptStructure_672 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3181 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__676 ::
  T_GovStructure_8 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__676 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.CostModel
d_CostModel_678 :: T_GovStructure_8 -> ()
d_CostModel_678 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.T
d_T_680 :: T_GovStructure_8 -> ()
d_T_680 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.THash
d_THash_682 :: T_GovStructure_8 -> ()
d_THash_682 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_684 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Datum
d_Datum_686 :: T_GovStructure_8 -> ()
d_Datum_686 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_688 ::
  T_GovStructure_8 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_690 ::
  T_GovStructure_8 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_692 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_694 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_696 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_698 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_700 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_702 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_704 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_704 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_672 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_706 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_706 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_672 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_708 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_710 :: T_GovStructure_8 -> ()
d_ExUnits_710 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_712 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_714 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_716 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
      (coe d_scriptStructure_672 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_718 :: T_GovStructure_8 -> ()
d_LangDepView_718 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Language
d_Language_720 :: T_GovStructure_8 -> ()
d_Language_720 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.P1Script
d_P1Script_722 :: T_GovStructure_8 -> ()
d_P1Script_722 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_724 :: T_GovStructure_8 -> ()
d_PlutusScript_724 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_726 :: T_GovStructure_8 -> AgdaAny
d_PlutusV1_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_728 :: T_GovStructure_8 -> AgdaAny
d_PlutusV2_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_730 :: T_GovStructure_8 -> AgdaAny
d_PlutusV3_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Prices
d_Prices_732 :: T_GovStructure_8 -> ()
d_Prices_732 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_734 :: T_GovStructure_8 -> ()
d_Redeemer_734 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Script
d_Script_736 :: T_GovStructure_8 -> ()
d_Script_736 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_738 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_740 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_742 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_744 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_744 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_672 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_746 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_746 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_672 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_748 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe d_scriptStructure_672 (coe v0))))
-- Ledger.Conway.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_750 ::
  T_GovStructure_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
      (coe d_scriptStructure_672 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.language
d_language_752 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_language_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.p1s
d_p1s_754 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
      (coe d_scriptStructure_672 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ps
d_ps_756 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
      (coe d_scriptStructure_672 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.toData
d_toData_758 :: T_GovStructure_8 -> () -> AgdaAny -> AgdaAny
d_toData_758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_672 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_760 ::
  T_GovStructure_8 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_760 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_762 ::
  T_GovStructure_8 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_762 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt
d_Acnt_766 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_768 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_768 ~v0 = du_DecEq'45'DrepThresholds_768
du_DecEq'45'DrepThresholds_768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_768
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_588
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_770 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_770 ~v0 = du_DecEq'45'PParamGroup_770
du_DecEq'45'PParamGroup_770 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_770
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_594
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_772 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_592
      (coe d_epochStructure_630 (coe v0))
      (coe d_scriptStructure_672 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_774 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_774 ~v0 = du_DecEq'45'PoolThresholds_774
du_DecEq'45'PoolThresholds_774 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_774
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_590
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_776 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams
d_GovParams_780 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_784 ::
  T_GovStructure_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_784 ~v0 = du_HasCast'45'Acnt_784
du_HasCast'45'Acnt_784 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_784
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasPParams
d_HasPParams_786 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasccMaxTermLength
d_HasccMaxTermLength_788 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit
d_HasgovActionDeposit_790 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_792 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
d_HasgovActionDeposit'45'PParams_792 ~v0
  = du_HasgovActionDeposit'45'PParams_792
du_HasgovActionDeposit'45'PParams_792 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
du_HasgovActionDeposit'45'PParams_792
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_478
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hasreserves
d_Hasreserves_794 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hastreasury
d_Hastreasury_796 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_800 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams
d_PParams_802 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_804 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsOf
d_PParamsOf_806 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_806 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_808 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_810 :: T_GovStructure_8 -> ()
d_ProtVer_810 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_814 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_814 ~v0 = du_Show'45'DrepThresholds_814
du_Show'45'DrepThresholds_814 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_814
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_596
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_816 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_600
      (coe d_epochStructure_630 (coe v0))
      (coe d_scriptStructure_672 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_818 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_818 ~v0 = du_Show'45'PoolThresholds_818
du_Show'45'PoolThresholds_818 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_818
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_598
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_820 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_820 ~v0 = du_Show'45'ProtVer_820
du_Show'45'ProtVer_820 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_820
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_828 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_472 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.govActionDepositOf
d_govActionDepositOf_830 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446 ->
  AgdaAny -> Integer
d_govActionDepositOf_830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_454
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_832 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_832 ~v0 = du_paramsWF'45'elim_832
du_paramsWF'45'elim_832 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_832 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_568 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_834 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> ()
d_paramsWellFormed_834 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_836 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> [Integer]
d_positivePParams_836 ~v0 = du_positivePParams_836
du_positivePParams_836 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> [Integer]
du_positivePParams_836
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_480
-- Ledger.Conway.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_838 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_840 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_840 ~v0 = du_pvCanFollow'63'_840
du_pvCanFollow'63'_840 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_840
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1436
-- Ledger.Conway.Types.GovStructure.GovStructure._.reservesOf
d_reservesOf_842 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_180 ->
  AgdaAny -> Integer
d_reservesOf_842 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_188 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.treasuryOf
d_treasuryOf_844 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_844 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_850 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_reserves_850 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_852 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_treasury_852 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_856 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_856 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_858 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_858 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_860 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_860 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_862 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_862 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_864 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_864 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_866 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_866 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_868 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_868 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_870 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_870 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_872 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_872 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_874 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_874 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_878 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1548 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_880 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 -> ()
d_UpdateT_880 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_882 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyUpdate_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1500
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_884 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484
d_ppUpd_884 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_886 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1508
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_888 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  AgdaAny -> ()
d_ppdWellFormed_888 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_890 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_updateGroups_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1502
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_894 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_894 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_898 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_472 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_902 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446 ->
  AgdaAny -> Integer
d_govActionDepositOf_902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_454
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hasreserves.reservesOf
d_reservesOf_906 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_180 ->
  AgdaAny -> Integer
d_reservesOf_906 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_188 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hastreasury.treasuryOf
d_treasuryOf_910 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_910 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_926 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_Emax_926 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_398 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.a
d_a_928 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_a_928 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_370 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.a0
d_a0_930 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_930 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_402 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.b
d_b_932 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_b_932 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_372 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_934 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMaxTermLength_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_414 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_936 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMinSize_936 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_412 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_938 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_coinsPerUTxOByte_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_382 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_940 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_collateralPercentage_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_404
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_942 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_costmdls_942 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_406 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_944 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_drepActivity_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_422 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_946 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_drepDeposit_946 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_420 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_948 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218
d_drepThresholds_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_410 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_950 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionDeposit_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_418 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_952 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionLifetime_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_416 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_954 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_keyDeposit_954 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_956 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxBlockExUnits_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_362 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_958 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxBlockSize_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_354 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_960 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxCollateralInputs_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_366
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_962 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxHeaderSize_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_358 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_964 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerBlock_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_390
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_966 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerTx_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_388
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_968 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxTxExUnits_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_360 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_970 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxTxSize_970 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_356 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_972 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxValSize_972 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_364 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_974 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_386
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_976 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_minUTxOValue_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_396 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_978 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_378 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_980 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_nopt_980 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_400 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_982 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_poolDeposit_982 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_376 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_984 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260
d_poolThresholds_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_408 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.prices
d_prices_986 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_prices_986 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_384 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.pv
d_pv_988 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_988 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_368 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_990 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_394
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_992 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_392
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.treasuryCut
d_treasuryCut_994 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_994 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_380 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_998 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 -> ()
d_UpdateT_998 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1000 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyUpdate_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1500 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1002 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1002 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1508 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1004 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  AgdaAny -> ()
d_ppdWellFormed_1004 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1006 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_updateGroups_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1502 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1010 ::
  T_GovStructure_8 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1010 ~v0 = du__'63''8599'__1010
du__'63''8599'__1010 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1010 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1228 v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1012 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1430
      (coe d_epochStructure_630 (coe v0))
      (coe d_scriptStructure_672 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1014 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1016 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyPParamsUpdate_1016 ~v0 = du_applyPParamsUpdate_1016
du_applyPParamsUpdate_1016 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_applyPParamsUpdate_1016
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1276
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1018 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_1018 ~v0 = du_modifiedUpdateGroups_1018
du_modifiedUpdateGroups_1018 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_1018
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1212
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1020 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesEconomicGroup_1020 ~v0 = du_modifiesEconomicGroup_1020
du_modifiesEconomicGroup_1020 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesEconomicGroup_1020
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_908
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1022 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesGovernanceGroup_1022 ~v0
  = du_modifiesGovernanceGroup_1022
du_modifiesGovernanceGroup_1022 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesGovernanceGroup_1022
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1060
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1024 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesNetworkGroup_1024 ~v0 = du_modifiesNetworkGroup_1024
du_modifiesNetworkGroup_1024 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesNetworkGroup_1024
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_832
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1026 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesSecurityGroup_1026 ~v0 = du_modifiesSecurityGroup_1026
du_modifiesSecurityGroup_1026 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesSecurityGroup_1026
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1136
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1028 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesTechnicalGroup_1028 ~v0 = du_modifiesTechnicalGroup_1028
du_modifiesTechnicalGroup_1028 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesTechnicalGroup_1028
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_984
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1030 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> ()
d_paramsUpdateWellFormed_1030 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1032 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1032 ~v0
  = du_paramsUpdateWellFormed'63'_1032
du_paramsUpdateWellFormed'63'_1032 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1032
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_828
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1034 ::
  T_GovStructure_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1034 ~v0 = du_'8801''45'update_1034
du_'8801''45'update_1034 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1034 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1242 v1
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1038 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_Emax_1038 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_722 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1040 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_a_1040 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_692 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1042 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_720 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_b_1044 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_694 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_ccMaxTermLength_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_ccMinSize_1048 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_742 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_coinsPerUTxOByte_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_collateralPercentage_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_726
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_costmdls_1054 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_728 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_drepActivity_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_740 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_drepDeposit_1058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_738 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218
d_drepThresholds_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_730 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_govActionDeposit_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_govActionLifetime_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_keyDeposit_1066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_696 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_maxBlockExUnits_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxBlockSize_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxCollateralInputs_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_684
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxHeaderSize_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_712
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_710
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_maxTxExUnits_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxTxSize_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_678 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxValSize_1084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_682 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_708
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_minUTxOValue_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_nopt_1092 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_724 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_poolDeposit_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_698 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260
d_poolThresholds_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_732 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_prices_1098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_706 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_690 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_716
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_714
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1106 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_702 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_272 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1112 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_274 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1114 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_276 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_278 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q5
d_Q5_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1118 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_280 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure.govParams
d_govParams_1126 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516
d_govParams_1126 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3181 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1130 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1548
      (coe d_govParams_1126 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1132 :: T_GovStructure_8 -> ()
d_UpdateT_1132 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1134 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyUpdate_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1500
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
         (coe d_govParams_1126 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1136 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484
d_ppUpd_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
      (coe d_govParams_1126 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1138 ::
  T_GovStructure_8 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1508
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
         (coe d_govParams_1126 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1140 :: T_GovStructure_8 -> AgdaAny -> ()
d_ppdWellFormed_1140 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1142 ::
  T_GovStructure_8 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_updateGroups_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1502
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
         (coe d_govParams_1126 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1144 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_1144 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3181 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1148 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1150 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Network
d_Network_1152 :: T_GovStructure_8 -> ()
d_Network_1152 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1154 :: T_GovStructure_8 -> AgdaAny
d_NetworkId_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1156 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_300
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1158 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1160 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Positive'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1162 :: T_GovStructure_8 -> Integer
d_Quorum_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1164 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1166 :: T_GovStructure_8 -> Integer
d_SlotsPerEpoch'7580'_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1168 :: T_GovStructure_8 -> Integer
d_StabilityWindow'7580'_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1170 ::
  T_GovStructure_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1170 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1172 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_314
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Addr
d_Addr_1176 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1176 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1178 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1180 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.Credential
d_Credential_1182 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.CredentialOf
d_CredentialOf_1184 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1184 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1186 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1186 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1186
du_Dec'45'isScript_1186 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1186
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1188 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1188 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1188
du_Dec'45'isVKey_1188 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1188
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1190 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1190 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1190 v1 v2 v3
du_DecEq'45'BaseAddr_1190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1190 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1192 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1192 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1192 v1 v2 v3
du_DecEq'45'BootstrapAddr_1192 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1192 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1194 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1194 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1194 v2 v3
du_DecEq'45'Credential_1194 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1194 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe v0) (coe v1)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1196 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1196 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1196 v1 v2 v3
du_DecEq'45'RwdAddr_1196 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1196 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential
d_HasCredential_1198 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1200 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_1200 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RwdAddr_1200
du_HasCredential'45'RwdAddr_1200 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_1200
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId
d_HasNetworkId_1202 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1204 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_1204 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1204
du_HasNetworkId'45'BaseAddr_1204 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BaseAddr_1204
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1206 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_1206 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1206
du_HasNetworkId'45'BootstrapAddr_1206 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BootstrapAddr_1206
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1208 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_1208 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RwdAddr_1208
du_HasNetworkId'45'RwdAddr_1208 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_1208
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Types.GovStructure.GovStructure._.NetworkIdOf
d_NetworkIdOf_1214 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1214 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1216 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1220 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1220 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1222 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1222 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1224 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1224 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1228 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1228 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1228
du_Show'45'Credential_1228 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1228 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1230 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1230 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1230
du_Show'45'Credential'215'Coin_1230 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1230 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1232 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1232 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1232
du_Show'45'RwdAddr_1232 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1232
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1234 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1234 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1236 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1236 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1238 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1238 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1242 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
d_getScriptHash_1242 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1242
du_getScriptHash_1242 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
du_getScriptHash_1242
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1244 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1246 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1246 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1246
du_isBootstrapAddr'63'_1246 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1246
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1248 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_1248 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1250 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_1250 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1250
du_isKeyHashObj_1250 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_1250
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1252 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_1252 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1252
du_isKeyHashObj'7495'_1252 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
du_isKeyHashObj'7495'_1252
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScript
d_isScript_1254 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1256 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1256 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1258 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_1258 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1258
du_isScriptObj_1258 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_1258
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1260 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_1260 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1262 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1264 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1264 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.netId
d_netId_1266 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1266 ~v0 ~v1 ~v2 ~v3 = du_netId_1266
du_netId_1266 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1266 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Types.GovStructure.GovStructure._.payCred
d_payCred_1268 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_1268 ~v0 ~v1 ~v2 ~v3 = du_payCred_1268
du_payCred_1268 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_payCred_1268
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1270 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_1270 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1270
du_stakeCred_1270 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_stakeCred_1270
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1274 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> AgdaAny
d_net_1274 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1276 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1276 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1278 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1278 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1282 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1282 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1284 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> AgdaAny
d_net_1284 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1286 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1286 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1296 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1296 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1300 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1300 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1304 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1304 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1306 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1306 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
