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
  = C_GovStructure'46'constructor_3123 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
                                       MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
                                       MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
                                       MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506
                                       MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
-- Ledger.Conway.Types.GovStructure._.GovParams
d_GovParams_212 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_308 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538 (coe v0)
-- Ledger.Conway.Types.GovStructure._.GovParams.ppUpd
d_ppUpd_314 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_314 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure.TxId
d_TxId_572 :: T_GovStructure_8 -> ()
d_TxId_572 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure.DocHash
d_DocHash_574 :: T_GovStructure_8 -> ()
d_DocHash_574 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_576 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_576 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure.crypto
d_crypto_578 ::
  T_GovStructure_8 -> MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_578 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_582 ::
  T_GovStructure_8 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_582 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_584 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
      (coe d_crypto_578 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_586 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_586 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_588 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_588 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_590 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_590 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.THash
d_THash_592 :: T_GovStructure_8 -> ()
d_THash_592 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_594 :: T_GovStructure_8 -> ()
d_KeyPair_594 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.SKey
d_SKey_596 :: T_GovStructure_8 -> ()
d_SKey_596 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_598 :: T_GovStructure_8 -> ()
d_ScriptHash_598 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Ser
d_Ser_600 :: T_GovStructure_8 -> ()
d_Ser_600 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_602 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
      (coe d_crypto_578 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_604 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_604 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Sig
d_Sig_606 :: T_GovStructure_8 -> ()
d_Sig_606 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_608 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_608 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKey
d_VKey_610 :: T_GovStructure_8 -> ()
d_VKey_610 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_612 :: T_GovStructure_8 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_612 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isSigned
d_isSigned_614 ::
  T_GovStructure_8 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_614 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_616 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_616 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_isSigned'45'correct_130
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.khs
d_khs_618 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
      (coe d_crypto_578 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.pkk
d_pkk_620 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
      (coe d_crypto_578 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.sign
d_sign_622 :: T_GovStructure_8 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_622 v0
  = let v1 = d_crypto_578 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_624 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_624 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__628 ::
  T_GovStructure_8 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._._+ᵉ'_
d__'43''7497'''__630 ::
  T_GovStructure_8 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_632 ::
  T_GovStructure_8 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_632 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_634 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_636 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_638 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Epoch
d_Epoch_640 :: T_GovStructure_8 -> ()
d_Epoch_640 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_642 ::
  T_GovStructure_8 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Epoch
d_Show'45'Epoch_644 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Slot
d_Slot_646 :: T_GovStructure_8 -> ()
d_Slot_646 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_648 ::
  T_GovStructure_8 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_650 :: T_GovStructure_8 -> AgdaAny
d_StabilityWindow_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_652 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.addSlot
d_addSlot_654 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.epoch
d_epoch_656 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_epoch_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_658 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_firstSlot_658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_660 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_662 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_suc'7497'_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_664 :: T_GovStructure_8 -> Integer -> AgdaAny
d_ℕtoEpoch_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_624 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_666 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
d_scriptStructure_666 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__670 ::
  T_GovStructure_8 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__670 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.CostModel
d_CostModel_672 :: T_GovStructure_8 -> ()
d_CostModel_672 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.T
d_T_674 :: T_GovStructure_8 -> ()
d_T_674 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.THash
d_THash_676 :: T_GovStructure_8 -> ()
d_THash_676 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_678 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Datum
d_Datum_680 :: T_GovStructure_8 -> ()
d_Datum_680 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_682 ::
  T_GovStructure_8 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_684 ::
  T_GovStructure_8 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_686 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_688 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_690 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_692 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Language
d_DecEq'45'Language_694 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_696 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_698 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_698 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_666 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_700 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_700 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_666 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_702 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_704 :: T_GovStructure_8 -> ()
d_ExUnits_704 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_706 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_708 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_710 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
      (coe d_scriptStructure_666 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_712 :: T_GovStructure_8 -> ()
d_LangDepView_712 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Language
d_Language_714 :: T_GovStructure_8 -> ()
d_Language_714 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.P1Script
d_P1Script_716 :: T_GovStructure_8 -> ()
d_P1Script_716 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_718 :: T_GovStructure_8 -> ()
d_PlutusScript_718 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV1
d_PlutusV1_720 :: T_GovStructure_8 -> AgdaAny
d_PlutusV1_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV2
d_PlutusV2_722 :: T_GovStructure_8 -> AgdaAny
d_PlutusV2_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PlutusV3
d_PlutusV3_724 :: T_GovStructure_8 -> AgdaAny
d_PlutusV3_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Prices
d_Prices_726 :: T_GovStructure_8 -> ()
d_Prices_726 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_728 :: T_GovStructure_8 -> ()
d_Redeemer_728 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Script
d_Script_730 :: T_GovStructure_8 -> ()
d_Script_730 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-CostModel
d_Show'45'CostModel_732 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_734 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Prices
d_Show'45'Prices_736 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-THash
d_Show'45'THash_738 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_738 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_666 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_740 ::
  T_GovStructure_8 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_740 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_666 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_742 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe d_scriptStructure_666 (coe v0))))
-- Ledger.Conway.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_744 ::
  T_GovStructure_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
      (coe d_scriptStructure_666 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.language
d_language_746 :: T_GovStructure_8 -> AgdaAny -> AgdaAny
d_language_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.p1s
d_p1s_748 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
      (coe d_scriptStructure_666 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ps
d_ps_750 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
      (coe d_scriptStructure_666 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.toData
d_toData_752 :: T_GovStructure_8 -> () -> AgdaAny -> AgdaAny
d_toData_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_666 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_754 ::
  T_GovStructure_8 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_754 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_756 ::
  T_GovStructure_8 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_756 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt
d_Acnt_760 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_762 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_762 ~v0 = du_DecEq'45'DrepThresholds_762
du_DecEq'45'DrepThresholds_762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_762
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_578
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_764 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_764 ~v0 = du_DecEq'45'PParamGroup_764
du_DecEq'45'PParamGroup_764 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_764
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_584
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_766 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_582
      (coe d_epochStructure_624 (coe v0))
      (coe d_scriptStructure_666 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_768 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_768 ~v0 = du_DecEq'45'PoolThresholds_768
du_DecEq'45'PoolThresholds_768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_768
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_580
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_770 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams
d_GovParams_774 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_778 ::
  T_GovStructure_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_778 ~v0 = du_HasCast'45'Acnt_778
du_HasCast'45'Acnt_778 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_778
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_186
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasPParams
d_HasPParams_780 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasccMaxTermLength
d_HasccMaxTermLength_782 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit
d_HasgovActionDeposit_784 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_786 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
d_HasgovActionDeposit'45'PParams_786 ~v0
  = du_HasgovActionDeposit'45'PParams_786
du_HasgovActionDeposit'45'PParams_786 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
du_HasgovActionDeposit'45'PParams_786
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_460
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hastreasury
d_Hastreasury_788 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_792 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams
d_PParams_794 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_796 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsOf
d_PParamsOf_798 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_798 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_800 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_802 :: T_GovStructure_8 -> ()
d_ProtVer_802 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_806 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_806 ~v0 = du_Show'45'DrepThresholds_806
du_Show'45'DrepThresholds_806 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_806
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_586
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-PParams
d_Show'45'PParams_808 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_590
      (coe d_epochStructure_624 (coe v0))
      (coe d_scriptStructure_666 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_810 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_810 ~v0 = du_Show'45'PoolThresholds_810
du_Show'45'PoolThresholds_810 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_810
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_588
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_812 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_812 ~v0 = du_Show'45'ProtVer_812
du_Show'45'ProtVer_812 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_812
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_820 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.govActionDepositOf
d_govActionDepositOf_822 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_824 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_824 ~v0 = du_paramsWF'45'elim_824
du_paramsWF'45'elim_824 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_824 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_550 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_826 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> ()
d_paramsWellFormed_826 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.positivePParams
d_positivePParams_828 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> [Integer]
d_positivePParams_828 ~v0 = du_positivePParams_828
du_positivePParams_828 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> [Integer]
du_positivePParams_828
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_462
-- Ledger.Conway.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_830 a0 a1 a2 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_832 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_832 ~v0 = du_pvCanFollow'63'_832
du_pvCanFollow'63'_832 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_832
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1426
-- Ledger.Conway.Types.GovStructure.GovStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_834 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_834 ~v0
  = du_refScriptCostStride'62'0_834
du_refScriptCostStride'62'0_834 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_834 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_refScriptCostStride'62'0_572
      v0
-- Ledger.Conway.Types.GovStructure.GovStructure._.treasuryOf
d_treasuryOf_836 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_836 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_842 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_reserves_842 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_844 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_treasury_844 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_848 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_848 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_222 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_850 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_850 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_224 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_852 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_852 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_226 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_854 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_854 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_228 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_856 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_856 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_230 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_858 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_858 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_232 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_860 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_860 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_234 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_862 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_862 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_236 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_864 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_864 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_238 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_866 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_866 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_240 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_870 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_872 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 -> ()
d_UpdateT_872 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_874 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_876 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_876 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_878 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_880 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> ()
d_ppdWellFormed_880 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_882 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_886 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_886 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_890 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_894 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Hastreasury.treasuryOf
d_treasuryOf_898 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_898 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_914 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_914 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.a
d_a_916 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_916 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.a0
d_a0_918 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_918 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.b
d_b_920 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_920 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_922 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_924 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_924 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_926 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_928 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_930 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_930 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_932 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_934 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_934 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_936 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_938 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_940 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_942 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_942 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_944 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_946 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_948 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_950 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_952 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_954 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_956 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_958 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_958 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_960 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_960 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_962 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_964 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_966 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_968 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_968 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_970 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_970 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_972 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.prices
d_prices_974 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_974 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.pv
d_pv_976 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_976 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_978 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_980 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParams.treasuryCut
d_treasuryCut_982 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_982 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_986 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 -> ()
d_UpdateT_986 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_988 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_990 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_990 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_992 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> ()
d_ppdWellFormed_992 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_994 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__998 ::
  T_GovStructure_8 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__998 ~v0 = du__'63''8599'__998
du__'63''8599'__998 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__998 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1218 v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1000 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1420
      (coe d_epochStructure_624 (coe v0))
      (coe d_scriptStructure_666 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1002 a0 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1004 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyPParamsUpdate_1004 ~v0 = du_applyPParamsUpdate_1004
du_applyPParamsUpdate_1004 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
du_applyPParamsUpdate_1004
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1266
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1006 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_modifiedUpdateGroups_1006 ~v0 = du_modifiedUpdateGroups_1006
du_modifiedUpdateGroups_1006 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
du_modifiedUpdateGroups_1006
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1202
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1008 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesEconomicGroup_1008 ~v0 = du_modifiesEconomicGroup_1008
du_modifiesEconomicGroup_1008 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesEconomicGroup_1008
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_898
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1010 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesGovernanceGroup_1010 ~v0
  = du_modifiesGovernanceGroup_1010
du_modifiesGovernanceGroup_1010 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesGovernanceGroup_1010
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1050
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1012 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesNetworkGroup_1012 ~v0 = du_modifiesNetworkGroup_1012
du_modifiesNetworkGroup_1012 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesNetworkGroup_1012
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_822
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1014 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesSecurityGroup_1014 ~v0 = du_modifiesSecurityGroup_1014
du_modifiesSecurityGroup_1014 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesSecurityGroup_1014
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1126
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1016 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesTechnicalGroup_1016 ~v0 = du_modifiesTechnicalGroup_1016
du_modifiesTechnicalGroup_1016 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesTechnicalGroup_1016
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_974
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1018 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> ()
d_paramsUpdateWellFormed_1018 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1020 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1020 ~v0
  = du_paramsUpdateWellFormed'63'_1020
du_paramsUpdateWellFormed'63'_1020 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1020
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_818
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1022 ::
  T_GovStructure_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1022 ~v0 = du_'8801''45'update_1022
du_'8801''45'update_1022 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1022 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1232 v1
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1026 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_Emax_1026 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_712 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1028 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_a_1028 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_682 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1030 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1030 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_710 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1032 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_b_1032 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_684 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1034 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMaxTermLength_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_734 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1036 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMinSize_1036 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_732 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1038 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_coinsPerUTxOByte_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_694 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1040 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_collateralPercentage_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_716
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_costmdls_1042 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_718 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_drepActivity_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_730 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepDeposit_1046 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_728 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_720 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionDeposit_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_726 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionLifetime_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_724 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_keyDeposit_1054 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_686 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxBlockExUnits_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_678 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxBlockSize_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_666 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxCollateralInputs_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_674
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxHeaderSize_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_670 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_702
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_700
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxTxExUnits_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_676 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxTxSize_1070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_668 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxValSize_1072 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_672 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_698
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_minUTxOValue_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_708 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_690 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_nopt_1080 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_714 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_poolDeposit_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_688 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_722 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_prices_1086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_696 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1088 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_680 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_706
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_refScriptCostStride_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_704
      (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_692 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_254 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_256 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1102 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_258 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1104 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_260 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.PoolThresholds.Q5
d_Q5_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1106 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_262 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure.govParams
d_govParams_1114 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506
d_govParams_1114 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1118 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538
      (coe d_govParams_1114 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_1120 :: T_GovStructure_8 -> ()
d_UpdateT_1120 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_1122 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_1114 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_1124 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
      (coe d_govParams_1114 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_1126 ::
  T_GovStructure_8 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_1114 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_1128 :: T_GovStructure_8 -> AgdaAny -> ()
d_ppdWellFormed_1128 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_1130 ::
  T_GovStructure_8 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_1114 (coe v0)))
-- Ledger.Conway.Types.GovStructure.GovStructure.globalConstants
d_globalConstants_1132 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_1132 v0
  = case coe v0 of
      C_GovStructure'46'constructor_3123 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Types.GovStructure.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1136 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1138 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Network
d_Network_1140 :: T_GovStructure_8 -> ()
d_Network_1140 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.NetworkId
d_NetworkId_1142 :: T_GovStructure_8 -> AgdaAny
d_NetworkId_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1144 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1146 ::
  T_GovStructure_8 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Quorum
d_Quorum_1148 :: T_GovStructure_8 -> Integer
d_Quorum_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Network
d_Show'45'Network_1150 ::
  T_GovStructure_8 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1152 :: T_GovStructure_8 -> Integer
d_SlotsPerEpoch'7580'_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1154 :: T_GovStructure_8 -> Integer
d_StabilityWindow'7580'_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1156 ::
  T_GovStructure_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1156 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1158 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_312
      (coe d_globalConstants_1132 (coe v0))
-- Ledger.Conway.Types.GovStructure.GovStructure._.Addr
d_Addr_1162 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1162 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_1164 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_1166 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.Credential
d_Credential_1168 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.CredentialOf
d_CredentialOf_1170 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1170 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_1172 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1172 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1172
du_Dec'45'isScript_1172 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1172
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1174 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1174 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1174
du_Dec'45'isVKey_1174 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1174
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1176 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1176 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1176 v1 v2 v3
du_DecEq'45'BaseAddr_1176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1176 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1178 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1178 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1178 v1 v2 v3
du_DecEq'45'BootstrapAddr_1178 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1178 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1180 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1180 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1180 v2 v3
du_DecEq'45'Credential_1180 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1180 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe v0) (coe v1)
-- Ledger.Conway.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1182 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1182 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1182 v1 v2 v3
du_DecEq'45'RwdAddr_1182 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1182 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential
d_HasCredential_1184 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1186 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_1186 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RwdAddr_1186
du_HasCredential'45'RwdAddr_1186 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_1186
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId
d_HasNetworkId_1188 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1190 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_1190 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1190
du_HasNetworkId'45'BaseAddr_1190 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BaseAddr_1190
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1192 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_1192 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1192
du_HasNetworkId'45'BootstrapAddr_1192 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BootstrapAddr_1192
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1194 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_1194 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RwdAddr_1194
du_HasNetworkId'45'RwdAddr_1194 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_1194
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Types.GovStructure.GovStructure._.NetworkIdOf
d_NetworkIdOf_1200 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1200 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_1202 a0 a1 a2 a3 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_1206 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1206 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1208 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1208 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1210 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1210 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Credential
d_Show'45'Credential_1214 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1214 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1214
du_Show'45'Credential_1214 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1214 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1216 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1216 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1216
du_Show'45'Credential'215'Coin_1216 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Types.GovStructure.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1218 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1218 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1218
du_Show'45'RwdAddr_1218 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1218
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_1220 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1220 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1222 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1222 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1224 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1224 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_1228 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
d_getScriptHash_1228 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1228
du_getScriptHash_1228 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
du_getScriptHash_1228
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Types.GovStructure.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1230 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1232 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1232 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1232
du_isBootstrapAddr'63'_1232 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1232
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHash
d_isKeyHash_1234 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_1234 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHashObj
d_isKeyHashObj_1236 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_1236 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1236
du_isKeyHashObj_1236 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_1236
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Types.GovStructure.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1238 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_1238 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1238
du_isKeyHashObj'7495'_1238 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
du_isKeyHashObj'7495'_1238
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScript
d_isScript_1240 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_1242 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1242 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptObj
d_isScriptObj_1244 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_1244 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1244
du_isScriptObj_1244 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_1244
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1246 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_1246 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.isVKey
d_isVKey_1248 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_1250 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1250 = erased
-- Ledger.Conway.Types.GovStructure.GovStructure._.netId
d_netId_1252 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1252 ~v0 ~v1 ~v2 ~v3 = du_netId_1252
du_netId_1252 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1252 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Types.GovStructure.GovStructure._.payCred
d_payCred_1254 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_1254 ~v0 ~v1 ~v2 ~v3 = du_payCred_1254
du_payCred_1254 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_payCred_1254
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Types.GovStructure.GovStructure._.stakeCred
d_stakeCred_1256 ::
  T_GovStructure_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_1256 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1256
du_stakeCred_1256 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_stakeCred_1256
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_1260 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> AgdaAny
d_net_1260 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_1262 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1262 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_1264 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1264 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1268 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1268 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1270 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> AgdaAny
d_net_1270 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1272 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1272 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1282 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1282 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1286 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1286 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1290 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1290 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1292 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1292 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
